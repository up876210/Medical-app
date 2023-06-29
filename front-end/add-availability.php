<?php
require_once '../back-end/init.php';

session_start();

// Redirect users who are not already logged in to the login page
if (!isset($_SESSION['user'])) {
  $GLOBALS['app']->redirect('login.php');
} else {
  // Redirect users who are not medical staff
  if ($_SESSION['user']->role_id != MEDICAL_ROLE) {
    $GLOBALS['app']->redirect('index.php');
  }
}

// Get current date and time
$current_date = date('Y-m-d');
$current_time = date('H:i:s');

// Round down to the nearest hour and find remaining minutes
$current_time = strtotime("$current_date $current_time");
$minutes_in_hour = $current_time % 3600;
$current_time -= $minutes_in_hour;

// Round up to the next number if past 30 minutes
if ($minutes_in_hour >= 1800) {
  $current_time += 3600;
}

// Get the time to the nearest hour (rounded up or down from current time)
$nearest_time = date('H:i:s', $current_time);

// Check if the availability form has been submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  if (isset($_POST['start_time'], $_POST['end_time'])) {
    // Sanitise the user's time inputs
    $data['start_time'] = trim(htmlspecialchars($_POST['start_time']));
    $data['end_time'] = htmlspecialchars($_POST['end_time']);

    // Re-format for checking against timestamps
    $data['start_time'] = str_replace('T', ' ', $data['start_time']);
    $data['end_time'] = str_replace('T', ' ', $data['end_time']);

    AvailabilityManager::addAvailability($data);
  } else {
    $GLOBALS['errors'][] = 'Please enter a valid start time and end time.';
  }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <?php include dirname(__FILE__) . '/../back-end/includes/head-elements.inc.php';?>
  <title><?=$GLOBALS['app']->title?> &mdash; Add Availability</title>
</head>

<body>
  <?php include dirname(__FILE__) . '/../back-end/includes/header.inc.php';?>

  <main>
    <?php include dirname(__FILE__) . '/../back-end/includes/error-container.inc.php';?>
    <?php include dirname(__FILE__) . '/../back-end/includes/success-container.inc.php';?>

    <section id="availability-section">
      <h2>Add Availability</h2>

      <form method="post" id="availability-form">
        <label for="start_time">
          Start Time
          <input type="datetime-local"
            id="start_time"
            name="start_time"
            value="<?=isset($_POST['start_time']) ? $_POST['start_time'] : "{$current_date}T{$nearest_time}"?>"
            min="<?="{$current_date}T{$current_time}"?>">
        </label>

        <label for="end_time">
          End Time
          <input type="datetime-local"
            id="end_time"
            name="end_time"
            value="<?=isset($_POST['end_time']) ? $_POST['end_time'] : "{$current_date}T" . date('H:i:s', strtotime($nearest_time . '+1 hour'))?>"
            min="<?="{$current_date}T{$current_time}"?>">
        </label>

        <input type="submit" id="add" value="Add Slot(s)">
      </form>

      <p>You can view all bookable time slots added by yourself or by colleagues on the <a href="request-appointment.php">Request Appointment page</a>.</p>
    </section>
  </main>

  <a aria-label="Help" class="btn help-btn" href="help.php">?</a>

  <script src="js/add-availability.js"></script>
</body>

</html>
