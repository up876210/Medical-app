/* Facility: Example facility */
INSERT INTO `facility` (`id`, `name`, `building_name`, `building_no`, `street`, `city`, `county`, `postcode`, `tel_no`) 
  VALUES ('fa-5e4a83211ffd59.63214101', 'Derby Road Group Practice', null, '27-29', 'Derby Rd', 'Portsmouth', 'Hampshire', 'PO2 8HW', '+442392009265');

/* Role: 3 Default roles */
INSERT INTO `role` (`description`) VALUES ('administrative_staff');
INSERT INTO `role` (`description`) VALUES ('medical_staff');
INSERT INTO `role` (`description`) VALUES ('patient');

/* Account: Different accounts for each role (password = 'test123') */
INSERT INTO `account` (`id`, `email`, `password`, `role_id`, `verified`, `facility_id`) 
  VALUES ('as-5e4685e3c899f1.04316598', 'as1@test.com', '$2y$10$vLmKOHyBeRKCaXap7Xt5nuxc5XoZ1hZjmlIMl/GwK2zL4D2MHpefK', 1, true, 'fa-5e4a83211ffd59.63214101');
INSERT INTO `account` (`id`, `email`, `password`, `role_id`, `verified`, `facility_id`) 
  VALUES ('as-5e46873222d123.80231466', 'as2@test.com', '$2y$10$vLmKOHyBeRKCaXap7Xt5nuxc5XoZ1hZjmlIMl/GwK2zL4D2MHpefK', 1, true, 'fa-5e4a83211ffd59.63214101');
INSERT INTO `account` (`id`, `email`, `password`, `role_id`, `verified`, `facility_id`) 
  VALUES ('ms-5e4685f6e57722.33264537', 'ms1@test.com', '$2y$10$vLmKOHyBeRKCaXap7Xt5nuxc5XoZ1hZjmlIMl/GwK2zL4D2MHpefK', 2, true, 'fa-5e4a83211ffd59.63214101');
INSERT INTO `account` (`id`, `email`, `password`, `role_id`, `verified`, `facility_id`) 
  VALUES ('ms-5e46874b062833.95604018', 'ms2@test.com', '$2y$10$vLmKOHyBeRKCaXap7Xt5nuxc5XoZ1hZjmlIMl/GwK2zL4D2MHpefK', 2, true, 'fa-5e4a83211ffd59.63214101');
INSERT INTO `account` (`id`, `email`, `password`, `role_id`, `verified`, `facility_id`) 
  VALUES ('pa-5e4686095092e0.76300630', 'pa1@test.com', '$2y$10$vLmKOHyBeRKCaXap7Xt5nuxc5XoZ1hZjmlIMl/GwK2zL4D2MHpefK', 3, true, 'fa-5e4a83211ffd59.63214101');
INSERT INTO `account` (`id`, `email`, `password`, `role_id`, `verified`, `facility_id`) 
  VALUES ('pa-5e46875705e162.50418870', 'pa2@test.com', '$2y$10$vLmKOHyBeRKCaXap7Xt5nuxc5XoZ1hZjmlIMl/GwK2zL4D2MHpefK', 3, true, 'fa-5e4a83211ffd59.63214101');
INSERT INTO `account` (`id`, `email`, `password`, `role_id`, `verified`, `facility_id`) 
  VALUES ('pa-5e46876f3d9332.22430483', 'pa3@test.com', '$2y$10$vLmKOHyBeRKCaXap7Xt5nuxc5XoZ1hZjmlIMl/GwK2zL4D2MHpefK', 3, false, 'fa-5e4a83211ffd59.63214101');
INSERT INTO `account` (`id`, `email`, `password`, `role_id`, `verified`, `facility_id`) 
  VALUES ('pa-5e468774d36a40.10626920', 'pa4@test.com', '$2y$10$vLmKOHyBeRKCaXap7Xt5nuxc5XoZ1hZjmlIMl/GwK2zL4D2MHpefK', 3, false, 'fa-5e4a83211ffd59.63214101');

/* Staff: Different accounts for both roles */
INSERT INTO `staff` (`id`, `title`, `forename`, `surname`, `sex`, `job_title`)
  VALUES ('as-5e4685e3c899f1.04316598', 'Mr', 'Matthew', 'Johnson', 'M', 'Receptionist');
INSERT INTO `staff` (`id`, `title`, `forename`, `surname`, `sex`, `job_title`)
  VALUES ('as-5e46873222d123.80231466', 'Mrs', 'Stacey', 'Rhodes', 'F', 'Receptionist');
INSERT INTO `staff` (`id`, `title`, `forename`, `surname`, `sex`, `job_title`)
  VALUES ('ms-5e4685f6e57722.33264537', 'Dr', 'Jin', 'Xiao', 'M', 'General Practitioner');
INSERT INTO `staff` (`id`, `title`, `forename`, `surname`, `sex`, `job_title`)
  VALUES ('ms-5e46874b062833.95604018', 'Dr', 'Margaret', 'Christchurch', 'F', 'General Practitioner');

/* Next of Kin: Records for each patient record */
INSERT INTO `next_of_kin` (`id`, `relationship`, `title`, `forename`, `surname`, `house_name`, `house_no`, `street`, `city`, `county`, `postcode`, `tel_no`, `mob_no`)
  VALUES ('nk-5e4693079a5e18.63580261', 'Father', 'Mr', 'Nerti', 'Philson', null, '7', 'London Road', 'Southampton', 'Hampshire', 'SO15 2AE', '+447691014037', '+448865738896');
INSERT INTO `next_of_kin` (`id`, `relationship`, `title`, `forename`, `surname`, `house_name`, `house_no`, `street`, `city`, `county`, `postcode`, `tel_no`, `mob_no`)
  VALUES ('nk-5e4693969040c3.17276446', 'Mother', 'Mrs', 'Consolata', 'Haverson', null, '6532', 'Ocean Way', 'Southampton', 'Hampshire', 'SO14 3JT', '+443147151972', '+441112173010');
INSERT INTO `next_of_kin` (`id`, `relationship`, `title`, `forename`, `surname`, `house_name`, `house_no`, `street`, `city`, `county`, `postcode`, `tel_no`, `mob_no`)
  VALUES ('nk-5e4694c3ad45f4.91981040', 'Daughter', 'Ms', 'Elvera', 'Zotto', null, '71', 'Willis Rd', 'Portsmouth', 'Hampshire', 'PO1 1AT', '+449404753184', '+445158412207');
INSERT INTO `next_of_kin` (`id`, `relationship`, `title`, `forename`, `surname`, `house_name`, `house_no`, `street`, `city`, `county`, `postcode`, `tel_no`, `mob_no`)
  VALUES ('nk-5e4694507dc976.27152557', 'Son', 'Dr', 'Kirby', 'Botler', 'The Willows', null, 'Wilson St', 'Gosport', 'Hampshire', 'PO12 4PQ', '+449685024267', '+448489534531');

