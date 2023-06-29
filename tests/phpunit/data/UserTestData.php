<?php

$GLOBALS['verified_users'] = array(
  'administrative-1' => array(
    'id' => 'as-5e4685e3c899f1.04316598',
    'role_id' => '1',
    'verified' => 1,
    'full_name' => 'Mr Matthew Johnson',
    'sex' => 'M',
    'job_title' => 'Receptionist',
    'email' => 'as1@test.com',
  ),
  'administrative-2' => array(
    'id' => 'as-5e46873222d123.80231466',
    'role_id' => '1',
    'verified' => 1,
    'full_name' => 'Mrs Stacey Rhodes',
    'sex' => 'F',
    'job_title' => 'Receptionist',
    'email' => 'as2@test.com',
  ),
  'medical-1' => array(
    'id' => 'ms-5e4685f6e57722.33264537',
    'role_id' => '2',
    'verified' => 1,
    'full_name' => 'Dr Jin Xiao',
    'sex' => 'M',
    'job_title' => 'General Practitioner',
    'email' => 'ms1@test.com',
  ),
  'medical-2' => array(
    'id' => 'ms-5e46874b062833.95604018',
    'role_id' => '2',
    'verified' => 1,
    'full_name' => 'Dr Margaret Christchurch',
    'sex' => 'F',
    'job_title' => 'General Practitioner',
    'email' => 'ms2@test.com',
  ),
  'patient-1' => array(
    'id' => 'pa-5e4686095092e0.76300630',
    'role_id' => '3',
    'verified' => 1,
    'full_name' => 'Mr David Bowden',
    'sex' => 'M',
    'date_of_birth' => '1990-01-26',
    'address' => '12 Meyrick Road, Portsmouth, Hampshire, PO2 RJF',
    'email' => 'pa1@test.com',
    'tel_no' => '+447691014037',
    'mob_no' => '+448865738896',
    'nhs_no' => '4562594365',
    'contact_by_email' => 0,
    'contact_by_text' => 0,
  ),
  'patient-2' => array(
    'id' => 'pa-5e46875705e162.50418870',
    'role_id' => '3',
    'verified' => 1,
    'full_name' => 'Mrs Jeanette Cowles',
    'sex' => 'F',
    'date_of_birth' => '1940-02-12',
    'address' => '14 Meyrick Road, Portsmouth, Hampshire, PO2 RJF',
    'email' => 'pa2@test.com',
    'tel_no' => '+445611214623',
    'mob_no' => '+449869745821',
    'nhs_no' => '8074819035',
    'contact_by_email' => 0,
    'contact_by_text' => 0,
  ),
);

$GLOBALS['unverified_users'] = array(
  'patient-3' => array(
    'id' => 'pa-5e46876f3d9332.22430483',
    'role_id' => '3',
    'verified' => 0,
    'full_name' => 'Mr Bob Zotto',
    'sex' => 'M',
    'date_of_birth' => '1960-08-18',
    'address' => '5888 Park Drive, Gosport, Hampshire, PO12 6DR',
    'email' => 'pa3@test.com',
    'tel_no' => '+446893649145',
    'mob_no' => '+445171936505',
    'nhs_no' => '8586218634',
    'contact_by_email' => 0,
    'contact_by_text' => 0,
  ),
  'patient-4' => array(
    'id' => 'pa-5e468774d36a40.10626920',
    'role_id' => '3',
    'verified' => 0,
    'full_name' => 'Ms Shirley Banks',
    'sex' => 'F',
    'date_of_birth' => '1978-12-05',
    'address' => '705 Cross St, Winchester, Hampshire, SO20 6Pj',
    'email' => 'pa4@test.com',
    'tel_no' => '+447102306288',
    'mob_no' => '+445841903874',
    'nhs_no' => '4456772352',
    'contact_by_email' => 0,
    'contact_by_text' => 0,
  ),
);

$GLOBALS['all_users'] = array(
  $GLOBALS['verified_users'],
  $GLOBALS['unverified_users'],
);

$GLOBALS['valid_password'] = 'test123';

$GLOBALS['new_email'] = 'new@test.com';
$GLOBALS['invalid_email'] = 'invalidEmail';
$GLOBALS['nonexistent_email'] = 'nonexistent@test.com';

$GLOBALS['patient_filled'] = array(
  'title' => 'Mr',
  'forename' => 'David',
  'surname' => 'Bowden',
  'sex' => 'M',
  'date_of_birth' => '1990-01-26',
  'house_name' => '',
  'house_no' => '12',
  'street' => 'Meyrick Road',
  'city' => 'Portsmouth',
  'county' => 'Hampshire',
  'postcode' => 'PO2 RJF',
  'tel_no' => '+447691014037',
  'mob_no' => '+448865738896',
  'next_of_kin' => 'nk-5e4693079a5e18.63580261',
  'nhs_no' => '4562594365',
  'hc_no' => '',
);

$GLOBALS['patient_empty'] = array(
  'title' => '',
  'forename' => '',
  'surname' => '',
  'sex' => '',
  'date_of_birth' => '',
  'house_name' => '',
  'house_no' => '',
  'street' => '',
  'city' => '',
  'county' => '',
  'postcode' => '',
  'tel_no' => '',
  'mob_no' => '',
  'next_of_kin' => '',
  'nhs_no' => '',
  'hc_no' => '',
);

$GLOBALS['nok_filled'] = array(
  'relationship' => 'Father',
  'title' => 'Mr',
  'forename' => 'Nerti',
  'surname' => 'Philson',
  'house_name' => '',
  'house_no' => '7',
  'street' => 'London Road',
  'city' => 'Southampton',
  'county' => 'Hampshire',
  'postcode' => 'SO15 2AE',
  'tel_no' => '+447691014037',
  'mob_no' => '+448865738896',
);

$GLOBALS['nok_empty'] = array(
  'relationship' => '',
  'title' => '',
  'forename' => '',
  'surname' => '',
  'house_name' => '',
  'house_no' => '',
  'street' => '',
  'city' => '',
  'county' => '',
  'postcode' => '',
  'tel_no' => '',
  'mob_no' => '',
);
