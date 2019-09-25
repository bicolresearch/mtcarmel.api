/*
 Navicat MySQL Data Transfer

 Source Server         : Bicol Research
 Source Server Type    : MySQL
 Source Server Version : 100316
 Source Host           : localhost:3306
 Source Schema         : mountcarmel

 Target Server Type    : MySQL
 Target Server Version : 100316
 File Encoding         : 65001

 Date: 25/09/2019 18:41:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for acceptance
-- ----------------------------
DROP TABLE IF EXISTS `acceptance`;
CREATE TABLE `acceptance`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `sub_module_id` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `media_id` int(11) NULL DEFAULT NULL COMMENT 'photo',
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of acceptance
-- ----------------------------
INSERT INTO `acceptance` VALUES (1, 1, 3, 4, 1, 'Confraternity of Our Lady of Mount Carmel', '', '<p>Fees:</p>\r\n<p>Application Fee</p>                                        <p>Scapular</p>                                        <p>Confraternity Manual</p>                                        <p>Certificate of Confraternity</p>\r\n<p>200 php</p>\r\n<p>You may settle your bill using your debit card, credit card or cash.</p>', NULL, 1, '2019-06-19 18:51:19', NULL, NULL, b'0');
INSERT INTO `acceptance` VALUES (2, 1, 3, 5, 2, 'Prayer Request', '', '<p>Prayer Request is free of charge.</p>', NULL, 1, '2019-06-19 18:52:18', NULL, NULL, b'0');
INSERT INTO `acceptance` VALUES (3, 1, 3, 5, 3, 'Mass Request', '', '<p>After submission, you may donate any amount as an offering for your requested mass in your mailbox.</p>', NULL, 1, '2019-06-19 18:53:08', NULL, NULL, b'0');
INSERT INTO `acceptance` VALUES (4, 1, 3, 5, 4, 'Liturgical Service', '', '<p>Liturgical Service for blessing of houses, businesses and cars, as well as annointing of the sick or for other purposes.</p>\r\n\r\n<p>Parishioner may give the officiating priest a donation after the service.</p>\r\n\r\n<p>Exclusive for parishioners of Our Lady of Mount Carmel.</p>', NULL, 1, '2019-06-19 18:55:56', NULL, NULL, b'0');
INSERT INTO `acceptance` VALUES (5, 1, 3, 5, 5, 'Certification', '', '<p>We furnish baptismal certificate and confirmation certificate for parishioners.</p>\r\n<p>For Purposes such as for Personal file, School, Confirmation, First Communion, Legal documents, SSS requirement, Travel documents, Issuance of Birth Certificate and Marriage.</p>\r\n<p>Fees:</p>\r\n<p>Printing Service</p>\r\n<p>50 php</p>\r\n<p>ou may settle your bill using your debit card, credit card or cash.</p>', NULL, 1, '2019-06-19 18:57:48', NULL, NULL, b'0');
INSERT INTO `acceptance` VALUES (6, 1, 3, 6, 6, 'Individual Baptism', '', '<p>Schedule:</p>\r\n<p>Tuesday - Saturdays</p>\r\n<p>\r\n09:00 AM\r\n10:00 AM\r\n11:00 AM\r\n03:00 PM\r\n04:00 PM\r\n</p>\r\n<p>Sundays</p>\r\n<p>\r\n09:00 AM\r\n10:00 AM\r\n11:00 AM</p>\r\n\r\n<p>Additional Requirements:</p>\r\n\r\n<p>\r\nChild\'s Birth Certificate\r\nParent\'s Marriage Contract\r\nPermission Letter (if needed)</p>\r\n\r\n<p>Fees:</p>\r\n\r\n<p>Venue</p>\r\n<p>1,000 php</p>\r\n\r\n<p>Stipend for the Priest</p>\r\n<p>1,000 php</p>\r\n\r\n<p>For every Sponsor</p>\r\n<p>100 php</p>\r\n\r\n<p>Panyal, Certificate, Candle for the Parents, 2 Candles in glass for the Sponsors (candles for additional sponsors are not included)</p>\r\n<p>300 php</p>\r\n\r\n<p>Reservation Fee (deductible)</p>\r\n<p>2,000 php</p>\r\n\r\n<p>Baptism will be held in Pilgrim Chapel, St. Joseph Bldg.</p>\r\n\r\n<p>For non-parishioners, permission letter from your parish must be submitted in Mt. Carmel office.</p>\r\n\r\n<p>All sponsors must be catholic and 18 years old or above.</p>\r\n\r\n<p>Requirements and fees must be accomplished a week before the baptism.</p>\r\n\r\n<p>You may settle your bill using your debit card, credit card or cash.</p>\r\n\r\n<p>Be punctual, only an hour is alloted for the whole baptism.</p>', NULL, 1, '2019-06-19 19:05:15', NULL, NULL, b'0');
INSERT INTO `acceptance` VALUES (7, 1, 3, 6, 7, 'Community Baptism', '', '<p>Schedule:</p>\r\n<p>Sundays</p>\r\n<p>02:00 PM</p>\r\n<p>Additional Requirements:</p>\r\n<p>\r\nChild\'s Birth Certificate\r\nParent\'s Marriage Contract\r\nPermission Letter (if needed)\r\n</p>\r\n<p>Fees:</p>\r\n<p>For every Sponsor</p>\r\n<p>100 php</p>\r\n<p>Registration, Panyal, Certificate, Candle for the Parents, 2 Candles in glass for the Sponsors (candles for additional sponsors are not included)</p>\r\n<p>400 php</p>\r\n<p>For non-parishioners, permission letter from your parish must be submitted in Mt. Carmel office.</p>\r\n<p>All sponsors must be catholic and 18 years old or above.</p>\r\n<p>Requirements and fees must be accomplished a week before the baptism.</p>\r\n<p>You may settle your bill using your debit card, credit card or cash.</p>\r\n<p>Be punctual, only an hour is alloted for the whole baptism.</p>', NULL, 1, '2019-06-19 19:10:44', NULL, NULL, b'0');
INSERT INTO `acceptance` VALUES (8, 1, 3, 6, 8, 'Adult Baptism', '', '<p>Schedule:</p>\r\n<p>Tuesday - Saturdays</p>\r\n<p>\r\n09:00 AM\r\n10:00 AM<\r\n11:00 AM\r\n03:00 PM\r\n04:00 PM</p>\r\n<p>Sundays</p>\r\n<p>\r\n09:00 AM\r\n10:00 AM\r\n11:00 AM\r\n</p>\r\n<p>Additional Requirements:</p>\r\n<p>\r\nAdult\'s Birth Certificate\r\n4 Session Catechesis\r\nCertification of No Records (from 3 parishes from the Vicariate of Holy Family)\r\n</p>\r\n<p>Fees:</p>\r\n<p>Venue</p>\r\n<p>1,000 php</p>\r\n<p>Stipend for the Priest</p>\r\n<p>1,000 php</p>\r\n<p>For every Sponsor</p>\r\n<p>100 php</p>\r\n<p>Panyal, Certificate, Candle for the Parents</p>\r\n<p>150 php</p>\r\n<p>Candle for every Sponsor</p>\r\n<p>10 php</p>\r\n<p>Upon submission,you maycontact Catechetical Ministry office to schedule your catethesis.</p>\r\n<p>Call 727-94-32 local 411</p>\r\n<p>Tuesdays to Saturdays</p>\r\n<p>9am-5pm</p>\r\n<p>All sponsors must be catholic and 18 years old or above.</p>\r\n<p>Requirements and fees must be accomplished a week before the baptism.</p>\r\n<p>You may settle your bill using your debit card, credit card or cash.</p>\r\n<p>Be punctual, only an hour is alloted for the whole baptism.</p>', NULL, 1, '2019-06-19 19:11:37', NULL, NULL, b'0');
INSERT INTO `acceptance` VALUES (9, 1, 3, 7, 9, 'First Communion', '', '<p>Applicant may only have 1 or 2 sponsors during first communion.</p>\r\n<p>Fees:</p>\r\n<p>Application Fee</p>\r\n<p>500 php</p>\r\n<p>Upon submission, you may contact Catechetical Ministry office to schedule your catechesis.</p>\r\n<p>Call 727-94-32 local 411</p>\r\n<p>Tuesday to Saturdays</p>\r\n<p>9am-5pm</p>\r\n<p>You may settle your bill using your debit card, credit card or cash</p>', NULL, 1, '2019-06-19 19:17:36', NULL, NULL, b'0');
INSERT INTO `acceptance` VALUES (10, 1, 3, 7, 10, 'Communion of the Sick', '', '<p>Preferred time of visit will only serve as guide and may not always be accurate.</p>\r\n<p>Communion of the Sick is free of charge</p>\r\n<p>Exclusive for parishioners of Our Lady of Mount Carmel</p>', NULL, 1, '2019-06-19 19:23:01', NULL, NULL, b'0');
INSERT INTO `acceptance` VALUES (11, 1, 3, 8, 11, 'Confirmation', '', '<p>Applicant may only have 1 or 2 sponsors during confirmation.</p>\r\n<p>Fees:</p>\r\n<p>Application Fee<</p>\r\n<p>500 php</p>\r\n<p>Upon submission, you may contact Catechetical Ministry office to schedule your catechesis.</p>\r\n<p>Call 727-94-32 local 411</p>\r\n<p>Tuesday to Saturdays</p>\r\n<p>9am-5pm</p>\r\n<p>You may settle your bill using your debit card, credit card or cash</p>', NULL, 1, '2019-06-19 19:25:22', NULL, NULL, b'0');
INSERT INTO `acceptance` VALUES (12, 1, 3, 9, 12, 'Marriage', '', '<p>Wedding Rules and Regulations Agreement</p>\r\n<p>Version 1</p>\r\n<p>1. Reservation Fee and Full Payment</p>\r\n<p>a. Wedding should be arranged and scheduled at least 6 months before the wedding date.</p>\r\n<p>b. Reserved date is non-movable and non-transferrable.</p>\r\n<p>c. Reservation fee of 10,000 php will be accepted upon agreement of contract and National Shrine of Our Lady of Mount Carmel Rules and Regulations. Reservation fee is non-refundable but deductible on remaining balance.</p>\r\n<p>d. All fees should be settled 2 months before the wedding date.</p>\r\n<p>Wedding package includes use of the church, officiating priest, flowers with tulle, wedding candles or candles for secondary sponsors, wedding usherette, wedding commentator, altar server, red carpet, use of electricity for videos, pre-cana seminar and air conditioned holding area for the bride and choir.</p>\r\n<p>Wedding package rates:</p>\r\n<p>January to November rate</p>\r\n<p>29,000 php</p>\r\n<p>December rate</p>\r\n<p>34,000 php</p>\r\n<p>2. Wedding Requirements</p>\r\n<p>a. All requirements must be completed or accomplished at least 1 month before the wedding date exempting bride and groom under special cases which requires a permit from the Chancery Office of the Diocese of Cubao.</p>\r\n<p>Wedding cases the need to secure a permit:</p>\r\n<p>i. Mixed marriage (marriage between a Catholic and a non-Catholic or marriage between a Filipino or a foreigner)</p>\r\n<p>ii. Overseas Filipino working or living abroad for more than 2 years</p>\r\n<p>iii. With previous marriage (civilly or in the Roman Catholic church)</p>\r\n<p>b. We reserve the right to cancel a wedding if the requirements were not completed.</p>\r\n<p>c. Authorized representatives designated by the bride and groom are duty-bound to comply with the National Shrine of Our Lady of Mount Carmel Rules and Regulations Agreement and will be held responsible for the cancellation of the event for failure to submit all the needed requirements.</p>\r\n<p>d. National Shrine of Our Lady of Mount Carmel will not be responsible for any correction, fines and penalties that may be required on the marriage certificate already filed with the Quezon City Hall, Civil Registry after its entries were verified by the couple. Likewise, the Shrine is not liable if the couple fail to check their marriage contract as required.</p>\r\n<p>3. Cancellation</p>\r\n<p>a. In case of cancellation, a written advice must be submitted, otherwise the couple will have to pay the balance due.</p>\r\n<p>b. Reservation fee, full-payment, and additional fees made will be forfeited.</p>\r\n<p>c. Unclaimed documents will be disposed by the National Shrine of Our Lady of Mount Carmel within 2 months from the day of notice or from the wedding date.</p>\r\n<p>4. Punctuality</p>\r\n<p>a. The bride and groom, and the whole entourage including the soloist, singers and organist must be at the church premises 30 minutes before their wedding schedule.</p>\r\n<p>b. The allotted time for the wedding ceremony is 1 hour and 30 minutes only. Wedding ceremony are as follows, 15 minutes for the entrance procession of the wedding entourage; 45 minutes for the wedding liturgy; 15 minutes for pictorial, 15 minutes for the recessional of the wedding entourage. The wedding entourage should be exiting 15 minutes before the end of their time slot.</p>\r\n<p>c. If the bride, groom or the members of the entourage are late for 15 minutes, there will be no Prayers of the Faithful and Offertory Procession; if they are late for 30 minutes, there will be no Homily, Prayers of the Faithful and Offertory Procession; if they are late for 45 minutes, only the Wedding Rite outside the Mass will be celebrated.</p>\r\n<p>5. Wedding Entourage</p>\r\n<p>a. Bearers and flower girls should be 5 years old and above since they will not need the assistance of parents or guardian when marching down the aisle, which is usually the reason behind the delay of the ceremony.</p>\r\n<p>b. Only 5 pairs of principal sponsors are normally allowed. An additional fee of 500 php per person will be charged in excess of the 5 pairs of sponsors.</p>\r\n<p>c. The bride and groom must assign persons for the First and Second Reading, Responsorial Psalm and Prayers of the Faithful. Commentator will be provided by the church.</p>\r\n<p>6. Officiating Priest</p>\r\n<p>a. The bride and groom should inform the parish office 2 months before their wedding if they have their own officiating priest. If no advice was given, the invited priest will only be allowed to concelebrate with the assigned priest.</p>\r\n<p>b. For own priest, a photocopy of the priest Celebret ID, Certificate of Registration of Authority to Solemnize Marriage (CRASM) and appointment or endorsement letter from the Bishop is required.</p>\r\n<p>c. The Rector/Parish Priest has the right to approve or disapprove permission of the invited priest presider.</p>\r\n<p>d. In case of mixed marriages, the Shrine will not allow any form of rite, ceremony, or speeches to be conducted by other sects or religions.</p>\r\n<p>7. Solemnity and Wedding Dress Etiquette</p>\r\n<p>a. To preserve the solemnity of the wedding ceremony, all electronic gadgets are requested to be turned off or set to silent mode. Bride and groom should advice their respective entourages to refrain from unnecessary conversations and movements.</p>\r\n<p>b. The attire of the entire marriage entourage should be proper for church decorum. Provocative dresses like strapless, backless, spaghetti strap, bare midriff and off-the-shoulder dresses must be covered by a shawl jacket. We discourage above-the-knee length or miniskirt dresses.</p>\r\n<p>c. The National Shrine of Our Lady of Mount Carmel has the right to refuse any member of the entourage who are not properly dressed to join the entrance entourage.</p>\r\n<p>8. Offertory<</p>\r\n<p>a. Recommended list of items to be offered during the wedding are basket of fruits, mass wine and pack of hosts only.</p>\r\n<p>b. The bride and groom should assign two persons for the cruets and ciborium which will be provided by the shrine.</p>\r\n<p>c. Offertory procession may be cancelled if time constraints to give priority to the more essential parts of the mass.</p>\r\n<p>9. Church Decoration</p>\r\n<p>a. A simple yet elegant flower decoration in the aisle complete with tulle shall be provided by the shrine. All flower arrangement will be handled by the shrine’s in-house florist.</p>\r\n<p>b. For an additional floral arrangement, the bride and groom should submit a design arrangement for approval of the Rector/Parish Priest. Arrangement shall be done accordingly by the shrine’s in-house florist.</p>\r\n<p>c. During Lent, no flower decoration is allowed in the altar. The bride and groom are to be reminded that wedding events should respect the special nature of this liturgical season; they should refrain from much pomp or display.</p>\r\n<p>d. There will be no deduction in the wedding package rate for the flower arrangement if the bride and groom booked their wedding on Lenten season.</p>\r\n<p>10. Wedding Music</p>\r\n<p>a. Music for the whole ceremony is included in the package.</p>\r\n<p>b. During mass, singing may be done only during entrance, offertory, our Father, communion, recessional and photo sessions.</p>\r\n<p>c. The invited singer or musician should only render songs and music approved by the Rector/Parish Priest.</p>\r\n<p>11. Photographers and Videographers</p>\r\n<p>a. The bride and groom must properly endorse the photographers and videographers that will cover the whole wedding ceremony. The 2 photographers and 2 video personnel must be advised that they are required to attend the orientation seminar before their wedding coverage.</p>\r\n<p>b. Photographers and videographers not following the shrine’s instructions will be blacklisted.</p>\r\n<p>c. Guests of the couples who likewise want to take pictures or videos are allowed but they must remain in their seats.</p>\r\n<p>12. Church Assistance</p>\r\n<p>a. The shrine coordinator shall assist during the wedding for further instructions for the entourage.</p>\r\n<p>b. The bride and groom may assign their wedding coordinators provided that they were properly endorsed and they have attended the shrine’s orientation for coordinators before the wedding.</p>\r\n<p>c. Wedding coordinators not following the shrine’s rules and regulations will be blacklisted.</p>\r\n<p>13. Wedding Missalette</p>\r\n<p>a. The bride and groom my request a standard copy of wedding missalette in the parish office. Digital file or soft copy may be sent through email.</p>\r\n<p>b. No alterations or any addition to the approved liturgy should be made. Personal vows are not allowed.</p>\r\n<p>c. Draft of printed copy of the bride and groom’s wedding missalette must be submitted to the office for checking before making the final copies. Only checked and approved missalettes will be allowed for distribution during the wedding.</p>\r\n<p>14. Respect and Solemnity of the Holy Grounds</p>\r\n<p>a. Pets are not allowed to join the wedding procession.</p>\r\n<p>b. Cleanliness must be strictly observed inside and outside the shrine. Releasing of doves may be done outside the shrine’s doors.</p>\r\n<p>c. Only flower petals are allowed as extended greetings; permitted to be showered outside the shrine’s main entrance. Other extended greetings like party poppers, confetti and rice throwing are not permitted.</p>\r\n<p>d. Fogging and bubbles effect are not allowed inside and outside the shrine.</p>\r\n<p>e. Closed doors are not allowed.</p>\r\n<p>15. General Provision</p>\r\n<p>a. Any damage incurred during the wedding by the wedding entourage or guests, the reasonable cost shall be accounted for by the bride and groom.</p>\r\n<p>b. We have read and signify our agreement on the above terms and conditions of the National Shrine of Our Lady of Mount Carmel Rules and Regulations concerning wedding events and that the National Shrine of Our Lady of Mount Carmel and its personnel will not be held liable to any damages as a result of the enforcement of the said rules and regulations.</p>', NULL, 1, '2019-06-19 19:42:21', NULL, NULL, b'0');
INSERT INTO `acceptance` VALUES (13, 1, 3, 10, 13, 'Funeral Service', '', '<p>Funeral Service for blessing or conducting mass during the funeral.</p>\r\n<p>Parishioner may give the officiating priest a donation after the service.</p>\r\n<p>Exclusive for funerals conducted inside Our Lady of Mount Carmel premises.</p>', NULL, 1, '2019-06-19 20:17:26', NULL, NULL, b'0');
INSERT INTO `acceptance` VALUES (14, 1, 3, 10, 14, 'Funeral Chapel', '', '<p>There are three available chapels for conducting funeral rites and services.</p>\r\n<p>Chapels:</p>\r\n<p>Mt. Carmel Chapel</p>\r\n<p>\r\n150 sitting capacity\r\n15,000 php/day\r\n650 php/excess hour\r\n</p>\r\n<p>St. Joseph Chapel</p>\r\n<p>\r\n40 sitting capacity\r\n8,000 php/day\r\n350 php/excess hour\r\n</p>\r\n<p>Holy Family Chapel</p>\r\n<p>\r\n40 sitting capacity\r\n8,000 php/day\r\n350 php/excess hour\r\n</p>\r\n<p>Chapel Amenities:</p>\r\n<p>Daily Mass</p>\r\n<p>\r\nFully air-conditioned\r\nRefrigerator\r\nHot and cold water dispenser\r\nMicrowave oven\r\nKitchen sink\r\nSingle bed\r\nFamily room\r\n>Restroom\r\n</p>\r\n<p>\r\n24 hour security services\r\nAmple parking space\r\n</p>\r\n<p>You may settle your bill using your debit card, credit card or cash</p>', NULL, 1, '2019-06-19 20:18:01', NULL, NULL, b'0');
INSERT INTO `acceptance` VALUES (15, 1, 3, 10, 15, 'Crypt Lobby - Mass for the Dead', '', '<p>Crypt Lobby is available for conducting mass for the dead.</p>\r\n<p>Fees:</p>\r\n<p>Crypt Lobby</p>\r\n<p>20 sitting capacity</p>\r\n<p>500 php/hour</p>\r\n<p>You may settle your bill using your debit card, credit card or cash.</p>', NULL, 1, '2019-06-19 20:23:51', NULL, NULL, b'0');
INSERT INTO `acceptance` VALUES (16, 1, 3, 10, 16, 'November Mass for the Dead', '', '<p>Mass for the Dead will be offered every 06:00 AM of November.</p>\r\n<p>After submission, you may donate any amount as an offering for your requested mass in your mailbox.</p>', NULL, 1, '2019-06-19 20:24:22', NULL, NULL, b'0');
INSERT INTO `acceptance` VALUES (17, 1, 3, 11, 17, 'Father Mark Horan Hall - Venue', '', '<p>Father Mark Horan Hall Service Agreement</p>\r\n<p>Version 1</p>\r\n<p>1. Event and Duration</p>\r\n<p>a. Father Mark Horan Hall is available for wedding reception, baptismal, birthday celebration and anniversary celebration.</</p>\r\n<p>b. Client are given a maximum of 3 hours for the use of the Father Mark Horan Hall. Set up time is only 2 hours before the actual time of event.</p>\r\n<p>2. Reservation Fee and Full Payment</p>\r\n<p>a. Reservation fee of 50% will be accepted upon agreement of terms and conditions. Reservation fee is non-refundable but deductible on remaining balance.</p>\r\n<p>b. All fees should be settled 2 weeks before the event. Booking 1 week prior to the event, payment must be in full.</p>\r\n<p>Service package rates:</p>\r\n<p>Whole area package 1</p>\r\n<p>\r\n300 tiffany chairs\r\n30 tables\r\n30,000 php\r\n2,000 php/excess hour\r\n</p>\r\n<p>Whole area package 2</p>\r\n<p>\r\n300 monoblock chairs\r\n30 tables\r\n27,500 php\r\n2,000 php/excess hour\r\n</p>\r\n<p>Half area package 1</p>\r\n<p>\r\n120 tiffany chairs\r\n12 tables\r\n23,000 php\r\n1,000 php/excess hour\r\n</p>\r\n<p>Half area package 2</p>\r\n<p>\r\n120 monoblock chairs\r\n12 tables\r\n20,000 php\r\n1,000 php/excess hour\r\n</p>\r\n<p>Quarter area package 1</p>\r\n<p>80 tiffany chairs\r\n8 tables\r\n15,000 php\r\n500 php/excess hour\r\n</p>\r\n<p>Quarter area package 2</p>\r\n<p>\r\n80 monoblock chairs\r\n8 tables\r\n10,000 php\r\n500 php/excess hour\r\n</p>\r\n<p>All areas include the use of air conditioner, built-in sound system, ample parking space, clean toilet, LCD projector, and electricity for photo booth and maximum of 2 food carts.</p>\r\n<p>3. Reserved Date</p>\r\n<p>a. Reserved date is non-movable.</p>\r\n<p>>b. In the event wherein the client requests for a transfer of his/her reservation to another date or transfer his/her reservation to a member of his/her family, the client is requested to submit a letter of intent addressed to the superior of the shrine. If the superior allows the trasfer, the client will be charged for an additional 50% of the down payment made on his/her previous reservation as penalty.</p>\r\n<p>4. Lights and Sounds</p>\r\n<p>a. The services provided by the management include the sound system and the lights for the Father Mark Horan Hall. Other use of electricity-consuming gadgets may be allowed only with the prior approval of the management, such as photo booth, use of LCD projector, lights of more than 1,000 watts. Corresponding fees are to be determined by the management.</p>\r\n<p>b. Clients may bring their own sound system but no fees will be deducted from the contract package. Live band may be allowed but without drums.</p>\r\n<p>5. Safety and Security</p>\r\n<p>a. The client has the full responsibility toward the safety and security of their guests.</p>\r\n<p>b. The client and their guests are reminded to secure their valuables at all times. Management shall be free from any liability arising from any unforeseen events such as theft, robbery, accident, and any natural or man-made calamities that may cause harm to the client, their guests and their belongings before, during and after their function at the Father Mark Horan Hall.</p>\r\n<p>6. Damages</p>\r\n<p>a. Should there result in any damage to property incurred by the client or guests within the Father Mark Horan Hall, the cost thereof, or reasonable replacement cost shall be accounted for by the client.</p>\r\n<p>7. Power Outage</p>\r\n<p>a. In the event of power outage or brownout, there will be a stand-by generator which will provide power for lights, fans and some outlets but not the air conditioning units.</p>\r\n<p>There will be no refund if the Father Mark Horan Hall was booked with air conditioning.</p>\r\n<p>8. Catering Service</p>\r\n<p>a. The client may bring in catering service provider of their choice, all accredited and unaccredited catering service providers must abide with the regulations and policies regarding the use of Father Mark Horan Hall.</p>\r\n<p>b. The management shall be free from any legal suit and liability with regards to the services rendered by the catering service provider, including issues such as food poisoning and sanitation.</p>\r\n<p>9. Ground Rules</p>\r\n<p>a. Doves and butterflies are not allowed inside the Father Mark Horan Hall.</p>\r\n<p>b. Use of kerosene or gas torch is strictly prohibited inside Father Mark Horan Hall.</p>\r\n<p>c. Swag and drape clothing are strictly prohibited.</p>\r\n<p>d. Party poppers are not allowed inside the Father Mark Horan Hall.</p>\r\n<p>e. Clients are allowed to bring a maximum of 6 cases of liquor such as Pale Pilsen, Red Horse, San Mig Light,or the same kind only./p>\r\n<p>10. General Provision</p>\r\n<p>a. The client shall hold the management free from any liability whatsoever for the use of the Father Mark Horan Hall.</p>\r\n<p>b. The client\'s event coordinator must abide with all the rules and regulations. They shall inform the mamagement for any requests 2 weeks prior to the event. Any such requests may be declined without necessity of explanation.</p>', NULL, 1, '2019-06-19 20:48:09', NULL, NULL, b'0');

-- ----------------------------
-- Table structure for acceptance_logs
-- ----------------------------
DROP TABLE IF EXISTS `acceptance_logs`;
CREATE TABLE `acceptance_logs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acceptance_id` int(11) NOT NULL,
  `action` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for access
-- ----------------------------
DROP TABLE IF EXISTS `access`;
CREATE TABLE `access`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `all_access` tinyint(1) NOT NULL DEFAULT 0,
  `controller` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `date_created` datetime(0) NULL DEFAULT NULL,
  `date_modified` timestamp(0) NOT NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ads
-- ----------------------------
DROP TABLE IF EXISTS `ads`;
CREATE TABLE `ads`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `company_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `media_id` int(11) NULL DEFAULT NULL,
  `type_id` int(11) NOT NULL,
  `service_type_id` int(11) NOT NULL,
  `expiration` datetime(0) NOT NULL,
  `total` decimal(11, 2) NOT NULL,
  `status_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ads
-- ----------------------------
INSERT INTO `ads` VALUES (1, 1, 'Apostleship of Prayer', 'Apostleship of Prayer', 'Apostleship of Prayer', 'https://sites.google.com/site/apostleshipofprayerphilippines/', 53, 111, 0, '2022-08-23 00:00:00', 0.00, 0, 1, '2019-06-24 14:30:17', 1, '2019-09-05 01:25:35', b'0');
INSERT INTO `ads` VALUES (2, 1, 'Pepsi', 'Pepsi', 'Pepsi', 'https://pepsiphilippines.com/', 54, 111, 0, '2022-08-23 00:00:00', 0.00, 0, 1, '2019-06-24 14:30:31', 1, '2019-09-05 01:24:41', b'0');
INSERT INTO `ads` VALUES (3, 1, 'BDO', 'BDO', 'BDO', 'https://www.bdo.com.ph/personal', 52, 111, 0, '2022-08-23 00:00:00', 0.00, 0, 1, '2019-06-24 14:30:47', 1, '2019-09-05 01:23:05', b'0');
INSERT INTO `ads` VALUES (4, 1, 'Cabalen', 'Cabalen', 'Cabalen Naga City', 'https://www.cabalen.ph/', 51, 111, 0, '2022-08-23 00:00:00', 0.00, 0, 1, '2019-06-24 14:30:56', 1, '2019-09-16 16:21:35', b'0');
INSERT INTO `ads` VALUES (5, 1, 'Splash Ad 1', 'Splash Ad 1', 'Splash Ad 1', '', 12, 112, 0, '2022-08-23 00:00:00', 0.00, 0, 1, '2019-08-16 23:13:43', 1, '2019-08-23 09:08:35', b'0');
INSERT INTO `ads` VALUES (6, 1, 'Splash Ad 2', 'Splash Ad 2', 'Splash Ad 2', 'https://play.google.com/store/apps', 14, 112, 0, '2022-08-23 00:00:00', 0.00, 0, 1, '2019-08-16 23:14:10', 1, '2019-08-23 09:08:40', b'0');
INSERT INTO `ads` VALUES (7, 1, 'Splash Ad 3', 'Splash Ad 3', 'Splash Ad 3', '', 13, 112, 0, '2022-08-23 00:00:00', 0.00, 0, 1, '2019-08-16 23:14:45', 1, '2019-08-23 09:08:09', b'0');

-- ----------------------------
-- Table structure for audit_trail
-- ----------------------------
DROP TABLE IF EXISTS `audit_trail`;
CREATE TABLE `audit_trail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `module_id` int(11) NULL DEFAULT NULL,
  `sub_module_id` int(11) NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for boundaries
-- ----------------------------
DROP TABLE IF EXISTS `boundaries`;
CREATE TABLE `boundaries`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of boundaries
-- ----------------------------
INSERT INTO `boundaries` VALUES (1, 1, 'North', 'E. Rodriguez Avenue (formerly España Extension)', 1, '2019-06-19 16:46:24', 1, '2019-09-06 19:23:57', b'0');
INSERT INTO `boundaries` VALUES (2, 1, 'South', 'Ermitaño Creek', 1, '2019-06-19 16:46:53', 1, '2019-09-06 19:23:51', b'0');
INSERT INTO `boundaries` VALUES (3, 1, 'West', 'San Juan River', 1, '2019-06-19 16:47:19', 1, '2019-09-06 19:23:45', b'0');
INSERT INTO `boundaries` VALUES (4, 1, 'East', 'Balete Drive through N. Domingo and Horseshoe Drive until Ermitaño Creek', 1, '2019-06-19 16:47:43', 1, '2019-09-16 20:30:38', b'0');

-- ----------------------------
-- Table structure for branch
-- ----------------------------
DROP TABLE IF EXISTS `branch`;
CREATE TABLE `branch`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(2500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_id` int(11) NULL DEFAULT NULL,
  `location_id` int(11) NULL DEFAULT NULL,
  `main_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of branch
-- ----------------------------
INSERT INTO `branch` VALUES (1, 'Minor Basilica of the National Shrine of Our Lady of Mount Carmel', 'Minor Basilica of the National Shrine of Our Lady of Mount Carmel', 120, 1, 1, 1, '2019-06-18 16:02:09', 1, '2019-06-18 16:03:01', b'0');
INSERT INTO `branch` VALUES (2, 'St. Joseph the Worker Parish', 'St. Joseph the Worker Parish', 120, 2, 0, 1, '2019-09-13 15:16:58', NULL, NULL, b'0');
INSERT INTO `branch` VALUES (3, 'Our Lady of Mt. Carmel and St. Therese of the Child Jesus', 'Our Lady of Mt. Carmel and St. Therese of the Child Jesus', 121, 2, 0, 1, '2019-09-13 15:16:58', NULL, NULL, b'0');
INSERT INTO `branch` VALUES (4, 'Our Lady of Mount Carmel, Mary, Queen of Peace Community', 'Our Lady of Mount Carmel, Mary, Queen of Peace Community', 122, 2, 0, 1, '2019-09-13 15:16:58', NULL, NULL, b'0');
INSERT INTO `branch` VALUES (5, 'Our Lady\'s Hill Center of Spirituality', 'Our Lady\'s Hill Center of Spirituality', 123, 3, 0, 1, '2019-09-13 15:16:58', NULL, NULL, b'0');
INSERT INTO `branch` VALUES (6, 'Our Lady of the Smiles Community', 'Our Lady of the Smiles Community', 122, 4, 0, 1, '2019-09-13 15:16:58', NULL, NULL, b'0');
INSERT INTO `branch` VALUES (7, 'Carmel of The Child Jesus and of Mary Mediatrix of All Graces', 'Carmel of The Child Jesus and of Mary Mediatrix of All Graces', 121, 6, 0, 1, '2019-09-16 12:59:20', NULL, NULL, b'0');
INSERT INTO `branch` VALUES (8, 'Sto. Niño de Cebu Community', 'Sto. Niño de Cebu Community', 122, 6, 0, 1, '2019-09-21 14:20:43', NULL, NULL, b'0');
INSERT INTO `branch` VALUES (9, 'Carmel of the Immaculate Heart of Mary', 'Carmel of the Immaculate Heart of Mary', 121, 5, 0, 1, '2019-09-13 15:16:58', NULL, NULL, b'0');
INSERT INTO `branch` VALUES (10, 'Carmelite Monastery of St. John of The Cross', 'Carmelite Monastery of St. John of The Cross', 121, 7, 0, 1, '2019-09-21 15:08:37', NULL, NULL, b'0');
INSERT INTO `branch` VALUES (11, 'Saint John of the Cross Community', 'Saint John of the Cross Community', 122, 7, 0, 1, '2019-09-21 15:09:20', NULL, NULL, b'0');
INSERT INTO `branch` VALUES (12, 'Carmel of  Mary, Mother of The Church and of Saint Joseph', 'Carmel of  Mary, Mother of The Church and of Saint Joseph', 121, 8, 0, 1, '2019-09-21 15:12:06', NULL, NULL, b'0');
INSERT INTO `branch` VALUES (13, 'Our Lady of Mount Carmel of Holy Mother Teresa of Jesus Community', 'Our Lady of Mount Carmel of Holy Mother Teresa of Jesus Community', 122, 8, 0, 1, '2019-09-21 15:12:48', NULL, NULL, b'0');
INSERT INTO `branch` VALUES (14, 'Saint Joseph and Saint John of the Cross', 'Saint Joseph and Saint John of the Cross', 122, 8, 0, 1, '2019-09-21 15:13:31', NULL, NULL, b'0');
INSERT INTO `branch` VALUES (15, 'Carmel of the Sacred Heart of Jesus and The Immaculate Heart of Mary', 'Carmel of the Sacred Heart of Jesus and The Immaculate Heart of Mary', 121, 9, 0, 1, '2019-09-21 15:14:23', NULL, NULL, b'0');
INSERT INTO `branch` VALUES (16, 'Saint Joseph Community', 'Saint Joseph Community', 122, 9, 0, 1, '2019-09-21 15:48:43', NULL, NULL, b'0');
INSERT INTO `branch` VALUES (17, 'Saint Therese of the Child Jesus Community', 'Saint Therese of the Child Jesus Community', 122, 9, 0, 1, '2019-09-21 15:53:11', NULL, NULL, b'0');
INSERT INTO `branch` VALUES (18, 'Saint Teresa of Jesus Community', 'Saint Teresa of Jesus Community', 122, 9, 0, 1, '2019-09-21 15:53:46', NULL, NULL, b'0');
INSERT INTO `branch` VALUES (19, 'Carmel of Saint Teresa of Jesus', 'Carmel of Saint Teresa of Jesus', 121, 10, 0, 1, '2019-09-21 15:54:21', NULL, NULL, b'0');
INSERT INTO `branch` VALUES (20, 'St. Teresa of Jesus', 'St. Teresa of Jesus', 122, 10, 0, 1, '2019-09-21 15:54:52', NULL, NULL, b'0');

-- ----------------------------
-- Table structure for branch_locations
-- ----------------------------
DROP TABLE IF EXISTS `branch_locations`;
CREATE TABLE `branch_locations`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(2500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of branch_locations
-- ----------------------------
INSERT INTO `branch_locations` VALUES (1, 'Quezon City', 'Quezon City', 1, '2019-09-19 14:41:02', NULL, NULL, b'0');
INSERT INTO `branch_locations` VALUES (2, 'Iloilo City', 'Iloilo City', 1, '2019-09-19 14:41:29', NULL, NULL, b'0');
INSERT INTO `branch_locations` VALUES (3, 'Bago City', 'Bago City', 1, '2019-09-19 14:42:53', NULL, NULL, b'0');
INSERT INTO `branch_locations` VALUES (4, 'Bacolod City', 'Bacolod City', 1, '2019-09-19 14:43:20', NULL, NULL, b'0');
INSERT INTO `branch_locations` VALUES (5, 'Naga City', 'Naga City', 1, '2019-09-19 14:43:38', NULL, NULL, b'0');
INSERT INTO `branch_locations` VALUES (6, 'Cebu City', 'Cebu City', 1, '2019-09-19 15:38:57', NULL, NULL, b'0');
INSERT INTO `branch_locations` VALUES (7, 'Ozamis City', 'Ozamis City', 1, '2019-09-21 14:22:15', NULL, NULL, b'0');
INSERT INTO `branch_locations` VALUES (8, 'Cagayan de Oro City', 'Cagayan de Oro City', 1, '2019-09-21 14:22:38', NULL, NULL, b'0');
INSERT INTO `branch_locations` VALUES (9, 'Davao City', 'Davao City', 1, '2019-09-21 14:23:04', NULL, NULL, b'0');
INSERT INTO `branch_locations` VALUES (10, 'Mati City', 'Mati City', 1, '2019-09-21 14:23:22', NULL, NULL, b'0');

-- ----------------------------
-- Table structure for calendar
-- ----------------------------
DROP TABLE IF EXISTS `calendar`;
CREATE TABLE `calendar`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(2550) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start` datetime(0) NULL DEFAULT NULL,
  `end` datetime(0) NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for chapel
-- ----------------------------
DROP TABLE IF EXISTS `chapel`;
CREATE TABLE `chapel`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `amenities` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `additional_amenities` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `amount` decimal(10, 0) NOT NULL,
  `amt_per` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `other_charges` decimal(10, 0) NULL DEFAULT NULL,
  `other_charges_per` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `dt_created` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of chapel
-- ----------------------------
INSERT INTO `chapel` VALUES (1, 1, 'Mt. Carmel Chapel', NULL, '150 sitting capacity', '<p>Daily Mass</p>\r\n<p>\r\nFully air-conditioned\r\nRefrigerator\r\nHot and cold water dispenser\r\nMicrowave oven\r\nKitchen sink\r\nSingle bed\r\nFamily room\r\nRestroom                                      </p>                                        <p>\r\n24 hour security services\r\nAmple parking space\r\n</p>', 15000, 'day', 650, 'excess hour', 1, '2019-06-20 13:52:53', NULL, NULL, b'0');
INSERT INTO `chapel` VALUES (2, 1, 'St. Joseph Chapel', NULL, '40 sitting capacity', '<p>Daily Mass</p>\r\n<p>\r\nFully air-conditioned\r\nRefrigerator\r\nHot and cold water dispenser\r\nMicrowave oven\r\nKitchen sink\r\nSingle bed\r\nFamily room\r\nRestroom                                      </p>                                        <p>\r\n24 hour security services\r\nAmple parking space\r\n</p>', 8000, 'day', 350, 'excess hour', 1, '2019-06-20 14:00:01', NULL, NULL, b'0');
INSERT INTO `chapel` VALUES (3, 1, 'Holy Family Chapel', NULL, '40 sitting capacity', '<p>Daily Mass</p>\r\n<p>\r\nFully air-conditioned\r\nRefrigerator\r\nHot and cold water dispenser\r\nMicrowave oven\r\nKitchen sink\r\nSingle bed\r\nFamily room\r\nRestroom                                      </p>                                        <p>\r\n24 hour security services\r\nAmple parking space\r\n</p>', 8000, 'day', 350, 'excess hour', 1, '2019-06-20 14:01:47', NULL, NULL, b'0');

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `region_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `province_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `country_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1445 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES (2, 'Abra De Ilog', NULL, '17', '1751', '175101', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (3, 'Abucay', NULL, '03', '0308', '030801', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (4, 'Abulug', NULL, '02', '0215', '021501', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (5, 'Abuyog', NULL, '08', '0837', '083701', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (6, 'Adams', NULL, '01', '0128', '012801', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (7, 'Agdangan', NULL, '04', '0456', '045601', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (8, 'Aglipay', NULL, '02', '0257', '025701', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (9, 'Agno', NULL, '01', '0155', '015501', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (10, 'Agoncillo', NULL, '04', '0410', '041001', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (11, 'Agoo', NULL, '01', '0133', '013301', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (12, 'Aguilar', NULL, '01', '0155', '015502', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (13, 'Aguinaldo', NULL, '14', '1427', '142708', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (14, 'Agutaya', NULL, '17', '1753', '175302', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (15, 'Ajuy', NULL, '06', '0630', '063001', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (16, 'Akbar', NULL, '15', '1507', '150708', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (17, 'Alabat', NULL, '04', '0456', '045602', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (18, 'Alabel (Capital)', NULL, '12', '1280', '128001', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (19, 'Alamada', NULL, '12', '1247', '124701', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (20, 'Alaminos', NULL, '04', '0434', '043401', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (21, 'Alangalang', NULL, '08', '0837', '083702', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (22, 'Al-Barka', NULL, '15', '1507', '150709', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (23, 'Albuera', NULL, '08', '0837', '083703', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (24, 'Alburquerque', NULL, '07', '0712', '071201', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (25, 'Alcala', NULL, '01', '0155', '015504', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (26, 'Alcantara', NULL, '17', '1759', '175901', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (27, 'Alcoy', NULL, '07', '0722', '072202', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (28, 'Alegria', NULL, '07', '0722', '072203', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (29, 'Aleosan', NULL, '12', '1247', '124717', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (30, 'Alfonso', NULL, '04', '0421', '042101', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (31, 'Alfonso Castaneda', NULL, '02', '0250', '025015', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (32, 'Alfonso Lista (Potia)', NULL, '14', '1427', '142707', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (33, 'Aliaga', NULL, '03', '0349', '034901', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (34, 'Alicia', NULL, '02', '0231', '023101', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (35, 'Alilem', NULL, '01', '0129', '012901', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (36, 'Alimodian', NULL, '06', '0630', '063002', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (37, 'Alitagtag', NULL, '04', '0410', '041002', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (38, 'Allacapan', NULL, '02', '0215', '021503', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (39, 'Allen', NULL, '08', '0848', '084801', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (40, 'Almagro', NULL, '08', '0860', '086001', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (41, 'Almeria', NULL, '08', '0878', '087801', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (42, 'Aloguinsan', NULL, '07', '0722', '072204', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (43, 'Aloran', NULL, '10', '1042', '104201', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (44, 'Altavas', NULL, '06', '0604', '060401', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (45, 'Alubijid', NULL, '10', '1043', '104301', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (46, 'Amadeo', NULL, '04', '0421', '042102', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (47, 'Ambaguio', NULL, '02', '0250', '025001', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (48, 'Amlan (Ayuquitan)', NULL, '07', '0746', '074601', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (49, 'Ampatuan', NULL, '15', '1538', '153801', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (50, 'Amulung', NULL, '02', '0215', '021504', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (51, 'Anahawan', NULL, '08', '0864', '086401', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (52, 'Anao', NULL, '03', '0369', '036901', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (53, 'Anda', NULL, '01', '0155', '015505', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (54, 'Angadanan', NULL, '02', '0231', '023102', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (55, 'Angat', NULL, '03', '0314', '031401', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (56, 'Angeles City', NULL, '03', '0354', '035401', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (57, 'Angono', NULL, '04', '0458', '045801', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (58, 'Anilao', NULL, '06', '0630', '063003', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (59, 'Anini-Y', NULL, '06', '0606', '060601', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (60, 'Antequera', NULL, '07', '0712', '071204', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (61, 'Antipas', NULL, '12', '1247', '124715', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (62, 'Apalit', NULL, '03', '0354', '035402', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (63, 'Aparri', NULL, '02', '0215', '021505', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (64, 'Araceli', NULL, '17', '1753', '175303', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (65, 'Arakan', NULL, '12', '1247', '124718', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (66, 'Arayat', NULL, '03', '0354', '035403', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (67, 'Argao', NULL, '07', '0722', '072205', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (68, 'Aringay', NULL, '01', '0133', '013302', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (69, 'Aritao', NULL, '02', '0250', '025002', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (70, 'Aroroy', NULL, '05', '0541', '054101', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (71, 'Arteche', NULL, '08', '0826', '082601', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (72, 'Asingan', NULL, '01', '0155', '015506', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (73, 'Asipulo', NULL, '14', '1427', '142711', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (74, 'Asturias', NULL, '07', '0722', '072206', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (75, 'Asuncion (Saug)', NULL, '11', '1123', '112301', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (76, 'Atimonan', NULL, '04', '0456', '045603', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (77, 'Atok', NULL, '14', '1411', '141101', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (78, 'Aurora', NULL, '02', '0231', '023103', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (79, 'Ayungon', NULL, '07', '0746', '074602', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (80, 'Baao', NULL, '05', '0517', '051701', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (81, 'Babatngon', NULL, '08', '0837', '083705', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (82, 'Bacacay', NULL, '05', '0505', '050501', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (83, 'Bacarra', NULL, '01', '0128', '012802', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (84, 'Baclayon', NULL, '07', '0712', '071205', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (85, 'Bacnotan', NULL, '01', '0133', '013303', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (86, 'Baco', NULL, '17', '1752', '175201', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (87, 'Bacolod', NULL, '10', '1035', '103501', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (88, 'Bacolod City (Capital)', NULL, '06', '0645', '064501', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (89, 'Bacolod-Kalawi (Bacolod Grande)', NULL, '15', '1536', '153601', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (90, 'Bacolor', NULL, '03', '0354', '035404', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (91, 'Bacong', NULL, '07', '0746', '074603', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (92, 'Bacoor City', NULL, '04', '0421', '042103', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (93, 'Bacuag', NULL, '16', '1667', '166702', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (94, 'Bacungan (Leon T. Postigo)', NULL, '09', '0972', '097226', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (95, 'Badian', NULL, '07', '0722', '072207', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (96, 'Badiangan', NULL, '06', '0630', '063004', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (97, 'Badoc', NULL, '01', '0128', '012803', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (98, 'Bagabag', NULL, '02', '0250', '025003', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (99, 'Bagac', NULL, '03', '0308', '030802', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (100, 'Bagamanoc', NULL, '05', '0520', '052001', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (101, 'Baganga', NULL, '11', '1125', '112501', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (102, 'Baggao', NULL, '02', '0215', '021506', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (103, 'Bago City', NULL, '06', '0645', '064502', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (104, 'Baguio City', NULL, '14', '1411', '141102', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (105, 'Bagulin', NULL, '01', '0133', '013304', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (106, 'Bagumbayan', NULL, '12', '1265', '126501', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (107, 'Bais City', NULL, '07', '0746', '074604', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (108, 'Bakun', NULL, '14', '1411', '141103', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (109, 'Balabac', NULL, '17', '1753', '175304', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (110, 'Balabagan', NULL, '15', '1536', '153602', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (111, 'Balagtas (Bigaa)', NULL, '03', '0314', '031402', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (112, 'Balamban', NULL, '07', '0722', '072208', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (113, 'Balangiga', NULL, '08', '0826', '082602', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (114, 'Balangkayan', NULL, '08', '0826', '082603', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (115, 'Balaoan', NULL, '01', '0133', '013305', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (116, 'Balasan', NULL, '06', '0630', '063005', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (117, 'Balatan', NULL, '05', '0517', '051702', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (118, 'Balayan', NULL, '04', '0410', '041003', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (119, 'Balbalan', NULL, '14', '1432', '143201', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (120, 'Baleno', NULL, '05', '0541', '054102', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (121, 'Baler (Capital)', NULL, '03', '0377', '037701', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (122, 'Balete', NULL, '04', '0410', '041004', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (123, 'Baliangao', NULL, '10', '1042', '104202', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (124, 'Baliguian', NULL, '09', '0972', '097224', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (125, 'Balilihan', NULL, '07', '0712', '071206', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (126, 'Balindong (Watu)', NULL, '15', '1536', '153603', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (127, 'Balingasag', NULL, '10', '1043', '104302', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (128, 'Balingoan', NULL, '10', '1043', '104303', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (129, 'Baliuag', NULL, '03', '0314', '031403', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (130, 'Ballesteros', NULL, '02', '0215', '021507', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (131, 'Baloi', NULL, '10', '1035', '103502', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (132, 'Balud', NULL, '05', '0541', '054103', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (133, 'Balungao', NULL, '01', '0155', '015507', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (134, 'Bamban', NULL, '03', '0369', '036902', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (135, 'Bambang', NULL, '02', '0250', '025004', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (136, 'Banate', NULL, '06', '0630', '063006', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (137, 'Banaue', NULL, '14', '1427', '142701', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (138, 'Banaybanay', NULL, '11', '1125', '112502', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (139, 'Banayoyo', NULL, '01', '0129', '012902', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (140, 'Banga', NULL, '06', '0604', '060403', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (141, 'Bangar', NULL, '01', '0133', '013306', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (142, 'Bangued (Capital)', NULL, '14', '1401', '140101', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (143, 'Bangui', NULL, '01', '0128', '012804', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (144, 'Bani', NULL, '01', '0155', '015508', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (145, 'Banisilan', NULL, '12', '1247', '124716', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (146, 'Banna (Espiritu)', NULL, '01', '0128', '012811', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (147, 'Bansalan', NULL, '11', '1124', '112401', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (148, 'Bansud', NULL, '17', '1752', '175202', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (149, 'Bantay', NULL, '01', '0129', '012903', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (150, 'Bantayan', NULL, '07', '0722', '072209', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (151, 'Banton', NULL, '17', '1759', '175902', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (152, 'Baras', NULL, '04', '0458', '045803', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (153, 'Barbaza', NULL, '06', '0606', '060602', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (154, 'Barcelona', NULL, '05', '0562', '056202', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (155, 'Barili', NULL, '07', '0722', '072210', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (156, 'Barira', NULL, '15', '1538', '153818', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (157, 'Barlig', NULL, '14', '1444', '144401', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (158, 'Barobo', NULL, '16', '1668', '166801', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (159, 'Barotac Nuevo', NULL, '06', '0630', '063007', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (160, 'Barotac Viejo', NULL, '06', '0630', '063008', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (161, 'Baroy', NULL, '10', '1035', '103503', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (162, 'Barugo', NULL, '08', '0837', '083706', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (163, 'Basay', NULL, '07', '0746', '074605', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (164, 'Basco (Capital)', NULL, '02', '0209', '020901', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (165, 'Basey', NULL, '08', '0860', '086002', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (166, 'Basilisa (Rizal)', NULL, '16', '1685', '168501', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (167, 'Basista', NULL, '01', '0155', '015509', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (168, 'Basud', NULL, '05', '0516', '051601', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (169, 'Batad', NULL, '06', '0630', '063009', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (170, 'Batan', NULL, '06', '0604', '060404', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (171, 'Batangas City (Capital)', NULL, '04', '0410', '041005', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (172, 'Bataraza', NULL, '17', '1753', '175305', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (173, 'Bato', NULL, '05', '0517', '051703', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (174, 'Batuan', NULL, '05', '0541', '054104', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (175, 'Bauan', NULL, '04', '0410', '041006', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (176, 'Bauang', NULL, '01', '0133', '013307', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (177, 'Bauko', NULL, '14', '1444', '144402', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (178, 'Baungon', NULL, '10', '1013', '101301', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (179, 'Bautista', NULL, '01', '0155', '015510', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (180, 'Bay', NULL, '04', '0434', '043402', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (181, 'Bayabas', NULL, '16', '1668', '166802', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (182, 'Bayambang', NULL, '01', '0155', '015511', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (183, 'Bayang', NULL, '15', '1536', '153604', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (184, 'Bayog', NULL, '09', '0973', '097303', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (185, 'Bayombong (Capital)', NULL, '02', '0250', '025005', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (186, 'Belison', NULL, '06', '0606', '060603', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (187, 'Benito Soliven', NULL, '02', '0231', '023104', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (188, 'Besao', NULL, '14', '1444', '144403', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (189, 'Bien Unido', NULL, '07', '0712', '071248', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (190, 'Bilar', NULL, '07', '0712', '071208', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (191, 'Biliran', NULL, '08', '0878', '087802', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (192, 'Binalbagan', NULL, '06', '0645', '064503', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (193, 'Binalonan', NULL, '01', '0155', '015512', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (194, 'Binangonan', NULL, '04', '0458', '045804', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (195, 'Bindoy (Payabon)', NULL, '07', '0746', '074607', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (196, 'Bingawan', NULL, '06', '0630', '063010', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (197, 'Binidayan', NULL, '15', '1536', '153605', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (198, 'Binmaley', NULL, '01', '0155', '015513', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (199, 'Binondo', NULL, '13', '1339', '133902', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (200, 'Binuangan', NULL, '10', '1043', '104304', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (201, 'Biri', NULL, '08', '0848', '084802', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (202, 'Boac (Capital)', NULL, '17', '1740', '174001', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (203, 'Bobon', NULL, '08', '0848', '084803', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (204, 'Bocaue', NULL, '03', '0314', '031404', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (205, 'Bokod', NULL, '14', '1411', '141104', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (206, 'Bolinao', NULL, '01', '0155', '015514', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (207, 'Boliney', NULL, '14', '1401', '140102', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (208, 'Boljoon', NULL, '07', '0722', '072212', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (209, 'Bombon', NULL, '05', '0517', '051704', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (210, 'Bongabon', NULL, '03', '0349', '034902', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (211, 'Bongabong', NULL, '17', '1752', '175203', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (212, 'Bongao (Capital)', NULL, '15', '1570', '157002', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (213, 'Bonifacio', NULL, '10', '1042', '104203', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (214, 'Bontoc', NULL, '08', '0864', '086402', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (215, 'Bontoc (Capital)', NULL, '14', '1444', '144404', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (216, 'Borbon', NULL, '07', '0722', '072213', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (217, 'Boston', NULL, '11', '1125', '112503', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (218, 'Botolan', NULL, '03', '0371', '037101', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (219, 'Braulio E. Dujali', NULL, '11', '1123', '112323', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (220, 'Brooke\'S Point', NULL, '17', '1753', '175306', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (221, 'Buadiposo-Buntong', NULL, '15', '1536', '153633', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (222, 'Bubong', NULL, '15', '1536', '153606', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (223, 'Bucay', NULL, '14', '1401', '140103', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (224, 'Bucloc', NULL, '14', '1401', '140104', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (225, 'Buenavista', NULL, '04', '0456', '045605', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (226, 'Bugallon', NULL, '01', '0155', '015515', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (227, 'Bugasong', NULL, '06', '0606', '060604', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (228, 'Buguey', NULL, '02', '0215', '021508', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (229, 'Buguias', NULL, '14', '1411', '141105', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (230, 'Buhi', NULL, '05', '0517', '051705', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (231, 'Bula', NULL, '05', '0517', '051706', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (232, 'Bulacan', NULL, '03', '0314', '031405', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (233, 'Bulalacao (San Pedro)', NULL, '17', '1752', '175204', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (234, 'Bulan', NULL, '05', '0562', '056203', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (235, 'Buldon', NULL, '15', '1538', '153802', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (236, 'Buluan', NULL, '15', '1538', '153803', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (237, 'Bulusan', NULL, '05', '0562', '056204', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (238, 'Bumbaran', NULL, '15', '1536', '153637', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (239, 'Bunawan', NULL, '16', '1603', '160302', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (240, 'Burauen', NULL, '08', '0837', '083710', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (241, 'Burdeos', NULL, '04', '0456', '045606', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (242, 'Burgos', NULL, '01', '0128', '012806', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (243, 'Buruanga', NULL, '06', '0604', '060405', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (244, 'Bustos', NULL, '03', '0314', '031406', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (245, 'Busuanga', NULL, '17', '1753', '175307', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (246, 'Butig', NULL, '15', '1536', '153607', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (247, 'Butuan City (Capital)', NULL, '16', '1602', '160202', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (248, 'Buug', NULL, '09', '0983', '098302', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (249, 'Caba', NULL, '01', '0133', '013309', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (250, 'Cabagan', NULL, '02', '0231', '023106', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (251, 'Cabanatuan City', NULL, '03', '0349', '034903', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (252, 'Cabangan', NULL, '03', '0371', '037102', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (253, 'Cabanglasan', NULL, '10', '1013', '101322', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (254, 'Cabarroguis (Capital)', NULL, '02', '0257', '025702', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (255, 'Cabatuan', NULL, '02', '0231', '023107', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (256, 'Cabiao', NULL, '03', '0349', '034904', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (257, 'Cabucgayan', NULL, '08', '0878', '087803', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (258, 'Cabugao', NULL, '01', '0129', '012905', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (259, 'Cabusao', NULL, '05', '0517', '051707', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (260, 'Cabuyao City', NULL, '04', '0434', '043404', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (261, 'Cadiz City', NULL, '06', '0645', '064504', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (262, 'Cagayan De Oro City (Capital)', NULL, '10', '1043', '104305', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (263, 'Cagayancillo', NULL, '17', '1753', '175308', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (264, 'Cagdianao', NULL, '16', '1685', '168502', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (265, 'Cagwait', NULL, '16', '1668', '166804', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (266, 'Caibiran', NULL, '08', '0878', '087804', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (267, 'Cainta', NULL, '04', '0458', '045805', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (268, 'Cajidiocan', NULL, '17', '1759', '175903', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (269, 'Calabanga', NULL, '05', '0517', '051708', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (270, 'Calaca', NULL, '04', '0410', '041007', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (271, 'Calamba', NULL, '10', '1042', '104204', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (272, 'Calanasan (Bayag)', NULL, '14', '1481', '148101', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (273, 'Calanogas', NULL, '15', '1536', '153632', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (274, 'Calape', NULL, '07', '0712', '071210', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (275, 'Calasiao', NULL, '01', '0155', '015517', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (276, 'Calatagan', NULL, '04', '0410', '041008', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (277, 'Calatrava', NULL, '17', '1759', '175904', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (278, 'Calauag', NULL, '04', '0456', '045607', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (279, 'Calauan', NULL, '04', '0434', '043406', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (280, 'Calayan', NULL, '02', '0215', '021509', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (281, 'Calbayog City', NULL, '08', '0860', '086003', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (282, 'Calbiga', NULL, '08', '0860', '086004', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (283, 'Calinog', NULL, '06', '0630', '063013', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (284, 'Calintaan', NULL, '17', '1751', '175102', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (285, 'Caloocan City', NULL, '13', '1375', '137501', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (286, 'Calubian', NULL, '08', '0837', '083713', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (287, 'Calumpit', NULL, '03', '0314', '031407', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (288, 'Caluya', NULL, '06', '0606', '060605', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (289, 'Camalaniugan', NULL, '02', '0215', '021510', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (290, 'Camalig', NULL, '05', '0505', '050502', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (291, 'Camaligan', NULL, '05', '0517', '051709', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (292, 'Camiling', NULL, '03', '0369', '036903', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (293, 'Canaman', NULL, '05', '0517', '051710', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (294, 'Can-Avid', NULL, '08', '0826', '082605', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (295, 'Candaba', NULL, '03', '0354', '035405', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (296, 'Candelaria', NULL, '03', '0371', '037103', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (297, 'Candijay', NULL, '07', '0712', '071211', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (298, 'Candoni', NULL, '06', '0645', '064506', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (299, 'Canlaon City', NULL, '07', '0746', '074608', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (300, 'Cantilan', NULL, '16', '1668', '166805', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (301, 'Caoayan', NULL, '01', '0129', '012907', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (302, 'Capalonga', NULL, '05', '0516', '051602', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (303, 'Capas', NULL, '03', '0369', '036904', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (304, 'Capoocan', NULL, '08', '0837', '083714', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (305, 'Capul', NULL, '08', '0848', '084804', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (306, 'Caraga', NULL, '11', '1125', '112504', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (307, 'Caramoan', NULL, '05', '0517', '051711', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (308, 'Caramoran', NULL, '05', '0520', '052004', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (309, 'Carasi', NULL, '01', '0128', '012807', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (310, 'Cardona', NULL, '04', '0458', '045806', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (311, 'Carigara', NULL, '08', '0837', '083715', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (312, 'Carles', NULL, '06', '0630', '063014', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (313, 'Carmen', NULL, '07', '0712', '071212', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (314, 'Carmona', NULL, '04', '0421', '042104', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (315, 'Carranglan', NULL, '03', '0349', '034905', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (316, 'Carrascal', NULL, '16', '1668', '166807', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (317, 'Casiguran', NULL, '03', '0377', '037702', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (318, 'Castilla', NULL, '05', '0562', '056206', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (319, 'Castillejos', NULL, '03', '0371', '037104', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (320, 'Cataingan', NULL, '05', '0541', '054105', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (321, 'Catanauan', NULL, '04', '0456', '045610', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (322, 'Catarman', NULL, '10', '1018', '101801', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (323, 'Catarman (Capital)', NULL, '08', '0848', '084805', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (324, 'Cateel', NULL, '11', '1125', '112505', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (325, 'Catigbian', NULL, '07', '0712', '071213', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (326, 'Catmon', NULL, '07', '0722', '072216', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (327, 'Catubig', NULL, '08', '0848', '084806', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (328, 'Cauayan', NULL, '06', '0645', '064507', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (329, 'Cavinti', NULL, '04', '0434', '043407', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (330, 'Cavite City', NULL, '04', '0421', '042105', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (331, 'Cawayan', NULL, '05', '0541', '054106', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (332, 'Cebu City (Capital)', NULL, '07', '0722', '072217', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (333, 'Cervantes', NULL, '01', '0129', '012908', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (334, 'City Of Alaminos', NULL, '01', '0155', '015503', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (335, 'City Of Antipolo', NULL, '04', '0458', '045802', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (336, 'City Of Balanga (Capital)', NULL, '03', '0308', '030803', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (337, 'City Of Batac', NULL, '01', '0128', '012805', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (338, 'City Of Bayawan (Tulong)', NULL, '07', '0746', '074606', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (339, 'City Of Baybay', NULL, '08', '0837', '083708', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (340, 'City Of Bayugan', NULL, '16', '1603', '160301', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (341, 'City Of Biñan', NULL, '04', '0434', '043403', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (342, 'City Of Bislig', NULL, '16', '1668', '166803', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (343, 'City Of Bogo', NULL, '07', '0722', '072211', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (344, 'City Of Borongan (Capital)', NULL, '08', '0826', '082604', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (345, 'City Of Cabadbaran', NULL, '16', '1602', '160203', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (346, 'City Of Calamba', NULL, '04', '0434', '043405', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (347, 'City Of Calapan (Capital)', NULL, '17', '1752', '175205', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (348, 'City Of Candon', NULL, '01', '0129', '012906', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (349, 'City Of Carcar', NULL, '07', '0722', '072214', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (350, 'City Of Catbalogan (Capital)', NULL, '08', '0860', '086005', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (351, 'City Of Cauayan', NULL, '02', '0231', '023108', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (352, 'City Of Dasmariñas', NULL, '04', '0421', '042106', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (353, 'City Of Digos (Capital)', NULL, '11', '1124', '112403', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (354, 'City Of El Salvador', NULL, '10', '1043', '104307', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (355, 'City Of Escalante', NULL, '06', '0645', '064509', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (356, 'City Of Gapan', NULL, '03', '0349', '034908', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (357, 'City Of Guihulngan', NULL, '07', '0746', '074611', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (358, 'City Of Himamaylan', NULL, '06', '0645', '064510', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (359, 'City Of Isabela', NULL, '09', '0997', '099701', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (360, 'City Of Kabankalan', NULL, '06', '0645', '064515', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (361, 'City Of Kidapawan (Capital)', NULL, '12', '1247', '124704', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (362, 'City Of Koronadal (Capital)', NULL, '12', '1263', '126306', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (363, 'City Of Lamitan', NULL, '15', '1507', '150702', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (364, 'City Of Las Piñas', NULL, '13', '1376', '137601', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (365, 'City Of Ligao', NULL, '05', '0505', '050508', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (366, 'City Of Maasin (Capital)', NULL, '08', '0864', '086407', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (367, 'City Of Makati', NULL, '13', '1376', '137602', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (368, 'City Of Malabon', NULL, '13', '1375', '137502', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (369, 'City Of Malaybalay (Capital)', NULL, '10', '1013', '101312', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (370, 'City Of Malolos (Capital)', NULL, '03', '0314', '031410', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (371, 'City Of Mandaluyong', NULL, '13', '1374', '137401', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (372, 'City Of Marikina', NULL, '13', '1374', '137402', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (373, 'City Of Masbate (Capital)', NULL, '05', '0541', '054111', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (374, 'City Of Mati (Capital)', NULL, '11', '1125', '112509', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (375, 'City Of Meycauayan', NULL, '03', '0314', '031412', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (376, 'City Of Muntinlupa', NULL, '13', '1376', '137603', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (377, 'City Of Naga', NULL, '07', '0722', '072234', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (378, 'City Of Navotas', NULL, '13', '1375', '137503', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (379, 'City Of Panabo', NULL, '11', '1123', '112315', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (380, 'City Of Parañaque', NULL, '13', '1376', '137604', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (381, 'City Of Pasig', NULL, '13', '1374', '137403', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (382, 'City Of Passi', NULL, '06', '0630', '063035', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (383, 'City Of San Fernando (Capital)', NULL, '01', '0133', '013314', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (384, 'City Of San Jose Del Monte', NULL, '03', '0314', '031420', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (385, 'City Of San Juan', NULL, '13', '1374', '137405', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (386, 'City Of San Pedro', NULL, '04', '0434', '043425', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (387, 'City Of Santa Rosa', NULL, '04', '0434', '043428', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (388, 'City Of Santiago', NULL, '02', '0231', '023135', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (389, 'City Of Sipalay', NULL, '06', '0645', '064527', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (390, 'City Of Sorsogon (Capital)', NULL, '05', '0562', '056216', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (391, 'City Of Tabaco', NULL, '05', '0505', '050517', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (392, 'City Of Tabuk (Capital)', NULL, '14', '1432', '143213', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (393, 'City Of Tacurong', NULL, '12', '1265', '126511', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (394, 'City Of Tagum (Capital)', NULL, '11', '1123', '112319', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (395, 'City Of Talisay', NULL, '06', '0645', '064528', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (396, 'City Of Tanauan', NULL, '04', '0410', '041031', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (397, 'City Of Tandag (Capital)', NULL, '16', '1668', '166819', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (398, 'City Of Tanjay', NULL, '07', '0746', '074621', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (399, 'City Of Tarlac (Capital)', NULL, '03', '0369', '036916', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (400, 'City Of Tayabas', NULL, '04', '0456', '045647', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (401, 'City Of Urdaneta', NULL, '01', '0155', '015546', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (402, 'City Of Valencia', NULL, '10', '1013', '101321', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (403, 'City Of Valenzuela', NULL, '13', '1375', '137504', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (404, 'City Of Victorias', NULL, '06', '0645', '064531', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (405, 'City Of Vigan (Capital)', NULL, '01', '0129', '012934', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (406, 'Clarin', NULL, '07', '0712', '071214', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (407, 'Claver', NULL, '16', '1667', '166706', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (408, 'Claveria', NULL, '02', '0215', '021511', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (409, 'Columbio', NULL, '12', '1265', '126502', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (410, 'Compostela', NULL, '07', '0722', '072218', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (411, 'Concepcion', NULL, '03', '0369', '036905', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (412, 'Conner', NULL, '14', '1481', '148102', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (413, 'Consolacion', NULL, '07', '0722', '072219', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (414, 'Corcuera', NULL, '17', '1759', '175906', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (415, 'Cordon', NULL, '02', '0231', '023109', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (416, 'Cordova', NULL, '07', '0722', '072220', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (417, 'Corella', NULL, '07', '0712', '071215', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (418, 'Coron', NULL, '17', '1753', '175309', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (419, 'Cortes', NULL, '07', '0712', '071216', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (420, 'Cotabato City', NULL, '12', '1298', '129804', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (421, 'Cuartero', NULL, '06', '0619', '061901', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (422, 'Cuenca', NULL, '04', '0410', '041009', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (423, 'Culaba', NULL, '08', '0878', '087805', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (424, 'Culasi', NULL, '06', '0606', '060606', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (425, 'Culion', NULL, '17', '1753', '175322', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (426, 'Currimao', NULL, '01', '0128', '012808', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (427, 'Cuyapo', NULL, '03', '0349', '034906', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (428, 'Cuyo', NULL, '17', '1753', '175310', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (429, 'Daanbantayan', NULL, '07', '0722', '072221', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (430, 'Daet (Capital)', NULL, '05', '0516', '051603', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (431, 'Dagami', NULL, '08', '0837', '083717', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (432, 'Dagohoy', NULL, '07', '0712', '071217', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (433, 'Daguioman', NULL, '14', '1401', '140105', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (434, 'Dagupan City', NULL, '01', '0155', '015518', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (435, 'Dalaguete', NULL, '07', '0722', '072222', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (436, 'Damulog', NULL, '10', '1013', '101302', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (437, 'Danao', NULL, '07', '0712', '071218', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (438, 'Danao City', NULL, '07', '0722', '072223', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (439, 'Dangcagan', NULL, '10', '1013', '101303', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (440, 'Danglas', NULL, '14', '1401', '140106', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (441, 'Dao', NULL, '06', '0619', '061902', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (442, 'Dapa', NULL, '16', '1667', '166707', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (443, 'Dapitan City', NULL, '09', '0972', '097201', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (444, 'Daraga (Locsin)', NULL, '05', '0505', '050503', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (445, 'Daram', NULL, '08', '0860', '086006', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (446, 'Dasol', NULL, '01', '0155', '015519', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (447, 'Datu Abdullah Sangki', NULL, '15', '1538', '153828', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (448, 'Datu Anggal Midtimbang', NULL, '15', '1538', '153831', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (449, 'Datu Blah T. Sinsuat', NULL, '15', '1538', '153830', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (450, 'Datu Hoffer Ampatuan', NULL, '15', '1538', '153835', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (451, 'Datu Odin Sinsuat (Dinaig)', NULL, '15', '1538', '153807', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (452, 'Datu Paglas', NULL, '15', '1538', '153805', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (453, 'Datu Piang', NULL, '15', '1538', '153806', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (454, 'Datu Salibo', NULL, '15', '1538', '153836', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (455, 'Datu Saudi-Ampatuan', NULL, '15', '1538', '153826', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (456, 'Datu Unsay', NULL, '15', '1538', '153827', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (457, 'Dauin', NULL, '07', '0746', '074609', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (458, 'Dauis', NULL, '07', '0712', '071219', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (459, 'Davao City', NULL, '11', '1124', '112402', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (460, 'Del Carmen', NULL, '16', '1667', '166708', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (461, 'Del Gallego', NULL, '05', '0517', '051712', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (462, 'Delfin Albano (Magsaysay)', NULL, '02', '0231', '023118', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (463, 'Diadi', NULL, '02', '0250', '025006', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (464, 'Diffun', NULL, '02', '0257', '025703', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (465, 'Dilasag', NULL, '03', '0377', '037703', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (466, 'Dimasalang', NULL, '05', '0541', '054108', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (467, 'Dimataling', NULL, '09', '0973', '097305', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (468, 'Dimiao', NULL, '07', '0712', '071220', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (469, 'Dinagat', NULL, '16', '1685', '168503', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (470, 'Dinalungan', NULL, '03', '0377', '037704', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (471, 'Dinalupihan', NULL, '03', '0308', '030804', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (472, 'Dinapigue', NULL, '02', '0231', '023110', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (473, 'Dinas', NULL, '09', '0973', '097306', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (474, 'Dingalan', NULL, '03', '0377', '037705', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (475, 'Dingle', NULL, '06', '0630', '063016', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (476, 'Dingras', NULL, '01', '0128', '012809', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (477, 'Dipaculao', NULL, '03', '0377', '037706', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (478, 'Diplahan', NULL, '09', '0983', '098303', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (479, 'Dipolog City (Capital)', NULL, '09', '0972', '097202', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (480, 'Ditsaan-Ramain', NULL, '15', '1536', '153624', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (481, 'Divilacan', NULL, '02', '0231', '023111', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (482, 'Dolores', NULL, '04', '0456', '045615', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (483, 'Don Carlos', NULL, '10', '1013', '101304', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (484, 'Don Marcelino', NULL, '11', '1186', '118601', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (485, 'Don Victoriano Chiongbian  (Don Mariano Marcos)', NULL, '10', '1042', '104217', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (486, 'Doña Remedios Trinidad', NULL, '03', '0314', '031424', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (487, 'Donsol', NULL, '05', '0562', '056207', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (488, 'Dueñas', NULL, '06', '0630', '063017', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (489, 'Duero', NULL, '07', '0712', '071221', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (490, 'Dulag', NULL, '08', '0837', '083718', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (491, 'Dumaguete City (Capital)', NULL, '07', '0746', '074610', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (492, 'Dumalag', NULL, '06', '0619', '061903', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (493, 'Dumalinao', NULL, '09', '0973', '097307', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (494, 'Dumalneg', NULL, '01', '0128', '012810', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (495, 'Dumangas', NULL, '06', '0630', '063018', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (496, 'Dumanjug', NULL, '07', '0722', '072224', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (497, 'Dumaran', NULL, '17', '1753', '175311', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (498, 'Dumarao', NULL, '06', '0619', '061904', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (499, 'Dumingag', NULL, '09', '0973', '097308', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (500, 'Dupax Del Norte', NULL, '02', '0250', '025007', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (501, 'Dupax Del Sur', NULL, '02', '0250', '025008', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (502, 'Echague', NULL, '02', '0231', '023112', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (503, 'El Nido (Bacuit)', NULL, '17', '1753', '175312', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (504, 'Enrile', NULL, '02', '0215', '021512', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (505, 'Enrique B. Magalona (Saravia)', NULL, '06', '0645', '064508', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (506, 'Enrique Villanueva', NULL, '07', '0761', '076101', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (507, 'Ermita', NULL, '13', '1339', '133908', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (508, 'Esperanza', NULL, '05', '0541', '054109', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (509, 'Estancia', NULL, '06', '0630', '063019', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (510, 'Famy', NULL, '04', '0434', '043408', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (511, 'Ferrol', NULL, '17', '1759', '175916', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (512, 'Flora', NULL, '14', '1481', '148103', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (513, 'Floridablanca', NULL, '03', '0354', '035406', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (514, 'Gabaldon (Bitulok & Sabani)', NULL, '03', '0349', '034907', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (515, 'Gainza', NULL, '05', '0517', '051713', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (516, 'Galimuyod', NULL, '01', '0129', '012909', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (517, 'Gamay', NULL, '08', '0848', '084807', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (518, 'Gamu', NULL, '02', '0231', '023113', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (519, 'Ganassi', NULL, '15', '1536', '153609', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (520, 'Gandara', NULL, '08', '0860', '086007', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (521, 'Garchitorena', NULL, '05', '0517', '051714', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (522, 'Garcia Hernandez', NULL, '07', '0712', '071222', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (523, 'Gasan', NULL, '17', '1740', '174003', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (524, 'Gattaran', NULL, '02', '0215', '021513', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (525, 'Gen. Mariano Alvarez', NULL, '04', '0421', '042123', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (526, 'Gen. S. K. Pendatun', NULL, '15', '1538', '153819', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (527, 'General Emilio Aguinaldo', NULL, '04', '0421', '042107', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (528, 'General Luna', NULL, '04', '0456', '045616', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (529, 'General Macarthur', NULL, '08', '0826', '082607', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (530, 'General Mamerto Natividad', NULL, '03', '0349', '034909', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (531, 'General Nakar', NULL, '04', '0456', '045617', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (532, 'General Santos City (Dadiangas)', NULL, '12', '1263', '126303', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (533, 'General Tinio (Papaya)', NULL, '03', '0349', '034910', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (534, 'General Trias', NULL, '04', '0421', '042108', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (535, 'Gerona', NULL, '03', '0369', '036906', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (536, 'Gigaquit', NULL, '16', '1667', '166711', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (537, 'Gigmoto', NULL, '05', '0520', '052005', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (538, 'Ginatilan', NULL, '07', '0722', '072225', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (539, 'Gingoog City', NULL, '10', '1043', '104308', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (540, 'Giporlos', NULL, '08', '0826', '082608', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (541, 'Gitagum', NULL, '10', '1043', '104309', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (542, 'Glan', NULL, '12', '1280', '128002', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (543, 'Gloria', NULL, '17', '1752', '175206', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (544, 'Goa', NULL, '05', '0517', '051715', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (545, 'Godod', NULL, '09', '0972', '097225', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (546, 'Gonzaga', NULL, '02', '0215', '021514', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (547, 'Governor Generoso', NULL, '11', '1125', '112506', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (548, 'Gregorio Del Pilar (Concepcion)', NULL, '01', '0129', '012910', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (549, 'Guagua', NULL, '03', '0354', '035407', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (550, 'Gubat', NULL, '05', '0562', '056208', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (551, 'Guiguinto', NULL, '03', '0314', '031408', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (552, 'Guimba', NULL, '03', '0349', '034911', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (553, 'Guimbal', NULL, '06', '0630', '063020', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (554, 'Guinayangan', NULL, '04', '0456', '045618', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (555, 'Guindulman', NULL, '07', '0712', '071223', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (556, 'Guindulungan', NULL, '15', '1538', '153825', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (557, 'Guinobatan', NULL, '05', '0505', '050504', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (558, 'Guinsiliban', NULL, '10', '1018', '101802', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (559, 'Guipos', NULL, '09', '0973', '097343', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (560, 'Guiuan', NULL, '08', '0826', '082609', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (561, 'Gumaca', NULL, '04', '0456', '045619', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (562, 'Gutalac', NULL, '09', '0972', '097223', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (563, 'Hadji Mohammad Ajul', NULL, '15', '1507', '150710', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (564, 'Hadji Muhtamad', NULL, '15', '1507', '150712', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (565, 'Hadji Panglima Tahil (Marunggas)', NULL, '15', '1566', '156606', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (566, 'Hagonoy', NULL, '03', '0314', '031409', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (567, 'Hamtic', NULL, '06', '0606', '060608', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (568, 'Hermosa', NULL, '03', '0308', '030805', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (569, 'Hernani', NULL, '08', '0826', '082610', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (570, 'Hilongos', NULL, '08', '0837', '083719', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (571, 'Hinabangan', NULL, '08', '0860', '086008', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (572, 'Hinatuan', NULL, '16', '1668', '166809', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (573, 'Hindang', NULL, '08', '0837', '083720', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (574, 'Hingyon', NULL, '14', '1427', '142709', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (575, 'Hinigaran', NULL, '06', '0645', '064511', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (576, 'Hinoba-An (Asia)', NULL, '06', '0645', '064512', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (577, 'Hinunangan', NULL, '08', '0864', '086403', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (578, 'Hinundayan', NULL, '08', '0864', '086404', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (579, 'Hungduan', NULL, '14', '1427', '142702', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (580, 'Iba (Capital)', NULL, '03', '0371', '037105', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (581, 'Ibaan', NULL, '04', '0410', '041010', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (582, 'Ibajay', NULL, '06', '0604', '060406', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (583, 'Igbaras', NULL, '06', '0630', '063021', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (584, 'Iguig', NULL, '02', '0215', '021515', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (585, 'Ilagan City (Capital)', NULL, '02', '0231', '023114', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (586, 'Iligan City', NULL, '10', '1035', '103504', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (587, 'Ilog', NULL, '06', '0645', '064513', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (588, 'Iloilo City (Capital)', NULL, '06', '0630', '063022', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (589, 'Imelda', NULL, '09', '0983', '098304', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (590, 'Impasug-Ong', NULL, '10', '1013', '101305', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (591, 'Imus City', NULL, '04', '0421', '042109', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (592, 'Inabanga', NULL, '07', '0712', '071224', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (593, 'Indanan', NULL, '15', '1566', '156601', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (594, 'Indang', NULL, '04', '0421', '042110', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (595, 'Infanta', NULL, '01', '0155', '015520', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (596, 'Initao', NULL, '10', '1043', '104310', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (597, 'Inopacan', NULL, '08', '0837', '083721', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (598, 'Intramuros', NULL, '13', '1339', '133909', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (599, 'Ipil (Capital)', NULL, '09', '0983', '098305', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (600, 'Iriga City', NULL, '05', '0517', '051716', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (601, 'Irosin', NULL, '05', '0562', '056209', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (602, 'Isabel', NULL, '08', '0837', '083722', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (603, 'Isabela', NULL, '06', '0645', '064514', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (604, 'Island Garden City Of Samal', NULL, '11', '1123', '112317', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (605, 'Isulan (Capital)', NULL, '12', '1265', '126504', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (606, 'Itbayat', NULL, '02', '0209', '020902', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (607, 'Itogon', NULL, '14', '1411', '141106', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (608, 'Ivana', NULL, '02', '0209', '020903', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (609, 'Ivisan', NULL, '06', '0619', '061905', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (610, 'Jabonga', NULL, '16', '1602', '160205', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (611, 'Jaen', NULL, '03', '0349', '034912', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (612, 'Jagna', NULL, '07', '0712', '071225', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (613, 'Jala-Jala', NULL, '04', '0458', '045807', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (614, 'Jamindan', NULL, '06', '0619', '061906', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (615, 'Janiuay', NULL, '06', '0630', '063023', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (616, 'Jaro', NULL, '08', '0837', '083723', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (617, 'Jasaan', NULL, '10', '1043', '104311', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (618, 'Javier (Bugho)', NULL, '08', '0837', '083724', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (619, 'Jetafe', NULL, '07', '0712', '071226', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (620, 'Jiabong', NULL, '08', '0860', '086009', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (621, 'Jimalalud', NULL, '07', '0746', '074612', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (622, 'Jimenez', NULL, '10', '1042', '104207', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (623, 'Jipapad', NULL, '08', '0826', '082611', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (624, 'Jolo (Capital)', NULL, '15', '1566', '156602', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (625, 'Jomalig', NULL, '04', '0456', '045621', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (626, 'Jones', NULL, '02', '0231', '023115', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (627, 'Jordan (Capital)', NULL, '06', '0679', '067902', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (628, 'Jose Abad Santos (Trinidad)', NULL, '11', '1186', '118602', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (629, 'Jose Dalman (Ponot)', NULL, '09', '0972', '097222', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (630, 'Jose Panganiban', NULL, '05', '0516', '051605', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (631, 'Josefina', NULL, '09', '0973', '097337', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (632, 'Jovellar', NULL, '05', '0505', '050505', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (633, 'Juban', NULL, '05', '0562', '056210', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (634, 'Julita', NULL, '08', '0837', '083725', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (635, 'Kabacan', NULL, '12', '1247', '124703', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (636, 'Kabasalan', NULL, '09', '0983', '098306', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (637, 'Kabayan', NULL, '14', '1411', '141107', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (638, 'Kabugao (Capital)', NULL, '14', '1481', '148104', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (639, 'Kabuntalan (Tumbao)', NULL, '15', '1538', '153814', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (640, 'Kadingilan', NULL, '10', '1013', '101306', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (641, 'Kalamansig', NULL, '12', '1265', '126505', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (642, 'Kalawit', NULL, '09', '0972', '097227', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (643, 'Kalayaan', NULL, '04', '0434', '043409', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (644, 'Kalibo (Capital)', NULL, '06', '0604', '060407', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (645, 'Kalilangan', NULL, '10', '1013', '101307', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (646, 'Kalingalan Caluang', NULL, '15', '1566', '156603', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (647, 'Kananga', NULL, '08', '0837', '083726', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (648, 'Kapai', NULL, '15', '1536', '153610', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (649, 'Kapalong', NULL, '11', '1123', '112305', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (650, 'Kapangan', NULL, '14', '1411', '141108', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (651, 'Kapatagan', NULL, '10', '1035', '103505', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (652, 'Kasibu', NULL, '02', '0250', '025009', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (653, 'Katipunan', NULL, '09', '0972', '097203', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (654, 'Kauswagan', NULL, '10', '1035', '103507', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (655, 'Kawayan', NULL, '08', '0878', '087806', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (656, 'Kawit', NULL, '04', '0421', '042111', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (657, 'Kayapa', NULL, '02', '0250', '025010', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (658, 'Kiamba', NULL, '12', '1280', '128003', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (659, 'Kiangan', NULL, '14', '1427', '142703', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (660, 'Kibawe', NULL, '10', '1013', '101308', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (661, 'Kiblawan', NULL, '11', '1124', '112406', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (662, 'Kibungan', NULL, '14', '1411', '141109', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (663, 'Kinoguitan', NULL, '10', '1043', '104312', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (664, 'Kitaotao', NULL, '10', '1013', '101309', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (665, 'Kitcharao', NULL, '16', '1602', '160206', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (666, 'Kolambugan', NULL, '10', '1035', '103508', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (667, 'Kumalarang', NULL, '09', '0973', '097311', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (668, 'La Carlota City', NULL, '06', '0645', '064516', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (669, 'La Castellana', NULL, '06', '0645', '064517', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (670, 'La Libertad', NULL, '07', '0746', '074613', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (671, 'La Paz', NULL, '03', '0369', '036907', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (672, 'La Trinidad (Capital)', NULL, '14', '1411', '141110', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (673, 'Laak (San Vicente)', NULL, '11', '1182', '118202', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (674, 'Labangan', NULL, '09', '0973', '097312', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (675, 'Labason', NULL, '09', '0972', '097205', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (676, 'Labo', NULL, '05', '0516', '051606', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (677, 'Labrador', NULL, '01', '0155', '015521', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (678, 'Lacub', NULL, '14', '1401', '140109', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (679, 'Lagangilang', NULL, '14', '1401', '140110', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (680, 'Lagawe (Capital)', NULL, '14', '1427', '142704', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (681, 'Lagayan', NULL, '14', '1401', '140111', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (682, 'Lagonglong', NULL, '10', '1043', '104313', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (683, 'Lagonoy', NULL, '05', '0517', '051717', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (684, 'Laguindingan', NULL, '10', '1043', '104314', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (685, 'Lake Sebu', NULL, '12', '1263', '126319', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (686, 'Lakewood', NULL, '09', '0973', '097333', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (687, 'Lala', NULL, '10', '1035', '103509', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (688, 'Lal-Lo', NULL, '02', '0215', '021516', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (689, 'Lambayong (Mariano Marcos)', NULL, '12', '1265', '126508', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (690, 'Lambunao', NULL, '06', '0630', '063025', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (691, 'Lamut', NULL, '14', '1427', '142705', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (692, 'Langiden', NULL, '14', '1401', '140112', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (693, 'Languyan', NULL, '15', '1570', '157009', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (694, 'Lantapan', NULL, '10', '1013', '101310', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (695, 'Lantawan', NULL, '15', '1507', '150703', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (696, 'Lanuza', NULL, '16', '1668', '166810', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (697, 'Laoac', NULL, '01', '0155', '015548', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (698, 'Laoag City (Capital)', NULL, '01', '0128', '012812', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (699, 'Laoang', NULL, '08', '0848', '084808', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (700, 'Lapinig', NULL, '08', '0848', '084809', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (701, 'Lapu-Lapu City (Opon)', NULL, '07', '0722', '072226', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (702, 'Lapuyan', NULL, '09', '0973', '097313', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (703, 'Larena', NULL, '07', '0761', '076102', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (704, 'Las Navas', NULL, '08', '0848', '084810', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (705, 'Las Nieves', NULL, '16', '1602', '160207', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (706, 'Lasam', NULL, '02', '0215', '021517', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (707, 'Laua-An', NULL, '06', '0606', '060609', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (708, 'Laur', NULL, '03', '0349', '034913', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (709, 'Laurel', NULL, '04', '0410', '041011', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (710, 'Lavezares', NULL, '08', '0848', '084811', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (711, 'Lawaan', NULL, '08', '0826', '082612', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (712, 'Lazi', NULL, '07', '0761', '076103', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (713, 'Lebak', NULL, '12', '1265', '126506', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (714, 'Leganes', NULL, '06', '0630', '063026', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (715, 'Legazpi City (Capital)', NULL, '05', '0505', '050506', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (716, 'Lemery', NULL, '04', '0410', '041012', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (717, 'Leon', NULL, '06', '0630', '063028', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (718, 'Leyte', NULL, '08', '0837', '083729', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (719, 'Lezo', NULL, '06', '0604', '060408', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (720, 'Lian', NULL, '04', '0410', '041013', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (721, 'Lianga', NULL, '16', '1668', '166811', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (722, 'Libacao', NULL, '06', '0604', '060409', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (723, 'Libagon', NULL, '08', '0864', '086405', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (724, 'Libertad', NULL, '06', '0606', '060610', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (725, 'Libjo (Albor)', NULL, '16', '1685', '168504', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (726, 'Libmanan', NULL, '05', '0517', '051718', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (727, 'Libon', NULL, '05', '0505', '050507', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (728, 'Libona', NULL, '10', '1013', '101311', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (729, 'Libungan', NULL, '12', '1247', '124705', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (730, 'Licab', NULL, '03', '0349', '034914', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (731, 'Licuan-Baay (Licuan)', NULL, '14', '1401', '140113', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (732, 'Lidlidda', NULL, '01', '0129', '012911', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (733, 'Lila', NULL, '07', '0712', '071227', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (734, 'Liliw', NULL, '04', '0434', '043410', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (735, 'Liloan', NULL, '07', '0722', '072227', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (736, 'Liloy', NULL, '09', '0972', '097206', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (737, 'Limasawa', NULL, '08', '0864', '086419', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (738, 'Limay', NULL, '03', '0308', '030806', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (739, 'Linamon', NULL, '10', '1035', '103510', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (740, 'Linapacan', NULL, '17', '1753', '175313', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (741, 'Lingayen (Capital)', NULL, '01', '0155', '015522', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (742, 'Lingig', NULL, '16', '1668', '166812', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (743, 'Lipa City', NULL, '04', '0410', '041014', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (744, 'Llanera', NULL, '03', '0349', '034915', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (745, 'Llorente', NULL, '08', '0826', '082613', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (746, 'Loay', NULL, '07', '0712', '071228', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (747, 'Lobo', NULL, '04', '0410', '041015', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (748, 'Loboc', NULL, '07', '0712', '071229', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (749, 'Looc', NULL, '17', '1751', '175103', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (750, 'Loon', NULL, '07', '0712', '071230', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (751, 'Lope De Vega', NULL, '08', '0848', '084824', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (752, 'Lopez', NULL, '04', '0456', '045622', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (753, 'Lopez Jaena', NULL, '10', '1042', '104208', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (754, 'Loreto', NULL, '16', '1603', '160305', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (755, 'Los Baños', NULL, '04', '0434', '043411', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (756, 'Luba', NULL, '14', '1401', '140114', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (757, 'Lubang', NULL, '17', '1751', '175104', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (758, 'Lubao', NULL, '03', '0354', '035408', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (759, 'Lubuagan', NULL, '14', '1432', '143206', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (760, 'Lucban', NULL, '04', '0456', '045623', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (761, 'Lucena City (Capital)', NULL, '04', '0456', '045624', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (762, 'Lugait', NULL, '10', '1043', '104316', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (763, 'Lugus', NULL, '15', '1566', '156617', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (764, 'Luisiana', NULL, '04', '0434', '043412', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (765, 'Lumba-Bayabao (Maguing)', NULL, '15', '1536', '153611', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (766, 'Lumbaca-Unayan', NULL, '15', '1536', '153641', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (767, 'Lumban', NULL, '04', '0434', '043413', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (768, 'Lumbatan', NULL, '15', '1536', '153612', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (769, 'Lumbayanague', NULL, '15', '1536', '153636', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (770, 'Luna', NULL, '01', '0133', '013310', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (771, 'Lupao', NULL, '03', '0349', '034916', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (772, 'Lupi', NULL, '05', '0517', '051719', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (773, 'Lupon', NULL, '11', '1125', '112507', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (774, 'Lutayan', NULL, '12', '1265', '126507', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (775, 'Luuk', NULL, '15', '1566', '156604', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (776, 'Maasim', NULL, '12', '1280', '128004', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (777, 'Maasin', NULL, '06', '0630', '063029', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (778, 'Ma-Ayon', NULL, '06', '0619', '061907', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (779, 'Mabalacat City', NULL, '03', '0354', '035409', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (780, 'Mabinay', NULL, '07', '0746', '074614', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (781, 'Mabini', NULL, '01', '0155', '015523', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (782, 'Mabini (Doña Alicia)', NULL, '11', '1182', '118203', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (783, 'Mabitac', NULL, '04', '0434', '043414', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (784, 'Mabuhay', NULL, '09', '0983', '098307', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (785, 'Macabebe', NULL, '03', '0354', '035410', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (786, 'Macalelon', NULL, '04', '0456', '045625', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (787, 'Macarthur', NULL, '08', '0837', '083730', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (788, 'Maco', NULL, '11', '1182', '118204', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (789, 'Maconacon', NULL, '02', '0231', '023117', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (790, 'Macrohon', NULL, '08', '0864', '086408', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (791, 'Madalag', NULL, '06', '0604', '060410', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (792, 'Madalum', NULL, '15', '1536', '153613', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (793, 'Madamba', NULL, '15', '1536', '153614', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (794, 'Maddela', NULL, '02', '0257', '025704', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (795, 'Madrid', NULL, '16', '1668', '166813', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (796, 'Madridejos', NULL, '07', '0722', '072228', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (797, 'Magalang', NULL, '03', '0354', '035411', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (798, 'Magallanes', NULL, '04', '0421', '042112', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (799, 'Magarao', NULL, '05', '0517', '051720', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (800, 'Magdalena', NULL, '04', '0434', '043415', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (801, 'Magdiwang', NULL, '17', '1759', '175908', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (802, 'Magpet', NULL, '12', '1247', '124706', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (803, 'Magsaysay', NULL, '17', '1751', '175105', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (804, 'Magsaysay (Linugos)', NULL, '10', '1043', '104317', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (805, 'Magsingal', NULL, '01', '0129', '012912', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (806, 'Maguing', NULL, '15', '1536', '153634', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (807, 'Mahaplag', NULL, '08', '0837', '083731', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (808, 'Mahatao', NULL, '02', '0209', '020904', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (809, 'Mahayag', NULL, '09', '0973', '097315', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (810, 'Mahinog', NULL, '10', '1018', '101803', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (811, 'Maigo', NULL, '10', '1035', '103512', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (812, 'Maimbung', NULL, '15', '1566', '156605', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (813, 'Mainit', NULL, '16', '1667', '166714', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (814, 'Maitum', NULL, '12', '1280', '128005', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (815, 'Majayjay', NULL, '04', '0434', '043416', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (816, 'Makato', NULL, '06', '0604', '060411', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (817, 'Makilala', NULL, '12', '1247', '124707', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (818, 'Malabang', NULL, '15', '1536', '153615', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (819, 'Malabuyoc', NULL, '07', '0722', '072229', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (820, 'Malalag', NULL, '11', '1124', '112408', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (821, 'Malangas', NULL, '09', '0983', '098308', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (822, 'Malapatan', NULL, '12', '1280', '128006', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (823, 'Malasiqui', NULL, '01', '0155', '015524', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (824, 'Malate', NULL, '13', '1339', '133910', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (825, 'Malay', NULL, '06', '0604', '060412', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (826, 'Malibcong', NULL, '14', '1401', '140115', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (827, 'Malilipot', NULL, '05', '0505', '050509', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (828, 'Malimono', NULL, '16', '1667', '166715', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (829, 'Malinao', NULL, '05', '0505', '050510', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (830, 'Malita', NULL, '11', '1186', '118603', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (831, 'Malitbog', NULL, '08', '0864', '086409', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (832, 'Mallig', NULL, '02', '0231', '023119', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (833, 'Malungon', NULL, '12', '1280', '128007', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (834, 'Maluso', NULL, '15', '1507', '150704', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (835, 'Malvar', NULL, '04', '0410', '041017', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (836, 'Mamasapano', NULL, '15', '1538', '153820', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (837, 'Mambajao (Capital)', NULL, '10', '1018', '101804', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (838, 'Mamburao (Capital)', NULL, '17', '1751', '175106', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (839, 'Mambusao', NULL, '06', '0619', '061908', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (840, 'Manabo', NULL, '14', '1401', '140116', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (841, 'Manaoag', NULL, '01', '0155', '015525', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (842, 'Manapla', NULL, '06', '0645', '064518', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (843, 'Manay', NULL, '11', '1125', '112508', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (844, 'Mandaon', NULL, '05', '0541', '054110', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (845, 'Mandaue City', NULL, '07', '0722', '072230', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (846, 'Mangaldan', NULL, '01', '0155', '015526', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (847, 'Mangatarem', NULL, '01', '0155', '015527', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (848, 'Mangudadatu', NULL, '15', '1538', '153832', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (849, 'Manito', NULL, '05', '0505', '050511', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (850, 'Manjuyod', NULL, '07', '0746', '074615', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (851, 'Mankayan', NULL, '14', '1411', '141111', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (852, 'Manolo Fortich', NULL, '10', '1013', '101314', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (853, 'Mansalay', NULL, '17', '1752', '175207', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (854, 'Manticao', NULL, '10', '1043', '104318', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (855, 'Manukan', NULL, '09', '0972', '097207', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (856, 'Mapanas', NULL, '08', '0848', '084812', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (857, 'Mapandan', NULL, '01', '0155', '015528', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (858, 'Mapun (Cagayan De Tawi-Tawi)', NULL, '15', '1570', '157003', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (859, 'Marabut', NULL, '08', '0860', '086010', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (860, 'Maragondon', NULL, '04', '0421', '042113', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (861, 'Maragusan (San Mariano)', NULL, '11', '1182', '118205', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (862, 'Maramag', NULL, '10', '1013', '101315', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (863, 'Marantao', NULL, '15', '1536', '153616', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (864, 'Marawi City (Capital)', NULL, '15', '1536', '153617', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (865, 'Marcos', NULL, '01', '0128', '012813', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (866, 'Margosatubig', NULL, '09', '0973', '097317', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (867, 'Maria', NULL, '07', '0761', '076104', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (868, 'Maria Aurora', NULL, '03', '0377', '037707', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (869, 'Maribojoc', NULL, '07', '0712', '071232', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (870, 'Marihatag', NULL, '16', '1668', '166814', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (871, 'Marilao', NULL, '03', '0314', '031411', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (872, 'Maripipi', NULL, '08', '0878', '087807', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (873, 'Mariveles', NULL, '03', '0308', '030807', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (874, 'Marogong', NULL, '15', '1536', '153631', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (875, 'Masantol', NULL, '03', '0354', '035412', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (876, 'Masinloc', NULL, '03', '0371', '037106', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (877, 'Masiu', NULL, '15', '1536', '153618', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (878, 'Maslog', NULL, '08', '0826', '082614', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (879, 'Mataasnakahoy', NULL, '04', '0410', '041018', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (880, 'Matag-Ob', NULL, '08', '0837', '083733', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (881, 'Matalam', NULL, '12', '1247', '124708', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (882, 'Matalom', NULL, '08', '0837', '083734', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (883, 'Matanao', NULL, '11', '1124', '112410', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (884, 'Matanog', NULL, '15', '1538', '153809', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (885, 'Matnog', NULL, '05', '0562', '056212', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (886, 'Matuguinao', NULL, '08', '0860', '086011', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (887, 'Matungao', NULL, '10', '1035', '103513', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (888, 'Mauban', NULL, '04', '0456', '045627', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (889, 'Mawab', NULL, '11', '1182', '118206', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (890, 'Mayantoc', NULL, '03', '0369', '036908', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (891, 'Maydolong', NULL, '08', '0826', '082615', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (892, 'Mayorga', NULL, '08', '0837', '083735', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (893, 'Mayoyao', NULL, '14', '1427', '142706', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (894, 'Medellin', NULL, '07', '0722', '072231', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (895, 'Medina', NULL, '10', '1043', '104319', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (896, 'Mendez (Mendez-Nuñez)', NULL, '04', '0421', '042114', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (897, 'Mercedes', NULL, '05', '0516', '051607', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (898, 'Merida', NULL, '08', '0837', '083736', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (899, 'Mexico', NULL, '03', '0354', '035413', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (900, 'Miagao', NULL, '06', '0630', '063030', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (901, 'Midsalip', NULL, '09', '0973', '097318', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (902, 'Midsayap', NULL, '12', '1247', '124709', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (903, 'Milagros', NULL, '05', '0541', '054112', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (904, 'Milaor', NULL, '05', '0517', '051721', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (905, 'Mina', NULL, '06', '0630', '063031', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (906, 'Minalabac', NULL, '05', '0517', '051722', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (907, 'Minalin', NULL, '03', '0354', '035414', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (908, 'Minglanilla', NULL, '07', '0722', '072232', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (909, 'M\'Lang', NULL, '12', '1247', '124710', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (910, 'Moalboal', NULL, '07', '0722', '072233', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (911, 'Mobo', NULL, '05', '0541', '054113', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (912, 'Mogpog', NULL, '17', '1740', '174004', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (913, 'Moises Padilla (Magallon)', NULL, '06', '0645', '064519', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (914, 'Molave', NULL, '09', '0973', '097319', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (915, 'Moncada', NULL, '03', '0369', '036909', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (916, 'Mondragon', NULL, '08', '0848', '084813', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (917, 'Monkayo', NULL, '11', '1182', '118207', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (918, 'Monreal', NULL, '05', '0541', '054114', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (919, 'Montevista', NULL, '11', '1182', '118208', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (920, 'Morong', NULL, '03', '0308', '030808', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (921, 'Motiong', NULL, '08', '0860', '086012', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (922, 'Mulanay', NULL, '04', '0456', '045628', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (923, 'Mulondo', NULL, '15', '1536', '153619', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (924, 'Munai', NULL, '10', '1035', '103514', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (925, 'Murcia', NULL, '06', '0645', '064520', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (926, 'Mutia', NULL, '09', '0972', '097208', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (927, 'Naawan', NULL, '10', '1043', '104320', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (928, 'Nabas', NULL, '06', '0604', '060414', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (929, 'Nabua', NULL, '05', '0517', '051723', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (930, 'Nabunturan (Capital)', NULL, '11', '1182', '118209', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (931, 'Naga', NULL, '09', '0983', '098309', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (932, 'Naga City', NULL, '05', '0517', '051724', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (933, 'Nagbukel', NULL, '01', '0129', '012913', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (934, 'Nagcarlan', NULL, '04', '0434', '043417', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (935, 'Nagtipunan', NULL, '02', '0257', '025706', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (936, 'Naguilian', NULL, '01', '0133', '013311', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (937, 'Naic', NULL, '04', '0421', '042115', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (938, 'Nampicuan', NULL, '03', '0349', '034918', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (939, 'Narra', NULL, '17', '1753', '175315', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (940, 'Narvacan', NULL, '01', '0129', '012914', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (941, 'Nasipit', NULL, '16', '1602', '160209', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (942, 'Nasugbu', NULL, '04', '0410', '041019', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (943, 'Natividad', NULL, '01', '0155', '015529', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (944, 'Natonin', NULL, '14', '1444', '144405', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (945, 'Naujan', NULL, '17', '1752', '175208', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (946, 'Naval (Capital)', NULL, '08', '0878', '087808', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (947, 'New Bataan', NULL, '11', '1182', '118210', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (948, 'New Corella', NULL, '11', '1123', '112314', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (949, 'New Lucena', NULL, '06', '0630', '063032', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (950, 'New Washington', NULL, '06', '0604', '060415', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (951, 'Norala', NULL, '12', '1263', '126311', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (952, 'Northern Kabuntalan', NULL, '15', '1538', '153834', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (953, 'Norzagaray', NULL, '03', '0314', '031413', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (954, 'Noveleta', NULL, '04', '0421', '042116', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (955, 'Nueva Era', NULL, '01', '0128', '012814', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (956, 'Nueva Valencia', NULL, '06', '0679', '067903', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (957, 'Numancia', NULL, '06', '0604', '060416', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (958, 'Nunungan', NULL, '10', '1035', '103515', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (959, 'Oas', NULL, '05', '0505', '050512', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (960, 'Obando', NULL, '03', '0314', '031414', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (961, 'Ocampo', NULL, '05', '0517', '051725', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (962, 'Odiongan', NULL, '17', '1759', '175909', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (963, 'Old Panamao', NULL, '15', '1566', '156607', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (964, 'Olongapo City', NULL, '03', '0371', '037107', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (965, 'Olutanga', NULL, '09', '0983', '098310', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (966, 'Omar', NULL, '15', '1566', '156619', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (967, 'Opol', NULL, '10', '1043', '104321', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (968, 'Orani', NULL, '03', '0308', '030809', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (969, 'Oras', NULL, '08', '0826', '082617', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (970, 'Orion', NULL, '03', '0308', '030810', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (971, 'Ormoc City', NULL, '08', '0837', '083738', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (972, 'Oroquieta City (Capital)', NULL, '10', '1042', '104209', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (973, 'Oslob', NULL, '07', '0722', '072235', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (974, 'Oton', NULL, '06', '0630', '063034', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (975, 'Ozamis City', NULL, '10', '1042', '104210', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (976, 'Paco', NULL, '13', '1339', '133911', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (977, 'Padada', NULL, '11', '1124', '112411', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (978, 'Padre Burgos', NULL, '04', '0456', '045629', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (979, 'Padre Garcia', NULL, '04', '0410', '041020', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (980, 'Paete', NULL, '04', '0434', '043418', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (981, 'Pagadian City (Capital)', NULL, '09', '0973', '097322', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (982, 'Pagagawan', NULL, '15', '1538', '153822', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (983, 'Pagalungan', NULL, '15', '1538', '153810', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (984, 'Pagayawan (Tatarikan)', NULL, '15', '1536', '153620', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (985, 'Pagbilao', NULL, '04', '0456', '045630', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (986, 'Paglat', NULL, '15', '1538', '153823', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (987, 'Pagsanghan', NULL, '08', '0860', '086026', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (988, 'Pagsanjan', NULL, '04', '0434', '043419', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (989, 'Pagudpud', NULL, '01', '0128', '012815', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (990, 'Pakil', NULL, '04', '0434', '043420', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (991, 'Palanan', NULL, '02', '0231', '023121', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (992, 'Palanas', NULL, '05', '0541', '054115', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (993, 'Palapag', NULL, '08', '0848', '084814', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (994, 'Palauig', NULL, '03', '0371', '037108', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (995, 'Palayan City (Capital)', NULL, '03', '0349', '034919', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (996, 'Palimbang', NULL, '12', '1265', '126509', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (997, 'Palo', NULL, '08', '0837', '083739', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (998, 'Palompon', NULL, '08', '0837', '083740', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (999, 'Paluan', NULL, '17', '1751', '175107', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1000, 'Pambujan', NULL, '08', '0848', '084815', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1001, 'Pamplona', NULL, '02', '0215', '021518', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1002, 'Panaon', NULL, '10', '1042', '104211', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1003, 'Panay', NULL, '06', '0619', '061909', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1004, 'Pandacan', NULL, '13', '1339', '133912', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1005, 'Pandag', NULL, '15', '1538', '153833', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1006, 'Pandami', NULL, '15', '1566', '156618', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1007, 'Pandan', NULL, '05', '0520', '052006', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1008, 'Pandi', NULL, '03', '0314', '031415', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1009, 'Panganiban (Payo)', NULL, '05', '0520', '052007', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1010, 'Pangantucan', NULL, '10', '1013', '101316', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1011, 'Pangil', NULL, '04', '0434', '043421', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1012, 'Panglao', NULL, '07', '0712', '071233', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1013, 'Panglima Estino (New Panamao)', NULL, '15', '1566', '156616', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1014, 'Panglima Sugala (Balimbing)', NULL, '15', '1570', '157001', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1015, 'Pangutaran', NULL, '15', '1566', '156608', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1016, 'Paniqui', NULL, '03', '0369', '036910', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1017, 'Panitan', NULL, '06', '0619', '061910', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1018, 'Pantabangan', NULL, '03', '0349', '034920', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1019, 'Pantao Ragat', NULL, '10', '1035', '103516', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1020, 'Pantar', NULL, '10', '1035', '103523', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1021, 'Pantukan', NULL, '11', '1182', '118211', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1022, 'Panukulan', NULL, '04', '0456', '045631', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1023, 'Paoay', NULL, '01', '0128', '012816', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1024, 'Paombong', NULL, '03', '0314', '031416', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1025, 'Paracale', NULL, '05', '0516', '051608', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1026, 'Paracelis', NULL, '14', '1444', '144406', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1027, 'Paranas (Wright)', NULL, '08', '0860', '086022', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1028, 'Parang', NULL, '15', '1538', '153811', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1029, 'Pasacao', NULL, '05', '0517', '051727', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1030, 'Pasay City', NULL, '13', '1376', '137605', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1031, 'Pasil', NULL, '14', '1432', '143208', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1032, 'Pastrana', NULL, '08', '0837', '083741', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1033, 'Pasuquin', NULL, '01', '0128', '012817', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1034, 'Pata', NULL, '15', '1566', '156610', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1035, 'Pateros', NULL, '13', '1376', '137606', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1036, 'Patikul', NULL, '15', '1566', '156611', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1037, 'Patnanungan', NULL, '04', '0456', '045632', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1038, 'Patnongon', NULL, '06', '0606', '060612', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1039, 'Pavia', NULL, '06', '0630', '063036', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1040, 'Payao', NULL, '09', '0983', '098311', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1041, 'Peñablanca', NULL, '02', '0215', '021519', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1042, 'Peñaranda', NULL, '03', '0349', '034921', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1043, 'Peñarrubia', NULL, '14', '1401', '140117', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1044, 'Perez', NULL, '04', '0456', '045633', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1045, 'Piagapo', NULL, '15', '1536', '153621', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1046, 'Piat', NULL, '02', '0215', '021520', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1047, 'Picong (Sultan Gumander)', NULL, '15', '1536', '153635', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1048, 'Piddig', NULL, '01', '0128', '012818', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1049, 'Pidigan', NULL, '14', '1401', '140118', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1050, 'Pigkawayan', NULL, '12', '1247', '124711', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1051, 'Pikit', NULL, '12', '1247', '124712', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1052, 'Pila', NULL, '04', '0434', '043422', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1053, 'Pilar', NULL, '03', '0308', '030811', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1054, 'Pili (Capital)', NULL, '05', '0517', '051728', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1055, 'Pililla', NULL, '04', '0458', '045810', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1056, 'Pinabacdao', NULL, '08', '0860', '086013', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1057, 'Pinamalayan', NULL, '17', '1752', '175209', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1058, 'Pinamungahan', NULL, '07', '0722', '072237', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1059, 'Piñan (New Piñan)', NULL, '09', '0972', '097209', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1060, 'Pinili', NULL, '01', '0128', '012819', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1061, 'Pintuyan', NULL, '08', '0864', '086411', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1062, 'Pinukpuk', NULL, '14', '1432', '143209', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1063, 'Pio Duran', NULL, '05', '0505', '050513', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1064, 'Pio V. Corpuz (Limbuhan)', NULL, '05', '0541', '054116', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1065, 'Pitogo', NULL, '04', '0456', '045634', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1066, 'Placer', NULL, '05', '0541', '054117', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1067, 'Plaridel', NULL, '03', '0314', '031417', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1068, 'Pola', NULL, '17', '1752', '175210', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1069, 'Polanco', NULL, '09', '0972', '097210', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1070, 'Polangui', NULL, '05', '0505', '050514', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1071, 'Polillo', NULL, '04', '0456', '045636', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1072, 'Polomolok', NULL, '12', '1263', '126312', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1073, 'Pontevedra', NULL, '06', '0619', '061912', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1074, 'Poona Bayabao (Gata)', NULL, '15', '1536', '153622', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1075, 'Poona Piagapo', NULL, '10', '1035', '103517', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1076, 'Porac', NULL, '03', '0354', '035415', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1077, 'Poro', NULL, '07', '0722', '072238', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1078, 'Port Area', NULL, '13', '1339', '133913', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1079, 'Pototan', NULL, '06', '0630', '063037', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1080, 'Pozorrubio', NULL, '01', '0155', '015530', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1081, 'Pres. Carlos P. Garcia (Pitogo)', NULL, '07', '0712', '071235', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1082, 'Pres. Manuel A. Roxas', NULL, '09', '0972', '097211', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1083, 'Presentacion (Parubcan)', NULL, '05', '0517', '051729', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1084, 'President Quirino', NULL, '12', '1265', '126510', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1085, 'President Roxas', NULL, '06', '0619', '061913', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1086, 'Prieto Diaz', NULL, '05', '0562', '056214', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1087, 'Prosperidad (Capital)', NULL, '16', '1603', '160306', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1088, 'Pualas', NULL, '15', '1536', '153623', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1089, 'Pudtol', NULL, '14', '1481', '148106', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1090, 'Puerto Galera', NULL, '17', '1752', '175211', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1091, 'Puerto Princesa City (Capital)', NULL, '17', '1753', '175316', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1092, 'Pugo', NULL, '01', '0133', '013312', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1093, 'Pulilan', NULL, '03', '0314', '031418', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1094, 'Pulupandan', NULL, '06', '0645', '064522', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1095, 'Pura', NULL, '03', '0369', '036911', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1096, 'Quezon', NULL, '02', '0231', '023122', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1097, 'Quezon City', NULL, '13', '1374', '137404', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1098, 'Quiapo', NULL, '13', '1339', '133903', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1099, 'Quinapondan', NULL, '08', '0826', '082618', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1100, 'Quirino', NULL, '02', '0231', '023123', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1101, 'Quirino (Angkaki)', NULL, '01', '0129', '012915', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1102, 'Ragay', NULL, '05', '0517', '051730', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1103, 'Rajah Buayan', NULL, '15', '1538', '153829', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1104, 'Ramon', NULL, '02', '0231', '023124', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1105, 'Ramon Magsaysay (Liargo)', NULL, '09', '0973', '097323', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1106, 'Ramos', NULL, '03', '0369', '036912', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1107, 'Rapu-Rapu', NULL, '05', '0505', '050515', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1108, 'Real', NULL, '04', '0456', '045638', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1109, 'Reina Mercedes', NULL, '02', '0231', '023125', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1110, 'Remedios T. Romualdez', NULL, '16', '1602', '160212', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1111, 'Rizal', NULL, '02', '0215', '021521', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1112, 'Rizal (Liwan)', NULL, '14', '1432', '143211', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1113, 'Rizal (Marcos)', NULL, '17', '1753', '175323', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1114, 'Rodriguez (Montalban)', NULL, '04', '0458', '045808', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1115, 'Romblon (Capital)', NULL, '17', '1759', '175910', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1116, 'Ronda', NULL, '07', '0722', '072239', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1117, 'Rosales', NULL, '01', '0155', '015531', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1118, 'Rosario', NULL, '01', '0133', '013313', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1119, 'Roseller Lim', NULL, '09', '0983', '098312', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1120, 'Roxas', NULL, '02', '0231', '023126', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1121, 'Roxas City (Capital)', NULL, '06', '0619', '061914', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1122, 'Sabangan', NULL, '14', '1444', '144407', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1123, 'Sablan', NULL, '14', '1411', '141112', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1124, 'Sablayan', NULL, '17', '1751', '175109', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1125, 'Sabtang', NULL, '02', '0209', '020905', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1126, 'Sadanga', NULL, '14', '1444', '144408', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1127, 'Sagada', NULL, '14', '1444', '144409', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1128, 'Sagay', NULL, '10', '1018', '101805', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1129, 'Sagay City', NULL, '06', '0645', '064523', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1130, 'Sagbayan (Borja)', NULL, '07', '0712', '071236', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1131, 'Sagñay', NULL, '05', '0517', '051731', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1132, 'Saguday', NULL, '02', '0257', '025705', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1133, 'Saguiaran', NULL, '15', '1536', '153625', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1134, 'Saint Bernard', NULL, '08', '0864', '086412', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1135, 'Salay', NULL, '10', '1043', '104322', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1136, 'Salcedo', NULL, '08', '0826', '082619', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1137, 'Salcedo (Baugen)', NULL, '01', '0129', '012916', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1138, 'Sallapadan', NULL, '14', '1401', '140120', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1139, 'Salug', NULL, '09', '0972', '097213', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1140, 'Salvador', NULL, '10', '1035', '103518', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1141, 'Salvador Benedicto', NULL, '06', '0645', '064532', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1142, 'Samal', NULL, '03', '0308', '030812', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1143, 'Samboan', NULL, '07', '0722', '072240', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1144, 'Sampaloc', NULL, '04', '0456', '045639', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1145, 'San Agustin', NULL, '02', '0231', '023127', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1146, 'San Andres', NULL, '04', '0456', '045640', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1147, 'San Andres (Calolbon)', NULL, '05', '0520', '052008', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1148, 'San Antonio', NULL, '03', '0349', '034924', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1149, 'San Benito', NULL, '16', '1667', '166718', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1150, 'San Carlos City', NULL, '01', '0155', '015532', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1151, 'San Clemente', NULL, '03', '0369', '036913', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1152, 'San Dionisio', NULL, '06', '0630', '063038', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1153, 'San Emilio', NULL, '01', '0129', '012917', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1154, 'San Enrique', NULL, '06', '0630', '063039', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1155, 'San Esteban', NULL, '01', '0129', '012918', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1156, 'San Fabian', NULL, '01', '0155', '015533', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1157, 'San Felipe', NULL, '03', '0371', '037110', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1158, 'San Fernando', NULL, '17', '1759', '175913', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1159, 'San Francisco', NULL, '07', '0722', '072242', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1160, 'San Francisco (Anao-Aon)', NULL, '16', '1667', '166719', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1161, 'San Francisco (Aurora)', NULL, '04', '0456', '045642', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1162, 'San Gabriel', NULL, '01', '0133', '013315', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1163, 'San Guillermo', NULL, '02', '0231', '023128', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1164, 'San Ildefonso', NULL, '01', '0129', '012919', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1165, 'San Isidro', NULL, '02', '0231', '023129', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1166, 'San Jacinto', NULL, '01', '0155', '015534', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1167, 'San Joaquin', NULL, '06', '0630', '063040', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1168, 'San Jorge', NULL, '08', '0860', '086025', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1169, 'San Jose', NULL, '03', '0369', '036918', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1170, 'San Jose (Capital)', NULL, '06', '0606', '060613', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1171, 'San Jose City', NULL, '03', '0349', '034926', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1172, 'San Jose De Buan', NULL, '08', '0860', '086014', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1173, 'San Juan', NULL, '01', '0133', '013316', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1174, 'San Juan (Cabalian)', NULL, '08', '0864', '086414', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1175, 'San Juan (Lapog)', NULL, '01', '0129', '012920', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1176, 'San Julian', NULL, '08', '0826', '082620', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1177, 'San Leonardo', NULL, '03', '0349', '034927', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1178, 'San Lorenzo', NULL, '06', '0679', '067904', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1179, 'San Lorenzo Ruiz (Imelda)', NULL, '05', '0516', '051604', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1180, 'San Luis', NULL, '03', '0354', '035417', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1181, 'San Manuel', NULL, '01', '0155', '015535', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1182, 'San Marcelino', NULL, '03', '0371', '037111', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1183, 'San Mariano', NULL, '02', '0231', '023131', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1184, 'San Mateo', NULL, '02', '0231', '023132', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1185, 'San Miguel', NULL, '03', '0314', '031421', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1186, 'San Narciso', NULL, '03', '0371', '037112', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1187, 'San Nicolas', NULL, '01', '0128', '012820', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1188, 'San Pablo', NULL, '02', '0231', '023133', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1189, 'San Pablo City', NULL, '04', '0434', '043424', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1190, 'San Pascual', NULL, '04', '0410', '041026', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1191, 'San Policarpo', NULL, '08', '0826', '082621', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1192, 'San Quintin', NULL, '01', '0155', '015537', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1193, 'San Rafael', NULL, '03', '0314', '031422', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1194, 'San Remigio', NULL, '06', '0606', '060614', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1195, 'San Ricardo', NULL, '08', '0864', '086415', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1196, 'San Roque', NULL, '08', '0848', '084820', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1197, 'San Sebastian', NULL, '08', '0860', '086015', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1198, 'San Simon', NULL, '03', '0354', '035418', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1199, 'San Teodoro', NULL, '17', '1752', '175213', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1200, 'San Vicente', NULL, '01', '0129', '012921', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1201, 'Sanchez-Mira', NULL, '02', '0215', '021522', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1202, 'Santa', NULL, '01', '0129', '012922', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1203, 'Santa Ana', NULL, '02', '0215', '021523', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1204, 'Santa Barbara', NULL, '01', '0155', '015538', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1205, 'Santa Catalina', NULL, '01', '0129', '012923', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1206, 'Santa Cruz', NULL, '01', '0129', '012924', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1207, 'Santa Cruz (Capital)', NULL, '04', '0434', '043426', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1208, 'Santa Elena', NULL, '05', '0516', '051610', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1209, 'Santa Fe', NULL, '02', '0250', '025012', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1210, 'Santa Ignacia', NULL, '03', '0369', '036915', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1211, 'Santa Josefa', NULL, '16', '1603', '160310', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1212, 'Santa Lucia', NULL, '01', '0129', '012925', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1213, 'Santa Magdalena', NULL, '05', '0562', '056215', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1214, 'Santa Marcela', NULL, '14', '1481', '148107', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1215, 'Santa Margarita', NULL, '08', '0860', '086016', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1216, 'Santa Maria', NULL, '01', '0129', '012926', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1217, 'Santa Maria (Imelda)', NULL, '17', '1759', '175917', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1218, 'Santa Monica (Sapao)', NULL, '16', '1667', '166721', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1219, 'Santa Praxedes', NULL, '02', '0215', '021524', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1220, 'Santa Rita', NULL, '03', '0354', '035420', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1221, 'Santa Rosa', NULL, '03', '0349', '034928', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1222, 'Santa Teresita', NULL, '02', '0215', '021525', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1223, 'Santander', NULL, '07', '0722', '072245', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1224, 'Santiago', NULL, '01', '0129', '012927', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1225, 'Santo Domingo', NULL, '01', '0129', '012928', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1226, 'Santo Domingo (Libog)', NULL, '05', '0505', '050516', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1227, 'Santo Niño', NULL, '08', '0860', '086018', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1228, 'Santo Niño (Faire)', NULL, '02', '0215', '021526', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1229, 'Santo Tomas', NULL, '01', '0133', '013317', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1230, 'Santol', NULL, '01', '0133', '013318', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1231, 'Sapad', NULL, '10', '1035', '103519', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1232, 'Sapang Dalaga', NULL, '10', '1042', '104213', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1233, 'Sapa-Sapa', NULL, '15', '1570', '157010', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1234, 'Sapi-An', NULL, '06', '0619', '061915', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1235, 'Sara', NULL, '06', '0630', '063044', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1236, 'Sarangani', NULL, '11', '1186', '118605', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1237, 'Sariaya', NULL, '04', '0456', '045645', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1238, 'Sarrat', NULL, '01', '0128', '012821', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1239, 'Sasmuan (Sexmoan)', NULL, '03', '0354', '035422', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1240, 'Science City Of Muñoz', NULL, '03', '0349', '034917', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1241, 'Sebaste', NULL, '06', '0606', '060615', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1242, 'Sen. Ninoy Aquino', NULL, '12', '1265', '126512', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1243, 'Sergio Osmeña Sr.', NULL, '09', '0972', '097214', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1244, 'Sevilla', NULL, '07', '0712', '071239', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1245, 'Shariff Aguak (Maganoy) (Capital)', NULL, '15', '1538', '153808', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1246, 'Shariff Saydona Mustapha', NULL, '15', '1538', '153837', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1247, 'Siasi', NULL, '15', '1566', '156612', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1248, 'Siaton', NULL, '07', '0746', '074619', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1249, 'Siay', NULL, '09', '0983', '098313', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1250, 'Siayan', NULL, '09', '0972', '097215', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1251, 'Sibagat', NULL, '16', '1603', '160314', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1252, 'Sibalom', NULL, '06', '0606', '060616', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1253, 'Sibonga', NULL, '07', '0722', '072246', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1254, 'Sibuco', NULL, '09', '0972', '097216', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1255, 'Sibulan', NULL, '07', '0746', '074620', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1256, 'Sibunag', NULL, '06', '0679', '067905', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1257, 'Sibutad', NULL, '09', '0972', '097217', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1258, 'Sibutu', NULL, '15', '1570', '157011', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1259, 'Sierra Bullones', NULL, '07', '0712', '071240', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1260, 'Sigay', NULL, '01', '0129', '012929', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1261, 'Sigma', NULL, '06', '0619', '061916', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1262, 'Sikatuna', NULL, '07', '0712', '071241', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1263, 'Silago', NULL, '08', '0864', '086416', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1264, 'Silang', NULL, '04', '0421', '042118', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1265, 'Silay City', NULL, '06', '0645', '064526', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1266, 'Silvino Lobos', NULL, '08', '0848', '084822', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1267, 'Simunul', NULL, '15', '1570', '157004', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1268, 'Sinacaban', NULL, '10', '1042', '104214', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1269, 'Sinait', NULL, '01', '0129', '012930', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1270, 'Sindangan', NULL, '09', '0972', '097218', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1271, 'Siniloan', NULL, '04', '0434', '043429', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1272, 'Siocon', NULL, '09', '0972', '097219', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1273, 'Sipocot', NULL, '05', '0517', '051734', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1274, 'Siquijor (Capital)', NULL, '07', '0761', '076106', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1275, 'Sirawai', NULL, '09', '0972', '097220', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1276, 'Siruma', NULL, '05', '0517', '051735', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1277, 'Sison', NULL, '01', '0155', '015541', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1278, 'Sitangkai', NULL, '15', '1570', '157005', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1279, 'Socorro', NULL, '17', '1752', '175214', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1280, 'Sofronio Española', NULL, '17', '1753', '175324', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1281, 'Sogod', NULL, '07', '0722', '072247', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1282, 'Solana', NULL, '02', '0215', '021527', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1283, 'Solano', NULL, '02', '0250', '025013', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1284, 'Solsona', NULL, '01', '0128', '012822', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1285, 'Sominot (Don Mariano Marcos)', NULL, '09', '0973', '097340', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1286, 'South Ubian', NULL, '15', '1570', '157006', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1287, 'South Upi', NULL, '15', '1538', '153817', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1288, 'Sual', NULL, '01', '0155', '015542', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1289, 'Subic', NULL, '03', '0371', '037114', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1290, 'Sudipen', NULL, '01', '0133', '013319', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1291, 'Sugbongcogon', NULL, '10', '1043', '104323', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1292, 'Sugpon', NULL, '01', '0129', '012931', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1293, 'Sulat', NULL, '08', '0826', '082622', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1294, 'Sulop', NULL, '11', '1124', '112414', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1295, 'Sultan Dumalondong', NULL, '15', '1536', '153640', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1296, 'Sultan Kudarat (Nuling)', NULL, '15', '1538', '153812', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1297, 'Sultan Mastura', NULL, '15', '1538', '153824', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1298, 'Sultan Naga Dimaporo (Karomatan)', NULL, '10', '1035', '103506', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1299, 'Sultan Sa Barongis (Lambayong)', NULL, '15', '1538', '153813', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1300, 'Sumilao', NULL, '10', '1013', '101319', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1301, 'Sumisip', NULL, '15', '1507', '150705', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1302, 'Surallah', NULL, '12', '1263', '126313', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1303, 'Surigao City (Capital)', NULL, '16', '1667', '166724', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1304, 'Suyo', NULL, '01', '0129', '012932', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1305, 'Taal', NULL, '04', '0410', '041029', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1306, 'Tabango', NULL, '08', '0837', '083745', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1307, 'Tabina', NULL, '09', '0973', '097327', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1308, 'Tabogon', NULL, '07', '0722', '072248', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1309, 'Tabontabon', NULL, '08', '0837', '083746', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1310, 'Tabuan-Lasa', NULL, '15', '1507', '150713', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1311, 'Tabuelan', NULL, '07', '0722', '072249', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1312, 'Tacloban City (Capital)', NULL, '08', '0837', '083747', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1313, 'Tadian', NULL, '14', '1444', '144410', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1314, 'Taft', NULL, '08', '0826', '082623', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1315, 'Tagana-An', NULL, '16', '1667', '166725', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1316, 'Tagapul-An', NULL, '08', '0860', '086024', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1317, 'Tagaytay City', NULL, '04', '0421', '042119', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1318, 'Tagbilaran City (Capital)', NULL, '07', '0712', '071242', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1319, 'Tagbina', NULL, '16', '1668', '166817', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1320, 'Tagkawayan', NULL, '04', '0456', '045646', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1321, 'Tago', NULL, '16', '1668', '166818', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1322, 'Tagoloan', NULL, '10', '1035', '103520', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1323, 'Tagoloan Ii', NULL, '15', '1536', '153638', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1324, 'Tagudin', NULL, '01', '0129', '012933', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1325, 'Taguig City', NULL, '13', '1376', '137607', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1326, 'Talacogon', NULL, '16', '1603', '160311', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1327, 'Talaingod', NULL, '11', '1123', '112322', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1328, 'Talakag', NULL, '10', '1013', '101320', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1329, 'Talalora', NULL, '08', '0860', '086019', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1330, 'Talavera', NULL, '03', '0349', '034930', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1331, 'Talayan', NULL, '15', '1538', '153816', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1332, 'Talibon', NULL, '07', '0712', '071243', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1333, 'Talipao', NULL, '15', '1566', '156613', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1334, 'Talisay', NULL, '04', '0410', '041030', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1335, 'Talisayan', NULL, '10', '1043', '104325', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1336, 'Talitay', NULL, '15', '1538', '153821', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1337, 'Talugtug', NULL, '03', '0349', '034931', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1338, 'Talusan', NULL, '09', '0983', '098314', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1339, 'Tambulig', NULL, '09', '0973', '097328', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1340, 'Tampakan', NULL, '12', '1263', '126314', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1341, 'Tamparan', NULL, '15', '1536', '153626', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1342, 'Tampilisan', NULL, '09', '0972', '097221', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1343, 'Tanauan', NULL, '08', '0837', '083748', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1344, 'Tanay', NULL, '04', '0458', '045812', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1345, 'Tandubas', NULL, '15', '1570', '157007', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1346, 'Tangalan', NULL, '06', '0604', '060417', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1347, 'Tangcal', NULL, '10', '1035', '103521', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1348, 'Tangub City', NULL, '10', '1042', '104215', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1349, 'Tantangan', NULL, '12', '1263', '126315', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1350, 'Tanudan', NULL, '14', '1432', '143214', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1351, 'Tanza', NULL, '04', '0421', '042120', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1352, 'Tapaz', NULL, '06', '0619', '061917', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1353, 'Tapul', NULL, '15', '1566', '156614', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1354, 'Taraka', NULL, '15', '1536', '153627', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1355, 'Tarangnan', NULL, '08', '0860', '086020', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1356, 'Tarragona', NULL, '11', '1125', '112511', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1357, 'Tayasan', NULL, '07', '0746', '074622', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1358, 'Taysan', NULL, '04', '0410', '041032', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1359, 'Taytay', NULL, '04', '0458', '045813', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1360, 'Tayug', NULL, '01', '0155', '015543', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1361, 'Tayum', NULL, '14', '1401', '140124', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1362, 'T\'Boli', NULL, '12', '1263', '126316', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1363, 'Teresa', NULL, '04', '0458', '045814', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1364, 'Ternate', NULL, '04', '0421', '042121', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1365, 'Tiaong', NULL, '04', '0456', '045648', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1366, 'Tibiao', NULL, '06', '0606', '060617', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1367, 'Tigaon', NULL, '05', '0517', '051736', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1368, 'Tigbao', NULL, '09', '0973', '097344', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1369, 'Tigbauan', NULL, '06', '0630', '063045', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1370, 'Tinambac', NULL, '05', '0517', '051737', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1371, 'Tineg', NULL, '14', '1401', '140125', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1372, 'Tinglayan', NULL, '14', '1432', '143215', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1373, 'Tingloy', NULL, '04', '0410', '041033', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1374, 'Tinoc', NULL, '14', '1427', '142710', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1375, 'Tipo-Tipo', NULL, '15', '1507', '150706', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1376, 'Titay', NULL, '09', '0983', '098315', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1377, 'Tiwi', NULL, '05', '0505', '050518', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1378, 'Tobias Fornier (Dao)', NULL, '06', '0606', '060607', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1379, 'Toboso', NULL, '06', '0645', '064529', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1380, 'Toledo City', NULL, '07', '0722', '072251', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1381, 'Tolosa', NULL, '08', '0837', '083749', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1382, 'Tomas Oppus', NULL, '08', '0864', '086418', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1383, 'Tondo I / Ii', NULL, '13', '1339', '133901', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1384, 'Tongkil', NULL, '15', '1566', '156615', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1385, 'Torrijos', NULL, '17', '1740', '174006', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1386, 'Trece Martires City (Capital)', NULL, '04', '0421', '042122', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1387, 'Trento', NULL, '16', '1603', '160312', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1388, 'Trinidad', NULL, '07', '0712', '071244', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1389, 'Tuao', NULL, '02', '0215', '021528', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1390, 'Tuba', NULL, '14', '1411', '141113', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1391, 'Tubajon', NULL, '16', '1685', '168507', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1392, 'Tubao', NULL, '01', '0133', '013320', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1393, 'Tubaran', NULL, '15', '1536', '153628', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1394, 'Tubay', NULL, '16', '1602', '160211', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1395, 'Tubigon', NULL, '07', '0712', '071245', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1396, 'Tublay', NULL, '14', '1411', '141114', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1397, 'Tubo', NULL, '14', '1401', '140126', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1398, 'Tubod', NULL, '16', '1667', '166727', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1399, 'Tubod (Capital)', NULL, '10', '1035', '103522', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1400, 'Tubungan', NULL, '06', '0630', '063046', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1401, 'Tuburan', NULL, '07', '0722', '072252', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1402, 'Tudela', NULL, '07', '0722', '072253', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1403, 'Tugaya', NULL, '15', '1536', '153629', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1404, 'Tuguegarao City (Capital)', NULL, '02', '0215', '021529', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1405, 'Tukuran', NULL, '09', '0973', '097330', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1406, 'Tulunan', NULL, '12', '1247', '124714', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1407, 'Tumauini', NULL, '02', '0231', '023137', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1408, 'Tunga', NULL, '08', '0837', '083750', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1409, 'Tungawan', NULL, '09', '0983', '098316', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1410, 'Tupi', NULL, '12', '1263', '126317', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1411, 'Turtle Islands', NULL, '15', '1570', '157008', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1412, 'Tuy', NULL, '04', '0410', '041034', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1413, 'Ubay', NULL, '07', '0712', '071246', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1414, 'Umingan', NULL, '01', '0155', '015544', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1415, 'Ungkaya Pukan', NULL, '15', '1507', '150711', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1416, 'Unisan', NULL, '04', '0456', '045649', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1417, 'Upi', NULL, '15', '1538', '153815', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1418, 'Urbiztondo', NULL, '01', '0155', '015545', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1419, 'Uson', NULL, '05', '0541', '054121', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1420, 'Uyugan', NULL, '02', '0209', '020906', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1421, 'Valderrama', NULL, '06', '0606', '060618', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1422, 'Valencia', NULL, '07', '0712', '071247', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1423, 'Valencia (Luzurriaga)', NULL, '07', '0746', '074623', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1424, 'Valladolid', NULL, '06', '0645', '064530', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1425, 'Vallehermoso', NULL, '07', '0746', '074624', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1426, 'Veruela', NULL, '16', '1603', '160313', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1427, 'Victoria', NULL, '03', '0369', '036917', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1428, 'Viga', NULL, '05', '0520', '052010', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1429, 'Villaba', NULL, '08', '0837', '083751', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1430, 'Villanueva', NULL, '10', '1043', '104326', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1431, 'Villareal', NULL, '08', '0860', '086021', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1432, 'Villasis', NULL, '01', '0155', '015547', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1433, 'Villaverde', NULL, '02', '0250', '025014', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1434, 'Villaviciosa', NULL, '14', '1401', '140127', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1435, 'Vincenzo A. Sagun', NULL, '09', '0973', '097341', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1436, 'Vintar', NULL, '01', '0128', '012823', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1437, 'Vinzons', NULL, '05', '0516', '051612', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1438, 'Virac (Capital)', NULL, '05', '0520', '052011', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1439, 'Wao', NULL, '15', '1536', '153630', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1440, 'Zamboanga City', NULL, '09', '0973', '097332', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1441, 'Zamboanguita', NULL, '07', '0746', '074625', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1442, 'Zaragoza', NULL, '03', '0349', '034932', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1443, 'Zarraga', NULL, '06', '0630', '063047', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1444, 'Zumarraga', NULL, '08', '0860', '086023', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` int(11) NULL DEFAULT NULL,
  `province` int(11) NULL DEFAULT NULL,
  `country` int(11) NULL DEFAULT NULL,
  `landline` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `social_media_id` int(11) NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of contacts
-- ----------------------------
INSERT INTO `contacts` VALUES (1, 1, 'Minor Basilica of the National Shrine of Our Lady of Mount Carmel', 'Minor Basilica of the National Shrine of Our Lady of Mount Carmel', '90 4th Street', 'New Manila', 137404, 1339, 1, '(02) 724 5938<br/>\r\n(02) 701 5867<br/>\r\n(02) 701 5868<br/>\r\n(02) 701 5869', '(918) 407 7760<br/>\r\n(956) 658 3660', 'basilica@mountcarmel.ph', NULL, 1, '2019-06-19 16:45:18', 1, '2019-09-06 23:25:12', b'0');

-- ----------------------------
-- Table structure for country
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `country_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `landline_format` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile_format` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 232 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES (1, 'Philippines', NULL, 'ph', '01', 'xxxxx-xxxxxxx', '+63 (9yy) xxx-xxxx', 1, '2019-07-23 14:45:34', NULL, NULL, b'0');
INSERT INTO `country` VALUES (2, 'Andorra', NULL, 'ad', '02', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (3, 'United Arab Emirates', NULL, 'ae', '03', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (4, 'Afghanistan', NULL, 'af', '04', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (5, 'Antigua and Barbuda', NULL, 'ag', '05', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (6, 'Anguilla', NULL, 'ai', '06', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (7, 'Albania', NULL, 'al', '07', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (8, 'Armenia', NULL, 'am', '08', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (9, 'Netherlands Antilles', NULL, 'an', '09', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (10, 'Angola', NULL, 'ao', '10', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (11, 'Argentina', NULL, 'ar', '11', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (12, 'Austria', NULL, 'at', '12', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (13, 'Australia', NULL, 'au', '13', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (14, 'Aruba', NULL, 'aw', '14', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (15, 'Azerbaijan', NULL, 'az', '15', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (16, 'Bosnia and Herzegovina', NULL, 'ba', '16', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (17, 'Barbados', NULL, 'bb', '17', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (18, 'Bangladesh', NULL, 'bd', '18', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (19, 'Belgium', NULL, 'be', '19', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (20, 'Burkina Faso', NULL, 'bf', '20', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (21, 'Bulgaria', NULL, 'bg', '21', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (22, 'Bahrain', NULL, 'bh', '22', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (23, 'Burundi', NULL, 'bi', '23', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (24, 'Benin', NULL, 'bj', '24', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (25, 'Bermuda', NULL, 'bm', '25', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (26, 'Brunei Darussalam', NULL, 'bn', '26', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (27, 'Bolivia', NULL, 'bo', '27', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (28, 'Brazil', NULL, 'br', '28', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (29, 'Bahamas', NULL, 'bs', '29', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (30, 'Bhutan', NULL, 'bt', '30', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (31, 'Botswana', NULL, 'bw', '31', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (32, 'Belarus', NULL, 'by', '32', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (33, 'Belize', NULL, 'bz', '33', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (34, 'Canada', NULL, 'ca', '34', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (35, 'Cocos (Keeling) Islands', NULL, 'cc', '35', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (36, 'Democratic Republic of the Congo', NULL, 'cd', '36', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (37, 'Central African Republic', NULL, 'cf', '37', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (38, 'Congo', NULL, 'cg', '38', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (39, 'Switzerland', NULL, 'ch', '39', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (40, 'Cote D\'Ivoire Ivory Coast', NULL, 'ci', '40', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (41, 'Cook Islands', NULL, 'ck', '41', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (42, 'Chile', NULL, 'cl', '42', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (43, 'Cameroon', NULL, 'cm', '43', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (44, 'China', NULL, 'cn', '44', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (45, 'Colombia', NULL, 'co', '45', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (46, 'Costa Rica', NULL, 'cr', '46', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (47, 'Cuba', NULL, 'cu', '47', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (48, 'Cape Verde', NULL, 'cv', '48', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (49, 'Christmas Island', NULL, 'cx', '49', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (50, 'Cyprus', NULL, 'cy', '50', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (51, 'Czech Republic', NULL, 'cz', '51', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (52, 'Germany', NULL, 'de', '52', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (53, 'Djibouti', NULL, 'dj', '53', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (54, 'Denmark', NULL, 'dk', '55', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (55, 'Dominica', NULL, 'dm', '55', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (56, 'Dominican Republic', NULL, 'do', '56', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (57, 'Algeria', NULL, 'dz', '57', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (58, 'Ecuador', NULL, 'ec', '58', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (59, 'Estonia', NULL, 'ee', '59', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (60, 'Egypt', NULL, 'eg', '60', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (61, 'Western Sahara', NULL, 'eh', '61', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (62, 'Eritrea', NULL, 'er', '62', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (63, 'Spain', NULL, 'es', '63', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (64, 'Ethiopia', NULL, 'et', '64', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (65, 'Finland', NULL, 'fi', '65', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (66, 'Fiji', NULL, 'fj', '66', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (67, 'Falkland Islands (Malvinas)', NULL, 'fk', '67', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (68, 'Federated States of Micronesia', NULL, 'fm', '68', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (69, 'Faroe Islands', NULL, 'fo', '69', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (70, 'France', NULL, 'fr', '70', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (71, 'Gabon', NULL, 'ga', '71', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (72, 'Great Britain (UK)', NULL, 'gb', '72', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (73, 'Grenada', NULL, 'gd', '73', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (74, 'Georgia', NULL, 'ge', '74', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (75, 'French Guiana', NULL, 'gf', '75', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (76, 'Guernsey', NULL, 'gg', '76', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (77, 'Ghana', NULL, 'gh', '77', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (78, 'Gibraltar', NULL, 'gi', '78', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (79, 'Greenland', NULL, 'gl', '79', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (80, 'Gambia', NULL, 'gm', '80', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (81, 'Guinea', NULL, 'gn', '81', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (82, 'Guadeloupe', NULL, 'gp', '82', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (83, 'Equatorial Guinea', NULL, 'gq', '83', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (84, 'Greece', NULL, 'gr', '84', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (85, 'S. Georgia and S. Sandwich Islands', NULL, 'gs', '85', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (86, 'Guatemala', NULL, 'gt', '86', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (87, 'Guinea-Bissau', NULL, 'gw', '87', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (88, 'Guyana', NULL, 'gy', '88', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (89, 'Hong Kong', NULL, 'hk', '89', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (90, 'Honduras', NULL, 'hn', '90', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (91, 'Croatia (Hrvatska)', NULL, 'hr', '91', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (92, 'Haiti', NULL, 'ht', '92', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (93, 'Hungary', NULL, 'hu', '93', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (94, 'Indonesia', NULL, 'id', '94', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (95, 'Ireland', NULL, 'ie', '95', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (96, 'Israel', NULL, 'il', '96', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (97, 'India', NULL, 'in', '97', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (98, 'Iraq', NULL, 'iq', '98', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (99, 'Iran', NULL, 'ir', '99', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (100, 'Iceland', NULL, 'is', '100', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (101, 'Italy', NULL, 'it', '101', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (102, 'Jamaica', NULL, 'jm', '102', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (103, 'Jordan', NULL, 'jo', '103', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (104, 'Japan', NULL, 'jp', '104', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (105, 'Kenya', NULL, 'ke', '105', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (106, 'Kyrgyzstan', NULL, 'kg', '106', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (107, 'Cambodia', NULL, 'kh', '107', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (108, 'Kiribati', NULL, 'ki', '108', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (109, 'Comoros', NULL, 'km', '109', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (110, 'Saint Kitts and Nevis', NULL, 'kn', '110', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (111, 'Korea (North)', NULL, 'kp', '111', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (112, 'Korea (South)', NULL, 'kr', '112', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (113, 'Kuwait', NULL, 'kw', '113', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (114, 'Cayman Islands', NULL, 'ky', '114', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (115, 'Kazakhstan', NULL, 'kz', '115', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (116, 'Laos', NULL, 'la', '116', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (117, 'Lebanon', NULL, 'lb', '117', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (118, 'Saint Lucia', NULL, 'lc', '118', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (119, 'Liechtenstein', NULL, 'li', '119', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (120, 'Sri Lanka', NULL, 'lk', '120', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (121, 'Liberia', NULL, 'lr', '121', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (122, 'Lesotho', NULL, 'ls', '122', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (123, 'Lithuania', NULL, 'lt', '123', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (124, 'Luxembourg', NULL, 'lu', '124', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (125, 'Latvia', NULL, 'lv', '125', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (126, 'Libya', NULL, 'ly', '126', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (127, 'Morocco', NULL, 'ma', '127', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (128, 'Monaco', NULL, 'mc', '128', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (129, 'Moldova', NULL, 'md', '129', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (130, 'Madagascar', NULL, 'mg', '130', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (131, 'Marshall Islands', NULL, 'mh', '131', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (132, 'Macedonia', NULL, 'mk', '132', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (133, 'Mali', NULL, 'ml', '133', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (134, 'Myanmar', NULL, 'mm', '134', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (135, 'Mongolia', NULL, 'mn', '135', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (136, 'Macao', NULL, 'mo', '136', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (137, 'Northern Mariana Islands', NULL, 'mp', '137', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (138, 'Martinique', NULL, 'mq', '138', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (139, 'Mauritania', NULL, 'mr', '139', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (140, 'Montserrat', NULL, 'ms', '140', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (141, 'Malta', NULL, 'mt', '141', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (142, 'Mauritius', NULL, 'mu', '142', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (143, 'Maldives', NULL, 'mv', '143', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (144, 'Malawi', NULL, 'mw', '144', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (145, 'Mexico', NULL, 'mx', '145', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (146, 'Malaysia', NULL, 'my', '146', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (147, 'Mozambique', NULL, 'mz', '147', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (148, 'Namibia', NULL, 'na', '148', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (149, 'New Caledonia', NULL, 'nc', '149', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (150, 'Niger', NULL, 'ne', '150', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (151, 'Norfolk Island', NULL, 'nf', '151', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (152, 'Nigeria', NULL, 'ng', '152', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (153, 'Nicaragua', NULL, 'ni', '153', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (154, 'Netherlands', NULL, 'nl', '154', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (155, 'Norway', NULL, 'no', '155', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (156, 'Nepal', NULL, 'np', '156', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (157, 'Nauru', NULL, 'nr', '157', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (158, 'Niue', NULL, 'nu', '158', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (159, 'New Zealand (Aotearoa)', NULL, 'nz', '159', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (160, 'Oman', NULL, 'om', '160', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (161, 'Panama', NULL, 'pa', '161', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (162, 'Peru', NULL, 'pe', '162', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (163, 'French Polynesia', NULL, 'pf', '163', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (164, 'Papua New Guinea', NULL, 'pg', '164', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (165, 'Philippines', NULL, 'ph', '165', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'1');
INSERT INTO `country` VALUES (166, 'Pakistan', NULL, 'pk', '166', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (167, 'Poland', NULL, 'pl', '167', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (168, 'Saint Pierre and Miquelon', NULL, 'pm', '168', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (169, 'Pitcairn', NULL, 'pn', '169', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (170, 'Palestinian Territory', NULL, 'ps', '170', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (171, 'Portugal', NULL, 'pt', '171', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (172, 'Palau', NULL, 'pw', '172', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (173, 'Paraguay', NULL, 'py', '173', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (174, 'Qatar', NULL, 'qa', '174', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (175, 'Reunion', NULL, 're', '175', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (176, 'Romania', NULL, 'ro', '176', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (177, 'Russian Federation', NULL, 'ru', '177', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (178, 'Rwanda', NULL, 'rw', '178', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (179, 'Saudi Arabia', NULL, 'sa', '179', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (180, 'Solomon Islands', NULL, 'sb', '180', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (181, 'Seychelles', NULL, 'sc', '181', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (182, 'Sudan', NULL, 'sd', '182', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (183, 'Sweden', NULL, 'se', '183', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (184, 'Singapore', NULL, 'sg', '184', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (185, 'Saint Helena', NULL, 'sh', '185', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (186, 'Slovenia', NULL, 'si', '186', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (187, 'Svalbard and Jan Mayen', NULL, 'sj', '187', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (188, 'Slovakia', NULL, 'sk', '188', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (189, 'Sierra Leone', NULL, 'sl', '189', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (190, 'San Marino', NULL, 'sm', '190', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (191, 'Senegal', NULL, 'sn', '191', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (192, 'Somalia', NULL, 'so', '192', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (193, 'Suriname', NULL, 'sr', '193', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (194, 'Sao Tome and Principe', NULL, 'st', '194', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (195, 'El Salvador', NULL, 'sv', '195', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (196, 'Syria', NULL, 'sy', '196', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (197, 'Swaziland', NULL, 'sz', '197', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (198, 'Turks and Caicos Islands', NULL, 'tc', '198', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (199, 'Chad', NULL, 'td', '199', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (200, 'French Southern Territories', NULL, 'tf', '200', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (201, 'Togo', NULL, 'tg', '201', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (202, 'Thailand', NULL, 'th', '202', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (203, 'Tajikistan', NULL, 'tj', '203', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (204, 'Tokelau', NULL, 'tk', '204', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (205, 'Turkmenistan', NULL, 'tm', '205', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (206, 'Tunisia', NULL, 'tn', '206', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (207, 'Tonga', NULL, 'to', '207', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (208, 'Turkey', NULL, 'tr', '208', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (209, 'Trinidad and Tobago', NULL, 'tt', '209', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (210, 'Tuvalu', NULL, 'tv', '210', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (211, 'Taiwan', NULL, 'tw', '211', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (212, 'Tanzania', NULL, 'tz', '212', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (213, 'Ukraine', NULL, 'ua', '213', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (214, 'Uganda', NULL, 'ug', '214', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (215, 'Uruguay', NULL, 'uy', '215', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (216, 'Uzbekistan', NULL, 'uz', '216', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (217, 'Saint Vincent and the Grenadines', NULL, 'vc', '217', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (218, 'Venezuela', NULL, 've', '218', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (219, 'Virgin Islands (British)', NULL, 'vg', '219', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (220, 'Virgin Islands (U.S.)', NULL, 'vi', '220', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (221, 'Viet Nam', NULL, 'vn', '221', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (222, 'Vanuatu', NULL, 'vu', '222', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (223, 'Wallis and Futuna', NULL, 'wf', '223', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (224, 'Samoa', NULL, 'ws', '224', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (225, 'Yemen', NULL, 'ye', '225', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (226, 'Mayotte', NULL, 'yt', '226', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (227, 'South Africa', NULL, 'za', '227', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (228, 'Zambia', NULL, 'zm', '228', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (229, 'Zaire (former)', NULL, 'zr', '229', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (230, 'Zimbabwe', NULL, 'zw', '230', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (231, 'United States of America', NULL, 'us', '231', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');

-- ----------------------------
-- Table structure for couple
-- ----------------------------
DROP TABLE IF EXISTS `couple`;
CREATE TABLE `couple`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `sub_module_id` int(11) NOT NULL,
  `service_transaction` int(11) NULL DEFAULT NULL,
  `name_groom` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname_groom` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dt_birth_groom` datetime(0) NULL DEFAULT NULL,
  `birth_place_groom` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `religion_groom` int(11) NULL DEFAULT NULL,
  `occupation_groom` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `work_place_groom` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nationality_groom` int(11) NULL DEFAULT NULL,
  `mobile_groom` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `landline_groom` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email_groom` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_1_groom` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_2_groom` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `barangay_groom` int(11) NULL DEFAULT NULL,
  `city_groom` int(11) NULL DEFAULT NULL,
  `province_groom` int(11) NULL DEFAULT NULL,
  `country_groom` int(11) NULL DEFAULT NULL,
  `name_parish_groom` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_parish_groom` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `address_provincial_groom` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `name_father_groom` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nationality_father_groom` int(11) NULL DEFAULT NULL,
  `name_mother_groom` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nationality_mother_groom` int(11) NULL DEFAULT NULL,
  `name_bride` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname_bride` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dt_birth_bride` datetime(0) NULL DEFAULT NULL,
  `birth_place_bride` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `religion_bride` int(11) NULL DEFAULT NULL,
  `occupation_bride` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `work_place_bride` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nationality_bride` int(11) NULL DEFAULT NULL,
  `mobile_bride` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `landline_bride` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email_bride` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_1_bride` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_2_bride` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `barangay_bride` int(11) NULL DEFAULT NULL,
  `city_bride` int(11) NULL DEFAULT NULL,
  `province_bride` int(11) NULL DEFAULT NULL,
  `country_bride` int(11) NULL DEFAULT NULL,
  `name_parish_bride` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_parish_bride` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `address_provincial_bride` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `name_father_bride` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nationality_father_bride` int(11) NULL DEFAULT NULL,
  `name_mother_bride` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nationality_mother_bride` int(11) NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for donations
-- ----------------------------
DROP TABLE IF EXISTS `donations`;
CREATE TABLE `donations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `donation_type_id` int(11) NOT NULL,
  `amount` decimal(10, 0) NOT NULL,
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ar_receipt` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `or_receipt` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `anonymous` bit(1) NOT NULL DEFAULT b'0',
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of donations
-- ----------------------------
INSERT INTO `donations` VALUES (1, 1, 113, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:42:57', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (2, 1, 113, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (3, 1, 113, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (4, 1, 113, 120, NULL, NULL, NULL, b'0', 4, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (5, 1, 113, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (6, 1, 113, 120, NULL, NULL, NULL, b'0', 3, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (7, 1, 113, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (8, 1, 113, 120, NULL, NULL, NULL, b'0', 3, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (9, 1, 113, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (10, 1, 113, 120, NULL, NULL, NULL, b'0', 4, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (11, 1, 113, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (12, 1, 113, 120, NULL, NULL, NULL, b'0', 3, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (13, 1, 113, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (14, 1, 113, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (15, 1, 113, 120, NULL, NULL, NULL, b'0', 3, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (16, 1, 113, 120, NULL, NULL, NULL, b'0', 4, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (17, 1, 113, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (18, 1, 113, 120, NULL, NULL, NULL, b'0', 4, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (19, 1, 113, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (20, 1, 113, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (21, 1, 113, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (22, 1, 113, 120, NULL, NULL, NULL, b'0', 4, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (23, 1, 113, 120, NULL, NULL, NULL, b'0', 3, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (24, 1, 113, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (25, 1, 113, 120, NULL, NULL, NULL, b'0', 3, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (26, 1, 113, 120, NULL, NULL, NULL, b'0', 4, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (27, 1, 113, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (28, 1, 113, 120, NULL, NULL, NULL, b'0', 3, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (29, 1, 113, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (30, 1, 113, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');

-- ----------------------------
-- Table structure for global_reference_group
-- ----------------------------
DROP TABLE IF EXISTS `global_reference_group`;
CREATE TABLE `global_reference_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of global_reference_group
-- ----------------------------
INSERT INTO `global_reference_group` VALUES (1, 'Status', 'Status - for whole Service Transaction', 1, '2019-08-22 18:27:44', NULL, NULL, b'0');
INSERT INTO `global_reference_group` VALUES (2, 'Status Admin', 'Status Admin - for approval by admin/office', 1, '2019-08-22 18:27:44', NULL, NULL, b'0');
INSERT INTO `global_reference_group` VALUES (3, 'Status Ministers', 'Status Ministers - for approval by priest/extraordinary minister/choir', 1, '2019-08-22 18:27:44', NULL, NULL, b'0');
INSERT INTO `global_reference_group` VALUES (4, 'Certificate Type', 'Certificate Type', 1, '2019-08-22 18:27:44', NULL, NULL, b'0');
INSERT INTO `global_reference_group` VALUES (5, 'Civil Status', 'Civil Status', 1, '2019-08-22 18:27:44', NULL, NULL, b'0');
INSERT INTO `global_reference_group` VALUES (6, 'Donation Schedule Type', 'Donation Schedule Type', 1, '2019-08-22 18:27:44', NULL, NULL, b'0');
INSERT INTO `global_reference_group` VALUES (7, 'Event Type', 'Event Type', 1, '2019-08-22 18:27:44', NULL, NULL, b'0');
INSERT INTO `global_reference_group` VALUES (8, 'Language', 'Language', 1, '2019-08-22 18:27:44', NULL, NULL, b'0');
INSERT INTO `global_reference_group` VALUES (9, 'Marriage Type', 'Marriage Type', 1, '2019-08-22 18:27:44', NULL, NULL, b'0');
INSERT INTO `global_reference_group` VALUES (10, 'Nationality', 'Nationality', 1, '2019-08-22 18:27:44', NULL, NULL, b'0');
INSERT INTO `global_reference_group` VALUES (11, 'Occasion', 'Occasion', 1, '2019-08-22 18:27:44', NULL, NULL, b'0');
INSERT INTO `global_reference_group` VALUES (12, 'Posts Type', 'Posts Type', 1, '2019-08-22 18:27:44', NULL, NULL, b'0');
INSERT INTO `global_reference_group` VALUES (13, 'Program', 'Program', 1, '2019-08-22 18:27:44', NULL, NULL, b'0');
INSERT INTO `global_reference_group` VALUES (14, 'Purpose Type', 'Purpose Type', 1, '2019-08-22 18:27:44', NULL, NULL, b'0');
INSERT INTO `global_reference_group` VALUES (15, 'Religion', 'Religion', 1, '2019-08-22 18:27:44', NULL, NULL, b'0');
INSERT INTO `global_reference_group` VALUES (16, 'Schedule Type', 'Schedule Type', 1, '2019-08-22 18:27:44', NULL, NULL, b'0');
INSERT INTO `global_reference_group` VALUES (17, 'Service Type', 'Service Type', 1, '2019-08-22 18:27:44', NULL, NULL, b'0');
INSERT INTO `global_reference_group` VALUES (18, 'Gender', 'Gender', 1, '2019-08-22 20:13:30', NULL, NULL, b'0');
INSERT INTO `global_reference_group` VALUES (19, 'Clergy Type', 'Clergy Type', 1, '2019-08-25 15:21:04', NULL, NULL, b'0');
INSERT INTO `global_reference_group` VALUES (20, 'Ad Type', 'Ad Type', 1, '2019-08-25 19:27:58', NULL, NULL, b'0');
INSERT INTO `global_reference_group` VALUES (21, 'Donation Type', 'Donation Type', 1, '2019-08-27 19:18:57', NULL, NULL, b'0');
INSERT INTO `global_reference_group` VALUES (22, 'Product / Service Type', 'Product / Service Type', 1, '2019-09-24 16:19:48', NULL, NULL, b'0');
INSERT INTO `global_reference_group` VALUES (23, 'Ad Status', 'Ad Status', 1, '2019-09-24 23:04:18', NULL, NULL, b'0');

-- ----------------------------
-- Table structure for global_reference_value
-- ----------------------------
DROP TABLE IF EXISTS `global_reference_value`;
CREATE TABLE `global_reference_value`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NULL DEFAULT NULL,
  `module_id` int(11) NULL DEFAULT NULL,
  `sub_module_id` int(11) NULL DEFAULT NULL,
  `sequence` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `project_id` int(11) NULL DEFAULT NULL,
  `media_id` int(11) NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 144 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of global_reference_value
-- ----------------------------
INSERT INTO `global_reference_value` VALUES (1, 1, NULL, NULL, 1, 'On-going', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (2, 1, NULL, NULL, 3, 'Done', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (3, 1, NULL, NULL, 2, 'Denied', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (4, 1, NULL, NULL, 4, 'Expired', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (5, 1, NULL, NULL, 5, 'Other', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'1');
INSERT INTO `global_reference_value` VALUES (6, 2, NULL, NULL, NULL, 'Waiting', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (7, 2, NULL, NULL, NULL, 'Reviewed', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (8, 2, NULL, NULL, NULL, 'Approved', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (9, 2, NULL, NULL, NULL, 'Denied', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (10, 2, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'1');
INSERT INTO `global_reference_value` VALUES (11, 3, NULL, NULL, NULL, 'Waiting', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (12, 3, NULL, NULL, NULL, 'Approved', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (13, 3, NULL, NULL, NULL, 'Rechoose', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (14, 3, NULL, NULL, NULL, 'Denied', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'1');
INSERT INTO `global_reference_value` VALUES (15, 3, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'1');
INSERT INTO `global_reference_value` VALUES (16, 4, NULL, NULL, NULL, 'Baptismal', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (17, 4, NULL, NULL, NULL, 'Marriage', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:56', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (18, 4, NULL, NULL, NULL, 'Confirmation', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:16:11', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (19, 4, NULL, NULL, NULL, 'Communion', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:16:11', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (20, 4, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:16:11', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (21, 5, NULL, NULL, NULL, 'Single', 'A person who has never been married', NULL, NULL, NULL, 1, '2019-06-20 14:46:42', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (22, 5, NULL, NULL, NULL, 'Married', 'A couple living together as husband and wife, legally or consensually;', NULL, NULL, NULL, 1, '2019-06-20 14:47:02', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (23, 5, NULL, NULL, NULL, 'Widowed', 'A person whose bond of matrimony has been dissolved by death of his/her spouse', NULL, NULL, NULL, 1, '2019-06-20 14:47:14', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (24, 5, NULL, NULL, NULL, 'Divorced', 'A person whose bond of matrimony has been dissolved legally and who therefore can remarry; ', NULL, NULL, NULL, 1, '2019-06-20 14:47:24', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (25, 5, NULL, NULL, NULL, 'Separated ', 'A person separated legally or not from his/her spouse because of marital discord or misunderstanding;', NULL, NULL, NULL, 1, '2019-06-20 14:47:41', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (26, 5, NULL, NULL, NULL, 'Registered Partnership', NULL, NULL, NULL, NULL, 1, '2019-06-20 14:47:58', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (27, 5, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 1, '2019-06-20 14:47:58', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (28, 6, NULL, NULL, NULL, 'Always', NULL, NULL, NULL, NULL, 1, '2019-07-18 17:01:23', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (29, 6, NULL, NULL, NULL, 'December', NULL, NULL, NULL, NULL, 1, '2019-07-18 17:02:21', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (30, 6, NULL, NULL, NULL, 'July', NULL, NULL, NULL, NULL, 1, '2019-07-18 17:03:20', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (31, 6, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 1, '2019-07-18 17:03:20', NULL, NULL, b'1');
INSERT INTO `global_reference_value` VALUES (32, 7, NULL, NULL, NULL, 'Wedding Reception', NULL, NULL, NULL, NULL, 1, '2019-06-20 14:26:37', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (33, 7, NULL, NULL, NULL, 'Baptismal Celebration', NULL, NULL, NULL, NULL, 1, '2019-06-20 14:27:33', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (34, 7, NULL, NULL, NULL, 'Birthday Celebration', NULL, NULL, NULL, NULL, 1, '2019-06-20 14:27:49', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (35, 7, NULL, NULL, NULL, 'Anniversary Celebration', NULL, NULL, NULL, NULL, 1, '2019-06-20 14:28:07', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (36, 7, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 1, '2019-06-20 14:28:07', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (37, 8, NULL, NULL, NULL, 'Filipino', 'Filipino', NULL, NULL, NULL, 1, '2019-06-19 16:09:38', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (38, 8, NULL, NULL, NULL, 'English', 'English', NULL, NULL, NULL, 1, '2019-06-19 16:09:57', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (39, 8, NULL, NULL, NULL, 'Other', 'Other', NULL, NULL, NULL, 1, '2019-06-19 16:09:57', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (40, 9, NULL, NULL, NULL, 'Catholic', NULL, NULL, NULL, NULL, 1, '2019-06-20 16:08:29', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (41, 9, NULL, NULL, NULL, 'Protestant', NULL, NULL, NULL, NULL, 1, '2019-06-20 16:08:43', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (42, 9, NULL, NULL, NULL, 'Civil', NULL, NULL, NULL, NULL, 1, '2019-06-20 16:08:54', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (43, 9, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 1, '2019-06-20 16:09:07', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (44, 10, NULL, NULL, NULL, 'Filipino', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:40:59', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (45, 10, NULL, NULL, NULL, 'American', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:41:06', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (46, 10, NULL, NULL, NULL, 'Canadian', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:41:14', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (47, 10, NULL, NULL, NULL, 'Chinese', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:45:56', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (48, 10, NULL, NULL, NULL, 'Australian', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:46:29', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (49, 10, NULL, NULL, NULL, 'French', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:46:59', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (50, 10, NULL, NULL, NULL, 'Japanese', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:47:25', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (51, 10, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:47:25', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (52, 11, NULL, NULL, NULL, 'Blessing of the house', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:08:38', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (53, 11, NULL, NULL, NULL, 'Blessing of the businesses', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:11:15', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (54, 11, NULL, NULL, NULL, 'Blessing of the cars', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:11:38', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (55, 11, NULL, NULL, NULL, 'Annointing of the sick', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:11:55', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (56, 11, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:11:55', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (57, 12, NULL, NULL, NULL, 'News', 'News', NULL, NULL, NULL, 1, '2019-06-18 15:50:27', 1, '2019-06-18 15:50:27', b'0');
INSERT INTO `global_reference_value` VALUES (58, 12, NULL, NULL, NULL, 'Updates', 'Updates', NULL, NULL, NULL, 1, '2019-06-18 15:50:35', 1, '2019-06-18 15:50:35', b'0');
INSERT INTO `global_reference_value` VALUES (59, 12, NULL, NULL, NULL, 'Projects', 'Projects', NULL, NULL, NULL, 1, '2019-06-18 15:51:14', 1, '2019-06-18 15:51:14', b'0');
INSERT INTO `global_reference_value` VALUES (60, 12, NULL, NULL, NULL, 'Schedules', 'Schedules', NULL, NULL, NULL, 1, '2019-06-18 15:52:29', 1, '2019-06-18 15:52:29', b'0');
INSERT INTO `global_reference_value` VALUES (61, 12, NULL, NULL, NULL, 'Announcements', 'Announcements', NULL, NULL, NULL, 1, '2019-06-18 15:53:22', 1, '2019-06-18 15:53:22', b'0');
INSERT INTO `global_reference_value` VALUES (62, 12, NULL, NULL, NULL, 'Advertisements ', 'Advertisements ', NULL, NULL, NULL, 1, '2019-06-18 15:54:31', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (63, 12, NULL, NULL, NULL, 'Icons', 'Icons', NULL, NULL, NULL, 1, '2019-06-18 17:09:09', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (64, 13, NULL, NULL, NULL, 'Home', 'Home', NULL, NULL, NULL, 1, '2019-06-19 17:55:55', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (65, 13, NULL, NULL, NULL, 'Send Help', 'Send Help', NULL, NULL, NULL, 1, '2019-06-19 17:57:27', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (66, 13, NULL, NULL, NULL, 'Services', 'Services', NULL, NULL, NULL, 1, '2019-06-19 17:57:44', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (67, 13, NULL, NULL, NULL, 'Transparency', 'Transparency', NULL, NULL, NULL, 1, '2019-06-19 17:58:30', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (68, 14, 5, 3, NULL, 'Thanksgiving', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:48:41', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (69, 14, 5, 3, NULL, 'Anniversary (Wedding)', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:49:08', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (70, 14, 5, 3, NULL, 'Anniversary (Death)', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:49:33', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (71, 14, 5, 3, NULL, 'Birthday', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:49:47', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (72, 14, 5, 3, NULL, 'Healing', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:59:31', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (73, 14, 5, 3, NULL, 'Employment', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:59:59', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (74, 14, 5, 3, NULL, 'Board exam ', NULL, NULL, NULL, NULL, 1, '2019-06-20 16:02:45', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (75, 14, 5, 3, NULL, 'Other', NULL, NULL, NULL, NULL, 1, '2019-06-20 16:03:07', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (76, 14, 5, 5, NULL, 'Personal file ', NULL, NULL, NULL, NULL, 1, '2019-06-20 16:03:48', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (77, 14, 5, 5, NULL, 'School', NULL, NULL, NULL, NULL, 1, '2019-06-20 16:04:04', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (78, 14, 5, 5, NULL, 'Confimation', NULL, NULL, NULL, NULL, 1, '2019-06-20 16:04:19', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (79, 14, 5, 5, NULL, 'First communion', NULL, NULL, NULL, NULL, 1, '2019-06-20 16:04:35', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (80, 14, 5, 5, NULL, 'Legal documents', NULL, NULL, NULL, NULL, 1, '2019-06-20 16:04:50', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (81, 14, 5, 5, NULL, 'Issuance of Birth certificate', NULL, NULL, NULL, NULL, 1, '2019-06-20 16:05:11', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (82, 14, 5, 5, NULL, 'Marriage', NULL, NULL, NULL, NULL, 1, '2019-06-20 16:05:28', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (83, 14, 5, 5, NULL, 'Other', NULL, NULL, NULL, NULL, 1, '2019-06-20 16:05:28', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (84, 15, NULL, NULL, NULL, 'Christianity', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:15:24', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (85, 15, NULL, NULL, NULL, 'Protestant', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:23:38', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (86, 15, NULL, NULL, NULL, 'Orthodox', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:24:41', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (87, 15, NULL, NULL, NULL, 'Iglesia ni Cristo', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:25:00', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (88, 15, NULL, NULL, NULL, 'Seventh-day Adventist Church', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:25:20', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (89, 15, NULL, NULL, NULL, 'United Church of Christ in the Philippines', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:25:51', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (90, 15, NULL, NULL, NULL, 'Evangelicals', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:26:04', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (91, 15, NULL, NULL, NULL, 'Muslim', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:26:24', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (92, 15, NULL, NULL, NULL, 'Anitism', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:26:54', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (93, 15, NULL, NULL, NULL, 'Buddhism', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:27:20', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (94, 15, NULL, NULL, NULL, 'Sikhs', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:27:49', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (95, 15, NULL, NULL, NULL, 'Hinduism', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:27:58', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (96, 15, NULL, NULL, NULL, 'Judaism', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:28:10', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (97, 15, NULL, NULL, NULL, 'Baha\'i', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:28:38', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (98, 15, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:28:38', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (99, 16, NULL, NULL, NULL, 'Holy Mass', 'Holy Mass', NULL, NULL, NULL, 1, '2019-06-19 16:04:15', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (100, 16, NULL, NULL, NULL, 'Confessions', 'Confessions', NULL, NULL, NULL, 1, '2019-06-19 16:04:33', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (101, 16, NULL, NULL, NULL, 'Blessings', 'Blessings of cars and religious items', NULL, NULL, NULL, 1, '2019-06-19 16:05:05', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (102, 16, NULL, NULL, NULL, 'Live Mass', 'Live Mass', NULL, NULL, NULL, 1, '2019-06-19 16:05:16', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (103, 17, NULL, NULL, NULL, 'Mass', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:11:39', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (104, 17, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:11:39', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (105, 18, NULL, NULL, NULL, 'Male', 'Male', NULL, NULL, NULL, 1, '2019-08-22 20:14:47', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (106, 18, NULL, NULL, NULL, 'Female', 'Female', NULL, NULL, NULL, 1, '2019-08-22 20:15:00', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (107, 19, NULL, NULL, NULL, 'Priest', 'Priest', NULL, NULL, NULL, 1, '2019-08-25 15:19:27', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (108, 19, NULL, NULL, NULL, 'Pastor', 'Pastor', NULL, NULL, NULL, 1, '2019-08-25 15:19:29', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (109, 19, NULL, NULL, NULL, 'Nun', 'Nun', NULL, NULL, NULL, 1, '2019-08-25 15:19:53', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (110, 19, NULL, NULL, NULL, 'Brother', 'Brother', NULL, NULL, NULL, 1, '2019-08-25 15:19:57', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (111, 20, NULL, NULL, NULL, 'Widget', 'This is for widget type of ads', NULL, NULL, NULL, 1, '2019-08-25 19:30:35', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (112, 20, NULL, NULL, NULL, 'Splash', 'This is for splash screen type of ads', NULL, NULL, NULL, 1, '2019-08-25 19:30:39', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (113, 21, NULL, NULL, NULL, 'Mt. Carmel Shrine', 'Our Lady of Mount Carmel Shrine', NULL, 0, 31, 1, '2019-07-21 12:30:40', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (114, 21, NULL, NULL, NULL, 'Scholastics', 'Carmelite Foundation for Carmelite Scholastics, Inc.\r\nFor recruitment, postulant, novice, deacon, presbyter and seminary for philosophy and theology.', NULL, 0, 28, 1, '2019-06-21 12:30:54', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (115, 21, NULL, NULL, NULL, 'Carefund', 'For elderly priests, sick priests, medication and hospitalization', NULL, 0, 26, 1, '2019-06-21 12:30:54', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (116, 21, NULL, NULL, NULL, 'Feeding Program', 'for National Children’s Hospital ', NULL, 0, 27, 1, '2019-06-21 12:30:54', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (117, 21, NULL, NULL, NULL, 'Noche Buena', 'Handog Noche Buena sa Pamilya', NULL, 0, 30, 1, '2019-06-21 12:30:54', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (118, 21, NULL, NULL, NULL, 'Christmas Gift', 'My Christmas Gift to Infant Jesus ', NULL, 0, 29, 1, '2019-06-21 12:30:54', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (119, 21, NULL, NULL, NULL, 'Fiesta', 'Feast of Our Lady of Mount Carmel', NULL, 0, 31, 1, '2019-07-01 18:38:05', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (120, 22, NULL, NULL, 1, 'Apparel', 'Apparel', NULL, NULL, NULL, 1, '2019-09-24 16:20:45', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (121, 22, NULL, NULL, 2, 'Arts & Entertainment', 'Arts & Entertainment', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (122, 22, NULL, NULL, 3, 'Autos & Vehicles', 'Autos & Vehicles', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (123, 22, NULL, NULL, 4, 'Beauty & Personal Care', 'Beauty & Personal Care', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (124, 22, NULL, NULL, 5, 'Business & Industrial', 'Business & Industrial', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (125, 22, NULL, NULL, 6, 'Computers & Consumer Electronics', 'Computers & Consumer Electronics', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (126, 22, NULL, NULL, 7, 'Dining & Nightlife', 'Dining & Nightlife', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (127, 22, NULL, NULL, 8, 'Family & Community', 'Family & Community', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (128, 22, NULL, NULL, 9, 'Finance', 'Finance', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (129, 22, NULL, NULL, 10, 'Food & Groceries', 'Food & Groceries', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (130, 22, NULL, NULL, 11, 'Health', 'Health', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (131, 22, NULL, NULL, 12, 'Hobbies, Games & Leisure', 'Hobbies, Games & Leisure', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (132, 22, NULL, NULL, 13, 'Home & Garden', 'Home & Garden', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (133, 22, NULL, NULL, 14, 'Internet & Telecom', 'Internet & Telecom', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (134, 22, NULL, NULL, 15, 'Jobs & Education', 'Jobs & Education', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (135, 22, NULL, NULL, 16, 'Law & Government', 'Law & Government', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (136, 22, NULL, NULL, 17, 'Mobile App Utilities', 'Mobile App Utilities', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (137, 22, NULL, NULL, 18, 'News, Books & Publications', 'News, Books & Publications', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (138, 22, NULL, NULL, 19, 'Occasions & Gifts', 'Occasions & Gifts', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (139, 22, NULL, NULL, 20, 'Real State', 'Real State', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (140, 22, NULL, NULL, 21, 'Sports & Fitness', 'Sports & Fitness', NULL, NULL, NULL, 1, '2019-09-24 16:20:47', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (141, 22, NULL, NULL, 22, 'Travel & Tourism', 'Travel & Tourism', NULL, NULL, NULL, 1, '2019-09-24 16:20:47', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (142, 23, NULL, NULL, 1, 'Approved', 'Approved', NULL, NULL, NULL, 1, '2019-09-24 23:04:34', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (143, 23, NULL, NULL, 2, 'Declined', 'Declined', NULL, NULL, NULL, 1, '2019-09-24 23:04:36', NULL, NULL, b'0');

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `date_of_establishment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `feast_day` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `titular` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `diocese` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(2500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `media_id` int(11) NULL DEFAULT NULL COMMENT 'photo',
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of history
-- ----------------------------
INSERT INTO `history` VALUES (1, 1, '17 February 1975', '16 July', 'Our Lady of Mt. Carmel', 'Cubao', '<p style=\"text-align: justify\">The Quezon City district of New Manila is a haven for various Catholic orders, with many chapels and convents scattered around the area; from the American colonial period (1898-1946) Convent of Carmel of Thérèse of Lisieux, the Sisters of St. Paul of Chartres Novitiate and Provincial House (established 1931), Franciscan St. Joseph’s Academy and Convent (established 1932), and the Society of the Divine Word’s Christ the King Mission Seminary (established 1933), to the post-war Congregation of the Religious of the Virgin Mary Compound (established 1950), the Pink Sister’s St. Joseph Convent of Perpetual Adoration (established 1965), the Congregatio Immaculati Cordis Mariae’s Maryhill School Of The Theology (1979),the Local Superior of The Society of Monfort Missionaries(established 1984), and the Foundation for Carmelite Scholastics(established 1987). However, the center of most Catholic activities is the Minor Basilica of the National Shrine of Our Lady of Mount Carmel, located on Broadway Avenue, taking most of the block between 4th and 5th street.</p><p>\r\n</p><p style=\"text-align: justify\">The Mount Carmel Parish is part of the third wave of Discalced Carmelites missions to the Philippines, which started in 1923, with the arrival of four French nuns from Hue, Vietnam, to the shores of Jaro, Iloilo. In this first wave, the Convent Carmel of Thérèse of Lisieux was founded in 1926, along Gilmore Avenue, in New Manila. The second wave also began in Infanta, Quezon Province, in 1946; and this time the Discalced Carmelite friars were now leading the wave. Part of the third wave that started in Jaro, Iloilo, the Anglo-Irish Carmelite friars established a foundation in 1954, in New Manila, Quezon City, and on December 30 of the same year, the cornerstone was laid for the new church.</p><p>\r\n</p><p style=\"text-align: justify\">The new church was dedicated as a shrine to Our Lady of Mount Carmel, a title of the Blessed Virgin Mary, which the first Carmelites named in the construction of their first monastery on Mount Karmel (Har HaKarmel) in the northern territories of Israel, during the 12th Century. The order of Carmelite started with Christian hermits living in Har HaKarmel, during the Crusades, who chose the mountain where the prophet Elijah had lived and challenged the priests of the god Baal, as a reflection of their faith against the Muslims who have taken over the holy city of Jerusalem. The old friary is built around the c</p>', NULL, 1, '2019-06-19 14:27:04', 1, '2019-09-08 23:03:21', b'0');

-- ----------------------------
-- Table structure for household
-- ----------------------------
DROP TABLE IF EXISTS `household`;
CREATE TABLE `household`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `sub_module_id` int(11) NOT NULL,
  `sub_module_info_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(2) NULL DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `landline` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` int(11) NULL DEFAULT NULL,
  `province` int(11) NULL DEFAULT NULL,
  `country` int(11) NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for keys
-- ----------------------------
DROP TABLE IF EXISTS `keys`;
CREATE TABLE `keys`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT 0,
  `is_private_key` tinyint(1) NOT NULL DEFAULT 0,
  `ip_addresses` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of keys
-- ----------------------------
INSERT INTO `keys` VALUES (1, 1, '365-Days', 1, 0, 0, '127.0.0.1', 0);

-- ----------------------------
-- Table structure for language_info
-- ----------------------------
DROP TABLE IF EXISTS `language_info`;
CREATE TABLE `language_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `branch_id` int(11) NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `module` int(11) NOT NULL,
  `sub_module` int(11) NULL DEFAULT NULL,
  `lang1` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `lang2` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for live_streams
-- ----------------------------
DROP TABLE IF EXISTS `live_streams`;
CREATE TABLE `live_streams`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `title` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `video_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_by` int(1) NOT NULL,
  `dt_created` datetime(0) NOT NULL,
  `updated_by` int(1) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of live_streams
-- ----------------------------
INSERT INTO `live_streams` VALUES (1, 1, 'Mount Carmel Live Mass', 'National Shrine of Mount Carmel Minor Basilica Live Mass', 'VlUw-E_IWjs', 1, '2019-07-19 21:26:10', 1, '2019-09-25 08:43:55', b'0');

-- ----------------------------
-- Table structure for locations
-- ----------------------------
DROP TABLE IF EXISTS `locations`;
CREATE TABLE `locations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `description` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lat_center` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lng_center` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of locations
-- ----------------------------
INSERT INTO `locations` VALUES (1, 1, NULL, '14.614253', '121.030581', 1, '2019-06-27 11:26:55', NULL, NULL, b'0');

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `method` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `api_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float NULL DEFAULT NULL,
  `authorized` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `response_code` smallint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for maps
-- ----------------------------
DROP TABLE IF EXISTS `maps`;
CREATE TABLE `maps`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `description` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lat` decimal(10, 8) NULL DEFAULT NULL,
  `lng` decimal(11, 8) NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of maps
-- ----------------------------
INSERT INTO `maps` VALUES (1, 1, NULL, 14.61930380, -238.98361360, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (2, 1, NULL, 14.61918450, -238.98362160, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (3, 1, NULL, 14.61899760, -238.98352240, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (4, 1, NULL, 14.61876400, -238.98317900, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (5, 1, NULL, 14.61877700, -238.98279280, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (6, 1, NULL, 14.61900540, -238.98143290, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (7, 1, NULL, 14.61905990, -238.98089380, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (8, 1, NULL, 14.61894050, -238.98056390, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (9, 1, NULL, 14.61871730, -238.98035470, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (10, 1, NULL, 14.61658390, -238.97934350, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (11, 1, NULL, 14.61560020, -238.97912620, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (12, 1, NULL, 14.61524980, -238.97917450, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (13, 1, NULL, 14.61490460, -238.97924150, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (14, 1, NULL, 14.61421950, -238.97938640, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (15, 1, NULL, 14.61380160, -238.97945340, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (16, 1, NULL, 14.61290620, -238.97970830, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (17, 1, NULL, 14.61202370, -238.97999790, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (18, 1, NULL, 14.61153320, -238.98001130, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (19, 1, NULL, 14.61121650, -238.97996570, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (20, 1, NULL, 14.61081940, -238.97981020, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (21, 1, NULL, 14.60951650, -238.97870240, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (22, 1, NULL, 14.61006670, -238.97841540, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (23, 1, NULL, 14.61142160, -238.97741500, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (24, 1, NULL, 14.61215610, -238.97697780, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (25, 1, NULL, 14.61285170, -238.97688660, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (26, 1, NULL, 14.61354200, -238.97677390, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (27, 1, NULL, 14.61376270, -238.97665860, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (28, 1, NULL, 14.61387950, -238.97639840, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (29, 1, NULL, 14.61391580, -238.97621600, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (30, 1, NULL, 14.61377300, -238.97566350, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (31, 1, NULL, 14.61351610, -238.97503050, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (32, 1, NULL, 14.61311120, -238.97487760, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (33, 1, NULL, 14.61270890, -238.97474080, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (34, 1, NULL, 14.61254800, -238.97462820, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (35, 1, NULL, 14.61240780, -238.97441890, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (36, 1, NULL, 14.61235590, -238.97401660, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (37, 1, NULL, 14.61237930, -238.97277470, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (38, 1, NULL, 14.61233260, -238.97191640, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (39, 1, NULL, 14.61208080, -238.97135050, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (40, 1, NULL, 14.61217420, -238.97107150, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (41, 1, NULL, 14.61244420, -238.97083550, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (42, 1, NULL, 14.61288280, -238.97083280, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (43, 1, NULL, 14.61311380, -238.97053240, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (44, 1, NULL, 14.61320980, -238.97016500, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (45, 1, NULL, 14.61318130, -238.96990210, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (46, 1, NULL, 14.61303330, -238.96957220, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (47, 1, NULL, 14.61295810, -238.96908400, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (48, 1, NULL, 14.61236630, -238.96874340, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (49, 1, NULL, 14.61215350, -238.96854490, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (50, 1, NULL, 14.61196140, -238.96841620, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (51, 1, NULL, 14.61169150, -238.96819080, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (52, 1, NULL, 14.61147350, -238.96781800, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (53, 1, NULL, 14.61080120, -238.96710990, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (54, 1, NULL, 14.61000960, -238.96653060, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (55, 1, NULL, 14.60970340, -238.96624890, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (56, 1, NULL, 14.60959180, -238.96604780, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (57, 1, NULL, 14.60950350, -238.96558640, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (58, 1, NULL, 14.60946980, -238.96514390, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (59, 1, NULL, 14.60921280, -238.96491050, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (60, 1, NULL, 14.60890910, -238.96468790, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (61, 1, NULL, 14.60875860, -238.96448400, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (62, 1, NULL, 14.60875600, -238.96433650, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (63, 1, NULL, 14.60896620, -238.96418090, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (64, 1, NULL, 14.60908560, -238.96358550, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (65, 1, NULL, 14.60919980, -238.96336820, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (66, 1, NULL, 14.60931920, -238.96322070, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (67, 1, NULL, 14.60942050, -238.96308120, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (68, 1, NULL, 14.60945680, -238.96292570, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (69, 1, NULL, 14.60948530, -238.96264400, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (70, 1, NULL, 14.60939450, -238.96233560, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (71, 1, NULL, 14.60941530, -238.96213440, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (72, 1, NULL, 14.60968000, -238.96163280, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (73, 1, NULL, 14.60971630, -238.96143440, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (74, 1, NULL, 14.60961770, -238.96120370, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (75, 1, NULL, 14.60962030, -238.96108300, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (76, 1, NULL, 14.60969820, -238.96097300, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (77, 1, NULL, 14.61005370, -238.96077720, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (78, 1, NULL, 14.61023800, -238.96060820, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (79, 1, NULL, 14.61027440, -238.96031860, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (80, 1, NULL, 14.61021730, -238.95987330, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (81, 1, NULL, 14.61024060, -238.95969900, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (82, 1, NULL, 14.61009010, -238.95926180, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (83, 1, NULL, 14.61009790, -238.95903380, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (84, 1, NULL, 14.61038340, -238.95866360, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (85, 1, NULL, 14.61064030, -238.95830420, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (86, 1, NULL, 14.61066110, -238.95821030, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (87, 1, NULL, 14.61074410, -238.95836320, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (88, 1, NULL, 14.61118540, -238.95851340, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (89, 1, NULL, 14.61136970, -238.95860200, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (90, 1, NULL, 14.61142420, -238.95868780, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (91, 1, NULL, 14.61147610, -238.95880580, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (92, 1, NULL, 14.61160320, -238.95925100, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (93, 1, NULL, 14.61231180, -238.96064580, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (94, 1, NULL, 14.61267260, -238.96103200, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (95, 1, NULL, 14.61272450, -238.96114200, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (96, 1, NULL, 14.61274520, -238.96126810, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (97, 1, NULL, 14.61278940, -238.96157380, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (98, 1, NULL, 14.61329030, -238.96095420, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (99, 1, NULL, 14.61366400, -238.96061900, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (100, 1, NULL, 14.61393140, -238.96046880, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (101, 1, NULL, 14.61439850, -238.96028640, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (102, 1, NULL, 14.61465030, -238.96005300, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (103, 1, NULL, 14.61520310, -238.95939050, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (104, 1, NULL, 14.62425060, -238.96487830, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (105, 1, NULL, 14.62397030, -238.96851540, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');
INSERT INTO `maps` VALUES (106, 1, NULL, 14.61930380, -238.98361360, 1, '2019-06-24 19:40:31', NULL, NULL, b'0');

-- ----------------------------
-- Table structure for media
-- ----------------------------
DROP TABLE IF EXISTS `media`;
CREATE TABLE `media`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `full_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `raw_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `orig_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `client_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_ext` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_size` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_image` int(1) NULL DEFAULT NULL,
  `image_width` int(10) NULL DEFAULT NULL,
  `image_height` int(10) NULL DEFAULT NULL,
  `image_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image_size_str` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of media
-- ----------------------------
INSERT INTO `media` VALUES (1, 1, 'Default Profile', 'Default Profile', 'profile.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/profile.png', NULL, NULL, NULL, '.png', '66.14', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 06:45:26', 1, '2019-08-08 22:53:02', b'0');
INSERT INTO `media` VALUES (2, 1, 'Fr. Alan Rieger', 'Fr. Alan Rieger', 'Fr_Alan_Rieger.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/Fr_Alan_Rieger.png', NULL, NULL, NULL, '.png', '45.86', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 06:53:07', 1, '2019-08-08 22:53:06', b'0');
INSERT INTO `media` VALUES (3, 1, 'Fr. Joey Mabborang', 'Fr. Joey Mabborang', 'Fr_Joey_Mabborang.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/Fr_Joey_Mabborang.jpg', NULL, NULL, NULL, '.jpg', '38.87', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 06:55:02', 1, '2019-08-08 22:53:09', b'0');
INSERT INTO `media` VALUES (4, 1, 'Fr. Alex Collera', 'Fr. Alex Collera', 'Fr_Alex_Collera.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/Fr_Alex_Collera.jpg', NULL, NULL, NULL, '.jpg', '26.83', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 06:55:39', 1, '2019-08-08 22:53:12', b'0');
INSERT INTO `media` VALUES (5, 1, 'Fr. Benedick Piangco', 'Fr. Benedick Piangco', 'Fr_Benedick_Piangco.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/Fr_Benedick_Piangco.jpg', NULL, NULL, NULL, '.jpg', '38.18', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 06:56:10', 1, '2019-08-08 22:53:16', b'0');
INSERT INTO `media` VALUES (6, 1, 'Fr. Bing Madelo', 'Fr. Bing Madelo', 'Fr_Bing_Madelo.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/Fr_Bing_Madelo.jpg', NULL, NULL, NULL, '.jpg', '30.67', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 06:57:00', 1, '2019-08-08 22:53:28', b'0');
INSERT INTO `media` VALUES (7, 1, 'Fr. Chito Reyes', 'Fr. Chito Reyes', 'Fr_Chito_Reyes.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/Fr_Chito_Reyes.png', NULL, NULL, NULL, '.png', '45.34', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 06:57:18', 1, '2019-08-08 22:53:33', b'0');
INSERT INTO `media` VALUES (8, 1, 'Fr. Hernani Anis', 'Fr. Hernani Anis', 'Fr_Hernani_Anis.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/Fr_Hernani_Anis.jpg', NULL, NULL, NULL, '.jpg', '38.15', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 06:57:42', 1, '2019-08-08 22:52:22', b'0');
INSERT INTO `media` VALUES (9, 1, 'Fr. Ransom Rapirap', 'Fr. Ransom Rapirap', 'Fr_Ransom_Rapirap.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/Fr_Ransom_Rapirap.png', NULL, NULL, NULL, '.png', '44.45', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 06:58:09', 1, '2019-08-08 22:52:26', b'0');
INSERT INTO `media` VALUES (10, 1, 'Rev. Nguyen Cong', 'Rev. Nguyen Cong', 'Rev_Nguyen_Cong.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/Rev_Nguyen_Cong.jpg', NULL, NULL, NULL, '.jpg', '37.09', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 06:58:46', 1, '2019-08-08 22:52:29', b'0');
INSERT INTO `media` VALUES (11, 1, 'Bro. Porferio Nalzado', 'Bro. Porferio Nalzado', 'Bro_Porferio_Nalzaro.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/Bro_Porferio_Nalzaro.jpg', NULL, NULL, NULL, '.jpg', '36.18', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 06:59:09', 1, '2019-08-08 22:52:33', b'0');
INSERT INTO `media` VALUES (12, 1, 'Filler 0', 'Filler 0', '0.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/0.jpg', NULL, NULL, NULL, '.jpg', '218.51', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 07:21:44', 1, '2019-08-08 22:52:36', b'0');
INSERT INTO `media` VALUES (13, 1, 'Filler 1', 'Filler 1', '1.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/1.jpg', NULL, NULL, NULL, '.jpg', '364.75', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 07:22:03', 1, '2019-08-08 22:52:39', b'0');
INSERT INTO `media` VALUES (14, 1, 'Filler 2', 'Filler 2', '2.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/2.jpg', NULL, NULL, NULL, '.jpg', '675.66', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 07:22:27', 1, '2019-08-08 22:52:44', b'0');
INSERT INTO `media` VALUES (15, 1, 'Filler 3', 'Filler 3', '3.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/3.jpg', NULL, NULL, NULL, '.jpg', '404.65', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 07:22:41', 1, '2019-08-08 22:52:48', b'0');
INSERT INTO `media` VALUES (18, 1, 'Ads 1', 'Ads 1', 'ads1.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/ads1.png', NULL, NULL, NULL, '.png', '169.63', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 07:32:45', 1, '2019-08-08 22:52:53', b'0');
INSERT INTO `media` VALUES (19, 1, 'Ads 2', 'Ads 2', 'ads2.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/ads2.png', NULL, NULL, NULL, '.png', '48.72', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:30:13', 1, '2019-08-08 22:52:57', b'0');
INSERT INTO `media` VALUES (20, 1, 'Ads 3', 'Ads 3', 'ads3.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/ads3.png', NULL, NULL, NULL, '.png', '58.56', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:30:29', 1, '2019-08-08 22:51:46', b'0');
INSERT INTO `media` VALUES (21, 1, 'Ads 4', 'Ads 4', 'ads4.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/ads4.png', NULL, NULL, NULL, '.png', '34.67', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:30:44', 1, '2019-08-08 22:51:50', b'0');
INSERT INTO `media` VALUES (22, 1, 'Cat', 'Cat', 'cat.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/cat.png', NULL, NULL, NULL, '.png', '58.36', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:31:03', 1, '2019-08-08 22:51:52', b'0');
INSERT INTO `media` VALUES (23, 1, 'Default Ads Logo', 'Default Ads Logo', 'companylogo.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/companylogo.jpg', NULL, NULL, NULL, '.jpg', '29.1', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:31:26', 1, '2019-08-08 22:51:55', b'0');
INSERT INTO `media` VALUES (24, 1, 'Mount Carmel Front', 'Mount Carmel Front', 'mtcarmel-front.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/mtcarmel-front.jpg', NULL, NULL, NULL, '.jpg', '494.55', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:32:05', 1, '2019-08-08 22:51:58', b'0');
INSERT INTO `media` VALUES (25, 1, 'Care Fund', 'Care Fund', 'care-fund.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/care-fund.jpg', NULL, NULL, NULL, '.jpg', '134.26', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:35:42', 1, '2019-08-08 22:52:02', b'0');
INSERT INTO `media` VALUES (26, 1, 'Feeding Program', 'Feeding Program', 'feeding-program.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/feeding-program.jpg', NULL, NULL, NULL, '.jpg', '319.6', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:35:58', 1, '2019-08-08 22:52:07', b'0');
INSERT INTO `media` VALUES (27, 1, 'Noche Buena', 'Noche Buena', 'noche-buena.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/noche-buena.png', NULL, NULL, NULL, '.png', '390.83', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:36:18', 1, '2019-08-08 22:52:10', b'0');
INSERT INTO `media` VALUES (28, 1, 'Scholastics', 'Scholastics', 'scholastic.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/scholastic.jpg', NULL, NULL, NULL, '.jpg', '90.64', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:37:43', 1, '2019-08-08 22:52:14', b'0');
INSERT INTO `media` VALUES (29, 1, 'Christmas Gift', 'Christmas Gift', 'xmas-gift.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/xmas-gift.jpg', NULL, NULL, NULL, '.jpg', '250.78', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:38:29', 1, '2019-08-08 22:52:17', b'0');
INSERT INTO `media` VALUES (30, 1, 'Calendar', 'Calendar', 'calendar.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/calendar.png', NULL, NULL, NULL, '.png', '43.41', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:39:58', 1, '2019-08-08 22:51:41', b'0');
INSERT INTO `media` VALUES (31, 1, 'Christening', 'Christening', 'christening.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/christening.png', NULL, NULL, NULL, '.png', '85.12', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:40:11', 1, '2019-08-08 22:51:36', b'0');
INSERT INTO `media` VALUES (32, 1, 'Communion', 'Communion', 'communion.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/communion.png', NULL, NULL, NULL, '.png', '73.66', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:40:24', 1, '2019-08-08 22:51:32', b'0');
INSERT INTO `media` VALUES (33, 1, 'Confirmation', 'Confirmation', 'confirmation.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/confirmation.png', NULL, NULL, NULL, '.png', '74.78', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:40:39', 1, '2019-08-08 22:51:27', b'0');
INSERT INTO `media` VALUES (34, 1, 'Confraternity', 'Confraternity', 'confraternity.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/confraternity.png', NULL, NULL, NULL, '.png', '73.14', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:40:54', 1, '2019-08-08 22:51:22', b'0');
INSERT INTO `media` VALUES (35, 1, 'Events', 'Events', 'events.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/events.png', NULL, NULL, NULL, '.png', '75.71', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:41:04', 1, '2019-08-08 22:51:17', b'0');
INSERT INTO `media` VALUES (36, 1, 'Mount Carmel Old Logo', 'Mount Carmel Old Logo', 'logo.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/logo.png', NULL, NULL, NULL, '.png', '55.13', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:41:29', 1, '2019-08-08 22:51:13', b'0');
INSERT INTO `media` VALUES (37, 1, 'Mass', 'Mass', 'mass.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/mass.png', NULL, NULL, NULL, '.png', '74.78', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:41:45', 1, '2019-08-08 22:51:09', b'0');
INSERT INTO `media` VALUES (38, 1, 'News Feed', 'News Feed', 'news_update.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/news_update.png', NULL, NULL, NULL, '.png', '42.49', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:42:11', 1, '2019-08-08 22:50:48', b'0');
INSERT INTO `media` VALUES (39, 1, 'Passing', 'Passing', 'passing.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/passing.png', NULL, NULL, NULL, '.png', '78.4', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:42:24', 1, '2019-08-08 22:50:45', b'0');
INSERT INTO `media` VALUES (40, 1, 'Prayer', 'Prayer', 'prayer.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/prayer.png', NULL, NULL, NULL, '.png', '82.11', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:42:39', 1, '2019-08-08 22:50:35', b'0');
INSERT INTO `media` VALUES (41, 1, 'Refresh', 'Refresh', 'refresh.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/refresh.png', NULL, NULL, NULL, '.png', '30.43', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:43:21', 1, '2019-08-08 22:50:31', b'0');
INSERT INTO `media` VALUES (42, 1, 'Send Help', 'Send Help', 'send_help.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/send_help.png', NULL, NULL, NULL, '.png', '45.61', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:43:42', 1, '2019-08-08 22:50:26', b'0');
INSERT INTO `media` VALUES (43, 1, 'Services', 'Services', 'services.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/services.png', NULL, NULL, NULL, '.png', '68.39', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:43:54', 1, '2019-08-08 22:50:21', b'0');
INSERT INTO `media` VALUES (44, 1, 'Settings', 'Settings', 'settings.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/settings.png', NULL, NULL, NULL, '.png', '29', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:44:10', 1, '2019-08-08 22:50:16', b'0');
INSERT INTO `media` VALUES (45, 1, 'Thank You', 'Thank You', 'thank_you.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/thank_you.png', NULL, NULL, NULL, '.png', '52.31', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:44:50', 1, '2019-08-08 22:50:11', b'0');
INSERT INTO `media` VALUES (46, 1, 'Transparency', 'Transparency', 'transparency.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/transparency.png', NULL, NULL, NULL, '.png', '48.22', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:45:07', 1, '2019-08-08 22:50:07', b'0');
INSERT INTO `media` VALUES (47, 1, 'Wedding', 'Wedding', 'wedding.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/wedding.png', NULL, NULL, NULL, '.png', '84.2', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:45:24', 1, '2019-08-05 23:38:49', b'0');
INSERT INTO `media` VALUES (48, 1, 'Coca Cola', 'Coca Cola', '4.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/4.jpg', NULL, NULL, NULL, '.jpg', '593.24', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 09:00:43', 1, '2019-07-25 12:47:16', b'0');
INSERT INTO `media` VALUES (49, 1, 'Pepsi', 'Pepsi', '5.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/5.jpg', NULL, NULL, NULL, '.jpg', '636.1', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 09:09:13', 1, '2019-08-23 09:10:19', b'0');
INSERT INTO `media` VALUES (50, 1, 'YTS', 'YTS', 'WWW_YTS_RE.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/WWW_YTS_RE.jpg', NULL, NULL, NULL, '.jpg', '107.92', NULL, NULL, NULL, NULL, NULL, 1, '2019-08-06 02:03:14', 1, '2019-08-08 22:48:58', b'1');
INSERT INTO `media` VALUES (51, 1, 'Cabalen', 'Cabalen Naga City', 'Cabalen_Naga_City.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/Cabalen_Naga_City.jpg', NULL, NULL, NULL, '.jpg', '272.66', NULL, NULL, NULL, NULL, NULL, 1, '2019-09-04 04:09:44', 1, '2019-09-16 19:11:20', b'0');
INSERT INTO `media` VALUES (52, 1, 'BDO', 'BDO', 'BDO.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/BDO.jpg', NULL, NULL, NULL, '.jpg', '120.52', NULL, NULL, NULL, NULL, NULL, 1, '2019-09-04 04:16:07', 1, '2019-09-16 19:11:17', b'0');
INSERT INTO `media` VALUES (53, 1, 'Apostleship of Prayer', 'Apostleship of Prayer', 'Apostleship_of_Prayer.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/Apostleship_of_Prayer.jpg', NULL, NULL, NULL, '.jpg', '185.09', NULL, NULL, NULL, NULL, NULL, 1, '2019-09-04 04:16:25', 1, '2019-09-16 19:11:03', b'0');
INSERT INTO `media` VALUES (54, 1, 'Pepsi', 'Pepsi', 'Pepsi.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/Pepsi.jpg', NULL, NULL, NULL, '.jpg', '127.78', NULL, NULL, NULL, NULL, NULL, 1, '2019-09-04 04:22:16', 1, '2019-09-16 19:11:00', b'0');

-- ----------------------------
-- Table structure for ministers
-- ----------------------------
DROP TABLE IF EXISTS `ministers`;
CREATE TABLE `ministers`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL DEFAULT 1 COMMENT 'type of ministers i.e. 1=Priest, 2=Pastors, 3=Sisters etc',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `congregation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sequence` int(11) NULL DEFAULT NULL,
  `media_id` int(11) NULL DEFAULT NULL COMMENT 'photo',
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ministers
-- ----------------------------
INSERT INTO `ministers` VALUES (1, 1, 107, 'Fr. Alan Rieger', 'Superior', 'OCD', 1, 2, 1, '2019-06-19 12:59:16', 1, '2019-09-03 02:57:19', b'0');
INSERT INTO `ministers` VALUES (2, 1, 107, 'Fr. Joey D. Mabborang', 'Parish Priest / Shrine Rector', 'OCD', 1, 3, 1, '2019-06-19 13:02:24', 1, '2019-08-26 15:26:41', b'0');
INSERT INTO `ministers` VALUES (3, 1, 107, 'Fr. Hernani Añis', 'Parochial Vicar for the Parish', 'OCD', 2, 8, 1, '2019-06-19 13:03:59', 1, '2019-08-26 15:26:15', b'0');
INSERT INTO `ministers` VALUES (4, 1, 107, 'Fr. Ransom Rapirap', 'Parochial Vicar for the National Shrine', 'OCD', 2, 9, 1, '2019-06-19 13:04:28', 1, '2019-08-26 15:17:53', b'0');
INSERT INTO `ministers` VALUES (5, 1, 107, 'Fr. Narciso \"Chito\" Reyes', '', 'OCD', 3, 7, 1, '2019-06-19 13:04:50', 1, '2019-08-26 15:17:29', b'0');
INSERT INTO `ministers` VALUES (6, 1, 107, 'Fr. Alex Collera', '', 'OCD', 3, 4, 1, '2019-06-19 13:05:14', 1, '2019-08-26 15:17:04', b'0');
INSERT INTO `ministers` VALUES (7, 1, 107, 'Fr. Angelo \"Bing\" Madelo', '', 'OCD', 3, 6, 1, '2019-06-19 13:05:56', 1, '2019-08-26 15:16:40', b'0');
INSERT INTO `ministers` VALUES (8, 1, 107, 'Fr. Benedick Piangco', '', 'OCD', 3, 5, 1, '2019-06-19 13:06:11', 1, '2019-08-25 14:07:07', b'0');
INSERT INTO `ministers` VALUES (9, 1, 107, 'Rev. Nguyen Cong Vinh (Rev. Paul)', '', 'OCD', 4, 10, 1, '2019-06-19 14:10:16', 1, '2019-08-23 12:24:05', b'0');
INSERT INTO `ministers` VALUES (10, 1, 107, 'Bro. Porferio Nalzaro', '', 'OCD', 4, 11, 1, '2019-06-19 14:10:35', 1, '2019-08-23 10:51:11', b'0');
INSERT INTO `ministers` VALUES (11, 1, 108, 'Fr. Paul O\'Sullivan', NULL, 'OCD (1975-1978)', 1, 1, 1, '2019-06-19 14:11:47', 1, '2019-08-23 10:37:13', b'0');
INSERT INTO `ministers` VALUES (12, 1, 108, 'Fr. Tom Shanahan', NULL, 'OCD (1978-1981)', 2, 3, 1, '2019-06-19 14:12:12', 1, '2019-08-23 10:37:11', b'0');
INSERT INTO `ministers` VALUES (13, 1, 108, 'Fr. Rolando Tria-Tirona', NULL, 'D.D. (1981-1984)', 3, 1, 1, '2019-06-19 14:13:34', 1, '2019-08-23 10:37:08', b'0');
INSERT INTO `ministers` VALUES (14, 1, 108, 'Fr. Paul Sullivan', NULL, 'OCD (1984-1987)', 4, 1, 1, '2019-06-19 14:14:05', 1, '2019-08-23 10:37:05', b'0');
INSERT INTO `ministers` VALUES (15, 1, 108, 'Fr. Michael Fitzgerald', NULL, 'CD  (1987-1988)', 5, 1, 1, '2019-06-19 14:15:56', 1, '2019-08-23 10:37:01', b'0');
INSERT INTO `ministers` VALUES (16, 1, 108, 'Fr. Paul O\'Sullivan', NULL, 'OCD (1988-1990)', 6, 1, 1, '2019-06-19 14:16:25', 1, '2019-08-23 10:36:53', b'0');
INSERT INTO `ministers` VALUES (17, 1, 108, 'Fr. Rolando Tria-Tirona', NULL, 'DD (1990-1993)', 7, 1, 1, '2019-06-19 14:16:56', 1, '2019-08-23 10:36:50', b'0');
INSERT INTO `ministers` VALUES (18, 1, 108, 'Fr. Angelo Madelo', NULL, 'OCD (1993-1996)', 8, 1, 1, '2019-06-19 14:17:26', 1, '2019-08-23 10:36:45', b'0');
INSERT INTO `ministers` VALUES (19, 1, 108, 'Fr. Alex Collera', NULL, 'OCD (1996 -1999)', 9, 1, 1, '2019-06-19 14:18:00', 1, '2019-08-23 10:36:41', b'0');
INSERT INTO `ministers` VALUES (20, 1, 108, 'Fr. Mariano Agruda', NULL, 'OCD (1999-2005)', 10, 1, 1, '2019-06-19 14:18:33', 1, '2019-08-23 10:36:37', b'0');
INSERT INTO `ministers` VALUES (21, 1, 108, 'Fr. Paulo Gamboa', NULL, 'OCD (2005-2006)', 11, 1, 1, '2019-06-19 14:19:13', 1, '2019-08-23 10:36:34', b'0');
INSERT INTO `ministers` VALUES (22, 1, 108, 'Fr. Arnie Boehme', '', 'OCD (2006-2008)', 12, 1, 1, '2019-06-19 14:21:05', 1, '2019-08-26 16:36:16', b'0');
INSERT INTO `ministers` VALUES (23, 1, 108, 'Fr. Alex Collera', NULL, 'OCD (2008-2011)', 13, 1, 1, '2019-06-19 14:21:31', 1, '2019-08-23 10:36:27', b'0');
INSERT INTO `ministers` VALUES (24, 1, 108, 'Fr. Dan Lim', '', 'OCD (2011-2014)', 14, 1, 1, '2019-06-19 14:22:09', 1, '2019-08-26 16:23:41', b'0');
INSERT INTO `ministers` VALUES (25, 1, 108, 'Fr. Joey Maborrang', '', 'OCD (2014-present)', 15, 1, 1, '2019-06-19 14:22:31', 1, '2019-09-06 21:00:55', b'0');

-- ----------------------------
-- Table structure for modules
-- ----------------------------
DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `media_id` int(11) NULL DEFAULT NULL COMMENT 'icons',
  `sub_module_url` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of modules
-- ----------------------------
INSERT INTO `modules` VALUES (1, 1, 1, 'News & Updates', 'News & Updates', NULL, 38, NULL, 1, '2019-06-19 18:00:13', NULL, NULL, b'0');
INSERT INTO `modules` VALUES (2, 1, 1, 'Calendar', 'Calendar', NULL, 30, NULL, 1, '2019-06-19 18:00:30', NULL, NULL, b'0');
INSERT INTO `modules` VALUES (3, 1, 1, 'Live Mass', 'Live Mass', NULL, 37, NULL, 1, '2019-06-19 18:00:47', NULL, NULL, b'0');
INSERT INTO `modules` VALUES (4, 1, 3, 'Join Us!', 'Be an active part of the mission and service of the Carmelite Church', NULL, 34, 'https://api.mountcarmel.ph/service_confraternity', 1, '2019-06-19 18:01:28', NULL, NULL, b'0');
INSERT INTO `modules` VALUES (5, 1, 3, 'Make a Request', 'Be closer to God with the help of the church through prayers, holy masses and liturgy', NULL, 40, 'https://api.mountcarmel.ph/service_prayer_request,https://api.mountcarmel.ph/service_mass_request,https://api.mountcarmel.ph/service_liturgical,https://api.mountcarmel.ph/service_certification', 1, '2019-06-19 18:01:56', NULL, NULL, b'0');
INSERT INTO `modules` VALUES (6, 1, 3, 'Baptism', 'Be part of the christian community and follow the word of the Lord', NULL, 31, 'https://api.mountcarmel.ph/service_individual_baptism,https://api.mountcarmel.ph/service_community_baptism,https://api.mountcarmel.ph/service_adult_baptism', 1, '2019-06-19 18:02:17', NULL, NULL, b'0');
INSERT INTO `modules` VALUES (7, 1, 3, 'Communion', 'Be united with our God through the christian rite of communion', NULL, 32, 'https://api.mountcarmel.ph/service_first_communion,https://api.mountcarmel.ph/service_communion_of_the_sick', 1, '2019-06-19 18:02:37', NULL, NULL, b'0');
INSERT INTO `modules` VALUES (8, 1, 3, 'Confirmation', 'Duis accumsan nibh justo, eu eleifend nisi mattis ut. Nullam congue iaculis auctor.', NULL, 33, 'https://api.mountcarmel.ph/service_confirmation', 1, '2019-06-19 18:02:55', NULL, NULL, b'0');
INSERT INTO `modules` VALUES (9, 1, 3, 'Marriage', 'Duis accumsan nibh justo, eu eleifend nisi mattis ut. Nullam congue iaculis auctor.', NULL, 47, 'https://api.mountcarmel.ph/service_marriage', 1, '2019-06-19 18:03:15', NULL, NULL, b'0');
INSERT INTO `modules` VALUES (10, 1, 3, 'Passing', 'Passing', NULL, 39, 'https://api.mountcarmel.ph/service_funeral_service,https://api.mountcarmel.ph/service_funeral_chapel,https://api.mountcarmel.ph/service_crypt_lobby,https://api.mountcarmel.ph/service_november_mass', 1, '2019-06-19 18:03:32', NULL, NULL, b'0');
INSERT INTO `modules` VALUES (11, 1, 3, 'Events', 'Celebrate marriage or events in the delightful premises of the church', NULL, 35, 'https://api.mountcarmel.ph/service_events_FMHH_venue', 1, '2019-06-19 18:03:47', NULL, NULL, b'0');

-- ----------------------------
-- Table structure for package
-- ----------------------------
DROP TABLE IF EXISTS `package`;
CREATE TABLE `package`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `amenities` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `additional_amenities` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `amount` decimal(10, 0) NOT NULL,
  `amt_per` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `other_charges` decimal(10, 0) NULL DEFAULT NULL,
  `other_charges_per` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of package
-- ----------------------------
INSERT INTO `package` VALUES (1, 1, 'Whole area package 1', NULL, '300 tiffany chairs\r\n30 tables', '<p>All areas include the use of air conditioner, built-in sound system, ample parking space, clean toilet, LCD projector, and electricity for photo booth and maximum of 2 food carts.</p>', 30000, 'day', 2000, 'excess hour', 1, '2019-06-20 14:15:22', NULL, NULL, b'0');
INSERT INTO `package` VALUES (2, 1, 'Whole area package 2', NULL, '300 monoblock chairs\r\n30 tables', '<p>All areas include the use of air conditioner, built-in sound system, ample parking space, clean toilet, LCD projector, and electricity for photo booth and maximum of 2 food carts.</p>', 27500, 'day', 2000, 'excess hour', 1, '2019-06-20 14:16:41', NULL, NULL, b'0');
INSERT INTO `package` VALUES (3, 1, 'Half area package 1', NULL, '120 tiffany chairs\r\n12 tables', '<p>All areas include the use of air conditioner, built-in sound system, ample parking space, clean toilet, LCD projector, and electricity for photo booth and maximum of 2 food carts.</p>', 23000, 'day', 1000, 'excess hour', 1, '2019-06-20 14:17:38', NULL, NULL, b'0');
INSERT INTO `package` VALUES (4, 1, 'Half area package 2', NULL, '120 monoblock chairs\r\n12 tables', '<p>All areas include the use of air conditioner, built-in sound system, ample parking space, clean toilet, LCD projector, and electricity for photo booth and maximum of 2 food carts.</p>', 20000, 'day', 1000, 'excess hour', 1, '2019-06-20 14:18:35', NULL, NULL, b'0');
INSERT INTO `package` VALUES (5, 1, 'Quarter area package 1', NULL, '80 tiffany chairs\r\n8 tables', '<p>All areas include the use of air conditioner, built-in sound system, ample parking space, clean toilet, LCD projector, and electricity for photo booth and maximum of 2 food carts.</p>', 15000, 'day', 500, 'excess hour', 1, '2019-06-20 14:19:25', NULL, NULL, b'0');
INSERT INTO `package` VALUES (6, 1, 'Quarter area package 2', NULL, '80 monoblock chairs\r\n8 tables', '<p>All areas include the use of air conditioner, built-in sound system, ample parking space, clean toilet, LCD projector, and electricity for photo booth and maximum of 2 food carts.</p>', 10000, 'day', 500, 'excess hour', 1, '2019-06-20 14:19:25', NULL, NULL, b'0');

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `module_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `title` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `post_type_id` int(11) NOT NULL,
  `expiration` datetime(0) NULL DEFAULT NULL,
  `media_id` int(11) NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (1, 1, 'Official Web and Mobile App', '<p style=\"text-align: justify\">We have released the new official web and mobile applications of Minor Basilica of the National Shrine of Our Lady of Mount Carmel, located at 90 4th Street, New Manila, Quezon City, Philippines.</p><p>\r\n</p><p style=\"text-align: justify\">Our vision for the new system will help the church improve its security, sustainability, and efficiency.</p><p>\r\n</p><p style=\"text-align: justify\">We have seen massive loopholes in the old system, that is undoubtedly been exploited by countless people.</p><p>\r\n</p><p style=\"text-align: justify\">We have automated the old system to remove the presence of human resources as middlemen in every transaction, such as donations and services. In result, it ceases theft and temptations from employees and other people. Despite the innumerable security measures that we have installed, the system can also identify thieves and unscrupulous transactions, should there be any.</p><p>\r\n</p><p style=\"text-align: justify\">The Pope demands the church to loosen up from asking donations from people. We have designed a plan called the Progressive Leap Strategy that requires zero donations.</p><p>\r\n</p><p style=\"text-align: justify\">To achieve a self-sustaining technology, we have monetized the platform to build and expand the system. We have placed a number of ad placements in the applications, aiming to produce a platform without asking for any donations. Eventually, the system will lessen the monetary help needed by the church.</p><p>\r\n</p><p style=\"text-align: justify\">This approach will aggressively expand the system throughout Mount Carmel Churches in the Philippines, in parallel with the improvement of the system by adding more features and upgrading the overall performance of the application.</p><p>\r\n</p><p style=\"text-align: justify\">The Catholic Church ought to focus on the next generation of Christians, the survival of Catholicism is highly dependent on the new generation than of the previous. Adapting to the information age is a great way of reaching out to the young ones, being available to anyone, anytime and anywhere.</p><p>\r\n</p><p style=\"text-align: justify\">This platform will serve as a tool to secure transactions, promote efficiency and preserve Christianity.</p>', 57, NULL, 14, 1, '2019-06-18 14:49:12', 1, '2019-08-08 22:54:33', b'0');
INSERT INTO `posts` VALUES (2, 1, 'Solemn Declaration of The National Shrine of Our Lady of Mt. Carmel as Minor Basilica', '<p style=\"text-align: justify\">Solemn Declaration of The National Shrine of Our Lady of Mt. Carmel as Minor Basilica. Let us be at the service of others and bring Christ to them. So that the presence of a Basilica is a strong confirmation that we are never alone. God is with us!</p>', 57, NULL, 24, 1, '2019-06-19 17:38:33', 1, '2019-08-08 22:54:26', b'0');
INSERT INTO `posts` VALUES (3, 1, 'Sample Ads - Coca-Cola Awarded for Advertising Innovations', '<p style=\"text-align: justify\">When Coca-Cola was named \"Marketer of the Year\" by AdAge in 2011, the flagship brand was 125 years old. But even today, the company is not too old to learn and does not rest on its laurels. Coke\'s marketing strategies have produced some volatility over the long-haul, but part of that is due to the willingness of The Coca-Cola Company to innovate. Apparently, the marketing overhaul has worked.</p><p>\r\n</p><p style=\"text-align: justify\">According to Natalie Zmuda of AdAge, Coca-Cola\'s marketing focus changed in 2007 when Mr. Tripodi came on board from Allstate. AdAge described the following marketing challenges:</p><p>\r\n</p><p style=\"text-align: justify\">Coca-Cola was too dependent on its flagship drink - Coke® Coca-Cola\'s advertising and use of advertising agencies was inconsistent Coca-Cola was seen as a \"sluggish, hidebound marketer.\" Mr. Tripodi told Zamuda he believes that the culture at Coca-Cola has a lot to do with its success. The team is said to share both the successes and the learnings from failures, which is a must given the size and scale of The Coca-Cola Company. Mr. Tripodi said, \"We\'ve got a team of people around the world that is less concerned with getting credit and more concerned with getting behind a great idea.\" The Coca-Cola Company could be classified as a learning organization as it has demonstrated adaptability and creativity over many decades.</p>', 62, NULL, 48, 1, '2019-06-20 17:52:40', 1, '2019-09-25 12:09:55', b'0');
INSERT INTO `posts` VALUES (4, 1, 'Apostleship of Prayer', '<p>Apostleship of Prayer</p>', 0, NULL, 53, 1, '2019-09-04 20:01:20', 1, '2019-09-04 20:44:17', b'1');
INSERT INTO `posts` VALUES (5, 1, 'We Find Ways', '<p>We Find Ways</p>', 0, NULL, 52, 1, '2019-09-04 20:04:45', 1, '2019-09-04 20:44:13', b'1');

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project`  (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `title` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `post_type_id` int(11) NOT NULL,
  `expiration` datetime(0) NULL DEFAULT NULL,
  `media_id` int(11) NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `region_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `province_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `country_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES (2, 'Agusan Del Norte', NULL, '16', '1602', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (3, 'Agusan Del Sur', NULL, '16', '1603', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (4, 'Aklan', NULL, '06', '0604', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (5, 'Albay', NULL, '05', '0505', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (6, 'Antique', NULL, '06', '0606', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (7, 'Apayao', NULL, '14', '1481', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (8, 'Aurora', NULL, '03', '0377', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (9, 'Basilan', NULL, '15', '1507', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (10, 'Bataan', NULL, '03', '0308', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (11, 'Batanes', NULL, '02', '0209', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (12, 'Batangas', NULL, '04', '0410', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (13, 'Benguet', NULL, '14', '1411', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (14, 'Biliran', NULL, '08', '0878', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (15, 'Bohol', NULL, '07', '0712', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (16, 'Bukidnon', NULL, '10', '1013', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (17, 'Bulacan', NULL, '03', '0314', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (18, 'Cagayan', NULL, '02', '0215', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (19, 'Camarines Norte', NULL, '05', '0516', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (20, 'Camarines Sur', NULL, '05', '0517', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (21, 'Camiguin', NULL, '10', '1018', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (22, 'Capiz', NULL, '06', '0619', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (23, 'Catanduanes', NULL, '05', '0520', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (24, 'Cavite', NULL, '04', '0421', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (25, 'Cebu', NULL, '07', '0722', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (26, 'Isabela', NULL, '09', '0997', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (27, 'Metro Manila', NULL, '13', '1339', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (28, 'Compostela Valley', NULL, '11', '1182', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (29, 'Cotabato (North Cotabato)', NULL, '12', '1247', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (30, 'Cotabato', NULL, '12', '1298', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (31, 'Davao Del Norte', NULL, '11', '1123', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (32, 'Davao Del Sur', NULL, '11', '1124', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (33, 'Davao Occidental', NULL, '11', '1186', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (34, 'Davao Oriental', NULL, '11', '1125', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (35, 'Dinagat Islands', NULL, '16', '1685', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (36, 'Eastern Samar', NULL, '08', '0826', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (37, 'Guimaras', NULL, '06', '0679', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (38, 'Ifugao', NULL, '14', '1427', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (39, 'Ilocos Norte', NULL, '01', '0128', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (40, 'Ilocos Sur', NULL, '01', '0129', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (41, 'Iloilo', NULL, '06', '0630', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (42, 'Isabela', NULL, '02', '0231', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (43, 'Kalinga', NULL, '14', '1432', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (44, 'La Union', NULL, '01', '0133', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (45, 'Laguna', NULL, '04', '0434', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (46, 'Lanao Del Norte', NULL, '10', '1035', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (47, 'Lanao Del Sur', NULL, '15', '1536', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (48, 'Leyte', NULL, '08', '0837', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (49, 'Maguindanao', NULL, '15', '1538', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (50, 'Marinduque', NULL, '17', '1740', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (51, 'Masbate', NULL, '05', '0541', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (52, 'Misamis Occidental', NULL, '10', '1042', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (53, 'Misamis Oriental', NULL, '10', '1043', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (54, 'Mountain Province', NULL, '14', '1444', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (55, 'NCR, First District', NULL, '13', '1339', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (56, 'NCR, Fourth District', NULL, '13', '1376', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (57, 'NCR, Second District', NULL, '13', '1374', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (58, 'NCR, Third District', NULL, '13', '1375', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (59, 'Negros Occidental', NULL, '06', '0645', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (60, 'Negros Oriental', NULL, '07', '0746', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (61, 'Northern Samar', NULL, '08', '0848', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (62, 'Nueva Ecija', NULL, '03', '0349', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (63, 'Nueva Vizcaya', NULL, '02', '0250', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (64, 'Occidental Mindoro', NULL, '17', '1751', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (65, 'Oriental Mindoro', NULL, '17', '1752', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (66, 'Palawan', NULL, '17', '1753', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (67, 'Pampanga', NULL, '03', '0354', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (68, 'Pangasinan', NULL, '01', '0155', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (69, 'Quezon', NULL, '04', '0456', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (70, 'Quirino', NULL, '02', '0257', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (71, 'Rizal', NULL, '04', '0458', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (72, 'Romblon', NULL, '17', '1759', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (73, 'Samar (Western Samar)', NULL, '08', '0860', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (74, 'Sarangani', NULL, '12', '1280', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (75, 'Siquijor', NULL, '07', '0761', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (76, 'Sorsogon', NULL, '05', '0562', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (77, 'South Cotabato', NULL, '12', '1263', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (78, 'Southern Leyte', NULL, '08', '0864', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (79, 'Sultan Kudarat', NULL, '12', '1265', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (80, 'Sulu', NULL, '15', '1566', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (81, 'Surigao Del Norte', NULL, '16', '1667', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (82, 'Surigao Del Sur', NULL, '16', '1668', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (83, 'Tarlac', NULL, '03', '0369', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (84, 'Tawi-Tawi', NULL, '15', '1570', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (85, 'Zambales', NULL, '03', '0371', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (86, 'Zamboanga Del Norte', NULL, '09', '0972', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (87, 'Zamboanga Del Sur', NULL, '09', '0973', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (88, 'Zamboanga Sibugay', NULL, '09', '0983', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');

-- ----------------------------
-- Table structure for region
-- ----------------------------
DROP TABLE IF EXISTS `region`;
CREATE TABLE `region`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `region_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `country_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of region
-- ----------------------------
INSERT INTO `region` VALUES (1, 'REGION I (ILOCOS REGION)', NULL, '01', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');
INSERT INTO `region` VALUES (2, 'REGION II (CAGAYAN VALLEY)', NULL, '02', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');
INSERT INTO `region` VALUES (3, 'REGION III (CENTRAL LUZON)', NULL, '03', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');
INSERT INTO `region` VALUES (4, 'REGION IV-A (CALABARZON)', NULL, '04', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');
INSERT INTO `region` VALUES (5, 'REGION IV-B (MIMAROPA)', NULL, '17', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');
INSERT INTO `region` VALUES (6, 'REGION V (BICOL REGION)', NULL, '05', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');
INSERT INTO `region` VALUES (7, 'REGION VI (WESTERN VISAYAS)', NULL, '06', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');
INSERT INTO `region` VALUES (8, 'REGION VII (CENTRAL VISAYAS)', NULL, '07', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');
INSERT INTO `region` VALUES (9, 'REGION VIII (EASTERN VISAYAS)', NULL, '08', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');
INSERT INTO `region` VALUES (10, 'REGION IX (ZAMBOANGA PENINSULA)', NULL, '09', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');
INSERT INTO `region` VALUES (11, 'REGION X (NORTHERN MINDANAO)', NULL, '10', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');
INSERT INTO `region` VALUES (12, 'REGION XI (DAVAO REGION)', NULL, '11', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');
INSERT INTO `region` VALUES (13, 'REGION XII (SOCCSKSARGEN)', NULL, '12', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');
INSERT INTO `region` VALUES (14, 'NATIONAL CAPITAL REGION (NCR)', NULL, '13', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');
INSERT INTO `region` VALUES (15, 'CORDILLERA ADMINISTRATIVE REGION (CAR)', NULL, '14', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');
INSERT INTO `region` VALUES (16, 'AUTONOMOUS REGION IN MUSLIM MINDANAO (ARMM)', NULL, '15', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');
INSERT INTO `region` VALUES (17, 'REGION XIII (Caraga)', NULL, '16', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');

-- ----------------------------
-- Table structure for requirements
-- ----------------------------
DROP TABLE IF EXISTS `requirements`;
CREATE TABLE `requirements`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `sub_module_id` int(11) NOT NULL,
  `sub_module_info_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `media_id` int(11) NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 1, 'Admin', NULL, 1, '2019-06-27 16:34:00', NULL, NULL, b'0');
INSERT INTO `roles` VALUES (2, 1, 'User', NULL, 1, '2019-06-27 16:35:13', NULL, NULL, b'0');
INSERT INTO `roles` VALUES (3, 1, 'Priest', NULL, 1, '2019-06-27 16:35:13', NULL, NULL, b'0');

-- ----------------------------
-- Table structure for schedules
-- ----------------------------
DROP TABLE IF EXISTS `schedules`;
CREATE TABLE `schedules`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time_from` time(0) NULL DEFAULT NULL,
  `time_to` time(0) NULL DEFAULT NULL,
  `day` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_id` int(11) NULL DEFAULT NULL,
  `language_id` int(11) NULL DEFAULT NULL,
  `others` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of schedules
-- ----------------------------
INSERT INTO `schedules` VALUES (1, 1, 'Holy Mass', 'Holy Mass', '06:00:00', '07:00:00', 'Sundays', 99, 37, NULL, 1, '2019-06-19 16:09:20', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (2, 1, 'Holy Mass', 'Holy Mass', '07:15:00', '08:15:00', 'Sundays', 99, 38, NULL, 1, '2019-06-19 16:11:17', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (3, 1, 'Holy Mass', 'Holy Mass', '08:30:00', '09:30:00', 'Sundays', 99, 38, NULL, 1, '2019-06-19 16:12:05', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (4, 1, 'Holy Mass', 'Holy Mass', '09:45:00', '10:45:00', 'Sundays', 99, 38, NULL, 1, '2019-06-19 16:12:38', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (5, 1, 'Holy Mass', 'Holy Mass', '11:00:00', '12:00:00', 'Sundays', 99, 38, NULL, 1, '2019-06-19 16:13:41', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (6, 1, 'Holy Mass', 'Holy Mass', '12:15:00', '13:15:00', 'Sundays', 99, 38, NULL, 1, '2019-06-19 16:14:26', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (7, 1, 'Holy Mass', 'Holy Mass', '15:45:00', '16:45:00', 'Sundays', 99, 37, NULL, 1, '2019-06-19 16:15:16', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (8, 1, 'Holy Mass', 'Holy Mass', '17:00:00', '18:00:00', 'Sundays', 99, 38, NULL, 1, '2019-06-19 16:16:12', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (9, 1, 'Holy Mass', 'Holy Mass', '18:15:00', '19:15:00', 'Sundays', 99, 38, NULL, 1, '2019-06-19 16:17:01', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (10, 1, 'Holy Mass', 'Holy Mass', '19:30:00', '20:30:00', 'Sundays', 99, 38, NULL, 1, '2019-06-19 16:17:44', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (11, 1, 'Holy Mass', 'Holy Mass', '06:00:00', '07:00:00', 'Weekdays', 99, 38, NULL, 1, '2019-06-19 16:18:36', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (12, 1, 'Holy Mass', 'Holy Mass', '07:00:00', '08:00:00', 'Weekdays', 99, 38, NULL, 1, '2019-06-19 16:19:14', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (13, 1, 'Holy Mass', 'Holy Mass', '12:15:00', '13:15:00', 'Weekdays', 99, 37, NULL, 1, '2019-06-19 16:19:56', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (14, 1, 'Holy Mass', 'Holy Mass', '18:00:00', '19:00:00', 'Weekdays', 99, 38, NULL, 1, '2019-06-19 16:20:45', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (15, 1, 'Confession', 'Confession', '14:00:00', '16:00:00', 'Sundays', 100, NULL, NULL, 1, '2019-06-19 16:21:53', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (16, 1, 'Confession', 'Confession', '06:30:00', '07:00:00', 'Saturdays', 100, NULL, NULL, 1, '2019-06-19 16:22:56', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (17, 1, 'Confession', 'Confession', '17:00:00', '17:00:00', 'Saturdays', 100, NULL, NULL, 1, '2019-06-19 16:23:56', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (18, 1, 'Confession', 'Confession', '06:30:00', '07:30:00', 'Weekday', 100, NULL, NULL, 1, '2019-06-19 16:26:03', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (19, 1, 'Confession', 'Confession', '18:30:00', '19:30:00', 'Weekday', 100, NULL, NULL, 1, '2019-06-19 16:26:45', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (20, 1, 'Blessings', 'Blessings', '09:00:00', '11:00:00', 'Everyday', 101, NULL, NULL, 1, '2019-06-19 16:27:41', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (21, 1, 'Blessings', 'Blessings', '15:00:00', '16:00:00', 'Everyday', 101, NULL, NULL, 1, '2019-06-19 16:28:21', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (22, 1, 'Live Mass', 'Live Mass', '06:00:00', '07:00:00', 'Sundays', 102, 37, NULL, 1, '2019-06-19 16:29:28', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (23, 1, 'Live Mass', 'Live Mass', '07:00:00', '08:00:00', 'Sundays', 102, 38, NULL, 1, '2019-06-19 16:30:10', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (24, 1, 'Live Mass', 'Live Mass', '18:00:00', '19:00:00', 'Sundays', 102, 38, NULL, 1, '2019-06-19 16:30:44', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (25, 1, 'Live Mass', 'Live Mass', '19:00:00', '20:00:00', 'Sundays', 102, 38, NULL, 1, '2019-06-19 16:31:24', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (26, 1, 'Live Mass', 'Live Mass', '06:00:00', '07:00:00', 'Saturdays', 102, 38, NULL, 1, '2019-06-19 16:29:28', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (27, 1, 'Live Mass', 'Live Mass', '07:00:00', '08:00:00', 'Saturdays', 102, 38, NULL, 1, '2019-06-19 16:29:28', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (28, 1, 'Live Mass', 'Live Mass', '18:00:00', '19:00:00', 'Saturdays', 102, 38, NULL, 1, '2019-06-19 16:30:44', 1, '2019-09-06 18:22:10', b'0');
INSERT INTO `schedules` VALUES (29, 1, 'Live Mass', 'Live Mass', '19:00:00', '20:00:00', 'Saturdays', 102, 38, NULL, 1, '2019-06-19 16:31:24', 1, '2019-09-06 18:22:06', b'0');

-- ----------------------------
-- Table structure for service_references
-- ----------------------------
DROP TABLE IF EXISTS `service_references`;
CREATE TABLE `service_references`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `sub_module_id` int(11) NULL DEFAULT NULL,
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'table name',
  `attribute` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'field name',
  `text_field_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'app text field type',
  `rank` int(11) NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'data value',
  `hint` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'field hint',
  `label_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'field label text',
  `validator_is_required` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'validator if required',
  `validator_is_numeric` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'validator if numeric',
  `validator_min_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'validator if min value',
  `validator_max_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'validator if max value',
  `error_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'error text',
  `selections` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'for dropdown fields',
  `max_lines` int(11) NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_active` bit(1) NULL DEFAULT b'0',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 284 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of service_references
-- ----------------------------
INSERT INTO `service_references` VALUES (1, 1, 3, 4, 1, '', 'name', 'plain_text', 1, NULL, NULL, 'Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (2, 1, 3, 4, 1, '', 'address_1', 'plain_text', 2, NULL, NULL, 'Home Address ', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (3, 1, 3, 4, 1, '', 'address_2', 'plain_text', 3, NULL, NULL, 'Home Address 2', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (4, 1, 3, 4, 1, '', 'barangay', 'selection', 4, NULL, NULL, 'Barangay', NULL, NULL, NULL, NULL, NULL, 'barangay', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (5, 1, 3, 4, 1, '', 'city', 'selection', 5, NULL, NULL, 'City', NULL, NULL, NULL, NULL, NULL, 'city', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (6, 1, 3, 4, 1, '', 'province', 'selection', 6, NULL, NULL, 'Province', NULL, NULL, NULL, NULL, NULL, 'province', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (7, 1, 3, 4, 1, '', 'country', 'selection', 7, NULL, NULL, 'Country', NULL, NULL, NULL, NULL, NULL, 'country', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (8, 1, 3, 4, 1, '', 'dt_birth', 'date', 8, NULL, NULL, 'Birthday', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (9, 1, 3, 4, 1, '', 'landline', 'plain_text', 9, NULL, NULL, 'Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (10, 1, 3, 4, 1, '', 'mobile', 'plain_text', 10, NULL, NULL, 'Contact Number - Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (11, 1, 3, 4, 1, '', 'email', 'plain_text', 11, NULL, NULL, 'Email Address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (12, 1, 3, 5, 2, '', 'prayer', 'multiline', 1, NULL, NULL, 'Write here...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (13, 1, 3, 5, 3, '', 'name', 'multiline', 1, NULL, 'Write names here...', 'Prayer Intension for', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (14, 1, 3, 5, 3, '', 'purpose_mass', 'selection', 2, NULL, '', 'Purpose', NULL, NULL, NULL, NULL, NULL, 'purpose_mass', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (15, 1, 3, 5, 3, '', 'dt_offered', 'date', 3, NULL, NULL, 'Date to be offered', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (16, 1, 3, 5, 3, '', 'time_offered', 'time', 4, NULL, NULL, 'Time of Mass', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (17, 1, 3, 5, 4, '', 'dt_of_service', 'date', 1, NULL, NULL, 'Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (18, 1, 3, 5, 4, '', 'time_of_service', 'time', 2, NULL, NULL, 'Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (19, 1, 3, 5, 4, '', 'address_venue', 'plain_text', 3, NULL, '', 'Venue Address', NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (20, 1, 3, 5, 4, '', 'occasion', 'selection', 4, NULL, '', 'Occasion', NULL, NULL, NULL, NULL, NULL, 'get api of occasion', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (21, 1, 3, 5, 4, '', 'name_contact_person', 'plain_text', 5, NULL, NULL, 'Contact Person', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (22, 1, 3, 5, 4, '', 'landline_contact_person', 'plain_text', 6, NULL, NULL, 'Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (23, 1, 3, 5, 4, '', 'mobile_contact_person', 'plain_text', 7, NULL, NULL, 'Contact Number - Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (24, 1, 3, 5, 5, '', 'name', 'plain_text', 1, NULL, NULL, 'Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (25, 1, 3, 5, 5, '', 'certificate', 'selection', 2, NULL, '', 'Certificate', NULL, NULL, NULL, NULL, NULL, 'certificate', NULL, 1, '2019-07-25 17:02:08', NULL, '2019-08-16 11:50:01', b'0', b'0');
INSERT INTO `service_references` VALUES (26, 1, 3, 5, 5, '', 'purpose_certificate', 'selection', 3, NULL, '', 'Purpose', NULL, NULL, NULL, NULL, NULL, 'purpose_certificate', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (27, 1, 3, 5, 5, '', 'name_contact_person', 'plain_text', 4, NULL, NULL, 'Contact Person', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (28, 1, 3, 5, 5, '', 'landline_contact_person', 'plain_text', 5, NULL, NULL, 'Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (29, 1, 3, 5, 5, '', 'mobile_contact_person', 'plain_text', 6, NULL, NULL, 'Contact Number - Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (30, 1, 3, 6, 6, '', 'name', 'plain_text', 1, NULL, NULL, 'Name of child', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (31, 1, 3, 6, 6, '', 'dt_birth', 'date', 2, NULL, NULL, 'Child\'s Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (32, 1, 3, 6, 6, '', 'birth_place', 'plain_text', 3, NULL, NULL, 'Child\'s Place of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (33, 1, 3, 6, 6, '', 'name_father', 'plain_text', 4, NULL, NULL, 'Name of Child\'s Father', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (34, 1, 3, 6, 6, '', 'religion_father', 'selection', 5, NULL, NULL, 'Religion of Child\'s Father', NULL, NULL, NULL, NULL, NULL, 'religion', NULL, 1, '2019-07-25 17:02:08', NULL, '2019-08-16 11:52:42', b'0', b'0');
INSERT INTO `service_references` VALUES (35, 1, 3, 6, 6, '', 'dt_birth_father', 'date', 6, NULL, NULL, 'Father\'s Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (36, 1, 3, 6, 6, '', 'birth_place_father', 'plain_text', 7, NULL, NULL, 'Father\'s Place of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (37, 1, 3, 6, 6, '', 'name_mother', 'plain_text', 8, NULL, NULL, 'Name of Child\'s Mother', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (38, 1, 3, 6, 6, '', 'religion_mother', 'selection', 9, NULL, NULL, 'Religion of Child\'s Mother', NULL, NULL, NULL, NULL, NULL, 'religion', NULL, 1, '2019-07-25 17:02:08', NULL, '2019-08-16 11:53:12', b'0', b'0');
INSERT INTO `service_references` VALUES (39, 1, 3, 6, 6, '', 'dt_birth_mother', 'date', 10, NULL, NULL, 'Mother\'s Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (40, 1, 3, 6, 6, '', 'birth_place_mother', 'plain_text', 11, NULL, NULL, 'Mother\'s Place of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (41, 1, 3, 6, 6, '', 'address_1', 'plain_text', 12, NULL, NULL, 'Present Address of Child', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (42, 1, 3, 6, 6, '', 'address_2', 'plain_text', 13, NULL, NULL, 'Home Address 2', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (43, 1, 3, 6, 6, '', 'barangay', 'plain_text', 14, NULL, NULL, 'Barangay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (44, 1, 3, 6, 6, '', 'city', 'plain_text', 15, NULL, NULL, 'City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (45, 1, 3, 6, 6, '', 'province', 'plain_text', 16, NULL, NULL, 'Province', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (46, 1, 3, 6, 6, '', 'country', 'plain_text', 17, NULL, NULL, 'Country', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (47, 1, 3, 6, 6, '', 'marriage', 'selection', 18, NULL, 'Choose a type', 'Marriage of Parents', NULL, NULL, NULL, NULL, NULL, 'marriage_type', NULL, 1, '2019-07-25 17:02:08', NULL, '2019-08-16 12:07:40', b'0', b'0');
INSERT INTO `service_references` VALUES (48, 1, 3, 6, 6, '', 'place_of_marriage', 'plain_text', 19, NULL, NULL, 'Place of Marriage', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (49, 1, 3, 6, 6, '', 'name_contact_person', 'plain_text', 20, NULL, NULL, 'Contact Person', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (50, 1, 3, 6, 6, '', 'landline_contact_person', 'plain_text', 21, NULL, NULL, 'Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (51, 1, 3, 6, 6, '', 'mobile_contact_person', 'plain_text', 22, NULL, NULL, 'Contact Number - Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (52, 1, 3, 6, 7, '', 'name', 'plain_text', 1, NULL, NULL, 'Name of child', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (53, 1, 3, 6, 7, '', 'dt_birth', 'date', 2, NULL, NULL, 'Child\'s Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (54, 1, 3, 6, 7, '', 'birth_place', 'plain_text', 3, NULL, NULL, 'Child\'s Place of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (55, 1, 3, 6, 7, '', 'name_father', 'plain_text', 4, NULL, NULL, 'Name of Child\'s Father', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (56, 1, 3, 6, 7, '', 'religion_father', 'selection', 5, NULL, NULL, 'Religion of Child\'s Father', NULL, NULL, NULL, NULL, NULL, 'religion', NULL, 1, '2019-07-25 17:02:08', NULL, '2019-08-16 12:12:22', b'0', b'0');
INSERT INTO `service_references` VALUES (57, 1, 3, 6, 7, '', 'dt_birth_father', 'date', 6, NULL, NULL, 'Father\'s Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (58, 1, 3, 6, 7, '', 'birth_place_father', 'plain_text', 7, NULL, NULL, 'Father\'s Place of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (59, 1, 3, 6, 7, '', 'name_mother', 'plain_text', 8, NULL, NULL, 'Name of Child\'s Mother', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (60, 1, 3, 6, 7, '', 'religion_mother', 'selection', 9, NULL, NULL, 'Religion of Child\'s Mother', NULL, NULL, NULL, NULL, NULL, 'religion', NULL, 1, '2019-07-25 17:02:08', NULL, '2019-08-16 12:12:48', b'0', b'0');
INSERT INTO `service_references` VALUES (61, 1, 3, 6, 7, '', 'dt_birth_mother', 'date', 10, NULL, NULL, 'Mother\'s Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (62, 1, 3, 6, 7, '', 'birth_place_mother', 'plain_text', 11, NULL, NULL, 'Mother\'s Place of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (63, 1, 3, 6, 7, '', 'address_1', 'plain_text', 12, NULL, NULL, 'Present Address of Child', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (64, 1, 3, 6, 7, '', 'address_2', 'plain_text', 13, NULL, NULL, 'Home Address 2', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (65, 1, 3, 6, 7, '', 'barangay', 'plain_text', 14, NULL, NULL, 'Barangay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (66, 1, 3, 6, 7, '', 'city', 'plain_text', 15, NULL, NULL, 'City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (67, 1, 3, 6, 7, '', 'province', 'plain_text', 16, NULL, NULL, 'Province', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (68, 1, 3, 6, 7, '', 'country', 'plain_text', 17, NULL, NULL, 'Country', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (69, 1, 3, 6, 7, '', 'marriage', 'selection', 18, NULL, 'Choose a type', 'Marriage of Parents', NULL, NULL, NULL, NULL, NULL, 'marriage_type', NULL, 1, '2019-07-25 17:02:08', 1, '2019-08-16 12:13:34', b'0', b'0');
INSERT INTO `service_references` VALUES (70, 1, 3, 6, 7, '', 'place_of_marriage', 'plain_text', 19, NULL, NULL, 'Place of Marriage', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (71, 1, 3, 6, 7, '', 'name_contact_person', 'plain_text', 20, NULL, NULL, 'Contact Person', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (72, 1, 3, 6, 7, '', 'landline_contact_person', 'plain_text', 21, NULL, NULL, 'Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (73, 1, 3, 6, 7, '', 'mobile_contact_person', 'plain_text', 22, NULL, NULL, 'Contact Number - Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (74, 1, 3, 6, 8, '', 'name', 'plain_text', 1, NULL, NULL, 'Name of child', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (75, 1, 3, 6, 8, '', 'dt_birth', 'date', 2, NULL, NULL, 'Child\'s Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (76, 1, 3, 6, 8, '', 'birth_place', 'plain_text', 3, NULL, NULL, 'Child\'s Place of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (77, 1, 3, 6, 8, '', 'name_father', 'plain_text', 4, NULL, NULL, 'Name of Child\'s Father', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (78, 1, 3, 6, 8, '', 'religion_father', 'selection', 5, NULL, NULL, 'Religion of Child\'s Father', NULL, NULL, NULL, NULL, NULL, 'religion', NULL, 1, '2019-07-25 17:02:08', NULL, '2019-08-16 13:35:47', b'0', b'0');
INSERT INTO `service_references` VALUES (79, 1, 3, 6, 8, '', 'dt_birth_father', 'date', 6, NULL, NULL, 'Father\'s Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (80, 1, 3, 6, 8, '', 'birth_place_father', 'plain_text', 7, NULL, NULL, 'Father\'s Place of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (81, 1, 3, 6, 8, '', 'name_mother', 'plain_text', 8, NULL, NULL, 'Name of Child\'s Mother', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (82, 1, 3, 6, 8, '', 'religion_mother', 'selection', 9, NULL, NULL, 'Religion of Child\'s Mother', NULL, NULL, NULL, NULL, NULL, 'religion', NULL, 1, '2019-07-25 17:02:08', NULL, '2019-08-16 13:36:35', b'0', b'0');
INSERT INTO `service_references` VALUES (83, 1, 3, 6, 8, '', 'dt_birth_mother', 'date', 10, NULL, NULL, 'Mother\'s Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (84, 1, 3, 6, 8, '', 'birth_place_mother', 'plain_text', 11, NULL, NULL, 'Mother\'s Place of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (85, 1, 3, 6, 8, '', 'address_1', 'plain_text', 12, NULL, NULL, 'Present Address of Child', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (86, 1, 3, 6, 8, '', 'address_2', 'plain_text', 13, NULL, NULL, 'Home Address 2', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (87, 1, 3, 6, 8, '', 'barangay', 'plain_text', 14, NULL, NULL, 'Barangay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (88, 1, 3, 6, 8, '', 'city', 'plain_text', 15, NULL, NULL, 'City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (89, 1, 3, 6, 8, '', 'province', 'plain_text', 16, NULL, NULL, 'Province', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (90, 1, 3, 6, 8, '', 'country', 'plain_text', 17, NULL, NULL, 'Country', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (91, 1, 3, 6, 8, '', 'marriage', 'selection', 18, NULL, 'Choose a type', 'Marriage of Parents', NULL, NULL, NULL, NULL, NULL, 'marriage_type', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (92, 1, 3, 6, 8, '', 'place_of_marriage', 'plain_text', 19, NULL, NULL, 'Place of Marriage', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (93, 1, 3, 6, 8, '', 'name_contact_person', 'plain_text', 20, NULL, NULL, 'Contact Person', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (94, 1, 3, 6, 8, '', 'landline_contact_person', 'plain_text', 21, NULL, NULL, 'Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (95, 1, 3, 6, 8, '', 'mobile_contact_person', 'plain_text', 22, NULL, NULL, 'Contact Number - Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (96, 1, 3, 7, 9, '', 'name', 'plain_text', 1, NULL, NULL, 'Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (97, 1, 3, 7, 9, '', 'dt_birth', 'date', 2, NULL, NULL, 'Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (98, 1, 3, 7, 9, '', 'address_1', 'plain_text', 3, NULL, NULL, 'Home Address', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (99, 1, 3, 7, 9, '', 'address_2', 'plain_text', 4, NULL, NULL, 'Home Address 2', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (100, 1, 3, 7, 9, '', 'barangay', 'plain_text', 5, NULL, NULL, 'Barangay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (101, 1, 3, 7, 9, '', 'city', 'plain_text', 6, NULL, NULL, 'City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (102, 1, 3, 7, 9, '', 'province', 'plain_text', 7, NULL, NULL, 'Province', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (103, 1, 3, 7, 9, '', 'country', 'plain_text', 8, NULL, NULL, 'Country', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (104, 1, 3, 7, 9, '', 'dt_basptism', 'date', 9, NULL, NULL, 'Date of Baptism', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (105, 1, 3, 7, 9, '', 'church_of_baptism', 'plain_text', 10, NULL, NULL, 'Church of Baptism', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (106, 1, 3, 7, 9, '', 'name_father', 'plain_text', 11, NULL, NULL, 'Name of Father', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (107, 1, 3, 7, 9, '', 'name_mother', 'plain_text', 12, NULL, NULL, 'Name of Mother', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (108, 1, 3, 7, 9, '', 'name_contact_person', 'plain_text', 13, NULL, NULL, 'Contact Person', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (109, 1, 3, 7, 9, '', 'landline_contact_person', 'plain_text', 14, NULL, NULL, 'Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (110, 1, 3, 7, 9, '', 'mobile_contact_person', 'plain_text', 15, NULL, NULL, 'Contact Number - Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (111, 1, 3, 7, 10, '', 'name', 'plain_text', 1, NULL, NULL, 'Name of Communicant', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (112, 1, 3, 7, 10, '', 'dt_birth', 'date', 2, NULL, NULL, 'Communicant\'s Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (113, 1, 3, 7, 10, '', 'name_spouse', 'plain_text', 3, NULL, NULL, 'Spouse of Communicant', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (114, 1, 3, 7, 10, '', 'dt_birth_spouse', 'date', 4, NULL, NULL, 'Spouse Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (115, 1, 3, 7, 10, '', 'address_1', 'plain_text', 5, NULL, NULL, 'Home Address of Communicant', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (116, 1, 3, 7, 10, '', 'address_2', 'plain_text', 6, NULL, NULL, 'Home Address 2', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (117, 1, 3, 7, 10, '', 'barangay', 'plain_text', 7, NULL, NULL, 'Barangay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (118, 1, 3, 7, 10, '', 'city', 'plain_text', 8, NULL, NULL, 'City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (119, 1, 3, 7, 10, '', 'province', 'plain_text', 9, NULL, NULL, 'Province', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (120, 1, 3, 7, 10, '', 'country', 'plain_text', 10, NULL, NULL, 'Country', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (121, 1, 3, 7, 10, '', 'landline', 'plain_text', 11, NULL, NULL, 'Communicant Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (122, 1, 3, 7, 10, '', 'mobile', 'plain_text', 12, NULL, NULL, 'Communicant Contact Number - Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (123, 1, 3, 7, 10, '', 'dt_marriage', 'date', 13, NULL, NULL, 'Date of Church Marriage', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, '2019-08-16 13:43:49', b'0', b'0');
INSERT INTO `service_references` VALUES (124, 1, 3, 7, 10, '', 'dt_last_confession', 'date', 14, NULL, NULL, 'Date of Last Confession', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (125, 1, 3, 7, 10, '', 'time_preferred_visit', 'time', 15, NULL, NULL, 'Preferred Time of Visit', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, '2019-08-16 13:44:49', b'0', b'0');
INSERT INTO `service_references` VALUES (126, 1, 3, 7, 10, '', 'day_preferred_visit', 'day', 16, NULL, NULL, 'Preferred Day of Visit', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, '2019-08-16 13:45:24', b'0', b'0');
INSERT INTO `service_references` VALUES (127, 1, 3, 7, 10, '', 'name_contact_person', 'plain_text', 17, NULL, NULL, 'Contact Person', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (128, 1, 3, 7, 10, '', 'landline_contact_person', 'plain_text', 18, NULL, NULL, 'Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (129, 1, 3, 7, 10, '', 'mobile_contact_person', 'plain_text', 19, NULL, NULL, 'Contact Number - Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (130, 1, 3, 8, 11, '', 'name', 'plain_text', 1, NULL, NULL, 'Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (131, 1, 3, 8, 11, '', 'dt_birth', 'date', 2, NULL, NULL, 'Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (132, 1, 3, 8, 11, '', 'address_1', 'plain_text', 3, NULL, NULL, 'Home Address', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (133, 1, 3, 8, 11, '', 'address_2', 'plain_text', 4, NULL, NULL, 'Home Address 2', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (134, 1, 3, 8, 11, '', 'barangay', 'plain_text', 5, NULL, NULL, 'Barangay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (135, 1, 3, 8, 11, '', 'city', 'plain_text', 6, NULL, NULL, 'City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (136, 1, 3, 8, 11, '', 'province', 'plain_text', 7, NULL, NULL, 'Province', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (137, 1, 3, 8, 11, '', 'country', 'plain_text', 8, NULL, NULL, 'Country', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (138, 1, 3, 8, 11, '', 'dt_basptism', 'date', 9, NULL, NULL, 'Date of Baptism', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (139, 1, 3, 8, 11, '', 'church_of_baptism', 'plain_text', 10, NULL, NULL, 'Church of Baptism', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (140, 1, 3, 8, 11, '', 'name_father', 'plain_text', 11, NULL, NULL, 'Name of Father', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (141, 1, 3, 8, 11, '', 'name_mother', 'plain_text', 12, NULL, NULL, 'Name of Mother', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (142, 1, 3, 8, 11, '', 'name_contact_person', 'plain_text', 13, NULL, NULL, 'Contact Person', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (143, 1, 3, 8, 11, '', 'landline_contact_person', 'plain_text', 14, NULL, NULL, 'Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (144, 1, 3, 8, 11, '', 'mobile_contact_person', 'plain_text', 15, NULL, NULL, 'Contact Number - Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (145, 1, 3, 9, 12, '', 'are_civilly_married', 'yes_no', 1, NULL, NULL, 'Are both of you civil married?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (146, 1, 3, 9, 12, '', 'with_previous_marriage', 'yes_no', 2, NULL, NULL, 'Or with any previous marriage?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (147, 1, 3, 9, 12, '', 'is_anyone_an_ofw', 'yes_no', 3, NULL, NULL, 'Is anyone of you an OFW?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (148, 1, 3, 9, 12, '', 'living_abroad', 'yes_no', 4, NULL, NULL, 'Or living abroad for 3 years?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (149, 1, 3, 9, 12, '', 'is_widower', 'yes_no', 5, NULL, NULL, 'Is anyone of you a widower?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (150, 1, 3, 9, 12, '', 'name_groom', 'plain_text', 6, NULL, NULL, 'Name of Groom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (151, 1, 3, 9, 12, '', 'nickname_groom', 'plain_text', 7, NULL, NULL, 'Nickname of Groom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (152, 1, 3, 9, 12, '', 'dt_birth_groom', 'date', 8, NULL, NULL, 'Groom\'s Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (153, 1, 3, 9, 12, '', 'birth_place_groom', 'plain_text', 9, NULL, NULL, 'Groom\'s Birth of Place', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (154, 1, 3, 9, 12, '', 'religion_groom', 'selection', 10, NULL, '', 'Religion of Groom', NULL, NULL, NULL, NULL, NULL, 'get api of religion', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (155, 1, 3, 9, 12, '', 'occupation_groom', 'plain_text', 11, NULL, NULL, 'Occupation of Groom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (156, 1, 3, 9, 12, '', 'work_place_groom', 'plain_text', 12, NULL, NULL, 'Groom\'s Place of Work', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (157, 1, 3, 9, 12, '', 'nationality_groom', 'selection', 13, NULL, '', 'Nationality of Groom', NULL, NULL, NULL, NULL, NULL, 'get api of nationality', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (158, 1, 3, 9, 12, '', 'landline_groom', 'plain_text', 14, NULL, NULL, 'Groom\'s Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (159, 1, 3, 9, 12, '', 'mobile_groom', 'plain_text', 15, NULL, NULL, 'Groom\'s Contact Number - Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (160, 1, 3, 9, 12, '', 'email_groom', 'plain_text', 16, NULL, NULL, 'Email Address of Groom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (161, 1, 3, 9, 12, '', 'address_1_groom', 'plain_text', 17, NULL, NULL, 'Home Address of Groom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (162, 1, 3, 9, 12, '', 'address_2_groom', 'plain_text', 18, NULL, NULL, 'Home Address 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (163, 1, 3, 9, 12, '', 'barangay_groom', 'plain_text', 19, NULL, NULL, 'Barangay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (164, 1, 3, 9, 12, '', 'city_groom', 'plain_text', 20, NULL, NULL, 'City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (165, 1, 3, 9, 12, '', 'province_groom', 'plain_text', 21, NULL, NULL, 'Province', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (166, 1, 3, 9, 12, '', 'country_groom', 'plain_text', 22, NULL, NULL, 'Country', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (167, 1, 3, 9, 12, '', 'name_parish_groom', 'plain_text', 23, NULL, NULL, 'Name of Groom\'s Parish', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (168, 1, 3, 9, 12, '', 'address_parish_groom', 'plain_text', 24, NULL, NULL, 'Address of Groom\'s Parish', NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (169, 1, 3, 9, 12, '', 'address_provincial_groom', 'plain_text', 25, NULL, NULL, 'Provincial Address of Groom', NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (170, 1, 3, 9, 12, '', 'name_father_groom', 'plain_text', 26, NULL, NULL, 'Name of Groom\'s Father', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (171, 1, 3, 9, 12, '', 'nationality_father_groom', 'selection', 27, NULL, NULL, 'Nationality of Groom\'s Father', NULL, NULL, NULL, NULL, NULL, 'get from api nationality', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (172, 1, 3, 9, 12, '', 'name_mother_groom', 'plain_text', 28, NULL, NULL, 'Name of Groom\'s Mother', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (173, 1, 3, 9, 12, '', 'nationality_mother_groom', 'selection', 29, NULL, NULL, 'Nationality of Groom\'s Mother', NULL, NULL, NULL, NULL, NULL, 'get from api nationality', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (174, 1, 3, 9, 12, '', 'name_bride', 'plain_text', 30, NULL, NULL, 'Name of Bride', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (175, 1, 3, 9, 12, '', 'nickname_bride', 'plain_text', 31, NULL, NULL, 'Nickname of Bride', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (176, 1, 3, 9, 12, '', 'dt_birth_bride', 'date', 32, NULL, NULL, 'Bride\'s Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (177, 1, 3, 9, 12, '', 'birth_place_bride', 'plain_text', 33, NULL, NULL, 'Bride\'s Birth of Place', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (178, 1, 3, 9, 12, '', 'religion_bride', 'selection', 34, NULL, '', 'Religion of Bride', NULL, NULL, NULL, NULL, NULL, 'get api of religion', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (179, 1, 3, 9, 12, '', 'occupation_bride', 'plain_text', 35, NULL, NULL, 'Occupation of Bride', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (180, 1, 3, 9, 12, '', 'work_place_bride', 'plain_text', 36, NULL, NULL, 'Bride\'s Place of Work', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (181, 1, 3, 9, 12, '', 'nationality_bride', 'selection', 37, NULL, '', 'Nationality of Bride', NULL, NULL, NULL, NULL, NULL, 'get api of nationality', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (182, 1, 3, 9, 12, '', 'landline_bride', 'plain_text', 38, NULL, NULL, 'Bride\'s Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (183, 1, 3, 9, 12, '', 'mobile_bride', 'plain_text', 39, NULL, NULL, 'Bride\'s Contact Number - Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (184, 1, 3, 9, 12, '', 'email_bride', 'plain_text', 40, NULL, NULL, 'Email Address of Bride', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (185, 1, 3, 9, 12, '', 'address_1_bride', 'plain_text', 41, NULL, NULL, 'Home Address of Bride', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (186, 1, 3, 9, 12, '', 'address_2_bride', 'plain_text', 42, NULL, NULL, 'Home Address 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (187, 1, 3, 9, 12, '', 'barangay_bride', 'plain_text', 43, NULL, NULL, 'Barangay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (188, 1, 3, 9, 12, '', 'city_bride', 'plain_text', 44, NULL, NULL, 'City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (189, 1, 3, 9, 12, '', 'province_bride', 'plain_text', 45, NULL, NULL, 'Province', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (190, 1, 3, 9, 12, '', 'country_bride', 'plain_text', 46, NULL, NULL, 'Country', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (191, 1, 3, 9, 12, '', 'name_parish_bride', 'plain_text', 47, NULL, NULL, 'Name of Bride\'s Parish', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (192, 1, 3, 9, 12, '', 'address_parish_bride', 'plain_text', 48, NULL, NULL, 'Address of Bride\'s Parish', NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (193, 1, 3, 9, 12, '', 'address_provincial_bride', 'plain_text', 49, NULL, NULL, 'Provincial Address of Bride', NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (194, 1, 3, 9, 12, '', 'name_father_bride', 'plain_text', 50, NULL, NULL, 'Name of Bride\'s Father', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (195, 1, 3, 9, 12, '', 'nationality_father_bride', 'selection', 51, NULL, NULL, 'Nationality of Bride\'s Father', NULL, NULL, NULL, NULL, NULL, 'get from api nationality', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (196, 1, 3, 9, 12, '', 'name_mother_bride', 'plain_text', 52, NULL, NULL, 'Name of Bride\'s Mother', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (197, 1, 3, 9, 12, '', 'nationality_mother_bride', 'selection', 53, NULL, NULL, 'Nationality of Bride\'s Mother', NULL, NULL, NULL, NULL, NULL, 'get from api nationality', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (198, 1, 3, 9, 12, '', 'name_contact_person', 'plain_text', 54, NULL, NULL, 'Contact Person', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (199, 1, 3, 9, 12, '', 'landline_contact_person', 'plain_text', 55, NULL, NULL, 'Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (200, 1, 3, 9, 12, '', 'mobile_contact_person', 'plain_text', 56, NULL, NULL, 'mobile_contact_person', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (201, 1, 3, 10, 13, '', 'name', 'plain_text', 1, NULL, NULL, 'Name of Deceased', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (202, 1, 3, 10, 13, '', 'civil_status', 'selection', 2, NULL, 'Select status', 'Civil Status', NULL, NULL, NULL, NULL, NULL, 'get from api nationality', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (203, 1, 3, 10, 13, '', 'dt_birth', 'date', 3, NULL, NULL, 'Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (204, 1, 3, 10, 13, '', 'dt_death', 'date', 4, NULL, NULL, 'Date of Death', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (205, 1, 3, 10, 13, '', 'cause_of_death', 'plain_text', 5, NULL, NULL, 'Cause of Death', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (206, 1, 3, 10, 13, '', 'place_of_funeral', 'selection', 6, NULL, 'Choose location', 'Place of Funeral service', NULL, NULL, NULL, NULL, NULL, 'get form api funeral_location', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (207, 1, 3, 10, 13, '', 'service_type', 'selection', 7, NULL, 'Select Type of Service', 'Type of Service', NULL, NULL, NULL, NULL, NULL, 'get from api service', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (208, 1, 3, 10, 13, '', 'dt_of_service', 'date', 8, NULL, NULL, 'Date of Service', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (209, 1, 3, 10, 13, '', 'time_of_service', 'time', 9, NULL, NULL, 'Time of Service', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (210, 1, 3, 10, 13, '', 'dt_internment', 'date', 10, NULL, NULL, 'Date of Internment or Inurment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (211, 1, 3, 10, 13, '', 'time_of_internment', 'time', 11, NULL, NULL, 'Time of Internment or Inurment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (212, 1, 3, 10, 13, '', 'place_internment', 'plain_text', 12, NULL, NULL, 'Place of Internment or Inurment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (213, 1, 3, 10, 13, '', 'name_contact_person', 'plain_text', 13, NULL, NULL, 'Contact Person', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (214, 1, 3, 10, 13, '', 'landline_contact_person', 'plain_text', 14, NULL, NULL, 'Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (215, 1, 3, 10, 13, '', 'mobile_contact_person', 'plain_text', 15, NULL, NULL, 'Contact Number - Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (216, 1, 3, 10, 14, '', 'name', 'plain_text', 1, NULL, NULL, 'Name of Deceased', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (217, 1, 3, 10, 14, '', 'age', 'plain_text', 2, NULL, NULL, 'Age', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (218, 1, 3, 10, 14, '', 'civil_status', 'selection', 3, NULL, 'Select marital status', 'Marital Status', NULL, NULL, NULL, NULL, NULL, 'get from api civil_status', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (219, 1, 3, 10, 14, '', 'address_1', 'plain_text', 4, NULL, NULL, 'Home Address', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (220, 1, 3, 10, 14, '', 'address_2', 'plain_text', 5, NULL, NULL, 'Home Address 2', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (221, 1, 3, 10, 14, '', 'barangay', 'plain_text', 6, NULL, NULL, 'Barangay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (222, 1, 3, 10, 14, '', 'city', 'plain_text', 7, NULL, NULL, 'City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (223, 1, 3, 10, 14, '', 'province', 'plain_text', 8, NULL, NULL, 'Province', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (224, 1, 3, 10, 14, '', 'country', 'plain_text', 9, NULL, NULL, 'Country', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (225, 1, 3, 10, 14, '', 'dt_birth', 'date', 10, NULL, NULL, 'Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (226, 1, 3, 10, 14, '', 'dt_death', 'date', 11, NULL, NULL, 'Date of Death', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (227, 1, 3, 10, 14, '', 'cause_of_death', 'plain_text', 12, NULL, NULL, 'Cause of Death', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (228, 1, 3, 10, 14, '', 'dt_burial', 'date', 13, NULL, NULL, 'Date of Burial', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (229, 1, 3, 10, 14, '', 'place_of_burial', 'plain_text', 14, NULL, '', 'Place of Burial', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (230, 1, 3, 10, 14, '', 'name_contact_person', 'plain_text', 15, NULL, NULL, 'Contact Person', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (231, 1, 3, 10, 14, '', 'relationship_with_the_deceased', 'plain_text', 16, NULL, NULL, 'Relationship with the Deceased', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (232, 1, 3, 10, 14, '', 'landline_contact_person', 'plain_text', 17, NULL, NULL, 'Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (233, 1, 3, 10, 14, '', 'mobile_contact_person', 'plain_text', 18, NULL, NULL, 'Contact Number - Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (234, 1, 3, 10, 14, '', 'email_add', 'plain_text', 19, NULL, NULL, 'Email Address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (235, 1, 3, 10, 15, '', 'name', 'plain_text', 1, NULL, NULL, 'Name of Deceased', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (236, 1, 3, 10, 15, '', 'name_contact_person', 'plain_text', 2, NULL, NULL, 'Contact Person', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (237, 1, 3, 10, 15, '', 'landline_contact_person', 'plain_text', 3, NULL, NULL, 'Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (238, 1, 3, 10, 15, '', 'mobile_contact_person', 'plain_text', 4, NULL, NULL, 'Contact Number - Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (239, 1, 3, 10, 16, '', 'name', 'plain_text', 1, NULL, NULL, 'Name of Deceased', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (240, 1, 3, 10, 16, '', 'name_contact_person', 'plain_text', 2, NULL, NULL, 'Contact Person', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (241, 1, 3, 10, 16, '', 'address_1', 'plain_text', 3, NULL, NULL, 'Home Address', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (242, 1, 3, 10, 16, '', 'address_2', 'plain_text', 4, NULL, NULL, 'Home Address 2', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (243, 1, 3, 10, 16, '', 'barangay', 'plain_text', 5, NULL, NULL, 'Barangay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (244, 1, 3, 10, 16, '', 'city', 'plain_text', 6, NULL, NULL, 'City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (245, 1, 3, 10, 16, '', 'province', 'plain_text', 7, NULL, NULL, 'Province', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (246, 1, 3, 10, 16, '', 'country', 'plain_text', 8, NULL, NULL, 'Country', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (247, 1, 3, 11, 17, '', 'name', 'plain_text', 1, NULL, NULL, 'Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (248, 1, 3, 11, 17, '', 'address_1', 'plain_text', 2, NULL, NULL, 'Home Address', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (249, 1, 3, 11, 17, '', 'address_2', 'plain_text', 3, NULL, NULL, 'Home Address 2', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (250, 1, 3, 11, 17, '', 'barangay', 'plain_text', 4, NULL, NULL, 'Barangay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (251, 1, 3, 11, 17, '', 'city', 'plain_text', 5, NULL, NULL, 'City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (252, 1, 3, 11, 17, '', 'province', 'plain_text', 6, NULL, NULL, 'Province', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (253, 1, 3, 11, 17, '', 'country', 'plain_text', 7, NULL, NULL, 'Country', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (254, 1, 3, 11, 17, '', 'event_type', 'selection', 8, NULL, '', 'Event Type', NULL, NULL, NULL, NULL, NULL, 'get from api event_type', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (255, 1, 3, 11, 17, '', 'name_contact_person', 'plain_text', 9, NULL, NULL, 'Contact Person', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (256, 1, 3, 11, 17, '', 'landline_contact_person', 'plain_text', 10, NULL, NULL, 'Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (257, 1, 3, 11, 17, '', 'mobile_contact_person', 'plain_text', 11, NULL, NULL, 'Contact Number - Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (258, 1, 3, 4, 1, '', 'country_province_city_barangay', 'country_province_city_barangay', 4, NULL, NULL, 'Home Address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (259, 1, 3, 6, 6, '', 'country_province_city_barangay', 'country_province_city_barangay', 14, NULL, NULL, 'Present Address of Child', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (260, 1, 3, 6, 7, '', 'country_province_city_barangay', 'country_province_city_barangay', 14, NULL, NULL, 'Present Address of Child', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (261, 1, 3, 6, 8, '', 'country_province_city_barangay', 'country_province_city_barangay', 14, NULL, NULL, 'Present Address of Child', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (262, 1, 3, 7, 9, '', 'country_province_city_barangay', 'country_province_city_barangay', 5, NULL, NULL, 'Home Address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (263, 1, 3, 7, 10, '', 'country_province_city_barangay', 'country_province_city_barangay', 7, NULL, NULL, 'Home Address of Communicant', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (264, 1, 3, 8, 11, '', 'country_province_city_barangay', 'country_province_city_barangay', 5, NULL, NULL, 'Home Address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (265, 1, 3, 9, 12, '', 'country_province_city_barangay_groom', 'country_province_city_barangay', 19, NULL, NULL, 'Home Address of Groom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (266, 1, 3, 9, 12, '', 'country_province_city_barangay_bride', 'country_province_city_barangay', 43, NULL, NULL, 'Home Address of Bride', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (267, 1, 3, 10, 14, '', 'country_province_city_barangay', 'country_province_city_barangay', 6, NULL, NULL, 'Home Address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (268, 1, 3, 10, 16, '', 'country_province_city_barangay', 'country_province_city_barangay', 5, NULL, NULL, 'Home Address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (269, 1, 3, 11, 17, '', 'country_province_city_barangay', 'country_province_city_barangay', 4, NULL, NULL, 'Home Address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (270, 1, 3, 5, 5, '', 'dt_marriage', 'date', 7, NULL, NULL, 'Date of Marriage', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-08-15 17:10:10', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (271, 1, 3, 6, 6, '', 'dt_baptism', 'date', 23, NULL, NULL, 'Date of Baptism', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-08-15 17:10:10', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (272, 1, 3, 6, 6, '', 'time_baptism', 'time', 24, NULL, NULL, 'Time of Baptism', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-08-15 17:10:10', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (273, 1, 3, 5, 4, '', 'officiating_priest', 'selection', 8, NULL, NULL, 'Officiating Priest', NULL, NULL, NULL, NULL, NULL, 'officiating_priest', NULL, 1, '2019-08-16 11:46:53', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (274, 1, 3, 6, 6, '', 'officiating_priest', 'selection', 25, NULL, NULL, 'Officiating Priest', NULL, NULL, NULL, NULL, NULL, 'officiating_priest', NULL, 1, '2019-08-15 17:10:10', NULL, '2019-08-16 12:10:40', b'1', b'0');
INSERT INTO `service_references` VALUES (275, 1, 3, 6, 7, '', 'dt_baptism', 'date', 23, NULL, NULL, 'Date of Baptism', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-08-16 12:15:34', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (276, 1, 3, 6, 7, '', 'time_baptism', 'time', 24, NULL, NULL, 'Time of Baptism', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-08-16 12:15:34', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (277, 1, 3, 6, 7, '', 'officiating_priest', 'selection', 25, NULL, NULL, 'Officiating Priest', NULL, NULL, NULL, NULL, NULL, 'officiating_priest', NULL, 1, '2019-08-16 12:15:34', NULL, NULL, b'1', b'0');
INSERT INTO `service_references` VALUES (278, 1, 3, 6, 8, '', 'dt_baptism', 'date', 23, NULL, NULL, 'Date of Baptism', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-08-15 17:10:10', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (279, 1, 3, 6, 8, '', 'time_baptism', 'time', 24, NULL, NULL, 'Time of Baptism', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-08-15 17:10:10', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (280, 1, 3, 7, 9, '', 'schedule_date', 'date', 16, NULL, NULL, 'Choose schedule - Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-08-16 13:40:40', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (281, 1, 3, 7, 9, '', 'schedule_time', 'time', 17, NULL, NULL, 'Choose schedule - Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-08-16 13:40:40', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (282, 1, 3, 7, 10, '', 'remarks', 'plain_text', 19, NULL, NULL, 'Remarks', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-08-16 13:46:34', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` VALUES (283, 1, 3, 8, 11, '', 'remarks', 'plain_text', 16, NULL, NULL, 'Remarks', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-08-16 21:07:45', NULL, NULL, b'0', b'0');

-- ----------------------------
-- Table structure for service_transactions
-- ----------------------------
DROP TABLE IF EXISTS `service_transactions`;
CREATE TABLE `service_transactions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `sub_module_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthdate` date NULL DEFAULT NULL,
  `address_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `province` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `country` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `landline` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name_contact_person` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `landline_contact_person` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile_contact_person` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email_contact_person` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_freebies_received` bit(1) NOT NULL DEFAULT b'0',
  `dt_freebies_received` datetime(0) NULL DEFAULT NULL,
  `prayer` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `purpose_id` int(11) NULL DEFAULT NULL,
  `dt_offered` datetime(0) NULL DEFAULT NULL,
  `dt_of_service` datetime(0) NULL DEFAULT NULL,
  `time_of_service` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_venue` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `occasion` int(11) NULL DEFAULT NULL,
  `certificate` int(11) NULL DEFAULT NULL,
  `purpose_certificate` int(11) NULL DEFAULT NULL,
  `dt_marriage` datetime(0) NULL DEFAULT NULL,
  `birth_place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name_father` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `religion_father` int(11) NULL DEFAULT NULL,
  `dt_birth_father` datetime(0) NULL DEFAULT NULL,
  `birth_place_father` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name_mother` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `religion_mother` int(11) NULL DEFAULT NULL,
  `dt_birth_mother` datetime(0) NULL DEFAULT NULL,
  `birth_place_mother` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `marriage` int(11) NULL DEFAULT NULL,
  `place_marriage` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `dt_baptism` datetime(0) NULL DEFAULT NULL,
  `time_baptism` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `church_of_baptism` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `schedule_date` datetime(0) NULL DEFAULT NULL,
  `schedule_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name_spouse` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dt_birth_spouse` datetime(0) NULL DEFAULT NULL,
  `dt_church_marriage` datetime(0) NULL DEFAULT NULL,
  `dt_last_confession` datetime(0) NULL DEFAULT NULL,
  `time_preferred_visit` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `day_preferred_visit` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `household` int(11) NULL DEFAULT NULL,
  `sponsor` int(11) NULL DEFAULT NULL,
  `requirements` int(11) NULL DEFAULT NULL,
  `are_civilly_married` bit(1) NOT NULL DEFAULT b'0',
  `with_previous_marriage` bit(1) NOT NULL DEFAULT b'0',
  `is_anyone_an_ofw` bit(1) NOT NULL DEFAULT b'0',
  `living_abroad` bit(1) NOT NULL DEFAULT b'0',
  `is_widower` bit(1) NOT NULL DEFAULT b'0',
  `couple` int(11) NULL DEFAULT NULL,
  `choir` int(11) NULL DEFAULT NULL,
  `flowers` int(11) NULL DEFAULT NULL,
  `civil_status` int(11) NULL DEFAULT NULL,
  `dt_death` datetime(0) NULL DEFAULT NULL,
  `cause_of_death` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `funeral_location` int(11) NULL DEFAULT NULL,
  `service` int(11) NULL DEFAULT NULL,
  `dt_internment` datetime(0) NULL DEFAULT NULL,
  `time_internment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `place_internment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `chapel` int(11) NULL DEFAULT NULL,
  `dt_checkin` datetime(0) NULL DEFAULT NULL,
  `dt_checkout` datetime(0) NULL DEFAULT NULL,
  `duration` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `event` int(11) NULL DEFAULT NULL,
  `package` int(11) NULL DEFAULT NULL,
  `remarks` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `others` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `officiating_ministers` int(11) NULL DEFAULT NULL,
  `payment` int(11) NULL DEFAULT NULL,
  `donation` int(11) NULL DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT 1,
  `status_remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status_admin` int(11) NULL DEFAULT NULL,
  `remarks_admin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status_ministers` int(11) NULL DEFAULT NULL,
  `remarks_ministers` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of service_transactions
-- ----------------------------
INSERT INTO `service_transactions` VALUES (1, 1, 4, 1, 'Raymond Baguio', '1983-10-19', 'Block 53 Lot 36 Phase 2', 'Manalo St., Upper Bicutan', '137607', '1376', '01', '028374119', '09672871190', 'rpbaguio@gmail.com', NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, '2019-09-02 01:59:46', 1, '2019-09-02 02:20:59', b'0');
INSERT INTO `service_transactions` VALUES (2, 1, 4, 1, 'Adrian', '1977-10-25', 'Somewhere', 'Down the Road', '137602', '1375', '01', '(12) 345-6789', '(234) 567-890', 'asd@gfs.ph', NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 1, '2019-09-02 02:00:30', 1, '2019-09-03 02:39:23', b'0');
INSERT INTO `service_transactions` VALUES (3, 1, 4, 1, 'Jane Doe', '2019-09-26', 'Somewhere', 'Near', '137404', '1376', '01', '(23) 456-7890', '(567) 956-7890', 'janedoe@yahoo.com', NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 1, '2019-09-02 02:18:02', 1, '2019-09-03 02:38:34', b'0');
INSERT INTO `service_transactions` VALUES (4, 1, 4, 1, 'John Doe', '2019-09-26', 'Somewhere', 'Down the road', '137602', '1339', '01', '(12) 345-6789', '(234) 567-890', 'johndoe@gmail.com', NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, '2019-09-02 02:18:29', 1, '2019-09-03 02:36:33', b'0');
INSERT INTO `service_transactions` VALUES (5, 1, 4, 1, 'Adrian', '2019-09-24', 'Somewhere', 'Down the Road', '137607', '1339', '01', '(02) 123-4567', '(927) 123-4567', 'asd@gfs.ph', NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 1, '2019-09-02 02:18:52', 1, '2019-09-16 21:43:32', b'0');
INSERT INTO `service_transactions` VALUES (6, 1, 5, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, 'Please pray for my salary increase! :)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, '2019-09-03 04:53:47', 1, '2019-09-16 22:08:37', b'0');
INSERT INTO `service_transactions` VALUES (7, 1, 5, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean molestie massa a turpis convallis dictum. Etiam at vehicula arcu. Mauris vel aliquet ipsum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eu ante in dui vulputate tincidunt. Aliquam at risus ultrices, molestie lacus eget, iaculis purus. Aliquam sodales, mi ac tincidunt efficitur, enim ipsum ullamcorper ligula, semper egestas felis ante vitae justo. Fusce finibus at lectus ut vulputate. Pellentesque ac viverra nisl. Mauris id dapibus diam, sit amet pellentesque velit. Phasellus consectetur, arcu non sagittis feugiat, ligula libero tristique nibh, ut malesuada libero metus ac odio. Nullam iaculis mi quis ipsum rutrum, eu vehicula dolor tempus. Fusce id neque vestibulum mi blandit efficitur. In quis risus consequat, placerat elit eu, gravida elit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 1, '2019-09-03 05:07:48', 1, '2019-09-16 22:08:25', b'0');
INSERT INTO `service_transactions` VALUES (9, 1, 5, 3, 'John Doe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, 68, '2019-09-03 12:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 1, '2019-09-03 21:39:15', 1, '2019-09-16 23:48:21', b'0');

-- ----------------------------
-- Table structure for social_media
-- ----------------------------
DROP TABLE IF EXISTS `social_media`;
CREATE TABLE `social_media`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contacts` int(11) NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sponsors
-- ----------------------------
DROP TABLE IF EXISTS `sponsors`;
CREATE TABLE `sponsors`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `sub_module_id` int(11) NOT NULL,
  `sub_module_info_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(2) NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `landline` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` int(11) NULL DEFAULT NULL,
  `province` int(11) NULL DEFAULT NULL,
  `country` int(11) NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sub_modules
-- ----------------------------
DROP TABLE IF EXISTS `sub_modules`;
CREATE TABLE `sub_modules`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `acceptance_content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thank_you_content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `media_id` int(11) NULL DEFAULT NULL COMMENT 'icons',
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sub_modules
-- ----------------------------
INSERT INTO `sub_modules` VALUES (1, 1, 3, 4, 'Confraternity of Our Lady of Mount Carmel', 'A Carmelite brotherhood in pursuit of the mission, and in service of the Lord', NULL, '<p>Fees:</p>\r\n<p>Application Fee</p>                                        <p>Scapular</p>                                        <p>Confraternity Manual</p>                                        <p>Certificate of Confraternity</p>\r\n<p>200 php</p>\r\n<p>You may settle your bill using your debit card, credit card or cash.</p>', '<p>Thank you for joining the Confraternity. Your application is subject for review, upon approval please settle the application fee.</p>\r\n<p>Please visit Mount Carmel Shrine head office to receive your Scapular, Confraternity Manual and Certificate of Confraternity.</p>\r\n<p>We will be reaching you through your provided contact details.</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/confraternity/create', NULL, 1, '2019-06-19 18:29:13', 1, '2019-07-25 14:38:02', b'0');
INSERT INTO `sub_modules` VALUES (2, 1, 3, 5, 'Prayer Request', 'Send your prayer request with the help of our Carmelite priests in offering your petitions', NULL, '<p>Prayer Request is free of charge.</p>', '<p>Thank you for sending your prayer request. We will be offering your requests and petitions.</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/prayer_request/create', NULL, 1, '2019-06-19 18:30:35', 1, '2019-07-25 14:41:09', b'0');
INSERT INTO `sub_modules` VALUES (3, 1, 3, 5, 'Mass Request', 'Send your mass request with the help of our Carmelite priests in offering your intentions', NULL, '<p>After submission, you may donate any amount as an offering for your requested mass in your mailbox.</p>', '<p>Thank you for for sending your mass request. We will be offering your prayer intentions after completing the process in your mailbox.</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/mass_request/create', NULL, 1, '2019-06-19 18:31:05', 1, '2019-07-25 14:44:43', b'0');
INSERT INTO `sub_modules` VALUES (4, 1, 3, 5, 'Liturgical Service', NULL, NULL, '<p>Liturgical Service for blessing of houses, businesses and cars, as well as annointing of the sick or for other purposes.</p>\r\n\r\n<p>Parishioner may give the officiating priest a donation after the service.</p>\r\n\r\n<p>Exclusive for parishioners of Our Lady of Mount Carmel.</p>', '<p>Thank you for requesting a liturgical service. Choose your officiating priest in your mailbox and wait for an approval.</p>\r\n<p>Upon approval, please pick up the officiating priest 30 minutes before the time of event or earlier.</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/liturgical/create', NULL, 1, '2019-06-19 18:32:13', 1, '2019-07-25 14:46:30', b'0');
INSERT INTO `sub_modules` VALUES (5, 1, 3, 5, 'Certification', NULL, NULL, '<p>We furnish baptismal certificate and confirmation certificate for parishioners.</p>\r\n<p>For Purposes such as for Personal file, School, Confirmation, First Communion, Legal documents, SSS requirement, Travel documents, Issuance of Birth Certificate and Marriage.</p>\r\n<p>Fees:</p>\r\n<p>Printing Service</p>\r\n<p>50 php</p>\r\n<p>You may settle your bill using your debit card, credit card or cash.</p>', '<p>Thank you for your application for Certification. Your application is subject for review, upon approval please settle the application fee.</p>\r\n<p>Please visit Mount Carmel Shrine Head Office to receive your Certificate.</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/certification/create', NULL, 1, '2019-06-19 18:32:40', 1, '2019-07-25 14:48:05', b'0');
INSERT INTO `sub_modules` VALUES (6, 1, 3, 6, 'Individual Baptism', NULL, NULL, '<p>Schedule:</p>\r\n<p>Tuesday - Saturdays</p>\r\n<p>09:00 AM</p>\r\n<p>10:00 AM</p>\r\n<p>11:00 AM</p>\r\n<p>03:00 PM</p>\r\n<p>04:00 PM</p><br>\r\n<p>Sundays</p>\r\n<p>09:00 AM</p>\r\n<p>10:00 AM</p>\r\n<p>11:00 AM</p>\r\n<p>Additional Requirements:</p>\r\n<p>Child\'s Birth Certificate</p>\r\n<p>Parent\'s Marriage Contract</p>\r\n<p>Permission Letter (if needed)</p>\r\n<p>Fees:</p>\r\n<p>Venue</p>\r\n<p>1,000 php</p>\r\n<p>Stipend for the Priest</p>\r\n<p>1,000 php</p>\r\n<p>For every Sponsor</p>\r\n<p>100 php</p>\r\n<p>Panyal, Certificate, Candle for the Parents, 2 Candles in glass for the Sponsors (candles for additional sponsors are not included)</p>\r\n<p>300 php</p>\r\n<p>Reservation Fee (deductible)</p>\r\n<p>2,000 php</p>\r\n<p>Baptism will be held in Pilgrim Chapel, St. Joseph Bldg.</p>\r\n<p>For non-parishioners, permission letter from your parish must be submitted in Mt. Carmel office.</p>\r\n<p>All sponsors must be catholic and 18 years old or above.</p>\r\n<p>Requirements and fees must be accomplished a week before the baptism.</p>\r\n<p>You may settle your bill using your debit card, credit card or cash.</p>\r\n<p>Be punctual, only an hour is alloted for the whole baptism.</p>', '<p>Thank you for your application for individual baptism.</p>\r\n<p>Individual Baptism is subject for review and approval by the office and the chosen officiating priest.</p>\r\n<p>Finish transaction by rendering all necessary requirements in your mailbox.</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/individual/create', NULL, 1, '2019-06-19 18:33:27', 1, '2019-07-25 14:49:57', b'0');
INSERT INTO `sub_modules` VALUES (7, 1, 3, 6, 'Community Baptism', NULL, NULL, '<p>Schedule:</p>\r\n<p>Sundays</p>\r\n<p>02:00 PM</p><br>\r\n<p>Additional Requirements:</p>\r\n<p>Child\'s Birth Certificate</p>\r\n<p>Parent\'s Marriage Contract</p>\r\n<p>Permission Letter (if needed)</p><br>\r\n<p>Fees:</p>\r\n<p>  For every Sponsor</p><br>\r\n<p>   100 php</p><br>\r\n<p>  Registration, Panyal, Certificate, Candle for the Parents, 2 Candles in glass for the Sponsors (candles for additional sponsors are not included)</p>\r\n<p>  400 php</p><br>\r\n<p>For non-parishioners, permission letter from your parish must be submitted in Mt. Carmel office.</p>\r\n<p>All sponsors must be catholic and 18 years old or above.</p>\r\n<p>Requirements and fees must be accomplished a week before the baptism.</p>\r\n<p>You may settle your bill using your debit card, credit card or cash.</p>\r\n<p>Be punctual, only an hour is alloted for the whole baptism.</p>', '<p>Thank you for your application for Community baptism.</p>\r\n<p>Community Baptism is subject for review and approval by the office.</p>\r\n<p>Finish transaction by rendering all necessary requirements in your mailbox.</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/community/create', NULL, 1, '2019-06-19 18:33:49', 1, '2019-07-25 14:57:16', b'0');
INSERT INTO `sub_modules` VALUES (8, 1, 3, 6, 'Adult Baptism', NULL, NULL, '<p>Schedule:</p><br>\r\n<p>Tuesday - Saturdays</p>\r\n<p>09:00 AM</p>\r\n<p>10:00 AM</p>\r\n<p>11:00 AM</p>\r\n<p>03:00 PM</p>\r\n<p>04:00 PM</p><br>\r\n<p>Sundays</p>\r\n<p>10:00 AM</p>\r\n<p>11:00 AM</p><br>\r\n<P>Additional Requirements:</P><br>\r\n<p>Adult\'s Birth Certificate</p>\r\n<p>4 Session Catechesis</p>\r\n<p>Parent Catechesis</p>\r\n<p>Certification of No Records (from 3 parishes from the Vicariate of Holy Family)</p><br>\r\n<p>Fees:</p><br>\r\n<p>Venue</p><br>\r\n<p>1,000 php</p><br>\r\n<p>Stipend for the Priest</p><br>\r\n<p>1,000 php</p><br>\r\n<p>For every Sponsor</p>\r\n<p>100 php</p><br>\r\n<p>Panyal, Certificate, Candle for the Parents</p><br>\r\n<p>150 php</p><br>\r\n<p>Candle for every Sponsor</p><br>\r\n<p>10 php</p><br>\r\n<p>Upon submission,you maycontact Catechetical Ministry office to schedule your catethesis.</p><br>\r\n<p>Call 727-94-32 local 411</p>\r\n<p>Tuesdays to Saturdays</p>\r\n<p>9am-5pm</p><br>\r\n<p>All sponsors must be catholic and 18 years old or above.</p><br>\r\n<p>Requirements and fees must be accomplished a week before the baptism.</p><br>\r\n<p>You may settle your bill using your debit card, credit card or cash.</p><br>\r\n<p>Be punctual, only an hour is alloted for the whole baptism.</p>', '<p>Thank you for your application for Adult Baptism.</p>\r\n<p>Adult Baptism is subject for review and approval by the office.</p>\r\n<p>Finish transaction by rendering all necessary requirements including attendance for catechesis in your mailbox.</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/adult/create', NULL, 1, '2019-06-19 18:34:27', 1, '2019-07-25 14:59:06', b'0');
INSERT INTO `sub_modules` VALUES (9, 1, 3, 7, 'First Communion', NULL, NULL, '<p>Applicant may only have 1 or 2 sponsors during first communion.</p><br>\r\n<p>Fees:</p><br>\r\n<p>  Application Fee</p>\r\n<p>    500 php</p><br>\r\n<p>Upon submission, you may contact Catechetical Ministry office to schedule your catechesis.</p><br>\r\n<p>Call 727-94-32 local 411</p>\r\n<p>Tuesday to Saturdays</p>\r\n<p>9am-5pm</p><br>\r\n<p>You may settle your bill using your debit card, credit card or cash.</p>', '<p>Thank you for your application for First Communion.</p>\r\n<p>First Communion is subject for review and approval by the office.</p>\r\n<p>Finish transaction by rendering all necessary requirements including attendance for catechesis in your mailbox.</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/first_communion/create', NULL, 1, '2019-06-19 18:35:00', 1, '2019-07-25 15:01:09', b'0');
INSERT INTO `sub_modules` VALUES (10, 1, 3, 7, 'Communion of the Sick', NULL, NULL, '<p>Preferred time of visit will only serve as guide and may not always be accurate.</p><br>\r\n<p>Communion of the Sick is free of charge</p><br>\r\n<p>Exclusive for parishioners of Our Lady of Mount Carmel</p>', '<p>Thank you for requesting a communion for the sick. We will review your request, please wait for the approval of the office and the Extraordinary Ministers of the Holy Communion.</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/communion_of_the_sick/create', NULL, 1, '2019-06-19 18:35:17', 1, '2019-07-25 15:03:15', b'0');
INSERT INTO `sub_modules` VALUES (11, 1, 3, 8, 'Confirmation', NULL, NULL, '<p>Applicant may only have 1 or 2 sponsors during confirmation.</p><br>\r\n<p>Fees:</p><br>\r\n<p>  Application Fee</p>\r\n<p>    500 php</p>\r\n<p>Upon submission, you may contact Catechetical Ministry office to schedule your catechesis.</p><br>\r\n<p>Call 727-94-32 local 411</p>\r\n<p>Tuesday to Saturdays</p>\r\n<p>9am-5pm</p><br>\r\n<p>You may settle your bill using your debit card, credit card or cash.</p>', '<p>Thank you for your application for Confirmation.</p>\r\n<p>Confirmation is subject for review and approval by the office.</p>\r\n<p>Finish transaction by rendering all necessary requirements including attendance for catechesis in your mailbox.</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/confirmation/create', NULL, 1, '2019-06-19 18:36:00', 1, '2019-07-25 15:05:04', b'0');
INSERT INTO `sub_modules` VALUES (12, 1, 3, 9, 'Marriage', NULL, NULL, '<p>Wedding Rules and Regulations Agreement</p><br>\r\n    <p>Version 1</p><br>\r\n    <p>1. Reservation Fee and Full Payment</p><br>\r\n    <p>a. Wedding should be arranged and scheduled at least 6 months before the wedding date.</p>\r\n    <p>b. Reserved date is non-movable and non-transferrable.</p>\r\n    <p>c. Reservation fee of 10,000 php will be accepted upon agreement of contract and National Shrine of Our Lady of Mount Carmel Rules and Regulations. Reservation fee is non-refundable but deductible on remaining balance.</p>\r\n    <p>d. All fees should be settled 2 months before the wedding date.</p><br>\r\n    <p>Wedding package includes use of the church, officiating priest, flowers with tulle, wedding candles or candles for secondary sponsors, wedding usherette, wedding commentator, altar server, red carpet, use of electricity for videos, pre-cana seminar and air conditioned holding area for the bride and choir.</p><br>\r\n    <p>Wedding package rates:</p><br>\r\n    <p>January to November rate</p>\r\n    <p>    29,000 php</p><br>\r\n    <p>December rate</p>\r\n    <p>34,000  php</p><br>\r\n    <p>2. Wedding Requirements</p><br>\r\n    <p>a. All requirements must be completed or accomplished at least 1 month before the wedding date exempting bride and groom under special cases which requires a permit from the Chancery Office of the Diocese of Cubao.</p><br>\r\n    <p>Wedding cases the need to secure a permit:</p><br>\r\n    <p>i. Mixed marriage (marriage between a Catholic and a non-Catholic or marriage between a Filipino or a foreigner)</p><br>\r\n    <p>ii. Overseas Filipino working or living abroad for more than 2 years</p><br>\r\n    <p>iii. With previous marriage (civilly or in the Roman Catholic church)</p><br>\r\n    <p>b. We reserve the right to cancel a wedding if the requirements were not completed.</p><br>\r\n    <p>c. Authorized representatives designated by the bride and groom are duty-bound to comply with the National Shrine of Our Lady of Mount Carmel Rules and Regulations Agreement and will be held responsible for the cancellation of the event for failure to submit all the needed requirements.</p><br>\r\n    <p>d. National Shrine of Our Lady of Mount Carmel will not be responsible for any correction, fines and penalties that may be required on the marriage certificate already filed with the Quezon City Hall, Civil Registry after its entries were verified by the couple. Likewise, the Shrine is not liable if the couple fail to check their marriage contract as required.</p><br>\r\n    <p>3. Cancellation</p><br>\r\n    <p>a. In case of cancellation, a written advice must be submitted, otherwise the couple will have to pay the balance due.</p><br>\r\n    <p>b. Reservation fee, full-payment, and additional fees made will be forfeited.</p><br>\r\n    <p>c. Unclaimed documents will be disposed by the National Shrine of Our Lady of Mount Carmel within 2 months from the day of notice or from the wedding date.</p><br>\r\n    <p>4. Punctuality</p><br>\r\n    <p>a. The bride and groom, and the whole entourage including the soloist, singers and organist must be at the church premises 30 minutes before their wedding schedule.</p><br>\r\n    <p>b. The allotted time for the wedding ceremony is 1 hour and 30 minutes only. Wedding ceremony are as follows, 15 minutes for the entrance procession of the wedding entourage; 45 minutes for the wedding liturgy; 15 minutes for pictorial, 15 minutes for the recessional of the wedding entourage. The wedding entourage should be exiting 15 minutes before the end of their time slot.</p><br>\r\n    <p>c. If the bride, groom or the members of the entourage are late for 15 minutes, there will be no Prayers of the Faithful and Offertory Procession; if they are late for 30 minutes, there will be no Homily, Prayers of the Faithful and Offertory Procession; if they are late for 45 minutes, only the Wedding Rite outside the Mass will be celebrated.</p><br>\r\n    <p>5. Wedding Entourage</p><br>\r\n    <p>a. Bearers and flower girls should be 5 years old and above since they will not need the assistance of parents or guardian when marching down the aisle, which is usually the reason behind the delay of the ceremony.</p><br>\r\n    <p>b. Only 5 pairs of principal sponsors are normally allowed. An additional fee of 500 php per person will be charged in excess of the 5 pairs of sponsors.</p><br>\r\n    <p>c. The bride and groom must assign persons for the First and Second Reading, Responsorial Psalm and Prayers of the Faithful. Commentator will be provided by the church.</p><br>\r\n    <p>6. Officiating Priest</p><br>\r\n    <p>a. The bride and groom should inform the parish office 2 months before their wedding if they have their own officiating priest. If no advice was given, the invited priest will only be allowed to concelebrate with the assigned priest.</p><br>\r\n    <p>b. For own priest, a photocopy of the priest Celebret ID, Certificate of Registration of Authority to Solemnize Marriage (CRASM) and appointment or endorsement letter from the Bishop is required.</p><br>\r\n    <p>c. The Rector/Parish Priest has the right to approve or disapprove permission of the invited priest presider.</p><br>\r\n    <p>d. In case of mixed marriages, the Shrine will not allow any form of rite, ceremony, or speeches to be conducted by other sects or religions.</p><br>\r\n    <p>7. Solemnity and Wedding Dress Etiquette</p><br>\r\n    <p>a. To preserve the solemnity of the wedding ceremony, all electronic gadgets are requested to be turned off or set to silent mode. Bride and groom should advice their respective entourages to refrain from unnecessary conversations and movements.</p><br>\r\n    <p>b. The attire of the entire marriage entourage should be proper for church decorum. Provocative dresses like strapless, backless, spaghetti strap, bare midriff and off-the-shoulder dresses must be covered by a shawl jacket. We discourage above-the-knee length or miniskirt dresses.</p><br>\r\n    <p>c. The National Shrine of Our Lady of Mount Carmel has the right to refuse any member of the entourage who are not properly dressed to join the entrance entourage.</p><br>\r\n    <p>8. Offertory</p><br>\r\n    <p>a. Recommended list of items to be offered during the wedding are basket of fruits, mass wine and pack of hosts only.</p><br>\r\n    <p>b. The bride and groom should assign two persons for the cruets and ciborium which will be provided by the shrine.</p><br>\r\n    <p>c. Offertory procession may be cancelled if time constraints to give priority to the more essential parts of the mass.</p><br>\r\n    <p>9. Church Decoration</p><br>\r\n    <p>a. A simple yet elegant flower decoration in the aisle complete with tulle shall be provided by the shrine. All flower arrangement will be handled by the shrine’s in-house florist.</p><br>\r\n    <p>b. For an additional floral arrangement, the bride and groom should submit a design arrangement for approval of the Rector/Parish Priest. Arrangement shall be done accordingly by the shrine’s in-house florist.</p><br>\r\n    <p>c. During Lent, no flower decoration is allowed in the altar. The bride and groom are to be reminded that wedding events should respect the special nature of this liturgical season; they should refrain from much pomp or display.</p><br>\r\n    <p>d. There will be no deduction in the wedding package rate for the flower arrangement if the bride and groom booked their wedding on Lenten season.</p><br>\r\n    <p>10. Wedding Music</p><br>\r\n    <p>a. Music for the whole ceremony is included in the package.</p><br>\r\n    <p>b. During mass, singing may be done only during entrance, offertory, our Father, communion, recessional and photo sessions.</p><br>\r\n    <p>c. The invited singer or musician should only render songs and music approved by the Rector/Parish Priest.</p><br>\r\n    <p>11. Photographers and Videographers</p><br>\r\n    <p>a. The bride and groom must properly endorse the photographers and videographers that will cover the whole wedding ceremony. The 2 photographers and 2 video personnel must be advised that they are required to attend the orientation seminar before their wedding coverage.</p><br>\r\n    <p>b. Photographers and videographers not following the shrine’s instructions will be blacklisted.</p><br>\r\n    <p>c. Guests of the couples who likewise want to take pictures or videos are allowed but they must remain in their seats.</p><br>\r\n    <p>12. Church Assistance</p><br>\r\n    <p>a. The shrine coordinator shall assist during the wedding for further instructions for the entourage.</p><br>\r\n    <p>b. The bride and groom may assign their wedding coordinators provided that they were properly endorsed and they have attended the shrine’s orientation for coordinators before the wedding.</p><br>\r\n    <p>c. Wedding coordinators not following the shrine’s rules and regulations will be blacklisted.</p><br>\r\n    <p>13. Wedding Missalette</p><br>\r\n    <p>a. The bride and groom my request a standard copy of wedding missalette in the parish office. Digital file or soft copy may be sent through email.</p><br>\r\n    <p>b. No alterations or any addition to the approved liturgy should be made. Personal vows are not allowed.</p><br>\r\n    <p>c. Draft of printed copy of the bride and groom’s wedding missalette must be submitted to the office for checking before making the final copies. Only checked and approved missalettes will be allowed for distribution during the wedding.</p><br>\r\n    <p>14. Respect and Solemnity of the Holy Grounds</p><br>\r\n    <p>a. Pets are not allowed to join the wedding procession.</p><br>\r\n    <p>b. Cleanliness must be strictly observed inside and outside the shrine. Releasing of doves may be done outside the shrine’s doors.</p><br>\r\n    <p>c. Only flower petals are allowed as extended greetings; permitted to be showered outside the shrine’s main entrance. Other extended greetings like party poppers, confetti and rice throwing are not permitted.</p><br>\r\n    <p>d. Fogging and bubbles effect are not allowed inside and outside the shrine.</p><br>\r\n    <p>e. Closed doors are not allowed.</p><br>\r\n    <p>15. General Provision</p><br>\r\n    <p>a. Any damage incurred during the wedding by the wedding entourage or guests, the reasonable cost shall be accounted for by the bride and groom.</p><br>\r\n    <p>b. We have read and signify our agreement on the above terms and conditions of the National Shrine of Our Lady of Mount Carmel Rules and Regulations concerning wedding events and that the National Shrine of Our Lady of Mount Carmel and its personnel will not be held liable to any damages as a result of the enforcement of the said rules and regulations.</p><br>', '<p>Thank you for your application for marriage.</p>\r\n<p>Marriage is subject for review and approval by the office and the chosen officiating priest.</p>\r\n<p>Finish transaction by rendering all necessary requirements in your mailbox.</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/marriage/create', NULL, 1, '2019-06-19 18:36:19', 1, '2019-07-25 15:07:28', b'0');
INSERT INTO `sub_modules` VALUES (13, 1, 3, 10, 'Funeral Service', NULL, NULL, '<p>Funeral Service for blessing or conducting mass during the funeral.</p><br>\r\n<p>Parishioner may give the officiating priest a donation after the service.</p><br>\r\n<p>Exclusive for funerals conducted inside Our Lady of Mount Carmel premises.</p>', '<p>Thank you for requesting a funeral service. Choose your officiating priest in your mailbox and wait for an approval.</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/funeral_service/create', NULL, 1, '2019-06-19 18:36:56', 1, '2019-07-25 15:08:49', b'0');
INSERT INTO `sub_modules` VALUES (14, 1, 3, 10, 'Funeral Chapel', NULL, NULL, '<p>Terms and Conditions for the Use of the Chapel</p><br>\r\n<p>1. Person using the Mount Carmel Chapel (hereinafter referred to as the User) shall reimburse the OCD Community any and all expenses to be incurred in the use thereof. Such expenses are inclusive of but not limited to the following:</p><br>\r\n<p>a.) Use of the hall its own family room and comfort room</p>\r\n<p>b.) Air-conditioners</p>\r\n<p>c.) Refrigerator</p>\r\n<p>d.) Water dispenser</p>\r\n<p>e.) Microwave oven</p>\r\n<p>f.) Furniture</p>\r\n<p>g.) Security</p>\r\n<p>h.) maintenance</p><br>\r\n<p>User agrees to deposit an amount equivalent to at least one day of their projected stay in the chapel. The balance thereof shall be due and payable by the user a day before the Funeral Mass of the deceased. In case of cancellation of the use of chapel, the said deposit is not refundable.</p><br>\r\n<p>2. Overnight vigil or wakes, except for the first and last night is discouraged. We encourage the family of the deceased to rest, for which reason; the room shall be closed at 1:00AM and re-opened at 7:00AM. The air-conditioners shall be turned off from 1:00AM to 7:00AM. If, for unavoidable circumstances, the room is required to remain open, the cost for the use of the air-conditioner shall be reimbursed at the separate rate of FIVE HUNDRED PESOS (500.00 Php) per hour.</p><br>\r\n<p>3. While security and maintenance are provided, additional security may be provided for the service of the user. The cost thereof shall be reimbursed at the separate rate of FOUR HUNDRED PESOS (400.00 Php) per 8-hour shift.</p><br>\r\n<p>4. The entire hall is strictly a NON-SMOKING AREA. Those who wish to smoke can only do so at the Crucified Christ Courtyard which is located outside the hall.</p><br>\r\n<p>5. GAMBLING of any nature, LIQUOR of any kind, PARKING IN COURTYARD is strictly prohibited.</p><br>\r\n<p>6. No cooking shall be allowed in the rooms. However, heating with the microwave oven is allowed. In case a caterer shall be employed by the family of the deceased to provide food in the premises, the office shall be informed prior to mobilization by the caterer.</p><br>\r\n<p>7. While food and drinks are allowed to be brought in and consumed in the hall, the user is responsible for keeping the premises clean.</p><br>\r\n<p>8. The number of flower arrangement inside the hall should be limited to maintain the desired coolness of the installed air-conditioners. Excess flower arrangements may be placed in the Crucified Christ Courtyard or in the hallway. We encourage the bereaved family members to advise their relatives and friends to the use of Mass Cards or contribution to their favorite charity as a means of expressing their love.</p><br>\r\n<p>9. Should the user schedule masses during the wake, said schedule must first be coordinated with the office. For this purpose, an altar table and mass kit is available for use. Priest of the parish, however, are available subject to their availability.</p><br>\r\n<p>10. The funeral mass may be celebrated at the hall anytime. Should the user desire to celebrate the funeral mass at the main altar of the church, they should make arrangements with the parish office beforehand, to ensure that the proposed schedule does not conflict with any other church activity. If the funeral mass is celebrated in the church, we encourage only two flower arrangements be placed near the casket so as not block the view of the priest and the congregation.</p><br>\r\n<p>11. In case of power failure, the office shall provide to power the lights, fans and some outlets, but not the air-conditioner.</p><br>\r\n<p>12. The water from the faucets in the facility has not been tested for human consumption. Drinking water in 5-Gallon bottles is available in the office for the use of the water dispenser at a reasonable price.</p><br>\r\n<p>13. Should there result in any damage to property within the hall, the cost thereof, or reasonable replacement cost shall be for the account of the user.</p><br>\r\n<p>14. The user shall hold the office free from any liability whatsoever for the use of the hall.</p><br>\r\n<p>15. Lighting of candles during wake is strictly prohibited except when having masses.</p><br>\r\n<p>There are three available chapels for conducting funeral rites and services.</p><br>\r\n<p>Chapels:</p><br>\r\n<p>Mt. Carmel Chapel</p><br>\r\n<p>    150 sitting capacity</p>\r\n<p>    15,000 php/day</p>\r\n<p>    650 php/excess hour</p><br>\r\n<p>St. Joseph Chapel</p><br>\r\n<p>    40 sitting capacity</p>\r\n<p>    8,000 php/day</p>\r\n<p>    350 php/excess hour</p><br>\r\n<p>Holy Family Chapel</p><br>\r\n<p>    40 sitting capacity</p>\r\n<p>    8,000 php/day</p>\r\n<p>    350 php/excess hour</p><br>\r\n<p>Chapel Amenities:</p><br>\r\n<p>Daily Mass</p><br>\r\n<p>Fully air-conditioned</p>\r\n<p>Refrigerator</p>\r\n<p>Hot and cold water dispenser</p>\r\n<p>Microwave oven</p>\r\n<p>Kitchen sink</p>\r\n<p>Single bed</p>\r\n<p>Family room</p>\r\n<p>Restroom</p>\r\n<p>24 hour security services</p>\r\n<p>Ample parking space</p><br>\r\n<p>You may settle your bill using your debit card, credit card or cash.</p>', '<p>Thank you for requesting a funeral chapel. Schedule your rental and settle your rental fee in your mailbox.</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/funeral_chapel/create', NULL, 1, '2019-06-19 18:37:23', 1, '2019-07-25 15:10:16', b'0');
INSERT INTO `sub_modules` VALUES (15, 1, 3, 10, 'Crypt Lobby - Mass for the Dead', NULL, NULL, '<p>Crypt Lobby is available for conducting mass for the dead.</p><br>\r\n<p>Fees:</p><br>\r\n<p>Crypt Lobby</p><br>\r\n<p>    20 sitting capacity</p>\r\n<p>    500 php/hour</p><br>\r\n<p>You may settle your bill using your debit card, credit card or cash.</p>', '<p>Thank you for requesting a mass for the dead at the crypt lobby. Schedule your rental and settle your rental fee in your mailbox</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/crypt_lobby/create', NULL, 1, '2019-06-19 18:37:42', 1, '2019-07-25 15:18:19', b'0');
INSERT INTO `sub_modules` VALUES (16, 1, 3, 10, 'November Mass for the Dead', NULL, NULL, '<p>Mass for the Dead will be offered every 06:00 AM of November.</p><br>\r\n<p>After submission, you may donate any amount as an offering for your requested mass in your mailbox.</p>', '<p>Thank you for  sending your mass request. We will be offering your masses for the dead on November after completing the process in your mailbox.</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/november_mass/create', NULL, 1, '2019-06-19 18:37:57', 1, '2019-07-25 15:19:50', b'0');
INSERT INTO `sub_modules` VALUES (17, 1, 3, 11, 'Father Mark Horan Hall - Venue', NULL, NULL, '<p>Father Mark Horan Hall Service Agreement</p><br>\r\n<p>Version 1</p><br>\r\n<p>1. Event and Duration</p><br>\r\n<p>a. Father Mark Horan Hall is available for wedding reception, baptismal, birthday celebration and anniversary celebration.</p>\r\n<p>b. Client are given a maximum of 3 hours for the use of the Father Mark Horan Hall. Set up time is only 2 hours before the actual time of event.</p><br>\r\n<p>2. Reservation Fee and Full Payment</p><br>\r\n<p>a. Reservation fee of 50% will be accepted upon agreement of terms and conditions. Reservation fee is non-refundable but deductible on remaining balance.</p>\r\n<p>b. All fees should be settled 2 weeks before the event. Booking 1 week prior to the event, payment must be in full.</p><br>\r\n<p>Service package rates:</p><br>\r\n<p>Whole area package 1</p>\r\n<p>    300 tiffany chairs</p>\r\n<p>    30 tables</p>\r\n<p>    30,000 php</p>\r\n<p>    2,000 php/excess hour</p><br>\r\n<p>Whole area package 2</p>\r\n<p>    300 monoblock chairs</p>\r\n<p>    30 tables</p>\r\n<p>    27,500 php</p>\r\n<p>    2,000 php/excess hour</p><br>\r\n<p>Half area package 1</p>\r\n<p>    120 tiffany chairs</p>\r\n<p>    12 tables</p>\r\n<p>    23,000 php</p>\r\n<p>    1,000 php/excess hour</p><br>\r\n<p>Half area package 2</p>\r\n<p>    120 monoblock chairs</p>\r\n<p>    12 tables</p>\r\n<p>    20,000 php</p>\r\n<p>    1,000 php/excess hour</p><br>\r\n<p>Quarter area package 1</p>\r\n<p>    80 tiffany chairs</p>\r\n<p>    8 tables</p>\r\n<p>    15,000 php</p>\r\n<p>    500 php/excess hour</p><br>\r\n<p>Quarter area package 2</p>\r\n<p>    80 monoblock chairs</p>\r\n<p>    8 tables</p>\r\n<p>    10,000 php</p>\r\n<p>    500 php/excess hour</p><br>\r\n<p>All areas include the use of air conditioner, built-in sound system, ample parking space, clean toilet, LCD projector, and electricity for photo booth and maximum of 2 food carts.</p><br>\r\n<p>3. Reserved Date</p><br>\r\n<p>  a. Reserved date is non-movable</p>\r\n<p>  b. In the event wherein the client requests for a transfer of his/her reservation to another date or transfer his/her reservation to a member of his/her family, the client is requested to submit a letter of intent addressed to the superior of the shrine. If the superior allows the trasfer, the client will be charged for an additional 50% of the down payment made on his/her previous reservation as penalty.</p><br>\r\n<p>5. Safety and Security</p><br>\r\n<p>  a. The client has the full responsibility toward the safety and security of their guests.</p>\r\n<p>  b. The client and their guests are reminded to secure their valuables at all times. Management shall be free from any liability arising from any unforeseen events such as theft, robbery, accident, and any natural or man-made calamities that may cause harm to the client, their guests and their belongings before, during and after their function at the Father Mark Horan Hall.</p><br>\r\n<p>6. Damages</p><br>\r\n<p>  a. Should there result in any damage to property incurred by the client or guests within the Father Mark Horan Hall, the cost thereof, or reasonable replacement cost shall be accounted for by the client.</p><br>\r\n<p>7. Power Outage</p>\r\n<p>  a. In the event of power outage or brownout, there will be a stand-by generator which will provide power for lights, fans and some outlets but not the air conditioning units.</p><br>\r\n<p>There will be no refund if the Father Mark Horan Hall was booked with air conditioning.</p><br>\r\n<p>8. Catering Service</p><br>\r\n<p>  a. The client may bring in catering service provider of their choice, all accredited and unaccredited catering service providers must abide with the regulations and policies regarding the use of Father Mark Horan Hall.</p>\r\n<p>  b. The management shall be free from any legal suit and liability with regards to the services rendered by the catering service provider, including issues such as food poisoning and sanitation.</p><br>\r\n<p>9. Ground Rules</p><br>\r\n<p>  a. Doves and butterflies are not allowed inside the Father Mark Horan Hall.</p>\r\n<p>  b. Use of kerosene or gas torch is strictly prohibited inside Father Mark Horan Hall.</p>\r\n<p>  c. Swag and drape clothing are strictly prohibited.</p>\r\n<p>  d. Party poppers are not allowed inside the Father Mark Horan Hall.</p>\r\n<p>  e. Clients are allowed to bring a maximum of 6 cases of liquor such as Pale Pilsen, Red Horse, San Mig Light,or the same kind only.</p><br>\r\n<p>10. General Provision</p><br>\r\n<p>  a. The client shall hold the management free from any liability whatsoever for the use of the Father Mark Horan Hall.</p>\r\n<p>  b. The client\'s event coordinator must abide with all the rules and regulations. They shall inform the mamagement for any requests 2 weeks prior to the event. Any such requests may be declined without necessity of explanation.</p>', '<p>Thank you for requesting a venue. Scheudule your rental and settle your rental fee in your mailbox.</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/events_fmhh_venue/create', NULL, 1, '2019-06-19 18:39:03', 1, '2019-07-25 15:23:00', b'0');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `middle_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` int(11) NULL DEFAULT NULL,
  `province` int(11) NULL DEFAULT NULL,
  `country` int(11) NULL DEFAULT NULL,
  `mobile` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `landline` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `media_id` int(11) NULL DEFAULT NULL COMMENT 'photo',
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, 1, 'System', NULL, 'Admin', 'admin@mountcarmel.ph', '90 4th Street', 'New Manila', 137404, 1339, 1, '(927) 123-4567', '(02) 123-4567', 3, 1, '2019-06-21 12:38:50', 1, '2019-09-25 12:09:47', b'0');
INSERT INTO `user_info` VALUES (2, 2, 'John', NULL, 'Appleseed', 'john@appleseed.com', 'St. Mary Street', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-06-21 12:38:50', NULL, NULL, b'0');
INSERT INTO `user_info` VALUES (3, 3, 'Jane', NULL, 'Doe', 'jane@doe.com', 'St. Mary Street', NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, '2019-07-16 12:48:05', NULL, NULL, b'0');
INSERT INTO `user_info` VALUES (4, 4, 'John', NULL, 'Doe', 'john@doe.com', '78 St. Mary Street', 'Cubao', 137404, 1339, 1, '(123) 456-7890', '(12) 345-6789', 5, 1, '2019-07-17 22:46:53', 4, '2019-09-25 12:11:33', b'0');
INSERT INTO `user_info` VALUES (5, 5, 'Adrian', NULL, 'Evangelista', 'adriane.macer@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 1, '2019-07-18 21:16:07', NULL, NULL, b'0');
INSERT INTO `user_info` VALUES (6, 6, 'Adrian', NULL, 'Evangelista', 'adrianevangelista.bicolresearch@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 2, '2019-07-18 21:20:05', NULL, NULL, b'0');
INSERT INTO `user_info` VALUES (7, 7, 'Adrian', NULL, 'Evangelista', 'macer_0001@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 2, '2019-07-19 14:32:36', NULL, NULL, b'0');
INSERT INTO `user_info` VALUES (8, 8, 'adrian', NULL, 'the Great', 'adrianthegreat@email.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 2, '2019-07-23 13:49:38', NULL, NULL, b'0');
INSERT INTO `user_info` VALUES (9, 9, 'Priest', NULL, 'Appleseed', 'priest@mountcarmel.com', 'St. Mary Street', NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, '2019-06-21 12:38:50', NULL, NULL, b'0');
INSERT INTO `user_info` VALUES (10, 10, 'Raymond', NULL, 'Baguio', 'rpbaguio@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-09-03 19:02:55', NULL, NULL, b'0');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 1, 1, 'admin@mountcarmel.ph', '933e52712f2663bad0322db2e74fa2af8411c55a2611e193cb1076327c014f20fcea5e37355c92be7a43c89409dce639b207e2ea0ab3739e740283bde8479754', 1, '2019-06-21 12:36:40', 1, '2019-09-25 12:04:05', b'0');
INSERT INTO `users` VALUES (2, 1, 2, 'john@appleseed.com', '933e52712f2663bad0322db2e74fa2af8411c55a2611e193cb1076327c014f20fcea5e37355c92be7a43c89409dce639b207e2ea0ab3739e740283bde8479754', 1, '2019-06-21 12:37:34', 2, '2019-08-22 09:33:14', b'0');
INSERT INTO `users` VALUES (3, 1, 2, 'jane@doe.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 1, '2019-07-16 12:48:05', 3, '2019-09-18 23:46:20', b'0');
INSERT INTO `users` VALUES (4, 1, 2, 'john@doe.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 1, '2019-07-17 22:46:53', 4, '2019-09-25 12:10:49', b'0');
INSERT INTO `users` VALUES (5, 1, 2, 'adriane.macer@gmail.com', 'b109f3bbbc244eb82441917ed06d618b9008dd09b3befd1b5e07394c706a8bb980b1d7785e5976ec049b46df5f1326af5a2ea6d103fd07c95385ffab0cacbc86', 1, '2019-07-18 21:16:07', NULL, NULL, b'0');
INSERT INTO `users` VALUES (6, 1, 2, 'adrianevangelista.bicolresearch@gmail.com', '933e52712f2663bad0322db2e74fa2af8411c55a2611e193cb1076327c014f20fcea5e37355c92be7a43c89409dce639b207e2ea0ab3739e740283bde8479754', 2, '2019-07-18 21:20:05', NULL, NULL, b'0');
INSERT INTO `users` VALUES (7, 1, 2, 'macer_0001@yahoo.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 2, '2019-07-19 14:32:36', NULL, NULL, b'0');
INSERT INTO `users` VALUES (8, 1, 2, 'adrianthegreat@email.com', 'b109f3bbbc244eb82441917ed06d618b9008dd09b3befd1b5e07394c706a8bb980b1d7785e5976ec049b46df5f1326af5a2ea6d103fd07c95385ffab0cacbc86', 2, '2019-07-23 13:49:38', NULL, NULL, b'0');
INSERT INTO `users` VALUES (9, 1, 3, 'priest@mountcarmel.com', '933e52712f2663bad0322db2e74fa2af8411c55a2611e193cb1076327c014f20fcea5e37355c92be7a43c89409dce639b207e2ea0ab3739e740283bde8479754', 1, '2019-06-21 12:37:34', 1, '2019-07-25 16:17:24', b'0');
INSERT INTO `users` VALUES (10, 1, 2, 'rpbaguio@gmail.com', '6877bd313d43e612c7f0bd227784066f3b536300b7714e611da1271aad5d6b5d58397e3934f7434fa2c2aa3a79f3db0b6dfbaaaa60a660af3afc7f162b3379ae', 1, '2019-09-03 19:02:55', 10, '2019-09-03 19:05:25', b'0');

SET FOREIGN_KEY_CHECKS = 1;