/* Patient: Different records for each patient account */
INSERT INTO `patient` (`id`, `title`, `forename`, `surname`, `sex`, `date_of_birth`, `house_name`, `house_no`, `street`, `city`, `county`, `postcode`, `tel_no`, `mob_no`, `next_of_kin`, `NHS_no`, `HC_no`, `contact_by_email`,`contact_by_text`)
  VALUES ('pa-5e4686095092e0.76300630', 'Mr', 'David', 'Bowden', 'M', '1990-01-26', null, '12', 'Meyrick Road', 'Portsmouth', 'Hampshire', 'PO2 RJF', '+447691014037', '+448865738896', 'nk-5e4693079a5e18.63580261', '4562594365', null, false, false);
INSERT INTO `patient` (`id`, `title`, `forename`, `surname`, `sex`, `date_of_birth`, `house_name`, `house_no`, `street`, `city`, `county`, `postcode`, `tel_no`, `mob_no`, `next_of_kin`, `NHS_no`, `HC_no`, `contact_by_email`,`contact_by_text`)
  VALUES ('pa-5e46875705e162.50418870', 'Mrs', 'Jeanette', 'Cowles', 'F', '1940-02-12', null, '14', 'Meyrick Road', 'Portsmouth', 'Hampshire', 'PO2 RJF', '+445611214623', '+449869745821', 'nk-5e4693969040c3.17276446', '8074819035', null, false, false);
INSERT INTO `patient` (`id`, `title`, `forename`, `surname`, `sex`, `date_of_birth`, `house_name`, `house_no`, `street`, `city`, `county`, `postcode`, `tel_no`, `mob_no`, `next_of_kin`, `NHS_no`, `HC_no`, `contact_by_email`,`contact_by_text`)
  VALUES ('pa-5e46876f3d9332.22430483', 'Mr', 'Bob', 'Zotto', 'M', '1960-08-18', null, '5888', 'Park Drive', 'Gosport', 'Hampshire', 'PO12 6DR', '+446893649145', '+445171936505', 'nk-5e4694c3ad45f4.91981040', '8586218634', null, false, false);
INSERT INTO `patient` (`id`, `title`, `forename`, `surname`, `sex`, `date_of_birth`, `house_name`, `house_no`, `street`, `city`, `county`, `postcode`, `tel_no`, `mob_no`, `next_of_kin`, `NHS_no`, `HC_no`, `contact_by_email`,`contact_by_text`)
  VALUES ('pa-5e468774d36a40.10626920', 'Ms', 'Shirley', 'Banks', 'F', '1978-12-05', null, '705', 'Cross St', 'Winchester', 'Hampshire', 'SO20 6Pj', '+447102306288', '+445841903874', 'nk-5e4694507dc976.27152557', '4456772352', null, false, false);

/* Slot: Time slots for which patients may make appointment booking requests (Mon, Tue, Wed, Thu, Fri, Sat, and Sun of current week) */
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700174.12262196', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE())), ' 09:00:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE())), ' 09:10:00')), true);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd47001c1.91031235', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE())), ' 09:10:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE())), ' 09:20:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd47001d1.96456823', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE())), ' 09:20:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE())), ' 09:30:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd47001e5.95247456', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE())), ' 09:30:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE())), ' 09:40:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd47001f5.32309261', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE())), ' 09:40:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE())), ' 09:50:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700201.70329146', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE())), ' 09:50:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE())), ' 10:00:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700213.94939221', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE())), ' 10:00:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE())), ' 10:10:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700223.11459087', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE())), ' 10:10:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE())), ' 10:20:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700230.47065592', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE())), ' 10:20:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE())), ' 10:30:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700245.09717618', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE())), ' 10:30:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE())), ' 10:40:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700252.60187231', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE())), ' 10:40:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE())), ' 10:50:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700267.77683201', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE())), ' 10:50:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE())), ' 11:00:00')), false);

INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700270.30601035', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 1), ' 09:00:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 1), ' 09:10:00')), true);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700280.55658484', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 1), ' 09:10:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 1), ' 09:20:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700290.42187533', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 1), ' 09:20:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 1), ' 09:30:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd47002a5.09197727', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 1), ' 09:30:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 1), ' 09:40:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd47002b3.52547517', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 1), ' 09:40:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 1), ' 09:50:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd47002c4.65175032', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 1), ' 09:50:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 1), ' 10:00:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd47002d6.95115050', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 1), ' 10:00:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 1), ' 10:10:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd47002e4.68573828', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 1), ' 10:10:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 1), ' 10:20:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd47002f7.30764070', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 1), ' 10:20:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 1), ' 10:30:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700308.19636337', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 1), ' 10:30:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 1), ' 10:40:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700314.49969519', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 1), ' 10:40:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 1), ' 10:50:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700322.42011059', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 1), ' 10:50:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 1), ' 11:00:00')), false);

INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700330.92202765', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 2), ' 09:00:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 2), ' 09:10:00')), true);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700343.15345331', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 2), ' 09:10:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 2), ' 09:20:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700355.36260025', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 2), ' 09:20:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 2), ' 09:30:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700368.97567150', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 2), ' 09:30:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 2), ' 09:40:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700374.36143190', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 2), ' 09:40:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 2), ' 09:50:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700381.03135929', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 2), ' 09:50:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 2), ' 10:00:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700394.67012892', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 2), ' 10:00:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 2), ' 10:10:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd47003a9.20211607', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 2), ' 10:10:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 2), ' 10:20:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd47003b6.59226417', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 2), ' 10:20:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 2), ' 10:30:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd47003c2.43798754', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 2), ' 10:30:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 2), ' 10:40:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd47003d6.61386784', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 2), ' 10:40:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 2), ' 10:50:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd47003e3.33449814', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 2), ' 10:50:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 2), ' 11:00:00')), false);

INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd47003f1.85041802', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 3), ' 09:00:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 3), ' 09:10:00')), true);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700403.34165086', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 3), ' 09:10:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 3), ' 09:20:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700417.69916221', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 3), ' 09:20:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 3), ' 09:30:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700426.30417125', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 3), ' 09:30:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 3), ' 09:40:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700430.96610488', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 3), ' 09:40:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 3), ' 09:50:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700446.44916200', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 3), ' 09:50:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 3), ' 10:00:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700459.06846302', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 3), ' 10:00:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 3), ' 10:10:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700462.39672744', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 3), ' 10:10:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 3), ' 10:20:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700475.76716563', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 3), ' 10:20:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 3), ' 10:30:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700487.71335715', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 3), ' 10:30:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 3), ' 10:40:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700496.79719224', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 3), ' 10:40:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 3), ' 10:50:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd47004a6.55914235', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 3), ' 10:50:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 3), ' 11:00:00')), false);

INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd47004b7.86034960', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 4), ' 09:00:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 4), ' 09:10:00')), true);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd47004c3.42095722', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 4), ' 09:10:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 4), ' 09:20:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd47004d6.86952692', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 4), ' 09:20:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 4), ' 09:30:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd47004e8.17831044', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 4), ' 09:30:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 4), ' 09:40:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd47004f8.36142053', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 4), ' 09:40:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 4), ' 09:50:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700507.80572271', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 4), ' 09:50:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 4), ' 10:00:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700514.73018141', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 4), ' 10:00:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 4), ' 10:10:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700528.79898461', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 4), ' 10:10:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 4), ' 10:20:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700535.15002941', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 4), ' 10:20:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 4), ' 10:30:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700547.97117112', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 4), ' 10:30:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 4), ' 10:40:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700556.51023669', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 4), ' 10:40:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 4), ' 10:50:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700568.40103706', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 4), ' 10:50:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 4), ' 11:00:00')), false);

INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700572.01748242', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 5), ' 09:00:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 5), ' 09:10:00')), true);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700583.37604776', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 5), ' 09:10:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 5), ' 09:20:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700592.80393715', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 5), ' 09:20:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 5), ' 09:30:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd47005a7.58822409', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 5), ' 09:30:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 5), ' 09:40:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd47005b4.39278555', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 5), ' 09:40:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 5), ' 09:50:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd47005c3.44444612', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 5), ' 09:50:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 5), ' 10:00:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd47005d5.19083799', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 5), ' 10:00:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 5), ' 10:10:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd47005e9.79969646', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 5), ' 10:10:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 5), ' 10:20:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd47005f7.04600528', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 5), ' 10:20:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 5), ' 10:30:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700603.19468974', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 5), ' 10:30:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 5), ' 10:40:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700613.99979173', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 5), ' 10:40:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 5), ' 10:50:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700621.76116134', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 5), ' 10:50:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 5), ' 11:00:00')), false);

INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700634.70531922', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 6), ' 09:00:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 6), ' 09:10:00')), true);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700641.76627722', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 6), ' 09:10:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 6), ' 09:20:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700655.33443223', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 6), ' 09:20:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 6), ' 09:30:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700668.11306931', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 6), ' 09:30:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 6), ' 09:40:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700670.79867069', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 6), ' 09:40:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 6), ' 09:50:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700685.48043933', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 6), ' 09:50:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 6), ' 10:00:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd4700698.93454644', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 6), ' 10:00:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 6), ' 10:10:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd47006a9.49433144', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 6), ' 10:10:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 6), ' 10:20:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd47006b6.95461734', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 6), ' 10:20:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 6), ' 10:30:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd47006c2.15319743', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 6), ' 10:30:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 6), ' 10:40:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd47006d7.82257086', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 6), ' 10:40:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 6), ' 10:50:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e5f9bd47006e4.04775992', TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 6), ' 10:50:00')), TIMESTAMP(CONCAT(SUBDATE(CURDATE(), WEEKDAY(CURDATE()) - 6), ' 11:00:00')), false);

-- 1 week ahead
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660dcda05e97.76072091', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK)), ' 09:00:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK)), ' 09:10:00')), true);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660dcda05fa6.30978386', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK)), ' 09:10:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK)), ' 09:20:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660dcda05fe8.15336455', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK)), ' 09:20:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK)), ' 09:30:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660dcda06013.12481526', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK)), ' 09:30:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK)), ' 09:40:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660dcda06059.06648636', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK)), ' 09:40:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK)), ' 09:50:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660dcda06087.33758496', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK)), ' 09:50:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK)), ' 10:00:00')), false);

INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660eadc50c67.58518387', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 1), ' 09:00:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 1), ' 09:10:00')), true);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660eadc50d75.32257299', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 1), ' 09:10:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 1), ' 09:20:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660eadc50db1.33413617', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 1), ' 09:20:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 1), ' 09:30:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660eadc50df8.33749354', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 1), ' 09:30:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 1), ' 09:40:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660eadc50e22.55842742', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 1), ' 09:40:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 1), ' 09:50:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660eadc50e57.95404883', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 1), ' 09:50:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 1), ' 10:00:00')), false);

INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660eadc51011.94408913', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 3), ' 09:00:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 3), ' 09:10:00')), true);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660eadc51047.89547859', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 3), ' 09:10:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 3), ' 09:20:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660eadc51079.85793405', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 3), ' 09:20:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 3), ' 09:30:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660eadc510a0.71810472', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 3), ' 09:30:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 3), ' 09:40:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660eadc511d2.13830822', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 3), ' 09:40:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 3), ' 09:50:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660eadc51229.92937105', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 3), ' 09:50:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 3), ' 10:00:00')), false);

INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660fc1e4b958.01859518', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 4), ' 09:00:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 4), ' 09:10:00')), true);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660fc1e4ba47.58364168', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 4), ' 09:10:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 4), ' 09:20:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660fc1e4ba86.15495029', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 4), ' 09:20:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 4), ' 09:30:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660fc1e4bac3.46664496', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 4), ' 09:30:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 4), ' 09:40:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660fc1e4baf1.62850066', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 4), ' 09:40:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 4), ' 09:50:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660fc1e4bb25.25622627', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 4), ' 09:50:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 4), ' 10:00:00')), false);

INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660fc1e4bb50.81624657', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 5), ' 09:00:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 5), ' 09:10:00')), true);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660fc1e4bb97.63215554', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 5), ' 09:10:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 5), ' 09:20:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660fc1e4bbc3.18329237', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 5), ' 09:20:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 5), ' 09:30:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660fc1e4bbf7.94606223', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 5), ' 09:30:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 5), ' 09:40:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660fc1e4bc22.75302076', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 5), ' 09:40:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 5), ' 09:50:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660fc1e4bc53.78068360', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 5), ' 09:50:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 5), ' 10:00:00')), false);

INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660fc1e4bc85.01038830', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 6), ' 09:00:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 6), ' 09:10:00')), true);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660fc1e4bcb7.99071893', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 6), ' 09:10:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 6), ' 09:20:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660fc1e4bce7.70074869', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 6), ' 09:20:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 6), ' 09:30:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660fc1e4bd17.71477273', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 6), ' 09:30:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 6), ' 09:40:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660fc1e4bd49.09007459', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 6), ' 09:40:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 6), ' 09:50:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e660fc1e4bd72.31226726', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 6), ' 09:50:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 1 WEEK, WEEKDAY(CURDATE() + INTERVAL 1 WEEK) - 6), ' 10:00:00')), false);

