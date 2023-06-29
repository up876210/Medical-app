<?php
require_once '../back-end/init.php';

// Redirect users who have already logged in to the home page
if (isset($_SESSION['user'])) {
  $GLOBALS['app']->redirect('index.php');
}

// Check if the register form has been submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  if (isset($_POST['email'], $_POST['password'], $_POST['consent_check'])) {
    // Sanitise the user's account inputs
    $data['email'] = trim(htmlspecialchars($_POST['email']));
    $data['password'] = htmlspecialchars($_POST['password']);

    $sanitise = function ($item) {
      return trim(htmlspecialchars($item));
    };

    $data['next_of_kin'] = $_POST['next_of_kin'];
    $data['patient'] = $_POST['patient'];

    // Handle empty inputs
    foreach (array_keys($data['next_of_kin']) as $detail) {
      $data['next_of_kin'][$detail] = empty($data['next_of_kin'][$detail]) ? null : $data['next_of_kin'][$detail];
    }

    foreach (array_keys($data['patient']) as $detail) {
      $data['patient'][$detail] = empty($data['patient'][$detail]) ? null : $data['patient'][$detail];
    }

    // Sanitise the user's patient and next of kin inputs
    array_map($sanitise, $data['next_of_kin']);
    array_map($sanitise, $data['patient']);

    $strip = function ($item) {
      return preg_replace('/\s+/', '', $item);
    };

    $p_contact_numbers = array(
      'tel_no' => $data['patient']['tel_no'],
      'mob_no' => $data['patient']['mob_no'],
    );

    $nok_contact_numbers = array(
      'tel_no' => $data['next_of_kin']['tel_no'],
      'mob_no' => $data['next_of_kin']['mob_no'],
    );

    $healthcare_numbers = array(
      'nhs_no' => $data['patient']['nhs_no'],
      'hc_no' => $data['patient']['hc_no'],
    );

    // Remove all whitespace from contact and healthcare numbers
    array_map($strip, $p_contact_numbers);
    array_map($strip, $nok_contact_numbers);
    array_map($strip, $healthcare_numbers);

    // Add cleansed contact numbers back into the array
    foreach (array_keys($p_contact_numbers) as $number) {
      $data['patient'][$number] = $p_contact_numbers[$number];
    }

    foreach (array_keys($nok_contact_numbers) as $number) {
      $data['next_of_kin'][$number] = $nok_contact_numbers[$number];
    }

    // Add cleansed healthcare numbers back into the array
    foreach (array_keys($healthcare_numbers) as $number) {
      $data['patient'][$number] = $healthcare_numbers[$number];
    }

    UserManager::register($data);
  } else {
    $GLOBALS['errors'][] = 'Please enter a valid email address and password.';
  }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <?php include dirname(__FILE__) . '/../back-end/includes/head-elements.inc.php';?>
  <title><?=$GLOBALS['app']->title?> &mdash; Register</title>
</head>

