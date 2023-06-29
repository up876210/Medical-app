<?php

/**
 * Included section for patients to perform request-related operations.
 *
 * @category Include
 */

// Retrieve the patient's own requests
$requests = RequestManager::getOwnRequests($_SESSION['user']->id, 'patient');

foreach ($requests as $request) {
  // Find index of current request
  $key = array_search($request, $requests);

  // Remove current request if it has been cancelled
  if ($request['cancelled']) {
    unset($requests[$key]);
  }
}

// Check if request has been cancelled
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  foreach ($requests as $request) {
    // Extract ID for use in comparison with form input fields
    $id = str_replace('.', '_', $request['id']);

    if (isset($_POST["$id-id"])) {
      $data = array(
        'to_cancel' => $_POST["$id-id"],
        'cancellation_reason' => isset($_POST["$id-reason"]) ? $_POST["$id-reason"] : null,
        'requests' => $requests,
      );
    }
  }

  // Cancel the selected request
  RequestManager::cancelRequest($data);

  // Refresh the page
  header("Refresh:" . REFRESH_PERIOD);
}

?>

<?php include dirname(__FILE__) . '/../error-container.inc.php';?>
<?php include dirname(__FILE__) . '/../success-container.inc.php';?>

<?php if (count($requests) > 0): ?>
  <table id="requests-table">
    <thead>
      <tr>
        <th>Date</th>
        <th>Time</th>
        <th>Staff Member</th>
        <th>Reason</th>
        <th>Translation Required</th>
        <th>Cancel</th>
      </tr>
    </thead>
    <tbody>
      <?php foreach ($requests as $request): ?>
        <tr id="<?=$request['id']?>">
          <td>
            <ul>
              <?php foreach ($request['slots'] as $slot): ?>
                  <li>
                    <?=date('d/m/Y', strtotime($slot['start_time']))?>
                  </li>
                <?php endforeach?>
            </ul>
          </td>
          <td>
            <ul>
              <?php foreach ($request['slots'] as $slot): ?>
                  <li>
                    <?=date('H:i', strtotime($slot['start_time']))?>
                  </li>
                <?php endforeach?>
            </ul>
          </td>
          <td>
            <?=$request['staff']?>
          </td>
          <td>
            <?=$request['reason']?>
          </td>
          <td>
            <?=$request['translation']?>
          </td>
          <td>
            <a class="btn danger-btn">Cancel</a>
          </td>
        </tr>
      <?php endforeach?>
    </tbody>
  </table>
<?php else: ?>
  <p>There are no appointment booking requests to show. To make one, please go to the <a href="request-appointment.php">Request Appointment</a> page.</p>
<?php endif?>