-- 2 weeks ahead
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba939c7.90476374', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK)), ' 09:00:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK)), ' 09:10:00')), true);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba93ac4.37015407', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK)), ' 09:10:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK)), ' 09:20:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba93b18.90979794', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK)), ' 09:20:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK)), ' 09:30:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba93b44.94481462', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK)), ' 09:30:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK)), ' 09:40:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba93b75.02343056', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK)), ' 09:40:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK)), ' 09:50:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba93bb5.24131163', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK)), ' 09:50:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK)), ' 10:00:00')), false);

INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba93be1.23214459', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 1), ' 09:00:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 1), ' 09:10:00')), true);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba93c14.87584768', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 1), ' 09:10:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 1), ' 09:20:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba93c41.46229285', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 1), ' 09:20:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 1), ' 09:30:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba93c77.70643069', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 1), ' 09:30:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 1), ' 09:40:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba93ca8.69041630', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 1), ' 09:40:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 1), ' 09:50:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba93ce7.19422958', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 1), ' 09:50:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 1), ' 10:00:00')), false);

INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba93d15.30316867', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 2), ' 09:00:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 2), ' 09:10:00')), true);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba93d47.66868080', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 2), ' 09:10:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 2), ' 09:20:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba93d78.40546588', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 2), ' 09:20:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 2), ' 09:30:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba93da0.89926722', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 2), ' 09:30:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 2), ' 09:40:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba93de2.21599448', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 2), ' 09:40:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 2), ' 09:50:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba93e11.57336791', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 2), ' 09:50:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 2), ' 10:00:00')), false);

INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba93e48.37052281', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 3), ' 09:00:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 3), ' 09:10:00')), true);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba93e70.35826348', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 3), ' 09:10:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 3), ' 09:20:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba93ea7.00655390', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 3), ' 09:20:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 3), ' 09:30:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba93ee9.51181295', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 3), ' 09:30:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 3), ' 09:40:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba93f13.93548002', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 3), ' 09:40:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 3), ' 09:50:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba93f46.30897419', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 3), ' 09:50:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 3), ' 10:00:00')), false);

INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba93f77.22769888', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 4), ' 09:00:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 4), ' 09:10:00')), true);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba93fa2.99963521', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 4), ' 09:10:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 4), ' 09:20:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba93fd2.75027345', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 4), ' 09:20:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 4), ' 09:30:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba94014.75505759', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 4), ' 09:30:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 4), ' 09:40:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba94043.15552913', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 4), ' 09:40:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 4), ' 09:50:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba94074.66145296', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 4), ' 09:50:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 4), ' 10:00:00')), false);

INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba940a5.32008784', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 5), ' 09:00:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 5), ' 09:10:00')), true);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba940e6.56495962', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 5), ' 09:10:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 5), ' 09:20:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba94114.12346946', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 5), ' 09:20:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 5), ' 09:30:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba94142.48322007', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 5), ' 09:30:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 5), ' 09:40:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba94176.19535108', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 5), ' 09:40:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 5), ' 09:50:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba941a6.33008925', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 5), ' 09:50:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 5), ' 10:00:00')), false);

INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba941d2.78863659', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 6), ' 09:00:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 6), ' 09:10:00')), true);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba94211.01421584', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 6), ' 09:10:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 6), ' 09:20:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba94242.01987007', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 6), ' 09:20:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 6), ' 09:30:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba94273.85301227', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 6), ' 09:30:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 6), ' 09:40:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba942a9.63141784', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 6), ' 09:40:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 6), ' 09:50:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66119ba942d3.02748830', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 6), ' 09:50:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 2 WEEK, WEEKDAY(CURDATE() + INTERVAL 2 WEEK) - 6), ' 10:00:00')), false);

-- 3 weeks ahead
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4ea454.55342585', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK)), ' 09:00:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK)), ' 09:10:00')), true);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4ea561.57234029', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK)), ' 09:10:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK)), ' 09:20:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4ea656.10296805', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK)), ' 09:20:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK)), ' 09:30:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4ea6a1.42103271', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK)), ' 09:30:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK)), ' 09:40:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4ea6d8.57439610', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK)), ' 09:40:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK)), ' 09:50:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4ea704.75207030', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK)), ' 09:50:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK)), ' 10:00:00')), false);

INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4ea731.94488395', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 1), ' 09:00:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 1), ' 09:10:00')), true);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4ea760.40052205', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 1), ' 09:10:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 1), ' 09:20:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4ea7a5.49099391', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 1), ' 09:20:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 1), ' 09:30:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4ea7d3.80841034', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 1), ' 09:30:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 1), ' 09:40:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4ea805.93046545', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 1), ' 09:40:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 1), ' 09:50:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4ea836.69499482', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 1), ' 09:50:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 1), ' 10:00:00')), false);

INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4ea872.17549757', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 2), ' 09:00:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 2), ' 09:10:00')), true);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4ea8a1.70622651', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 2), ' 09:10:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 2), ' 09:20:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4ea8d9.69453328', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 2), ' 09:20:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 2), ' 09:30:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4ea907.06797260', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 2), ' 09:30:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 2), ' 09:40:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4ea932.78376866', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 2), ' 09:40:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 2), ' 09:50:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4ea964.68690811', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 2), ' 09:50:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 2), ' 10:00:00')), false);

INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4ea9a1.64500614', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 3), ' 09:00:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 3), ' 09:10:00')), true);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4ea9d9.19620529', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 3), ' 09:10:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 3), ' 09:20:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4eaa06.79975225', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 3), ' 09:20:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 3), ' 09:30:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4eaa39.79500052', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 3), ' 09:30:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 3), ' 09:40:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4eaa62.59907688', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 3), ' 09:40:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 3), ' 09:50:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4eaa91.75796881', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 3), ' 09:50:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 3), ' 10:00:00')), false);

INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4eaac2.90275722', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 4), ' 09:00:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 4), ' 09:10:00')), true);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4eaaf4.07140765', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 4), ' 09:10:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 4), ' 09:20:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4eab23.09741765', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 4), ' 09:20:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 4), ' 09:30:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4eab60.99699704', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 4), ' 09:30:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 4), ' 09:40:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4eab98.53205409', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 4), ' 09:40:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 4), ' 09:50:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4eabc5.77037085', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 4), ' 09:50:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 4), ' 10:00:00')), false);

INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4eabf9.91464955', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 5), ' 09:00:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 5), ' 09:10:00')), true);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4eac29.70227478', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 5), ' 09:10:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 5), ' 09:20:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4eac54.45234853', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 5), ' 09:20:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 5), ' 09:30:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4eac84.48033698', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 5), ' 09:30:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 5), ' 09:40:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4eacb1.97489926', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 5), ' 09:40:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 5), ' 09:50:00')), false);
INSERT INTO `slot` (`id`, `start_time`, `end_time`, `reserved`) 
  VALUES ('sl-5e66129c4eace0.94710985', TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 5), ' 09:50:00')), 
    TIMESTAMP(CONCAT(SUBDATE(CURDATE() + INTERVAL 3 WEEK, WEEKDAY(CURDATE() + INTERVAL 3 WEEK) - 5), ' 10:00:00')), false);