<body>
  <?php include dirname(__FILE__) . '/../back-end/includes/header.inc.php';?>

  <main>
    <?php include dirname(__FILE__) . '/../back-end/includes/error-container.inc.php';?>

    <form method="post" id="registration-form">
      <h2>Register</h2>

      <p>Please enter details about yourself and your next of kin.</p>

      <fieldset>
        <legend>Account Details</legend>

        <label for="email">
          Email Address
          <input type="email" name="email" id="email" value="<?php echo isset($_POST['email']) ? $_POST['email'] : '' ?>" required>
        </label>
        <label for="password">
          Password
          <input type="password" name="password" id="password" required>
        </label>
      </fieldset>

      <fieldset>
        <legend>Patient Details</legend>

        <label for="p_title">
          Title
          <input type="text" name="patient[title]" id="p_title" value="<?php echo isset($data['patient']['title']) ? $data['patient']['title'] : '' ?>" maxlength="35" required>
        </label>
        <label for="p_forename">
          Forename
          <input type="text" name="patient[forename]" id="p_forename" value="<?php echo isset($data['patient']['forename']) ? $data['patient']['forename'] : '' ?>" maxlength="35" required>
        </label>
        <label for="p_surname">
          Surname
          <input type="text" name="patient[surname]" id="p_surname" value="<?php echo isset($data['patient']['surname']) ? $data['patient']['surname'] : '' ?>" maxlength="35" required>
        </label>
        <label for="p_sex">
          Sex
          <select name="patient[sex]" id="p_sex" required>
            <option value="">Choose Sex</option>
            <option value="M" <?php echo isset($data['patient']['sex']) && $data['patient']['sex'] === 'M' ? 'selected' : '' ?>>Male</option>
            <option value="F" <?php echo isset($data['patient']['sex']) && $data['patient']['sex'] === 'F' ? 'selected' : '' ?>>Female</option>
          </select>
        </label>
        <label for="p_date_of_birth">
          Date of Birth
          <input type="date" name="patient[date_of_birth]" id="p_date_of_birth" value="<?php echo isset($data['patient']['date_of_birth']) ? $data['patient']['date_of_birth'] : '' ?>" required>
        </label>
        <label for="p_house_name">
          House Name
          <input type="text" name="patient[house_name]" id="p_house_name" value="<?php echo isset($data['patient']['house_name']) ? $data['patient']['house_name'] : '' ?>" maxlength="35">
        </label>
        <label for="p_house_no">
          House Number
          <input type="text" name="patient[house_no]" id="p_house_no" value="<?php echo isset($data['patient']['house_no']) ? $data['patient']['house_no'] : '' ?>" maxlength="5">
        </label>
        <label for="p_street">
          Street
          <input type="text" name="patient[street]" id="p_street" value="<?php echo isset($data['patient']['street']) ? $data['patient']['street'] : '' ?>" maxlength="70" required>
        </label>
        <label for="p_city">
          City
          <input type="text" name="patient[city]" id="p_city" value="<?php echo isset($data['patient']['city']) ? $data['patient']['city'] : '' ?>" maxlength="60" required>
        </label>
        <label for="p_county">
          County
          <input type="text" name="patient[county]" id="p_county" value="<?php echo isset($data['patient']['county']) ? $data['patient']['county'] : '' ?>" maxlength="30" required>
        </label>
        <label for="p_postcode">
          Postcode
          <input type="text" name="patient[postcode]" id="p_postcode" value="<?php echo isset($data['patient']['postcode']) ? $data['patient']['postcode'] : '' ?>" minlength="6" maxlength="8" required>
        </label>
        <label for="p_tel_no">
          Telephone Number
          <input type="text" name="patient[tel_no]" id="p_tel_no" value="<?php echo isset($data['patient']['tel_no']) ? $data['patient']['tel_no'] : '' ?>" minlength="10" maxlength="15">
        </label>
        <label for="p_mob_no">
          Mobile Number
          <input type="text" name="patient[mob_no]" id="p_mob_no" value="<?php echo isset($data['patient']['mob_no']) ? $data['patient']['mob_no'] : '' ?>" minlength="10" maxlength="15">
        </label>
        <label for="p_nhs_no">
          NHS Number
          <input type="text" name="patient[nhs_no]" id="p_nhs_no" value="<?php echo isset($data['patient']['nhs_no']) ? $data['patient']['nhs_no'] : '' ?>" minlength="10" maxlength="10">
        </label>
        <label for="p_hc_no">
          Health and Care Number (Northern Ireland only)
          <input type="text" name="patient[hc_no]" id="p_hc_no" value="<?php echo isset($data['patient']['hc_no']) ? $data['patient']['hc_no'] : '' ?>" minlength="10" maxlength="10">
        </label>
      </fieldset>

      <fieldset>
        <legend>Next of Kin Details</legend>

        <label for="nok_relationship">
          Relationship
          <input type="text" name="next_of_kin[relationship]" id="nok_relationship" value="<?php echo isset($data['next_of_kin']['relationship']) ? $data['next_of_kin']['relationship'] : '' ?>" maxlength="15" required>
        </label>
        <label for="nok_title">
          Title
          <input type="text" name="next_of_kin[title]" id="nok_title" value="<?php echo isset($data['next_of_kin']['title']) ? $data['next_of_kin']['title'] : '' ?>" maxlength="35" required>
        </label>
        <label for="nok_forename">
          Forename
          <input type="text" name="next_of_kin[forename]" id="nok_forename" value="<?php echo isset($data['next_of_kin']['forename']) ? $data['next_of_kin']['forename'] : '' ?>" maxlength="35" required>
        </label>
        <label for="nok_surname">
          Surname
          <input type="text" name="next_of_kin[surname]" id="nok_surname" value="<?php echo isset($data['next_of_kin']['surname']) ? $data['next_of_kin']['surname'] : '' ?>" maxlength="35" required>
        </label>
        <label for="nok_house_name">
          House Name
          <input type="text" name="next_of_kin[house_name]" id="nok_house_name" value="<?php echo isset($data['next_of_kin']['house_name']) ? $data['next_of_kin']['house_name'] : '' ?>" maxlength="35">
        </label>
        <label for="nok_house_no">
          House Number
          <input type="text" name="next_of_kin[house_no]" id="nok_house_no" value="<?php echo isset($data['next_of_kin']['house_no']) ? $data['next_of_kin']['house_no'] : '' ?>" maxlength="5">
        </label>
        <label for="nok_street">
          Street
          <input type="text" name="next_of_kin[street]" id="nok_street" value="<?php echo isset($data['next_of_kin']['street']) ? $data['next_of_kin']['street'] : '' ?>" maxlength="70" required>
        </label>
        <label for="nok_city">
          City
          <input type="text" name="next_of_kin[city]" id="nok_city" value="<?php echo isset($data['next_of_kin']['city']) ? $data['next_of_kin']['city'] : '' ?>" maxlength="60" required>
        </label>
        <label for="nok_county">
          County
          <input type="text" name="next_of_kin[county]" id="nok_county" value="<?php echo isset($data['next_of_kin']['county']) ? $data['next_of_kin']['county'] : '' ?>" maxlength="30" required>
        </label>
        <label for="nok_postcode">
          Postcode
          <input type="text" name="next_of_kin[postcode]" id="nok_postcode" value="<?php echo isset($data['next_of_kin']['postcode']) ? $data['next_of_kin']['postcode'] : '' ?>" minlength="6" maxlength="8" required>
        </label>
        <label for="nok_tel_no">
          Telephone Number
          <input type="text" name="next_of_kin[tel_no]" id="nok_tel_no" value="<?php echo isset($data['next_of_kin']['tel_no']) ? $data['next_of_kin']['tel_no'] : '' ?>" minlength="10" maxlength="15">
        </label>
        <label for="nok_mob_no">
          Mobile Number
          <input type="text" name="next_of_kin[mob_no]" id="nok_mob_no" value="<?php echo isset($data['next_of_kin']['mob_no']) ? $data['next_of_kin']['mob_no'] : '' ?>" minlength="10" maxlength="15">
        </label>
      </fieldset>

      <fieldset>
        <legend>Data Consent</legend>

        <p>By ticking this box, I am consenting to have my personal data being used by the system.</p>

        <label for="consent_check">
          <input type="checkbox" name="consent_check" id="consent_check">
          I consent
        </label>
      </fieldset>

      <a href="login.php" id="login">Log in</a>
      <input type="submit" value="Register" id="Register">
    </form>
  </main>

  <script src="js/register.js"></script>
</body>

</html>
