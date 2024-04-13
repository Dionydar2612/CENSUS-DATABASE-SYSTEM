
--peoplemove
insert into peoplemove values ('M00', '-', '0000-00-00', '-', '-');
insert into peoplemove values ('M01', '75/999 Daland', '2543-09-29', 'Another City', 'James Cory');
insert into peoplemove values ('M02', '75/998 Daland', '2546-07-20', 'Another Country', 'James Cory');
insert into peoplemove values ('M03', '70/2 Topland', '2560-03-21', 'Another City', 'James Cory');
insert into peoplemove values ('M04', '81/1 Copterland', '2545-03-26', 'Another City', 'James Cory');
insert into peoplemove values ('M05', '81/1 Copterland', '2545-03-26', 'Another Country', 'James Cory');
------
--Housereg
insert into Housereg values ('C001', 'DA house',  'Danny Weck', '2543-09-29', 'Single house', '2 floor 3 bedroom 2 bathroom', '75/999 Daland');
insert into Housereg values ('C002', 'Big house', 'Jame canon', '2546-07-20', 'Single house', '3 floor 5 bedroom 3 Bathroom', '75/998 Daland');
insert into Housereg values ('C003', 'Hyork house', 'ruby orn', '2548-10-18', 'condominium', '1 bedroom 1 bathroom', '70/1 Topland');
insert into Housereg values ('C004', 'Beam house', 'yuri rule', '2560-03-21', 'condominium', '1 bedroom 1 bathroom', '70/2 Topland');
insert into Housereg values ('C005', 'Petch house', 'Ava Frost', '2545-03-26', 'townhome', '2 floor 3 bedroom 2 bathroom', '81/1 Copterland');
--insert into Housereg values
------
--subsistence
insert into subsistence values ('L1','live', 'Leo Cruz', 'C001', '2520-04-01', 'still alive');
insert into subsistence values ('L2','live', 'Ella Blake', 'C001', '2521-11-01', 'still alive');
insert into subsistence values ('L3','live', 'Danny Weck', 'C001', '2545-04-18', 'still alive');
insert into subsistence values ('L4','live', 'Danny Weck', 'C001', '2548-12-18', 'still alive');
insert into subsistence values ('L5','live', 'Liam Grant', 'C002', '2532-03-25', 'still alive');
insert into subsistence values ('L6','live', 'Noah Chase', 'C003', '2536-06-17', 'still alive');
insert into subsistence values ('L7','live', 'Owen Cole', 'C004', '2540-08-16', 'still alive');
insert into subsistence values ('L8','live', 'Ethan Brooks', 'C005', '2523-01-17', 'still alive');
insert into subsistence values ('L9','live', 'Harper Day', 'C005', '2526-12-22', 'still alive');
insert into subsistence values ('L10','live', 'Ava Frost', 'C005', '2545-02-03', 'still alive');
------
--base
insert into base values ('B00', 'Unemployed', 0, '-', 2000);
insert into base values ('B01', 'Student', 0, 'Sarawittaya', 0);
insert into base values ('B02', 'Contractor', 6000, 'Factory', 500);

------
--Person
insert into Person values ('P001','Danny Weck','C001', 'Spain', 'M', 'Host', '2520-04-01',NULL, NULL, '2543-09-29','L1','M01','B00' );
insert into Person values ('P002','Vio mean' , 'C001', 'Spain', 'F', 'resident', '2521-11-01',NULL, NULL, '2543-09-29','L2','M00','B02' );
insert into Person values ('P003','John potec','C001', 'Spain', 'M', 'resident', '2545-04-01','P001', 'P002','2545-04-01','L3','M00','B01' );
insert into Person values ('P004','philip bio','C001', 'Spain', 'M', 'resident', '2548-12-18','P001', 'P002', '2548-12-18','L4','M00','B01' );
insert into Person values ('P005','Jame canon','C002', 'Thai', 'M', 'Host', '2532-03-25',NULL, NULL,'2546-09-29','L5','M02','B02' );
insert into Person values ('P006','ruby orn', 'C003', 'SGP', 'F', 'Host', '2536-06-17',NULL, NULL, '2548-10-29','L6','M00','B00' );
insert into Person values ('P007','yuri rule','C004', 'china', 'F', 'Host', '2540-08-16',NULL, NULL,'2560-03-24','L7','M03','B00' );
insert into Person values ('P008','Ava Frost','C005', 'AMCA', 'F', 'Host', '2523-01-17',NULL, NULL, '2545-04-01','L8','M04','B00' );
insert into Person values ('P009','Rocco rax','C005', 'Aus', 'M','resident', '2526-12-22',NULL, NULL, '2545-04-01','L9','M05','B02' );
insert into Person values ('P010','Max Hayes', 'C005', 'AMCA', 'M', 'resident', '2545-02-03','P008', 'P009',  '2545-10-11','L10','M00','B01' );