/* Availability: Example time slots for which medical staff members can accept appointments */

-- Medical Staff Member 1 (Available for: current week, 2 weeks ahead, and 3 weeks ahead)
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59686.49292761', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700174.12262196');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59799.65066521', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd47001c1.91031235');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b597e3.41523340', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd47001d1.96456823');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59813.52531265', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd47001e5.95247456');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59854.91498990', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd47001f5.32309261');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59885.45327165', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700201.70329146');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b598b2.30007068', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700213.94939221');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b598e5.08496011', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700223.11459087');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59916.33420130', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700230.47065592');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59954.37184747', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700245.09717618');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59987.17565495', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700252.60187231');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b599b6.38940395', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700267.77683201');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b599e7.30920019', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700270.30601035');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59a22.25575523', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700280.55658484');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59a50.77249158', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700290.42187533');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59a85.97174171', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd47002a5.09197727');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59ac6.82587108', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd47002b3.52547517');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59af3.36141742', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd47002c4.65175032');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59b27.87711927', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd47002d6.95115050');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59b58.01909451', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd47002e4.68573828');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59b83.82474787', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd47002f7.30764070');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59bb9.54358622', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700308.19636337');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59be1.72508263', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700314.49969519');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59c11.80613388', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700322.42011059');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59c51.93841742', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700330.92202765');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59c81.74940109', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700343.15345331');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59cb6.64196669', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700355.36260025');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59ce3.61195899', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700368.97567150');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59d18.12465126', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700374.36143190');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59d50.45784327', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700381.03135929');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59d83.23510397', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700394.67012892');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59db9.96532854', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd47003a9.20211607');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59de5.62819711', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd47003b6.59226417');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59e27.85847616', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd47003c2.43798754');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59e59.26260093', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd47003d6.61386784');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59e85.14441003', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd47003e3.33449814');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59eb8.68310973', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd47003f1.85041802');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59ee4.77904260', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700403.34165086');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59f24.32328100', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700417.69916221');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59f55.94401996', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700426.30417125');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59f80.54849706', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700430.96610488');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59fb7.75821070', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700446.44916200');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b59fe0.25037064', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700459.06846302');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a021.24990484', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700462.39672744');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a108.20067532', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700475.76716563');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a140.26083899', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700487.71335715');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a185.59857382', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700496.79719224');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a1b1.64533839', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd47004a6.55914235');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a1e3.09728623', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd47004b7.86034960');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a218.30481258', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd47004c3.42095722');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a243.31311600', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd47004d6.86952692');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a281.45810445', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd47004e8.17831044');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a2b8.35871006', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd47004f8.36142053');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a2e3.37875908', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700507.80572271');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a318.61354761', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700514.73018141');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a356.40091444', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700528.79898461');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a3e7.81719147', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700535.15002941');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a421.96909523', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700547.97117112');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a467.31206672', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700556.51023669');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a491.88318964', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700568.40103706');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a4c2.90792070', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700572.01748242');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a4f7.19300316', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700583.37604776');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a591.37347248', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700592.80393715');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a5d7.81738784', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd47005a7.58822409');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a606.81627654', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd47005b4.39278555');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a637.69421692', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd47005c3.44444612');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a669.38078652', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd47005d5.19083799');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a6a6.19679573', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd47005e9.79969646');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a6d7.04091218', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd47005f7.04600528');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a709.31416156', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700603.19468974');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a730.81361859', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700613.99979173');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a766.08790874', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700621.76116134');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a7a7.00927222', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700634.70531922');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a7d2.74684429', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700641.76627722');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a807.31177233', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700655.33443223');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a835.74731304', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700668.11306931');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a879.73717346', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700670.79867069');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a8a7.40693315', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700685.48043933');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a8d3.51129708', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd4700698.93454644');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a904.05411420', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd47006a9.49433144');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a942.08757519', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd47006b6.95461734');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a973.65540041', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd47006c2.15319743');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a9a1.54574651', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd47006d7.82257086');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e68fc14b5a9d9.54452790', 'ms-5e4685f6e57722.33264537', 'sl-5e5f9bd47006e4.04775992');

INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818d7f1.33423870', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba939c7.90476374');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818d8f1.04375455', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba93ac4.37015407');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818d944.26677867', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba93b18.90979794');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818d985.19250142', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba93b44.94481462');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818d9b1.38224491', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba93b75.02343056');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818d9f4.87094834', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba93bb5.24131163');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818da26.87487704', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba93be1.23214459');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818da58.35036845', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba93c14.87584768');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818da88.22552117', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba93c41.46229285');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818dab3.03339978', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba93c77.70643069');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818dae6.29632152', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba93ca8.69041630');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818dc05.45832411', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba93ce7.19422958');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818dc41.25534831', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba93d15.30316867');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818dc84.03250459', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba93d47.66868080');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818dcb8.76676050', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba93d78.40546588');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818dcf0.42333042', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba93da0.89926722');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818dd24.80914046', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba93de2.21599448');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818dd65.21556099', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba93e11.57336791');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818dd95.21621855', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba93e48.37052281');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818ddc0.98221094', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba93e70.35826348');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818ddf5.35160969', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba93ea7.00655390');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818de94.60654142', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba93ee9.51181295');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818ded3.83895316', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba93f13.93548002');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818df04.70162231', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba93f46.30897419');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818df45.54784624', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba93f77.22769888');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818df72.36084145', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba93fa2.99963521');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818dfa4.68988600', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba93fd2.75027345');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818dfd9.87246628', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba94014.75505759');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818e009.75777822', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba94043.15552913');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818e030.93680850', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba94074.66145296');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818e077.04495499', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba940a5.32008784');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818e0a4.61910313', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba940e6.56495962');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818e0d8.22169436', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba94114.12346946');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818e107.34433960', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba94142.48322007');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818e130.18826563', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba94176.19535108');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818e179.16284290', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba941a6.33008925');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818e1a6.79443313', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba941d2.78863659');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818e1d4.55419268', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba94211.01421584');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818e208.00165116', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba94242.01987007');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818e238.77830432', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba94273.85301227');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818e278.33322373', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba942a9.63141784');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69021818e2a0.90919214', 'ms-5e4685f6e57722.33264537', 'sl-5e66119ba942d3.02748830');

INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a6055241.85723395', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4ea454.55342585');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a6055353.78579927', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4ea561.57234029');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a60553a3.79975221', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4ea656.10296805');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a60553e6.53917679', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4ea6a1.42103271');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a6055417.60098636', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4ea6d8.57439610');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a6055457.40134903', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4ea704.75207030');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a6055482.14806884', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4ea731.94488395');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a60554b5.59466393', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4ea760.40052205');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a60554e5.61445302', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4ea7a5.49099391');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a6055510.73528309', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4ea7d3.80841034');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a6055555.88687563', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4ea805.93046545');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a6055599.39295429', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4ea836.69499482');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a60555c4.92523554', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4ea872.17549757');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a60555f1.72042958', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4ea8a1.70622651');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a6055637.68658655', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4ea8d9.69453328');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a6055667.85409251', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4ea907.06797260');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a6055698.87222115', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4ea932.78376866');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a60556d9.55054630', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4ea964.68690811');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a6055709.26107877', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4ea9a1.64500614');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a6055734.40667483', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4ea9d9.19620529');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a6055770.61894291', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4eaa06.79975225');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a60557a0.82969470', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4eaa39.79500052');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a60557d1.19617253', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4eaa62.59907688');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a6055812.57101906', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4eaa91.75796881');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a6055843.04225474', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4eaac2.90275722');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a6055882.31628169', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4eaaf4.07140765');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a60558b2.12385880', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4eab23.09741765');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a60558e7.88247381', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4eab60.99699704');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a6055919.84050961', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4eab98.53205409');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a6055952.08577291', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4eabc5.77037085');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a6055985.69848962', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4eabf9.91464955');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a60559c1.24380492', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4eac29.70227478');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a60559f9.64654704', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4eac54.45234853');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a6055a25.54748758', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4eac84.48033698');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a6055a57.98665659', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4eacb1.97489926');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e6902a6055a84.41653440', 'ms-5e4685f6e57722.33264537', 'sl-5e66129c4eace0.94710985');

-- Medical Staff Member 2 (Available for: current week and 1 week ahead)
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d38e4.03321345', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700174.12262196');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d39e4.49930880', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd47001c1.91031235');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d3a30.61112272', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd47001d1.96456823');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d3a84.03607156', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd47001e5.95247456');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d3ab2.43277293', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd47001f5.32309261');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d3af8.22726910', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700201.70329146');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d3b26.32224889', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700213.94939221');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d3b59.30791388', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700223.11459087');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d3b87.57849184', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700230.47065592');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d3bb7.18131093', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700245.09717618');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d3bf2.24160723', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700252.60187231');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d3c26.56874135', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700267.77683201');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d3c50.56679207', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700270.30601035');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d3c83.10277318', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700280.55658484');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d3cb3.39521530', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700290.42187533');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d3cf4.34588403', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd47002a5.09197727');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d3d29.06307374', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd47002b3.52547517');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d3d51.14980970', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd47002c4.65175032');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d3d85.30241420', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd47002d6.95115050');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d3db3.33368318', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd47002e4.68573828');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d3de6.54212420', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd47002f7.30764070');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d3e19.79538224', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700308.19636337');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d3e49.60289289', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700314.49969519');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d3e87.67792647', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700322.42011059');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d3eb4.14048481', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700330.92202765');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d3ee5.10856272', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700343.15345331');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d3f17.26770438', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700355.36260025');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d3f49.18796041', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700368.97567150');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d3f74.44437952', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700374.36143190');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d3fa0.11371641', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700381.03135929');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d3fe7.02877550', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700394.67012892');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4018.19026033', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd47003a9.20211607');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4043.19389500', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd47003b6.59226417');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4078.68129268', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd47003c2.43798754');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d40a5.67361535', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd47003d6.61386784');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d40e7.77082314', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd47003e3.33449814');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4128.22218968', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd47003f1.85041802');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4150.77122560', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700403.34165086');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4192.35573083', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700417.69916221');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d41c2.26650895', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700426.30417125');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d41f9.75653814', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700430.96610488');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4220.51025263', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700446.44916200');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4257.88822112', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700459.06846302');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4299.51280638', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700462.39672744');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d42c3.30272174', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700475.76716563');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d42f7.33659078', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700487.71335715');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4325.19670155', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700496.79719224');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4351.28442457', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd47004a6.55914235');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4389.68654229', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd47004b7.86034960');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d43b0.07343218', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd47004c3.42095722');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d43f7.62467319', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd47004d6.86952692');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4427.99833927', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd47004e8.17831044');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4456.03354495', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd47004f8.36142053');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4486.61896306', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700507.80572271');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d44b9.38350582', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700514.73018141');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d44e5.87622160', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700528.79898461');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4526.78664785', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700535.15002941');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4552.93913298', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700547.97117112');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4582.20900744', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700556.51023669');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d45b8.44025104', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700568.40103706');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d45e6.75118973', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700572.01748242');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4625.83118631', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700583.37604776');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4650.64300783', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700592.80393715');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4688.68316547', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd47005a7.58822409');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d46b4.53725533', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd47005b4.39278555');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d46e6.77384758', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd47005c3.44444612');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4715.43925089', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd47005d5.19083799');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d47c3.90220023', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd47005e9.79969646');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d47f5.22648210', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd47005f7.04600528');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4837.50604203', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700603.19468974');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4863.53633212', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700613.99979173');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4893.27422727', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700621.76116134');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d48c3.33071383', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700634.70531922');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4903.06816326', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700641.76627722');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4938.61646912', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700655.33443223');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4962.39472991', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700668.11306931');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4b20.85714244', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700670.79867069');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4b74.29488920', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700685.48043933');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4ba5.89294393', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd4700698.93454644');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4be3.33984131', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd47006a9.49433144');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4c15.02490435', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd47006b6.95461734');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4c50.08292090', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd47006c2.15319743');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4c88.21712851', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd47006d7.82257086');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69048a4d4cc2.52779296', 'ms-5e46874b062833.95604018', 'sl-5e5f9bd47006e4.04775992');

INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129f1c5.23948207', 'ms-5e46874b062833.95604018', 'sl-5e660dcda05e97.76072091');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129f2c5.56422647', 'ms-5e46874b062833.95604018', 'sl-5e660dcda05fa6.30978386');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129f307.85966169', 'ms-5e46874b062833.95604018', 'sl-5e660dcda05fe8.15336455');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129f350.46608135', 'ms-5e46874b062833.95604018', 'sl-5e660dcda06013.12481526');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129f386.81831290', 'ms-5e46874b062833.95604018', 'sl-5e660dcda06059.06648636');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129f3c1.58691969', 'ms-5e46874b062833.95604018', 'sl-5e660dcda06087.33758496');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129f3f5.34077014', 'ms-5e46874b062833.95604018', 'sl-5e660eadc50c67.58518387');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129f439.15491174', 'ms-5e46874b062833.95604018', 'sl-5e660eadc50d75.32257299');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129f461.25918421', 'ms-5e46874b062833.95604018', 'sl-5e660eadc50db1.33413617');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129f493.47818373', 'ms-5e46874b062833.95604018', 'sl-5e660eadc50df8.33749354');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129f4c1.67137762', 'ms-5e46874b062833.95604018', 'sl-5e660eadc50e22.55842742');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129f4f8.17309063', 'ms-5e46874b062833.95604018', 'sl-5e660eadc50e57.95404883');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129f527.02097502', 'ms-5e46874b062833.95604018', 'sl-5e660eadc51011.94408913');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129f550.70672320', 'ms-5e46874b062833.95604018', 'sl-5e660eadc51047.89547859');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129f596.77364059', 'ms-5e46874b062833.95604018', 'sl-5e660eadc51079.85793405');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129f5c9.12636981', 'ms-5e46874b062833.95604018', 'sl-5e660eadc510a0.71810472');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129f5f0.03119776', 'ms-5e46874b062833.95604018', 'sl-5e660eadc511d2.13830822');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129f624.66065601', 'ms-5e46874b062833.95604018', 'sl-5e660eadc51229.92937105');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129f657.18545353', 'ms-5e46874b062833.95604018', 'sl-5e660fc1e4b958.01859518');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129f682.16079623', 'ms-5e46874b062833.95604018', 'sl-5e660fc1e4ba47.58364168');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129f6b6.05399978', 'ms-5e46874b062833.95604018', 'sl-5e660fc1e4ba86.15495029');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129f6e7.23256531', 'ms-5e46874b062833.95604018', 'sl-5e660fc1e4bac3.46664496');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129f716.39743790', 'ms-5e46874b062833.95604018', 'sl-5e660fc1e4baf1.62850066');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129f752.52437964', 'ms-5e46874b062833.95604018', 'sl-5e660fc1e4bb25.25622627');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129f891.98155962', 'ms-5e46874b062833.95604018', 'sl-5e660fc1e4bb50.81624657');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129f8d8.13193583', 'ms-5e46874b062833.95604018', 'sl-5e660fc1e4bb97.63215554');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129f918.70440930', 'ms-5e46874b062833.95604018', 'sl-5e660fc1e4bbc3.18329237');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129f946.04141656', 'ms-5e46874b062833.95604018', 'sl-5e660fc1e4bbf7.94606223');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129f977.43595034', 'ms-5e46874b062833.95604018', 'sl-5e660fc1e4bc22.75302076');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129f9a6.16513311', 'ms-5e46874b062833.95604018', 'sl-5e660fc1e4bc53.78068360');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129f9d8.68002850', 'ms-5e46874b062833.95604018', 'sl-5e660fc1e4bc85.01038830');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129fa19.77862836', 'ms-5e46874b062833.95604018', 'sl-5e660fc1e4bcb7.99071893');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129fa42.51665975', 'ms-5e46874b062833.95604018', 'sl-5e660fc1e4bce7.70074869');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129fb24.99930233', 'ms-5e46874b062833.95604018', 'sl-5e660fc1e4bd17.71477273');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129fb74.93964302', 'ms-5e46874b062833.95604018', 'sl-5e660fc1e4bd49.09007459');
INSERT INTO `availability` (`id`, `staff_id`, `slot_id`) VALUES ('av-5e69054129fba7.45754100', 'ms-5e46874b062833.95604018', 'sl-5e660fc1e4bd72.31226726');

/* Language: Example languages for selecting translation services */
INSERT INTO `language` (`id`, `name`) VALUES ('la-5e6274fe2da8e7.62206293', 'Welsh');
INSERT INTO `language` (`id`, `name`) VALUES ('la-5e627504477ac0.53112804', 'Polish');
INSERT INTO `language` (`id`, `name`) VALUES ('la-5e62752a775762.64611390', 'Bengali');
INSERT INTO `language` (`id`, `name`) VALUES ('la-5e62752a775924.80449764', 'Gujarati');
INSERT INTO `language` (`id`, `name`) VALUES ('la-5e62752a775a30.18919537', 'Arabic');
INSERT INTO `language` (`id`, `name`) VALUES ('la-5e62752a775a78.73040756', 'Urdu');
INSERT INTO `language` (`id`, `name`) VALUES ('la-5e62752a775aa8.85707788', 'French');
INSERT INTO `language` (`id`, `name`) VALUES ('la-5e62752a775ae7.54844103', 'Romanian');

/* Facility_Language: Example languages offered by facilities */
INSERT INTO `facility_language` (`id`, `facility_id`, `language_id`) 
  VALUES ('fl-5e627634038156.50370377', 'fa-5e4a83211ffd59.63214101', 'la-5e6274fe2da8e7.62206293');
INSERT INTO `facility_language` (`id`, `facility_id`, `language_id`) 
  VALUES ('fl-5e627634038285.25464470', 'fa-5e4a83211ffd59.63214101', 'la-5e627504477ac0.53112804');
INSERT INTO `facility_language` (`id`, `facility_id`, `language_id`) 
  VALUES ('fl-5e6276340382d6.44937900', 'fa-5e4a83211ffd59.63214101', 'la-5e62752a775762.64611390');
INSERT INTO `facility_language` (`id`, `facility_id`, `language_id`) 
  VALUES ('fl-5e627634038309.12561632', 'fa-5e4a83211ffd59.63214101', 'la-5e62752a775a30.18919537');
INSERT INTO `facility_language` (`id`, `facility_id`, `language_id`) 
  VALUES ('fl-5e627634038339.11156979', 'fa-5e4a83211ffd59.63214101', 'la-5e62752a775aa8.85707788');
INSERT INTO `facility_language` (`id`, `facility_id`, `language_id`) 
  VALUES ('fl-5e627634038370.51360289', 'fa-5e4a83211ffd59.63214101', 'la-5e62752a775ae7.54844103');

/* Appointment Type: Level of urgency of an appointment, derived from a patient's appointment booking request */

INSERT INTO `appointment_type` (`id`, `title`) VALUES ('at-5e7c24qg2bv714.25342034', 'routine');
INSERT INTO `appointment_type` (`id`, `title`) VALUES ('at-5e7c24qg2bv714.65342034', 'emergency');

/* Request: Patients' appointment booking requests */

-- Patient 1
INSERT INTO `request` (`id`, `reason`, `translation`, `preferred_staff`, `p_cancellation_reason`, `r_cancellation_reason`, `cancelled`, `reviewer_id`, `appointment_type`, `patient_id`)
  VALUES ('re-5e6b94fc6ba585.74287938', 'I have a bad hip.', 'la-5e6274fe2da8e7.62206293', 'ms-5e4685f6e57722.33264537', null, null, false, 'ms-5e46874b062833.95604018', 'at-5e7c24qg2bv714.25342034', 'pa-5e4686095092e0.76300630');

INSERT INTO `request` (`id`, `reason`, `translation`, `preferred_staff`, `p_cancellation_reason`, `r_cancellation_reason`, `cancelled`, `reviewer_id`, `appointment_type`, `patient_id`)
  VALUES ('re-5e6b94fc6ba585.89234430', 'My stomach sometimes has a burning sensation.', 'la-5e6274fe2da8e7.62206293', 'ms-5e4685f6e57722.33264537', null, null, false, 'ms-5e4685f6e57722.33264537', 'at-5e7c24qg2bv714.25342034', 'pa-5e4686095092e0.76300630');

INSERT INTO `request` (`id`, `reason`, `translation`, `preferred_staff`, `p_cancellation_reason`, `r_cancellation_reason`, `cancelled`, `reviewer_id`, `appointment_type`, `patient_id`)
  VALUES ('re-5e6b94fc6ba585.23146570', 'My little toe aches when I walk.', 'la-5e6274fe2da8e7.62206293', 'ms-5e4685f6e57722.33264537', 'My ache has gone away.', null, true, null, null, 'pa-5e4686095092e0.76300630');

-- Patient 2
INSERT INTO `request` (`id`, `reason`, `translation`, `preferred_staff`, `p_cancellation_reason`, `r_cancellation_reason`, `cancelled`, `reviewer_id`, `appointment_type`, `patient_id`)
  VALUES ('re-5e6b94fc6ba585.16343542', 'Prefer not to say.', 'la-5e62752a775ae7.54844103', 'ms-5e46874b062833.95604018', null, null, false, null, null, 'pa-5e46875705e162.50418870');

INSERT INTO `request` (`id`, `reason`, `translation`, `preferred_staff`, `p_cancellation_reason`, `r_cancellation_reason`, `cancelled`, `reviewer_id`, `appointment_type`, `patient_id`)
  VALUES ('re-5e6b94fc6ba585.01295217', 'I have had cramp in my foot for about 1 month now. I have tried taking medication but it has not helped.', 'la-5e62752a775ae7.54844103', 'ms-5e46874b062833.95604018', null, null, false, 'ms-5e4685f6e57722.33264537', 'at-5e7c24qg2bv714.65342034', 'pa-5e46875705e162.50418870');

/* Request Slot: Preferred slots specified for patients' appointment booking requests */

-- Patient 1
INSERT INTO `request_slot` (`id`, `request_id`, `slot_id`) VALUES ('rs-5e6b94fc6ba680.70337604', 're-5e6b94fc6ba585.74287938', 'sl-5e5f9bd4700174.12262196');
INSERT INTO `request_slot` (`id`, `request_id`, `slot_id`) VALUES ('rs-5e6b94fc6ba6d5.85884143', 're-5e6b94fc6ba585.74287938', 'sl-5e660eadc50c67.58518387');
INSERT INTO `request_slot` (`id`, `request_id`, `slot_id`) VALUES ('rs-5e6b94fc6ba721.83358953', 're-5e6b94fc6ba585.74287938', 'sl-5e66119ba93d15.30316867');
INSERT INTO `request_slot` (`id`, `request_id`, `slot_id`) VALUES ('rs-5e6b94fc6ba757.18655828', 're-5e6b94fc6ba585.74287938', 'sl-5e66129c4ea9a1.64500614');
INSERT INTO `request_slot` (`id`, `request_id`, `slot_id`) VALUES ('rs-5e6b94fc6ba796.28601182', 're-5e6b94fc6ba585.74287938', 'sl-5e5f9bd47004b7.86034960');

INSERT INTO `request_slot` (`id`, `request_id`, `slot_id`) VALUES ('rs-5e6b94fc6ba796.34561239', 're-5e6b94fc6ba585.89234430', 'sl-5e66129c4eac84.48033698');
INSERT INTO `request_slot` (`id`, `request_id`, `slot_id`) VALUES ('rs-5e6b94fc6ba796.95234237', 're-5e6b94fc6ba585.89234430', 'sl-5e66129c4eace0.94710985');

INSERT INTO `request_slot` (`id`, `request_id`, `slot_id`) VALUES ('rs-5e6b94fc6ba796.43524566', 're-5e6b94fc6ba585.23146570', 'sl-5e66129c4eace0.94710985');
INSERT INTO `request_slot` (`id`, `request_id`, `slot_id`) VALUES ('rs-5e6b94fc6ba796.23546675', 're-5e6b94fc6ba585.23146570', 'sl-5e66129c4eac84.48033698');

-- Patient 2
INSERT INTO `request_slot` (`id`, `request_id`, `slot_id`) VALUES ('rs-5e6b94fc6ba796.15342034', 're-5e6b94fc6ba585.16343542', 'sl-5e66129c4eaac2.90275722');

INSERT INTO `request_slot` (`id`, `request_id`, `slot_id`) VALUES ('rs-5e6b94fc6ba796.29230482', 're-5e6b94fc6ba585.01295217', 'sl-5e66129c4ea9a1.64500614');
INSERT INTO `request_slot` (`id`, `request_id`, `slot_id`) VALUES ('rs-5e6b94fc6ba796.86214756', 're-5e6b94fc6ba585.01295217', 'sl-5e660eadc50c67.58518387');

/* Appointment: Booked appointments for the patients' appointment booking requests */

-- Patient 1
INSERT INTO `appointment` (`id`, `b_cancellation_reason`, `p_cancellation_reason`, `cancelled`, `booker_id`, `availability_id`, `request_id`, `room_id`)
  VALUES ('ap-5e777c661e2a32.80096338', null, 'I used an online service for advice instead.', true, 'as-5e4685e3c899f1.04316598', 'av-5e6902a6055a25.54748758', 're-5e6b94fc6ba585.89234430', null);
INSERT INTO `appointment` (`id`, `b_cancellation_reason`, `p_cancellation_reason`, `cancelled`, `booker_id`, `availability_id`, `request_id`, `room_id`)
  VALUES ('ap-5e777c661e2a32.34520912', null, null, false, 'as-5e46873222d123.80231466', 'av-5e69021818dc41.25534831', 're-5e6b94fc6ba585.74287938', null);

-- Patient 2
INSERT INTO `appointment` (`id`, `b_cancellation_reason`, `p_cancellation_reason`, `cancelled`, `booker_id`, `availability_id`, `request_id`, `room_id`)
  VALUES ('ap-5e777c661e2a32.23234569', null, null, false, 'as-5e4685e3c899f1.04316598', 'av-5e69054129f3f5.34077014', 're-5e6b94fc6ba585.01295217', null);
INSERT INTO `appointment` (`id`, `b_cancellation_reason`, `p_cancellation_reason`, `cancelled`, `booker_id`, `availability_id`, `request_id`, `room_id`)
  VALUES ('ap-5e777c661e2a32.15394056', null, 'The times I asked for are no longer good for me so I will need to re-book.', true, 'as-5e46873222d123.80231466', 'av-5e6902a6055882.31628169', 're-5e6b94fc6ba585.16343542', null);
