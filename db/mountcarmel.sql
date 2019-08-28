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

 Date: 28/08/2019 20:25:13
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
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `media_id` int(11) NOT NULL,
  `type_id` int(11) NULL DEFAULT NULL,
  `expiration` datetime(0) NOT NULL,
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
INSERT INTO `ads` VALUES (1, 1, 'Advertisement 1', 'Advertisement 1', '', 23, 111, '2022-08-23 00:00:00', 1, '2019-06-24 14:30:17', 1, '2019-08-23 09:09:12', b'0');
INSERT INTO `ads` VALUES (2, 1, 'Advertisement 2', 'Advertisement 2', '', 23, 111, '2022-08-23 00:00:00', 1, '2019-06-24 14:30:31', 1, '2019-08-23 09:09:07', b'0');
INSERT INTO `ads` VALUES (3, 1, 'Advertisement 3', 'Advertisement 3', '', 23, 111, '2022-08-23 00:00:00', 1, '2019-06-24 14:30:47', 1, '2019-08-23 09:09:01', b'0');
INSERT INTO `ads` VALUES (4, 1, 'Advertisement 4', 'Advertisement 4', '', 23, 111, '2022-08-23 00:00:00', 1, '2019-06-24 14:30:56', 1, '2019-08-23 09:08:55', b'0');
INSERT INTO `ads` VALUES (5, 1, 'Splash Ad 1', 'Splash Ad 1', '', 12, 112, '2022-08-23 00:00:00', 1, '2019-08-16 23:13:43', 1, '2019-08-23 09:08:35', b'0');
INSERT INTO `ads` VALUES (6, 1, 'Splash Ad 2', 'Splash Ad 2', 'https://play.google.com/store/apps', 14, 112, '2022-08-23 00:00:00', 1, '2019-08-16 23:14:10', 1, '2019-08-23 09:08:40', b'0');
INSERT INTO `ads` VALUES (7, 1, 'Splash Ad 3', 'Splash Ad 3', '', 13, 112, '2022-08-23 00:00:00', 1, '2019-08-16 23:14:45', 1, '2019-08-23 09:08:09', b'0');

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
INSERT INTO `boundaries` VALUES (1, 1, 'North', 'E. Rodriguez Avenue (formerly España Extension)', 1, '2019-06-19 16:46:24', 1, '2019-08-22 17:41:33', b'0');
INSERT INTO `boundaries` VALUES (2, 1, 'South', 'Ermitaño Creek', 1, '2019-06-19 16:46:53', 1, '2019-08-22 17:41:27', b'0');
INSERT INTO `boundaries` VALUES (3, 1, 'West', 'San Juan River', 1, '2019-06-19 16:47:19', 1, '2019-08-22 17:41:22', b'0');
INSERT INTO `boundaries` VALUES (4, 1, 'East', 'Balete Drive through N. Domingo and Horseshoe Drive until Ermitaño Creek', 1, '2019-06-19 16:47:43', 1, '2019-08-23 07:33:36', b'0');

-- ----------------------------
-- Table structure for branch
-- ----------------------------
DROP TABLE IF EXISTS `branch`;
CREATE TABLE `branch`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(2500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `main_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of branch
-- ----------------------------
INSERT INTO `branch` VALUES (1, 'Mount Carmel', 'Minor Basilica of the National Shrine of Our Lady of Mount Carmel', 1, 1, '2019-06-18 16:02:09', 1, '2019-06-18 16:03:01', b'0');

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
  `psgc_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
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
) ENGINE = InnoDB AUTO_INCREMENT = 1648 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES (1, '012801000', 'ADAMS', '01', '0128', '012801', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (2, '012802000', 'BACARRA', '01', '0128', '012802', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (3, '012803000', 'BADOC', '01', '0128', '012803', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (4, '012804000', 'BANGUI', '01', '0128', '012804', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (5, '012805000', 'CITY OF BATAC', '01', '0128', '012805', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (6, '012806000', 'BURGOS', '01', '0128', '012806', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (7, '012807000', 'CARASI', '01', '0128', '012807', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (8, '012808000', 'CURRIMAO', '01', '0128', '012808', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (9, '012809000', 'DINGRAS', '01', '0128', '012809', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (10, '012810000', 'DUMALNEG', '01', '0128', '012810', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (11, '012811000', 'BANNA (ESPIRITU)', '01', '0128', '012811', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (12, '012812000', 'LAOAG CITY (Capital)', '01', '0128', '012812', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (13, '012813000', 'MARCOS', '01', '0128', '012813', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (14, '012814000', 'NUEVA ERA', '01', '0128', '012814', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (15, '012815000', 'PAGUDPUD', '01', '0128', '012815', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (16, '012816000', 'PAOAY', '01', '0128', '012816', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (17, '012817000', 'PASUQUIN', '01', '0128', '012817', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (18, '012818000', 'PIDDIG', '01', '0128', '012818', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (19, '012819000', 'PINILI', '01', '0128', '012819', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (20, '012820000', 'SAN NICOLAS', '01', '0128', '012820', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (21, '012821000', 'SARRAT', '01', '0128', '012821', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (22, '012822000', 'SOLSONA', '01', '0128', '012822', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (23, '012823000', 'VINTAR', '01', '0128', '012823', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (24, '012901000', 'ALILEM', '01', '0129', '012901', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (25, '012902000', 'BANAYOYO', '01', '0129', '012902', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (26, '012903000', 'BANTAY', '01', '0129', '012903', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (27, '012904000', 'BURGOS', '01', '0129', '012904', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (28, '012905000', 'CABUGAO', '01', '0129', '012905', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (29, '012906000', 'CITY OF CANDON', '01', '0129', '012906', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (30, '012907000', 'CAOAYAN', '01', '0129', '012907', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (31, '012908000', 'CERVANTES', '01', '0129', '012908', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (32, '012909000', 'GALIMUYOD', '01', '0129', '012909', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (33, '012910000', 'GREGORIO DEL PILAR (CONCEPCION)', '01', '0129', '012910', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (34, '012911000', 'LIDLIDDA', '01', '0129', '012911', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (35, '012912000', 'MAGSINGAL', '01', '0129', '012912', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (36, '012913000', 'NAGBUKEL', '01', '0129', '012913', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (37, '012914000', 'NARVACAN', '01', '0129', '012914', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (38, '012915000', 'QUIRINO (ANGKAKI)', '01', '0129', '012915', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (39, '012916000', 'SALCEDO (BAUGEN)', '01', '0129', '012916', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (40, '012917000', 'SAN EMILIO', '01', '0129', '012917', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (41, '012918000', 'SAN ESTEBAN', '01', '0129', '012918', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (42, '012919000', 'SAN ILDEFONSO', '01', '0129', '012919', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (43, '012920000', 'SAN JUAN (LAPOG)', '01', '0129', '012920', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (44, '012921000', 'SAN VICENTE', '01', '0129', '012921', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (45, '012922000', 'SANTA', '01', '0129', '012922', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (46, '012923000', 'SANTA CATALINA', '01', '0129', '012923', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (47, '012924000', 'SANTA CRUZ', '01', '0129', '012924', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (48, '012925000', 'SANTA LUCIA', '01', '0129', '012925', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (49, '012926000', 'SANTA MARIA', '01', '0129', '012926', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (50, '012927000', 'SANTIAGO', '01', '0129', '012927', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (51, '012928000', 'SANTO DOMINGO', '01', '0129', '012928', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (52, '012929000', 'SIGAY', '01', '0129', '012929', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (53, '012930000', 'SINAIT', '01', '0129', '012930', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (54, '012931000', 'SUGPON', '01', '0129', '012931', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (55, '012932000', 'SUYO', '01', '0129', '012932', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (56, '012933000', 'TAGUDIN', '01', '0129', '012933', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (57, '012934000', 'CITY OF VIGAN (Capital)', '01', '0129', '012934', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (58, '013301000', 'AGOO', '01', '0133', '013301', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (59, '013302000', 'ARINGAY', '01', '0133', '013302', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (60, '013303000', 'BACNOTAN', '01', '0133', '013303', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (61, '013304000', 'BAGULIN', '01', '0133', '013304', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (62, '013305000', 'BALAOAN', '01', '0133', '013305', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (63, '013306000', 'BANGAR', '01', '0133', '013306', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (64, '013307000', 'BAUANG', '01', '0133', '013307', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (65, '013308000', 'BURGOS', '01', '0133', '013308', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (66, '013309000', 'CABA', '01', '0133', '013309', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (67, '013310000', 'LUNA', '01', '0133', '013310', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (68, '013311000', 'NAGUILIAN', '01', '0133', '013311', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (69, '013312000', 'PUGO', '01', '0133', '013312', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (70, '013313000', 'ROSARIO', '01', '0133', '013313', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (71, '013314000', 'CITY OF SAN FERNANDO (Capital)', '01', '0133', '013314', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (72, '013315000', 'SAN GABRIEL', '01', '0133', '013315', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (73, '013316000', 'SAN JUAN', '01', '0133', '013316', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (74, '013317000', 'SANTO TOMAS', '01', '0133', '013317', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (75, '013318000', 'SANTOL', '01', '0133', '013318', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (76, '013319000', 'SUDIPEN', '01', '0133', '013319', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (77, '013320000', 'TUBAO', '01', '0133', '013320', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (78, '015501000', 'AGNO', '01', '0155', '015501', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (79, '015502000', 'AGUILAR', '01', '0155', '015502', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (80, '015503000', 'CITY OF ALAMINOS', '01', '0155', '015503', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (81, '015504000', 'ALCALA', '01', '0155', '015504', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (82, '015505000', 'ANDA', '01', '0155', '015505', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (83, '015506000', 'ASINGAN', '01', '0155', '015506', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (84, '015507000', 'BALUNGAO', '01', '0155', '015507', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (85, '015508000', 'BANI', '01', '0155', '015508', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (86, '015509000', 'BASISTA', '01', '0155', '015509', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (87, '015510000', 'BAUTISTA', '01', '0155', '015510', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (88, '015511000', 'BAYAMBANG', '01', '0155', '015511', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (89, '015512000', 'BINALONAN', '01', '0155', '015512', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (90, '015513000', 'BINMALEY', '01', '0155', '015513', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (91, '015514000', 'BOLINAO', '01', '0155', '015514', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (92, '015515000', 'BUGALLON', '01', '0155', '015515', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (93, '015516000', 'BURGOS', '01', '0155', '015516', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (94, '015517000', 'CALASIAO', '01', '0155', '015517', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (95, '015518000', 'DAGUPAN CITY', '01', '0155', '015518', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (96, '015519000', 'DASOL', '01', '0155', '015519', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (97, '015520000', 'INFANTA', '01', '0155', '015520', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (98, '015521000', 'LABRADOR', '01', '0155', '015521', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (99, '015522000', 'LINGAYEN (Capital)', '01', '0155', '015522', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (100, '015523000', 'MABINI', '01', '0155', '015523', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (101, '015524000', 'MALASIQUI', '01', '0155', '015524', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (102, '015525000', 'MANAOAG', '01', '0155', '015525', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (103, '015526000', 'MANGALDAN', '01', '0155', '015526', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (104, '015527000', 'MANGATAREM', '01', '0155', '015527', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (105, '015528000', 'MAPANDAN', '01', '0155', '015528', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (106, '015529000', 'NATIVIDAD', '01', '0155', '015529', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (107, '015530000', 'POZORRUBIO', '01', '0155', '015530', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (108, '015531000', 'ROSALES', '01', '0155', '015531', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (109, '015532000', 'SAN CARLOS CITY', '01', '0155', '015532', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (110, '015533000', 'SAN FABIAN', '01', '0155', '015533', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (111, '015534000', 'SAN JACINTO', '01', '0155', '015534', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (112, '015535000', 'SAN MANUEL', '01', '0155', '015535', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (113, '015536000', 'SAN NICOLAS', '01', '0155', '015536', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (114, '015537000', 'SAN QUINTIN', '01', '0155', '015537', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (115, '015538000', 'SANTA BARBARA', '01', '0155', '015538', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (116, '015539000', 'SANTA MARIA', '01', '0155', '015539', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (117, '015540000', 'SANTO TOMAS', '01', '0155', '015540', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (118, '015541000', 'SISON', '01', '0155', '015541', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (119, '015542000', 'SUAL', '01', '0155', '015542', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (120, '015543000', 'TAYUG', '01', '0155', '015543', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (121, '015544000', 'UMINGAN', '01', '0155', '015544', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (122, '015545000', 'URBIZTONDO', '01', '0155', '015545', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (123, '015546000', 'CITY OF URDANETA', '01', '0155', '015546', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (124, '015547000', 'VILLASIS', '01', '0155', '015547', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (125, '015548000', 'LAOAC', '01', '0155', '015548', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (126, '020901000', 'BASCO (Capital)', '02', '0209', '020901', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (127, '020902000', 'ITBAYAT', '02', '0209', '020902', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (128, '020903000', 'IVANA', '02', '0209', '020903', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (129, '020904000', 'MAHATAO', '02', '0209', '020904', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (130, '020905000', 'SABTANG', '02', '0209', '020905', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (131, '020906000', 'UYUGAN', '02', '0209', '020906', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (132, '021501000', 'ABULUG', '02', '0215', '021501', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (133, '021502000', 'ALCALA', '02', '0215', '021502', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (134, '021503000', 'ALLACAPAN', '02', '0215', '021503', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (135, '021504000', 'AMULUNG', '02', '0215', '021504', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (136, '021505000', 'APARRI', '02', '0215', '021505', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (137, '021506000', 'BAGGAO', '02', '0215', '021506', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (138, '021507000', 'BALLESTEROS', '02', '0215', '021507', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (139, '021508000', 'BUGUEY', '02', '0215', '021508', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (140, '021509000', 'CALAYAN', '02', '0215', '021509', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (141, '021510000', 'CAMALANIUGAN', '02', '0215', '021510', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (142, '021511000', 'CLAVERIA', '02', '0215', '021511', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (143, '021512000', 'ENRILE', '02', '0215', '021512', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (144, '021513000', 'GATTARAN', '02', '0215', '021513', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (145, '021514000', 'GONZAGA', '02', '0215', '021514', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (146, '021515000', 'IGUIG', '02', '0215', '021515', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (147, '021516000', 'LAL-LO', '02', '0215', '021516', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (148, '021517000', 'LASAM', '02', '0215', '021517', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (149, '021518000', 'PAMPLONA', '02', '0215', '021518', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (150, '021519000', 'PEÑABLANCA', '02', '0215', '021519', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (151, '021520000', 'PIAT', '02', '0215', '021520', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (152, '021521000', 'RIZAL', '02', '0215', '021521', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (153, '021522000', 'SANCHEZ-MIRA', '02', '0215', '021522', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (154, '021523000', 'SANTA ANA', '02', '0215', '021523', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (155, '021524000', 'SANTA PRAXEDES', '02', '0215', '021524', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (156, '021525000', 'SANTA TERESITA', '02', '0215', '021525', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (157, '021526000', 'SANTO NIÑO (FAIRE)', '02', '0215', '021526', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (158, '021527000', 'SOLANA', '02', '0215', '021527', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (159, '021528000', 'TUAO', '02', '0215', '021528', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (160, '021529000', 'TUGUEGARAO CITY (Capital)', '02', '0215', '021529', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (161, '023101000', 'ALICIA', '02', '0231', '023101', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (162, '023102000', 'ANGADANAN', '02', '0231', '023102', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (163, '023103000', 'AURORA', '02', '0231', '023103', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (164, '023104000', 'BENITO SOLIVEN', '02', '0231', '023104', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (165, '023105000', 'BURGOS', '02', '0231', '023105', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (166, '023106000', 'CABAGAN', '02', '0231', '023106', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (167, '023107000', 'CABATUAN', '02', '0231', '023107', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (168, '023108000', 'CITY OF CAUAYAN', '02', '0231', '023108', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (169, '023109000', 'CORDON', '02', '0231', '023109', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (170, '023110000', 'DINAPIGUE', '02', '0231', '023110', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (171, '023111000', 'DIVILACAN', '02', '0231', '023111', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (172, '023112000', 'ECHAGUE', '02', '0231', '023112', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (173, '023113000', 'GAMU', '02', '0231', '023113', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (174, '023114000', 'ILAGAN CITY (Capital)', '02', '0231', '023114', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (175, '023115000', 'JONES', '02', '0231', '023115', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (176, '023116000', 'LUNA', '02', '0231', '023116', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (177, '023117000', 'MACONACON', '02', '0231', '023117', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (178, '023118000', 'DELFIN ALBANO (MAGSAYSAY)', '02', '0231', '023118', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (179, '023119000', 'MALLIG', '02', '0231', '023119', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (180, '023120000', 'NAGUILIAN', '02', '0231', '023120', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (181, '023121000', 'PALANAN', '02', '0231', '023121', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (182, '023122000', 'QUEZON', '02', '0231', '023122', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (183, '023123000', 'QUIRINO', '02', '0231', '023123', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (184, '023124000', 'RAMON', '02', '0231', '023124', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (185, '023125000', 'REINA MERCEDES', '02', '0231', '023125', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (186, '023126000', 'ROXAS', '02', '0231', '023126', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (187, '023127000', 'SAN AGUSTIN', '02', '0231', '023127', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (188, '023128000', 'SAN GUILLERMO', '02', '0231', '023128', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (189, '023129000', 'SAN ISIDRO', '02', '0231', '023129', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (190, '023130000', 'SAN MANUEL', '02', '0231', '023130', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (191, '023131000', 'SAN MARIANO', '02', '0231', '023131', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (192, '023132000', 'SAN MATEO', '02', '0231', '023132', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (193, '023133000', 'SAN PABLO', '02', '0231', '023133', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (194, '023134000', 'SANTA MARIA', '02', '0231', '023134', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (195, '023135000', 'CITY OF SANTIAGO', '02', '0231', '023135', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (196, '023136000', 'SANTO TOMAS', '02', '0231', '023136', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (197, '023137000', 'TUMAUINI', '02', '0231', '023137', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (198, '025001000', 'AMBAGUIO', '02', '0250', '025001', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (199, '025002000', 'ARITAO', '02', '0250', '025002', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (200, '025003000', 'BAGABAG', '02', '0250', '025003', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (201, '025004000', 'BAMBANG', '02', '0250', '025004', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (202, '025005000', 'BAYOMBONG (Capital)', '02', '0250', '025005', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (203, '025006000', 'DIADI', '02', '0250', '025006', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (204, '025007000', 'DUPAX DEL NORTE', '02', '0250', '025007', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (205, '025008000', 'DUPAX DEL SUR', '02', '0250', '025008', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (206, '025009000', 'KASIBU', '02', '0250', '025009', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (207, '025010000', 'KAYAPA', '02', '0250', '025010', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (208, '025011000', 'QUEZON', '02', '0250', '025011', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (209, '025012000', 'SANTA FE', '02', '0250', '025012', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (210, '025013000', 'SOLANO', '02', '0250', '025013', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (211, '025014000', 'VILLAVERDE', '02', '0250', '025014', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (212, '025015000', 'ALFONSO CASTANEDA', '02', '0250', '025015', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (213, '025701000', 'AGLIPAY', '02', '0257', '025701', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (214, '025702000', 'CABARROGUIS (Capital)', '02', '0257', '025702', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (215, '025703000', 'DIFFUN', '02', '0257', '025703', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (216, '025704000', 'MADDELA', '02', '0257', '025704', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (217, '025705000', 'SAGUDAY', '02', '0257', '025705', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (218, '025706000', 'NAGTIPUNAN', '02', '0257', '025706', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (219, '030801000', 'ABUCAY', '03', '0308', '030801', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (220, '030802000', 'BAGAC', '03', '0308', '030802', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (221, '030803000', 'CITY OF BALANGA (Capital)', '03', '0308', '030803', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (222, '030804000', 'DINALUPIHAN', '03', '0308', '030804', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (223, '030805000', 'HERMOSA', '03', '0308', '030805', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (224, '030806000', 'LIMAY', '03', '0308', '030806', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (225, '030807000', 'MARIVELES', '03', '0308', '030807', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (226, '030808000', 'MORONG', '03', '0308', '030808', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (227, '030809000', 'ORANI', '03', '0308', '030809', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (228, '030810000', 'ORION', '03', '0308', '030810', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (229, '030811000', 'PILAR', '03', '0308', '030811', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (230, '030812000', 'SAMAL', '03', '0308', '030812', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (231, '031401000', 'ANGAT', '03', '0314', '031401', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (232, '031402000', 'BALAGTAS (BIGAA)', '03', '0314', '031402', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (233, '031403000', 'BALIUAG', '03', '0314', '031403', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (234, '031404000', 'BOCAUE', '03', '0314', '031404', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (235, '031405000', 'BULACAN', '03', '0314', '031405', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (236, '031406000', 'BUSTOS', '03', '0314', '031406', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (237, '031407000', 'CALUMPIT', '03', '0314', '031407', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (238, '031408000', 'GUIGUINTO', '03', '0314', '031408', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (239, '031409000', 'HAGONOY', '03', '0314', '031409', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (240, '031410000', 'CITY OF MALOLOS (Capital)', '03', '0314', '031410', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (241, '031411000', 'MARILAO', '03', '0314', '031411', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (242, '031412000', 'CITY OF MEYCAUAYAN', '03', '0314', '031412', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (243, '031413000', 'NORZAGARAY', '03', '0314', '031413', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (244, '031414000', 'OBANDO', '03', '0314', '031414', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (245, '031415000', 'PANDI', '03', '0314', '031415', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (246, '031416000', 'PAOMBONG', '03', '0314', '031416', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (247, '031417000', 'PLARIDEL', '03', '0314', '031417', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (248, '031418000', 'PULILAN', '03', '0314', '031418', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (249, '031419000', 'SAN ILDEFONSO', '03', '0314', '031419', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (250, '031420000', 'CITY OF SAN JOSE DEL MONTE', '03', '0314', '031420', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (251, '031421000', 'SAN MIGUEL', '03', '0314', '031421', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (252, '031422000', 'SAN RAFAEL', '03', '0314', '031422', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (253, '031423000', 'SANTA MARIA', '03', '0314', '031423', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (254, '031424000', 'DOÑA REMEDIOS TRINIDAD', '03', '0314', '031424', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (255, '034901000', 'ALIAGA', '03', '0349', '034901', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (256, '034902000', 'BONGABON', '03', '0349', '034902', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (257, '034903000', 'CABANATUAN CITY', '03', '0349', '034903', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (258, '034904000', 'CABIAO', '03', '0349', '034904', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (259, '034905000', 'CARRANGLAN', '03', '0349', '034905', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (260, '034906000', 'CUYAPO', '03', '0349', '034906', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (261, '034907000', 'GABALDON (BITULOK & SABANI)', '03', '0349', '034907', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (262, '034908000', 'CITY OF GAPAN', '03', '0349', '034908', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (263, '034909000', 'GENERAL MAMERTO NATIVIDAD', '03', '0349', '034909', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (264, '034910000', 'GENERAL TINIO (PAPAYA)', '03', '0349', '034910', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (265, '034911000', 'GUIMBA', '03', '0349', '034911', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (266, '034912000', 'JAEN', '03', '0349', '034912', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (267, '034913000', 'LAUR', '03', '0349', '034913', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (268, '034914000', 'LICAB', '03', '0349', '034914', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (269, '034915000', 'LLANERA', '03', '0349', '034915', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (270, '034916000', 'LUPAO', '03', '0349', '034916', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (271, '034917000', 'SCIENCE CITY OF MUÑOZ', '03', '0349', '034917', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (272, '034918000', 'NAMPICUAN', '03', '0349', '034918', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (273, '034919000', 'PALAYAN CITY (Capital)', '03', '0349', '034919', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (274, '034920000', 'PANTABANGAN', '03', '0349', '034920', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (275, '034921000', 'PEÑARANDA', '03', '0349', '034921', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (276, '034922000', 'QUEZON', '03', '0349', '034922', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (277, '034923000', 'RIZAL', '03', '0349', '034923', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (278, '034924000', 'SAN ANTONIO', '03', '0349', '034924', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (279, '034925000', 'SAN ISIDRO', '03', '0349', '034925', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (280, '034926000', 'SAN JOSE CITY', '03', '0349', '034926', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (281, '034927000', 'SAN LEONARDO', '03', '0349', '034927', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (282, '034928000', 'SANTA ROSA', '03', '0349', '034928', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (283, '034929000', 'SANTO DOMINGO', '03', '0349', '034929', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (284, '034930000', 'TALAVERA', '03', '0349', '034930', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (285, '034931000', 'TALUGTUG', '03', '0349', '034931', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (286, '034932000', 'ZARAGOZA', '03', '0349', '034932', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (287, '035401000', 'ANGELES CITY', '03', '0354', '035401', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (288, '035402000', 'APALIT', '03', '0354', '035402', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (289, '035403000', 'ARAYAT', '03', '0354', '035403', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (290, '035404000', 'BACOLOR', '03', '0354', '035404', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (291, '035405000', 'CANDABA', '03', '0354', '035405', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (292, '035406000', 'FLORIDABLANCA', '03', '0354', '035406', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (293, '035407000', 'GUAGUA', '03', '0354', '035407', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (294, '035408000', 'LUBAO', '03', '0354', '035408', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (295, '035409000', 'MABALACAT CITY', '03', '0354', '035409', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (296, '035410000', 'MACABEBE', '03', '0354', '035410', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (297, '035411000', 'MAGALANG', '03', '0354', '035411', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (298, '035412000', 'MASANTOL', '03', '0354', '035412', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (299, '035413000', 'MEXICO', '03', '0354', '035413', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (300, '035414000', 'MINALIN', '03', '0354', '035414', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (301, '035415000', 'PORAC', '03', '0354', '035415', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (302, '035416000', 'CITY OF SAN FERNANDO (Capital)', '03', '0354', '035416', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (303, '035417000', 'SAN LUIS', '03', '0354', '035417', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (304, '035418000', 'SAN SIMON', '03', '0354', '035418', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (305, '035419000', 'SANTA ANA', '03', '0354', '035419', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (306, '035420000', 'SANTA RITA', '03', '0354', '035420', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (307, '035421000', 'SANTO TOMAS', '03', '0354', '035421', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (308, '035422000', 'SASMUAN (Sexmoan)', '03', '0354', '035422', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (309, '036901000', 'ANAO', '03', '0369', '036901', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (310, '036902000', 'BAMBAN', '03', '0369', '036902', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (311, '036903000', 'CAMILING', '03', '0369', '036903', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (312, '036904000', 'CAPAS', '03', '0369', '036904', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (313, '036905000', 'CONCEPCION', '03', '0369', '036905', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (314, '036906000', 'GERONA', '03', '0369', '036906', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (315, '036907000', 'LA PAZ', '03', '0369', '036907', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (316, '036908000', 'MAYANTOC', '03', '0369', '036908', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (317, '036909000', 'MONCADA', '03', '0369', '036909', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (318, '036910000', 'PANIQUI', '03', '0369', '036910', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (319, '036911000', 'PURA', '03', '0369', '036911', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (320, '036912000', 'RAMOS', '03', '0369', '036912', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (321, '036913000', 'SAN CLEMENTE', '03', '0369', '036913', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (322, '036914000', 'SAN MANUEL', '03', '0369', '036914', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (323, '036915000', 'SANTA IGNACIA', '03', '0369', '036915', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (324, '036916000', 'CITY OF TARLAC (Capital)', '03', '0369', '036916', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (325, '036917000', 'VICTORIA', '03', '0369', '036917', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (326, '036918000', 'SAN JOSE', '03', '0369', '036918', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (327, '037101000', 'BOTOLAN', '03', '0371', '037101', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (328, '037102000', 'CABANGAN', '03', '0371', '037102', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (329, '037103000', 'CANDELARIA', '03', '0371', '037103', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (330, '037104000', 'CASTILLEJOS', '03', '0371', '037104', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (331, '037105000', 'IBA (Capital)', '03', '0371', '037105', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (332, '037106000', 'MASINLOC', '03', '0371', '037106', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (333, '037107000', 'OLONGAPO CITY', '03', '0371', '037107', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (334, '037108000', 'PALAUIG', '03', '0371', '037108', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (335, '037109000', 'SAN ANTONIO', '03', '0371', '037109', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (336, '037110000', 'SAN FELIPE', '03', '0371', '037110', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (337, '037111000', 'SAN MARCELINO', '03', '0371', '037111', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (338, '037112000', 'SAN NARCISO', '03', '0371', '037112', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (339, '037113000', 'SANTA CRUZ', '03', '0371', '037113', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (340, '037114000', 'SUBIC', '03', '0371', '037114', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (341, '037701000', 'BALER (Capital)', '03', '0377', '037701', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (342, '037702000', 'CASIGURAN', '03', '0377', '037702', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (343, '037703000', 'DILASAG', '03', '0377', '037703', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (344, '037704000', 'DINALUNGAN', '03', '0377', '037704', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (345, '037705000', 'DINGALAN', '03', '0377', '037705', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (346, '037706000', 'DIPACULAO', '03', '0377', '037706', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (347, '037707000', 'MARIA AURORA', '03', '0377', '037707', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (348, '037708000', 'SAN LUIS', '03', '0377', '037708', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (349, '041001000', 'AGONCILLO', '04', '0410', '041001', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (350, '041002000', 'ALITAGTAG', '04', '0410', '041002', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (351, '041003000', 'BALAYAN', '04', '0410', '041003', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (352, '041004000', 'BALETE', '04', '0410', '041004', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (353, '041005000', 'BATANGAS CITY (Capital)', '04', '0410', '041005', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (354, '041006000', 'BAUAN', '04', '0410', '041006', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (355, '041007000', 'CALACA', '04', '0410', '041007', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (356, '041008000', 'CALATAGAN', '04', '0410', '041008', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (357, '041009000', 'CUENCA', '04', '0410', '041009', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (358, '041010000', 'IBAAN', '04', '0410', '041010', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (359, '041011000', 'LAUREL', '04', '0410', '041011', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (360, '041012000', 'LEMERY', '04', '0410', '041012', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (361, '041013000', 'LIAN', '04', '0410', '041013', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (362, '041014000', 'LIPA CITY', '04', '0410', '041014', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (363, '041015000', 'LOBO', '04', '0410', '041015', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (364, '041016000', 'MABINI', '04', '0410', '041016', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (365, '041017000', 'MALVAR', '04', '0410', '041017', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (366, '041018000', 'MATAASNAKAHOY', '04', '0410', '041018', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (367, '041019000', 'NASUGBU', '04', '0410', '041019', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (368, '041020000', 'PADRE GARCIA', '04', '0410', '041020', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (369, '041021000', 'ROSARIO', '04', '0410', '041021', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (370, '041022000', 'SAN JOSE', '04', '0410', '041022', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (371, '041023000', 'SAN JUAN', '04', '0410', '041023', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (372, '041024000', 'SAN LUIS', '04', '0410', '041024', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (373, '041025000', 'SAN NICOLAS', '04', '0410', '041025', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (374, '041026000', 'SAN PASCUAL', '04', '0410', '041026', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (375, '041027000', 'SANTA TERESITA', '04', '0410', '041027', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (376, '041028000', 'SANTO TOMAS', '04', '0410', '041028', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (377, '041029000', 'TAAL', '04', '0410', '041029', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (378, '041030000', 'TALISAY', '04', '0410', '041030', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (379, '041031000', 'CITY OF TANAUAN', '04', '0410', '041031', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (380, '041032000', 'TAYSAN', '04', '0410', '041032', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (381, '041033000', 'TINGLOY', '04', '0410', '041033', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (382, '041034000', 'TUY', '04', '0410', '041034', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (383, '042101000', 'ALFONSO', '04', '0421', '042101', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (384, '042102000', 'AMADEO', '04', '0421', '042102', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (385, '042103000', 'BACOOR CITY', '04', '0421', '042103', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (386, '042104000', 'CARMONA', '04', '0421', '042104', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (387, '042105000', 'CAVITE CITY', '04', '0421', '042105', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (388, '042106000', 'CITY OF DASMARIÑAS', '04', '0421', '042106', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (389, '042107000', 'GENERAL EMILIO AGUINALDO', '04', '0421', '042107', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (390, '042108000', 'GENERAL TRIAS', '04', '0421', '042108', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (391, '042109000', 'IMUS CITY', '04', '0421', '042109', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (392, '042110000', 'INDANG', '04', '0421', '042110', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (393, '042111000', 'KAWIT', '04', '0421', '042111', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (394, '042112000', 'MAGALLANES', '04', '0421', '042112', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (395, '042113000', 'MARAGONDON', '04', '0421', '042113', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (396, '042114000', 'MENDEZ (MENDEZ-NUÑEZ)', '04', '0421', '042114', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (397, '042115000', 'NAIC', '04', '0421', '042115', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (398, '042116000', 'NOVELETA', '04', '0421', '042116', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (399, '042117000', 'ROSARIO', '04', '0421', '042117', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (400, '042118000', 'SILANG', '04', '0421', '042118', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (401, '042119000', 'TAGAYTAY CITY', '04', '0421', '042119', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (402, '042120000', 'TANZA', '04', '0421', '042120', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (403, '042121000', 'TERNATE', '04', '0421', '042121', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (404, '042122000', 'TRECE MARTIRES CITY (Capital)', '04', '0421', '042122', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (405, '042123000', 'GEN. MARIANO ALVAREZ', '04', '0421', '042123', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (406, '043401000', 'ALAMINOS', '04', '0434', '043401', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (407, '043402000', 'BAY', '04', '0434', '043402', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (408, '043403000', 'CITY OF BIÑAN', '04', '0434', '043403', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (409, '043404000', 'CABUYAO CITY', '04', '0434', '043404', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (410, '043405000', 'CITY OF CALAMBA', '04', '0434', '043405', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (411, '043406000', 'CALAUAN', '04', '0434', '043406', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (412, '043407000', 'CAVINTI', '04', '0434', '043407', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (413, '043408000', 'FAMY', '04', '0434', '043408', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (414, '043409000', 'KALAYAAN', '04', '0434', '043409', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (415, '043410000', 'LILIW', '04', '0434', '043410', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (416, '043411000', 'LOS BAÑOS', '04', '0434', '043411', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (417, '043412000', 'LUISIANA', '04', '0434', '043412', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (418, '043413000', 'LUMBAN', '04', '0434', '043413', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (419, '043414000', 'MABITAC', '04', '0434', '043414', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (420, '043415000', 'MAGDALENA', '04', '0434', '043415', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (421, '043416000', 'MAJAYJAY', '04', '0434', '043416', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (422, '043417000', 'NAGCARLAN', '04', '0434', '043417', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (423, '043418000', 'PAETE', '04', '0434', '043418', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (424, '043419000', 'PAGSANJAN', '04', '0434', '043419', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (425, '043420000', 'PAKIL', '04', '0434', '043420', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (426, '043421000', 'PANGIL', '04', '0434', '043421', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (427, '043422000', 'PILA', '04', '0434', '043422', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (428, '043423000', 'RIZAL', '04', '0434', '043423', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (429, '043424000', 'SAN PABLO CITY', '04', '0434', '043424', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (430, '043425000', 'CITY OF SAN PEDRO', '04', '0434', '043425', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (431, '043426000', 'SANTA CRUZ (Capital)', '04', '0434', '043426', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (432, '043427000', 'SANTA MARIA', '04', '0434', '043427', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (433, '043428000', 'CITY OF SANTA ROSA', '04', '0434', '043428', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (434, '043429000', 'SINILOAN', '04', '0434', '043429', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (435, '043430000', 'VICTORIA', '04', '0434', '043430', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (436, '045601000', 'AGDANGAN', '04', '0456', '045601', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (437, '045602000', 'ALABAT', '04', '0456', '045602', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (438, '045603000', 'ATIMONAN', '04', '0456', '045603', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (439, '045605000', 'BUENAVISTA', '04', '0456', '045605', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (440, '045606000', 'BURDEOS', '04', '0456', '045606', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (441, '045607000', 'CALAUAG', '04', '0456', '045607', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (442, '045608000', 'CANDELARIA', '04', '0456', '045608', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (443, '045610000', 'CATANAUAN', '04', '0456', '045610', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (444, '045615000', 'DOLORES', '04', '0456', '045615', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (445, '045616000', 'GENERAL LUNA', '04', '0456', '045616', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (446, '045617000', 'GENERAL NAKAR', '04', '0456', '045617', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (447, '045618000', 'GUINAYANGAN', '04', '0456', '045618', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (448, '045619000', 'GUMACA', '04', '0456', '045619', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (449, '045620000', 'INFANTA', '04', '0456', '045620', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (450, '045621000', 'JOMALIG', '04', '0456', '045621', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (451, '045622000', 'LOPEZ', '04', '0456', '045622', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (452, '045623000', 'LUCBAN', '04', '0456', '045623', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (453, '045624000', 'LUCENA CITY (Capital)', '04', '0456', '045624', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (454, '045625000', 'MACALELON', '04', '0456', '045625', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (455, '045627000', 'MAUBAN', '04', '0456', '045627', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (456, '045628000', 'MULANAY', '04', '0456', '045628', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (457, '045629000', 'PADRE BURGOS', '04', '0456', '045629', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (458, '045630000', 'PAGBILAO', '04', '0456', '045630', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (459, '045631000', 'PANUKULAN', '04', '0456', '045631', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (460, '045632000', 'PATNANUNGAN', '04', '0456', '045632', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (461, '045633000', 'PEREZ', '04', '0456', '045633', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (462, '045634000', 'PITOGO', '04', '0456', '045634', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (463, '045635000', 'PLARIDEL', '04', '0456', '045635', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (464, '045636000', 'POLILLO', '04', '0456', '045636', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (465, '045637000', 'QUEZON', '04', '0456', '045637', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (466, '045638000', 'REAL', '04', '0456', '045638', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (467, '045639000', 'SAMPALOC', '04', '0456', '045639', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (468, '045640000', 'SAN ANDRES', '04', '0456', '045640', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (469, '045641000', 'SAN ANTONIO', '04', '0456', '045641', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (470, '045642000', 'SAN FRANCISCO (AURORA)', '04', '0456', '045642', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (471, '045644000', 'SAN NARCISO', '04', '0456', '045644', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (472, '045645000', 'SARIAYA', '04', '0456', '045645', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (473, '045646000', 'TAGKAWAYAN', '04', '0456', '045646', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (474, '045647000', 'CITY OF TAYABAS', '04', '0456', '045647', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (475, '045648000', 'TIAONG', '04', '0456', '045648', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (476, '045649000', 'UNISAN', '04', '0456', '045649', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (477, '045801000', 'ANGONO', '04', '0458', '045801', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (478, '045802000', 'CITY OF ANTIPOLO', '04', '0458', '045802', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (479, '045803000', 'BARAS', '04', '0458', '045803', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (480, '045804000', 'BINANGONAN', '04', '0458', '045804', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (481, '045805000', 'CAINTA', '04', '0458', '045805', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (482, '045806000', 'CARDONA', '04', '0458', '045806', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (483, '045807000', 'JALA-JALA', '04', '0458', '045807', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (484, '045808000', 'RODRIGUEZ (MONTALBAN)', '04', '0458', '045808', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (485, '045809000', 'MORONG', '04', '0458', '045809', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (486, '045810000', 'PILILLA', '04', '0458', '045810', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (487, '045811000', 'SAN MATEO', '04', '0458', '045811', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (488, '045812000', 'TANAY', '04', '0458', '045812', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (489, '045813000', 'TAYTAY', '04', '0458', '045813', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (490, '045814000', 'TERESA', '04', '0458', '045814', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (491, '174001000', 'BOAC (Capital)', '17', '1740', '174001', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (492, '174002000', 'BUENAVISTA', '17', '1740', '174002', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (493, '174003000', 'GASAN', '17', '1740', '174003', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (494, '174004000', 'MOGPOG', '17', '1740', '174004', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (495, '174005000', 'SANTA CRUZ', '17', '1740', '174005', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (496, '174006000', 'TORRIJOS', '17', '1740', '174006', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (497, '175101000', 'ABRA DE ILOG', '17', '1751', '175101', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (498, '175102000', 'CALINTAAN', '17', '1751', '175102', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (499, '175103000', 'LOOC', '17', '1751', '175103', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (500, '175104000', 'LUBANG', '17', '1751', '175104', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (501, '175105000', 'MAGSAYSAY', '17', '1751', '175105', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (502, '175106000', 'MAMBURAO (Capital)', '17', '1751', '175106', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (503, '175107000', 'PALUAN', '17', '1751', '175107', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (504, '175108000', 'RIZAL', '17', '1751', '175108', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (505, '175109000', 'SABLAYAN', '17', '1751', '175109', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (506, '175110000', 'SAN JOSE', '17', '1751', '175110', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (507, '175111000', 'SANTA CRUZ', '17', '1751', '175111', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (508, '175201000', 'BACO', '17', '1752', '175201', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (509, '175202000', 'BANSUD', '17', '1752', '175202', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (510, '175203000', 'BONGABONG', '17', '1752', '175203', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (511, '175204000', 'BULALACAO (SAN PEDRO)', '17', '1752', '175204', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (512, '175205000', 'CITY OF CALAPAN (Capital)', '17', '1752', '175205', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (513, '175206000', 'GLORIA', '17', '1752', '175206', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (514, '175207000', 'MANSALAY', '17', '1752', '175207', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (515, '175208000', 'NAUJAN', '17', '1752', '175208', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (516, '175209000', 'PINAMALAYAN', '17', '1752', '175209', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (517, '175210000', 'POLA', '17', '1752', '175210', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (518, '175211000', 'PUERTO GALERA', '17', '1752', '175211', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (519, '175212000', 'ROXAS', '17', '1752', '175212', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (520, '175213000', 'SAN TEODORO', '17', '1752', '175213', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (521, '175214000', 'SOCORRO', '17', '1752', '175214', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (522, '175215000', 'VICTORIA', '17', '1752', '175215', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (523, '175301000', 'ABORLAN', '17', '1753', '175301', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (524, '175302000', 'AGUTAYA', '17', '1753', '175302', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (525, '175303000', 'ARACELI', '17', '1753', '175303', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (526, '175304000', 'BALABAC', '17', '1753', '175304', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (527, '175305000', 'BATARAZA', '17', '1753', '175305', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (528, '175306000', 'BROOKE\'S POINT', '17', '1753', '175306', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (529, '175307000', 'BUSUANGA', '17', '1753', '175307', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (530, '175308000', 'CAGAYANCILLO', '17', '1753', '175308', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (531, '175309000', 'CORON', '17', '1753', '175309', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (532, '175310000', 'CUYO', '17', '1753', '175310', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (533, '175311000', 'DUMARAN', '17', '1753', '175311', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (534, '175312000', 'EL NIDO (BACUIT)', '17', '1753', '175312', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (535, '175313000', 'LINAPACAN', '17', '1753', '175313', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (536, '175314000', 'MAGSAYSAY', '17', '1753', '175314', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (537, '175315000', 'NARRA', '17', '1753', '175315', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (538, '175316000', 'PUERTO PRINCESA CITY (Capital)', '17', '1753', '175316', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (539, '175317000', 'QUEZON', '17', '1753', '175317', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (540, '175318000', 'ROXAS', '17', '1753', '175318', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (541, '175319000', 'SAN VICENTE', '17', '1753', '175319', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (542, '175320000', 'TAYTAY', '17', '1753', '175320', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (543, '175321000', 'KALAYAAN', '17', '1753', '175321', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (544, '175322000', 'CULION', '17', '1753', '175322', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (545, '175323000', 'RIZAL (MARCOS)', '17', '1753', '175323', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (546, '175324000', 'SOFRONIO ESPAÑOLA', '17', '1753', '175324', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (547, '175901000', 'ALCANTARA', '17', '1759', '175901', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (548, '175902000', 'BANTON', '17', '1759', '175902', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (549, '175903000', 'CAJIDIOCAN', '17', '1759', '175903', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (550, '175904000', 'CALATRAVA', '17', '1759', '175904', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (551, '175905000', 'CONCEPCION', '17', '1759', '175905', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (552, '175906000', 'CORCUERA', '17', '1759', '175906', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (553, '175907000', 'LOOC', '17', '1759', '175907', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (554, '175908000', 'MAGDIWANG', '17', '1759', '175908', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (555, '175909000', 'ODIONGAN', '17', '1759', '175909', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (556, '175910000', 'ROMBLON (Capital)', '17', '1759', '175910', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (557, '175911000', 'SAN AGUSTIN', '17', '1759', '175911', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (558, '175912000', 'SAN ANDRES', '17', '1759', '175912', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (559, '175913000', 'SAN FERNANDO', '17', '1759', '175913', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (560, '175914000', 'SAN JOSE', '17', '1759', '175914', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (561, '175915000', 'SANTA FE', '17', '1759', '175915', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (562, '175916000', 'FERROL', '17', '1759', '175916', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (563, '175917000', 'SANTA MARIA (IMELDA)', '17', '1759', '175917', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (564, '050501000', 'BACACAY', '05', '0505', '050501', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (565, '050502000', 'CAMALIG', '05', '0505', '050502', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (566, '050503000', 'DARAGA (LOCSIN)', '05', '0505', '050503', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (567, '050504000', 'GUINOBATAN', '05', '0505', '050504', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (568, '050505000', 'JOVELLAR', '05', '0505', '050505', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (569, '050506000', 'LEGAZPI CITY (Capital)', '05', '0505', '050506', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (570, '050507000', 'LIBON', '05', '0505', '050507', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (571, '050508000', 'CITY OF LIGAO', '05', '0505', '050508', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (572, '050509000', 'MALILIPOT', '05', '0505', '050509', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (573, '050510000', 'MALINAO', '05', '0505', '050510', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (574, '050511000', 'MANITO', '05', '0505', '050511', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (575, '050512000', 'OAS', '05', '0505', '050512', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (576, '050513000', 'PIO DURAN', '05', '0505', '050513', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (577, '050514000', 'POLANGUI', '05', '0505', '050514', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (578, '050515000', 'RAPU-RAPU', '05', '0505', '050515', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (579, '050516000', 'SANTO DOMINGO (LIBOG)', '05', '0505', '050516', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (580, '050517000', 'CITY OF TABACO', '05', '0505', '050517', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (581, '050518000', 'TIWI', '05', '0505', '050518', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (582, '051601000', 'BASUD', '05', '0516', '051601', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (583, '051602000', 'CAPALONGA', '05', '0516', '051602', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (584, '051603000', 'DAET (Capital)', '05', '0516', '051603', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (585, '051604000', 'SAN LORENZO RUIZ (IMELDA)', '05', '0516', '051604', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (586, '051605000', 'JOSE PANGANIBAN', '05', '0516', '051605', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (587, '051606000', 'LABO', '05', '0516', '051606', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (588, '051607000', 'MERCEDES', '05', '0516', '051607', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (589, '051608000', 'PARACALE', '05', '0516', '051608', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (590, '051609000', 'SAN VICENTE', '05', '0516', '051609', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (591, '051610000', 'SANTA ELENA', '05', '0516', '051610', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (592, '051611000', 'TALISAY', '05', '0516', '051611', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (593, '051612000', 'VINZONS', '05', '0516', '051612', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (594, '051701000', 'BAAO', '05', '0517', '051701', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (595, '051702000', 'BALATAN', '05', '0517', '051702', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (596, '051703000', 'BATO', '05', '0517', '051703', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (597, '051704000', 'BOMBON', '05', '0517', '051704', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (598, '051705000', 'BUHI', '05', '0517', '051705', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (599, '051706000', 'BULA', '05', '0517', '051706', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (600, '051707000', 'CABUSAO', '05', '0517', '051707', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (601, '051708000', 'CALABANGA', '05', '0517', '051708', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (602, '051709000', 'CAMALIGAN', '05', '0517', '051709', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (603, '051710000', 'CANAMAN', '05', '0517', '051710', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (604, '051711000', 'CARAMOAN', '05', '0517', '051711', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (605, '051712000', 'DEL GALLEGO', '05', '0517', '051712', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (606, '051713000', 'GAINZA', '05', '0517', '051713', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (607, '051714000', 'GARCHITORENA', '05', '0517', '051714', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (608, '051715000', 'GOA', '05', '0517', '051715', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (609, '051716000', 'IRIGA CITY', '05', '0517', '051716', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (610, '051717000', 'LAGONOY', '05', '0517', '051717', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (611, '051718000', 'LIBMANAN', '05', '0517', '051718', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (612, '051719000', 'LUPI', '05', '0517', '051719', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (613, '051720000', 'MAGARAO', '05', '0517', '051720', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (614, '051721000', 'MILAOR', '05', '0517', '051721', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (615, '051722000', 'MINALABAC', '05', '0517', '051722', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (616, '051723000', 'NABUA', '05', '0517', '051723', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (617, '051724000', 'NAGA CITY', '05', '0517', '051724', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (618, '051725000', 'OCAMPO', '05', '0517', '051725', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (619, '051726000', 'PAMPLONA', '05', '0517', '051726', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (620, '051727000', 'PASACAO', '05', '0517', '051727', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (621, '051728000', 'PILI (Capital)', '05', '0517', '051728', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (622, '051729000', 'PRESENTACION (PARUBCAN)', '05', '0517', '051729', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (623, '051730000', 'RAGAY', '05', '0517', '051730', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (624, '051731000', 'SAGÑAY', '05', '0517', '051731', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (625, '051732000', 'SAN FERNANDO', '05', '0517', '051732', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (626, '051733000', 'SAN JOSE', '05', '0517', '051733', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (627, '051734000', 'SIPOCOT', '05', '0517', '051734', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (628, '051735000', 'SIRUMA', '05', '0517', '051735', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (629, '051736000', 'TIGAON', '05', '0517', '051736', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (630, '051737000', 'TINAMBAC', '05', '0517', '051737', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (631, '052001000', 'BAGAMANOC', '05', '0520', '052001', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (632, '052002000', 'BARAS', '05', '0520', '052002', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (633, '052003000', 'BATO', '05', '0520', '052003', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (634, '052004000', 'CARAMORAN', '05', '0520', '052004', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (635, '052005000', 'GIGMOTO', '05', '0520', '052005', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (636, '052006000', 'PANDAN', '05', '0520', '052006', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (637, '052007000', 'PANGANIBAN (PAYO)', '05', '0520', '052007', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (638, '052008000', 'SAN ANDRES (CALOLBON)', '05', '0520', '052008', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (639, '052009000', 'SAN MIGUEL', '05', '0520', '052009', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (640, '052010000', 'VIGA', '05', '0520', '052010', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (641, '052011000', 'VIRAC (Capital)', '05', '0520', '052011', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (642, '054101000', 'AROROY', '05', '0541', '054101', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (643, '054102000', 'BALENO', '05', '0541', '054102', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (644, '054103000', 'BALUD', '05', '0541', '054103', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (645, '054104000', 'BATUAN', '05', '0541', '054104', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (646, '054105000', 'CATAINGAN', '05', '0541', '054105', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (647, '054106000', 'CAWAYAN', '05', '0541', '054106', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (648, '054107000', 'CLAVERIA', '05', '0541', '054107', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (649, '054108000', 'DIMASALANG', '05', '0541', '054108', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (650, '054109000', 'ESPERANZA', '05', '0541', '054109', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (651, '054110000', 'MANDAON', '05', '0541', '054110', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (652, '054111000', 'CITY OF MASBATE (Capital)', '05', '0541', '054111', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (653, '054112000', 'MILAGROS', '05', '0541', '054112', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (654, '054113000', 'MOBO', '05', '0541', '054113', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (655, '054114000', 'MONREAL', '05', '0541', '054114', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (656, '054115000', 'PALANAS', '05', '0541', '054115', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (657, '054116000', 'PIO V. CORPUZ (LIMBUHAN)', '05', '0541', '054116', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (658, '054117000', 'PLACER', '05', '0541', '054117', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (659, '054118000', 'SAN FERNANDO', '05', '0541', '054118', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (660, '054119000', 'SAN JACINTO', '05', '0541', '054119', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (661, '054120000', 'SAN PASCUAL', '05', '0541', '054120', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (662, '054121000', 'USON', '05', '0541', '054121', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (663, '056202000', 'BARCELONA', '05', '0562', '056202', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (664, '056203000', 'BULAN', '05', '0562', '056203', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (665, '056204000', 'BULUSAN', '05', '0562', '056204', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (666, '056205000', 'CASIGURAN', '05', '0562', '056205', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (667, '056206000', 'CASTILLA', '05', '0562', '056206', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (668, '056207000', 'DONSOL', '05', '0562', '056207', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (669, '056208000', 'GUBAT', '05', '0562', '056208', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (670, '056209000', 'IROSIN', '05', '0562', '056209', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (671, '056210000', 'JUBAN', '05', '0562', '056210', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (672, '056211000', 'MAGALLANES', '05', '0562', '056211', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (673, '056212000', 'MATNOG', '05', '0562', '056212', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (674, '056213000', 'PILAR', '05', '0562', '056213', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (675, '056214000', 'PRIETO DIAZ', '05', '0562', '056214', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (676, '056215000', 'SANTA MAGDALENA', '05', '0562', '056215', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (677, '056216000', 'CITY OF SORSOGON (Capital)', '05', '0562', '056216', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (678, '060401000', 'ALTAVAS', '06', '0604', '060401', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (679, '060402000', 'BALETE', '06', '0604', '060402', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (680, '060403000', 'BANGA', '06', '0604', '060403', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (681, '060404000', 'BATAN', '06', '0604', '060404', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (682, '060405000', 'BURUANGA', '06', '0604', '060405', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (683, '060406000', 'IBAJAY', '06', '0604', '060406', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (684, '060407000', 'KALIBO (Capital)', '06', '0604', '060407', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (685, '060408000', 'LEZO', '06', '0604', '060408', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (686, '060409000', 'LIBACAO', '06', '0604', '060409', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (687, '060410000', 'MADALAG', '06', '0604', '060410', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (688, '060411000', 'MAKATO', '06', '0604', '060411', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (689, '060412000', 'MALAY', '06', '0604', '060412', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (690, '060413000', 'MALINAO', '06', '0604', '060413', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (691, '060414000', 'NABAS', '06', '0604', '060414', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (692, '060415000', 'NEW WASHINGTON', '06', '0604', '060415', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (693, '060416000', 'NUMANCIA', '06', '0604', '060416', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (694, '060417000', 'TANGALAN', '06', '0604', '060417', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (695, '060601000', 'ANINI-Y', '06', '0606', '060601', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (696, '060602000', 'BARBAZA', '06', '0606', '060602', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (697, '060603000', 'BELISON', '06', '0606', '060603', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (698, '060604000', 'BUGASONG', '06', '0606', '060604', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (699, '060605000', 'CALUYA', '06', '0606', '060605', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (700, '060606000', 'CULASI', '06', '0606', '060606', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (701, '060607000', 'TOBIAS FORNIER (DAO)', '06', '0606', '060607', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (702, '060608000', 'HAMTIC', '06', '0606', '060608', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (703, '060609000', 'LAUA-AN', '06', '0606', '060609', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (704, '060610000', 'LIBERTAD', '06', '0606', '060610', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (705, '060611000', 'PANDAN', '06', '0606', '060611', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (706, '060612000', 'PATNONGON', '06', '0606', '060612', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (707, '060613000', 'SAN JOSE (Capital)', '06', '0606', '060613', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (708, '060614000', 'SAN REMIGIO', '06', '0606', '060614', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (709, '060615000', 'SEBASTE', '06', '0606', '060615', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (710, '060616000', 'SIBALOM', '06', '0606', '060616', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (711, '060617000', 'TIBIAO', '06', '0606', '060617', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (712, '060618000', 'VALDERRAMA', '06', '0606', '060618', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (713, '061901000', 'CUARTERO', '06', '0619', '061901', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (714, '061902000', 'DAO', '06', '0619', '061902', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (715, '061903000', 'DUMALAG', '06', '0619', '061903', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (716, '061904000', 'DUMARAO', '06', '0619', '061904', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (717, '061905000', 'IVISAN', '06', '0619', '061905', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (718, '061906000', 'JAMINDAN', '06', '0619', '061906', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (719, '061907000', 'MA-AYON', '06', '0619', '061907', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (720, '061908000', 'MAMBUSAO', '06', '0619', '061908', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (721, '061909000', 'PANAY', '06', '0619', '061909', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (722, '061910000', 'PANITAN', '06', '0619', '061910', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (723, '061911000', 'PILAR', '06', '0619', '061911', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (724, '061912000', 'PONTEVEDRA', '06', '0619', '061912', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (725, '061913000', 'PRESIDENT ROXAS', '06', '0619', '061913', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (726, '061914000', 'ROXAS CITY (Capital)', '06', '0619', '061914', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (727, '061915000', 'SAPI-AN', '06', '0619', '061915', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (728, '061916000', 'SIGMA', '06', '0619', '061916', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (729, '061917000', 'TAPAZ', '06', '0619', '061917', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (730, '063001000', 'AJUY', '06', '0630', '063001', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (731, '063002000', 'ALIMODIAN', '06', '0630', '063002', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (732, '063003000', 'ANILAO', '06', '0630', '063003', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (733, '063004000', 'BADIANGAN', '06', '0630', '063004', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (734, '063005000', 'BALASAN', '06', '0630', '063005', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (735, '063006000', 'BANATE', '06', '0630', '063006', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (736, '063007000', 'BAROTAC NUEVO', '06', '0630', '063007', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (737, '063008000', 'BAROTAC VIEJO', '06', '0630', '063008', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (738, '063009000', 'BATAD', '06', '0630', '063009', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (739, '063010000', 'BINGAWAN', '06', '0630', '063010', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (740, '063012000', 'CABATUAN', '06', '0630', '063012', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (741, '063013000', 'CALINOG', '06', '0630', '063013', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (742, '063014000', 'CARLES', '06', '0630', '063014', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (743, '063015000', 'CONCEPCION', '06', '0630', '063015', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (744, '063016000', 'DINGLE', '06', '0630', '063016', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (745, '063017000', 'DUEÑAS', '06', '0630', '063017', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (746, '063018000', 'DUMANGAS', '06', '0630', '063018', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (747, '063019000', 'ESTANCIA', '06', '0630', '063019', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (748, '063020000', 'GUIMBAL', '06', '0630', '063020', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (749, '063021000', 'IGBARAS', '06', '0630', '063021', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (750, '063022000', 'ILOILO CITY (Capital)', '06', '0630', '063022', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (751, '063023000', 'JANIUAY', '06', '0630', '063023', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (752, '063025000', 'LAMBUNAO', '06', '0630', '063025', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (753, '063026000', 'LEGANES', '06', '0630', '063026', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (754, '063027000', 'LEMERY', '06', '0630', '063027', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (755, '063028000', 'LEON', '06', '0630', '063028', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (756, '063029000', 'MAASIN', '06', '0630', '063029', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (757, '063030000', 'MIAGAO', '06', '0630', '063030', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (758, '063031000', 'MINA', '06', '0630', '063031', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (759, '063032000', 'NEW LUCENA', '06', '0630', '063032', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (760, '063034000', 'OTON', '06', '0630', '063034', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (761, '063035000', 'CITY OF PASSI', '06', '0630', '063035', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (762, '063036000', 'PAVIA', '06', '0630', '063036', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (763, '063037000', 'POTOTAN', '06', '0630', '063037', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (764, '063038000', 'SAN DIONISIO', '06', '0630', '063038', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (765, '063039000', 'SAN ENRIQUE', '06', '0630', '063039', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (766, '063040000', 'SAN JOAQUIN', '06', '0630', '063040', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (767, '063041000', 'SAN MIGUEL', '06', '0630', '063041', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (768, '063042000', 'SAN RAFAEL', '06', '0630', '063042', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (769, '063043000', 'SANTA BARBARA', '06', '0630', '063043', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (770, '063044000', 'SARA', '06', '0630', '063044', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (771, '063045000', 'TIGBAUAN', '06', '0630', '063045', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (772, '063046000', 'TUBUNGAN', '06', '0630', '063046', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (773, '063047000', 'ZARRAGA', '06', '0630', '063047', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (774, '064501000', 'BACOLOD CITY (Capital)', '06', '0645', '064501', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (775, '064502000', 'BAGO CITY', '06', '0645', '064502', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (776, '064503000', 'BINALBAGAN', '06', '0645', '064503', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (777, '064504000', 'CADIZ CITY', '06', '0645', '064504', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (778, '064505000', 'CALATRAVA', '06', '0645', '064505', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (779, '064506000', 'CANDONI', '06', '0645', '064506', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (780, '064507000', 'CAUAYAN', '06', '0645', '064507', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (781, '064508000', 'ENRIQUE B. MAGALONA (SARAVIA)', '06', '0645', '064508', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (782, '064509000', 'CITY OF ESCALANTE', '06', '0645', '064509', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (783, '064510000', 'CITY OF HIMAMAYLAN', '06', '0645', '064510', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (784, '064511000', 'HINIGARAN', '06', '0645', '064511', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (785, '064512000', 'HINOBA-AN (ASIA)', '06', '0645', '064512', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (786, '064513000', 'ILOG', '06', '0645', '064513', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (787, '064514000', 'ISABELA', '06', '0645', '064514', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (788, '064515000', 'CITY OF KABANKALAN', '06', '0645', '064515', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (789, '064516000', 'LA CARLOTA CITY', '06', '0645', '064516', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (790, '064517000', 'LA CASTELLANA', '06', '0645', '064517', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (791, '064518000', 'MANAPLA', '06', '0645', '064518', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (792, '064519000', 'MOISES PADILLA (MAGALLON)', '06', '0645', '064519', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (793, '064520000', 'MURCIA', '06', '0645', '064520', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (794, '064521000', 'PONTEVEDRA', '06', '0645', '064521', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (795, '064522000', 'PULUPANDAN', '06', '0645', '064522', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (796, '064523000', 'SAGAY CITY', '06', '0645', '064523', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (797, '064524000', 'SAN CARLOS CITY', '06', '0645', '064524', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (798, '064525000', 'SAN ENRIQUE', '06', '0645', '064525', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (799, '064526000', 'SILAY CITY', '06', '0645', '064526', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (800, '064527000', 'CITY OF SIPALAY', '06', '0645', '064527', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (801, '064528000', 'CITY OF TALISAY', '06', '0645', '064528', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (802, '064529000', 'TOBOSO', '06', '0645', '064529', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (803, '064530000', 'VALLADOLID', '06', '0645', '064530', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (804, '064531000', 'CITY OF VICTORIAS', '06', '0645', '064531', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (805, '064532000', 'SALVADOR BENEDICTO', '06', '0645', '064532', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (806, '067901000', 'BUENAVISTA', '06', '0679', '067901', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (807, '067902000', 'JORDAN (Capital)', '06', '0679', '067902', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (808, '067903000', 'NUEVA VALENCIA', '06', '0679', '067903', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (809, '067904000', 'SAN LORENZO', '06', '0679', '067904', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (810, '067905000', 'SIBUNAG', '06', '0679', '067905', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (811, '071201000', 'ALBURQUERQUE', '07', '0712', '071201', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (812, '071202000', 'ALICIA', '07', '0712', '071202', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (813, '071203000', 'ANDA', '07', '0712', '071203', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (814, '071204000', 'ANTEQUERA', '07', '0712', '071204', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (815, '071205000', 'BACLAYON', '07', '0712', '071205', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (816, '071206000', 'BALILIHAN', '07', '0712', '071206', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (817, '071207000', 'BATUAN', '07', '0712', '071207', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (818, '071208000', 'BILAR', '07', '0712', '071208', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (819, '071209000', 'BUENAVISTA', '07', '0712', '071209', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (820, '071210000', 'CALAPE', '07', '0712', '071210', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (821, '071211000', 'CANDIJAY', '07', '0712', '071211', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (822, '071212000', 'CARMEN', '07', '0712', '071212', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (823, '071213000', 'CATIGBIAN', '07', '0712', '071213', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (824, '071214000', 'CLARIN', '07', '0712', '071214', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (825, '071215000', 'CORELLA', '07', '0712', '071215', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (826, '071216000', 'CORTES', '07', '0712', '071216', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (827, '071217000', 'DAGOHOY', '07', '0712', '071217', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (828, '071218000', 'DANAO', '07', '0712', '071218', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (829, '071219000', 'DAUIS', '07', '0712', '071219', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (830, '071220000', 'DIMIAO', '07', '0712', '071220', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (831, '071221000', 'DUERO', '07', '0712', '071221', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (832, '071222000', 'GARCIA HERNANDEZ', '07', '0712', '071222', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (833, '071223000', 'GUINDULMAN', '07', '0712', '071223', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (834, '071224000', 'INABANGA', '07', '0712', '071224', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (835, '071225000', 'JAGNA', '07', '0712', '071225', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (836, '071226000', 'JETAFE', '07', '0712', '071226', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (837, '071227000', 'LILA', '07', '0712', '071227', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (838, '071228000', 'LOAY', '07', '0712', '071228', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (839, '071229000', 'LOBOC', '07', '0712', '071229', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (840, '071230000', 'LOON', '07', '0712', '071230', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (841, '071231000', 'MABINI', '07', '0712', '071231', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (842, '071232000', 'MARIBOJOC', '07', '0712', '071232', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (843, '071233000', 'PANGLAO', '07', '0712', '071233', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (844, '071234000', 'PILAR', '07', '0712', '071234', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (845, '071235000', 'PRES. CARLOS P. GARCIA (PITOGO)', '07', '0712', '071235', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (846, '071236000', 'SAGBAYAN (BORJA)', '07', '0712', '071236', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (847, '071237000', 'SAN ISIDRO', '07', '0712', '071237', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (848, '071238000', 'SAN MIGUEL', '07', '0712', '071238', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (849, '071239000', 'SEVILLA', '07', '0712', '071239', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (850, '071240000', 'SIERRA BULLONES', '07', '0712', '071240', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (851, '071241000', 'SIKATUNA', '07', '0712', '071241', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (852, '071242000', 'TAGBILARAN CITY (Capital)', '07', '0712', '071242', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (853, '071243000', 'TALIBON', '07', '0712', '071243', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (854, '071244000', 'TRINIDAD', '07', '0712', '071244', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (855, '071245000', 'TUBIGON', '07', '0712', '071245', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (856, '071246000', 'UBAY', '07', '0712', '071246', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (857, '071247000', 'VALENCIA', '07', '0712', '071247', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (858, '071248000', 'BIEN UNIDO', '07', '0712', '071248', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (859, '072201000', 'ALCANTARA', '07', '0722', '072201', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (860, '072202000', 'ALCOY', '07', '0722', '072202', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (861, '072203000', 'ALEGRIA', '07', '0722', '072203', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (862, '072204000', 'ALOGUINSAN', '07', '0722', '072204', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (863, '072205000', 'ARGAO', '07', '0722', '072205', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (864, '072206000', 'ASTURIAS', '07', '0722', '072206', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (865, '072207000', 'BADIAN', '07', '0722', '072207', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (866, '072208000', 'BALAMBAN', '07', '0722', '072208', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (867, '072209000', 'BANTAYAN', '07', '0722', '072209', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (868, '072210000', 'BARILI', '07', '0722', '072210', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (869, '072211000', 'CITY OF BOGO', '07', '0722', '072211', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (870, '072212000', 'BOLJOON', '07', '0722', '072212', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (871, '072213000', 'BORBON', '07', '0722', '072213', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (872, '072214000', 'CITY OF CARCAR', '07', '0722', '072214', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (873, '072215000', 'CARMEN', '07', '0722', '072215', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (874, '072216000', 'CATMON', '07', '0722', '072216', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (875, '072217000', 'CEBU CITY (Capital)', '07', '0722', '072217', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (876, '072218000', 'COMPOSTELA', '07', '0722', '072218', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (877, '072219000', 'CONSOLACION', '07', '0722', '072219', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (878, '072220000', 'CORDOVA', '07', '0722', '072220', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (879, '072221000', 'DAANBANTAYAN', '07', '0722', '072221', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (880, '072222000', 'DALAGUETE', '07', '0722', '072222', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (881, '072223000', 'DANAO CITY', '07', '0722', '072223', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (882, '072224000', 'DUMANJUG', '07', '0722', '072224', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (883, '072225000', 'GINATILAN', '07', '0722', '072225', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (884, '072226000', 'LAPU-LAPU CITY (OPON)', '07', '0722', '072226', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (885, '072227000', 'LILOAN', '07', '0722', '072227', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (886, '072228000', 'MADRIDEJOS', '07', '0722', '072228', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (887, '072229000', 'MALABUYOC', '07', '0722', '072229', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (888, '072230000', 'MANDAUE CITY', '07', '0722', '072230', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (889, '072231000', 'MEDELLIN', '07', '0722', '072231', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (890, '072232000', 'MINGLANILLA', '07', '0722', '072232', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (891, '072233000', 'MOALBOAL', '07', '0722', '072233', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (892, '072234000', 'CITY OF NAGA', '07', '0722', '072234', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (893, '072235000', 'OSLOB', '07', '0722', '072235', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (894, '072236000', 'PILAR', '07', '0722', '072236', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (895, '072237000', 'PINAMUNGAHAN', '07', '0722', '072237', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (896, '072238000', 'PORO', '07', '0722', '072238', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (897, '072239000', 'RONDA', '07', '0722', '072239', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (898, '072240000', 'SAMBOAN', '07', '0722', '072240', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (899, '072241000', 'SAN FERNANDO', '07', '0722', '072241', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (900, '072242000', 'SAN FRANCISCO', '07', '0722', '072242', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (901, '072243000', 'SAN REMIGIO', '07', '0722', '072243', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (902, '072244000', 'SANTA FE', '07', '0722', '072244', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (903, '072245000', 'SANTANDER', '07', '0722', '072245', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (904, '072246000', 'SIBONGA', '07', '0722', '072246', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (905, '072247000', 'SOGOD', '07', '0722', '072247', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (906, '072248000', 'TABOGON', '07', '0722', '072248', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (907, '072249000', 'TABUELAN', '07', '0722', '072249', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (908, '072250000', 'CITY OF TALISAY', '07', '0722', '072250', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (909, '072251000', 'TOLEDO CITY', '07', '0722', '072251', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (910, '072252000', 'TUBURAN', '07', '0722', '072252', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (911, '072253000', 'TUDELA', '07', '0722', '072253', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (912, '074601000', 'AMLAN (AYUQUITAN)', '07', '0746', '074601', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (913, '074602000', 'AYUNGON', '07', '0746', '074602', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (914, '074603000', 'BACONG', '07', '0746', '074603', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (915, '074604000', 'BAIS CITY', '07', '0746', '074604', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (916, '074605000', 'BASAY', '07', '0746', '074605', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (917, '074606000', 'CITY OF BAYAWAN (TULONG)', '07', '0746', '074606', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (918, '074607000', 'BINDOY (PAYABON)', '07', '0746', '074607', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (919, '074608000', 'CANLAON CITY', '07', '0746', '074608', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (920, '074609000', 'DAUIN', '07', '0746', '074609', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (921, '074610000', 'DUMAGUETE CITY (Capital)', '07', '0746', '074610', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (922, '074611000', 'CITY OF GUIHULNGAN', '07', '0746', '074611', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (923, '074612000', 'JIMALALUD', '07', '0746', '074612', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (924, '074613000', 'LA LIBERTAD', '07', '0746', '074613', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (925, '074614000', 'MABINAY', '07', '0746', '074614', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (926, '074615000', 'MANJUYOD', '07', '0746', '074615', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (927, '074616000', 'PAMPLONA', '07', '0746', '074616', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (928, '074617000', 'SAN JOSE', '07', '0746', '074617', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (929, '074618000', 'SANTA CATALINA', '07', '0746', '074618', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (930, '074619000', 'SIATON', '07', '0746', '074619', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (931, '074620000', 'SIBULAN', '07', '0746', '074620', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (932, '074621000', 'CITY OF TANJAY', '07', '0746', '074621', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (933, '074622000', 'TAYASAN', '07', '0746', '074622', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (934, '074623000', 'VALENCIA (LUZURRIAGA)', '07', '0746', '074623', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (935, '074624000', 'VALLEHERMOSO', '07', '0746', '074624', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (936, '074625000', 'ZAMBOANGUITA', '07', '0746', '074625', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (937, '076101000', 'ENRIQUE VILLANUEVA', '07', '0761', '076101', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (938, '076102000', 'LARENA', '07', '0761', '076102', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (939, '076103000', 'LAZI', '07', '0761', '076103', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (940, '076104000', 'MARIA', '07', '0761', '076104', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (941, '076105000', 'SAN JUAN', '07', '0761', '076105', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (942, '076106000', 'SIQUIJOR (Capital)', '07', '0761', '076106', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (943, '082601000', 'ARTECHE', '08', '0826', '082601', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (944, '082602000', 'BALANGIGA', '08', '0826', '082602', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (945, '082603000', 'BALANGKAYAN', '08', '0826', '082603', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (946, '082604000', 'CITY OF BORONGAN (Capital)', '08', '0826', '082604', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (947, '082605000', 'CAN-AVID', '08', '0826', '082605', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (948, '082606000', 'DOLORES', '08', '0826', '082606', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (949, '082607000', 'GENERAL MACARTHUR', '08', '0826', '082607', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (950, '082608000', 'GIPORLOS', '08', '0826', '082608', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (951, '082609000', 'GUIUAN', '08', '0826', '082609', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (952, '082610000', 'HERNANI', '08', '0826', '082610', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (953, '082611000', 'JIPAPAD', '08', '0826', '082611', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (954, '082612000', 'LAWAAN', '08', '0826', '082612', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (955, '082613000', 'LLORENTE', '08', '0826', '082613', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (956, '082614000', 'MASLOG', '08', '0826', '082614', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (957, '082615000', 'MAYDOLONG', '08', '0826', '082615', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (958, '082616000', 'MERCEDES', '08', '0826', '082616', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (959, '082617000', 'ORAS', '08', '0826', '082617', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (960, '082618000', 'QUINAPONDAN', '08', '0826', '082618', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (961, '082619000', 'SALCEDO', '08', '0826', '082619', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (962, '082620000', 'SAN JULIAN', '08', '0826', '082620', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (963, '082621000', 'SAN POLICARPO', '08', '0826', '082621', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (964, '082622000', 'SULAT', '08', '0826', '082622', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (965, '082623000', 'TAFT', '08', '0826', '082623', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (966, '083701000', 'ABUYOG', '08', '0837', '083701', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (967, '083702000', 'ALANGALANG', '08', '0837', '083702', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (968, '083703000', 'ALBUERA', '08', '0837', '083703', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (969, '083705000', 'BABATNGON', '08', '0837', '083705', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (970, '083706000', 'BARUGO', '08', '0837', '083706', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (971, '083707000', 'BATO', '08', '0837', '083707', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (972, '083708000', 'CITY OF BAYBAY', '08', '0837', '083708', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (973, '083710000', 'BURAUEN', '08', '0837', '083710', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (974, '083713000', 'CALUBIAN', '08', '0837', '083713', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (975, '083714000', 'CAPOOCAN', '08', '0837', '083714', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (976, '083715000', 'CARIGARA', '08', '0837', '083715', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (977, '083717000', 'DAGAMI', '08', '0837', '083717', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (978, '083718000', 'DULAG', '08', '0837', '083718', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (979, '083719000', 'HILONGOS', '08', '0837', '083719', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (980, '083720000', 'HINDANG', '08', '0837', '083720', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (981, '083721000', 'INOPACAN', '08', '0837', '083721', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (982, '083722000', 'ISABEL', '08', '0837', '083722', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (983, '083723000', 'JARO', '08', '0837', '083723', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (984, '083724000', 'JAVIER (BUGHO)', '08', '0837', '083724', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (985, '083725000', 'JULITA', '08', '0837', '083725', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (986, '083726000', 'KANANGA', '08', '0837', '083726', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (987, '083728000', 'LA PAZ', '08', '0837', '083728', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (988, '083729000', 'LEYTE', '08', '0837', '083729', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (989, '083730000', 'MACARTHUR', '08', '0837', '083730', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (990, '083731000', 'MAHAPLAG', '08', '0837', '083731', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (991, '083733000', 'MATAG-OB', '08', '0837', '083733', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (992, '083734000', 'MATALOM', '08', '0837', '083734', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (993, '083735000', 'MAYORGA', '08', '0837', '083735', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (994, '083736000', 'MERIDA', '08', '0837', '083736', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (995, '083738000', 'ORMOC CITY', '08', '0837', '083738', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (996, '083739000', 'PALO', '08', '0837', '083739', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (997, '083740000', 'PALOMPON', '08', '0837', '083740', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (998, '083741000', 'PASTRANA', '08', '0837', '083741', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (999, '083742000', 'SAN ISIDRO', '08', '0837', '083742', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1000, '083743000', 'SAN MIGUEL', '08', '0837', '083743', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1001, '083744000', 'SANTA FE', '08', '0837', '083744', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1002, '083745000', 'TABANGO', '08', '0837', '083745', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1003, '083746000', 'TABONTABON', '08', '0837', '083746', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1004, '083747000', 'TACLOBAN CITY (Capital)', '08', '0837', '083747', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1005, '083748000', 'TANAUAN', '08', '0837', '083748', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1006, '083749000', 'TOLOSA', '08', '0837', '083749', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1007, '083750000', 'TUNGA', '08', '0837', '083750', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1008, '083751000', 'VILLABA', '08', '0837', '083751', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1009, '084801000', 'ALLEN', '08', '0848', '084801', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1010, '084802000', 'BIRI', '08', '0848', '084802', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1011, '084803000', 'BOBON', '08', '0848', '084803', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1012, '084804000', 'CAPUL', '08', '0848', '084804', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1013, '084805000', 'CATARMAN (Capital)', '08', '0848', '084805', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1014, '084806000', 'CATUBIG', '08', '0848', '084806', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1015, '084807000', 'GAMAY', '08', '0848', '084807', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1016, '084808000', 'LAOANG', '08', '0848', '084808', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1017, '084809000', 'LAPINIG', '08', '0848', '084809', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1018, '084810000', 'LAS NAVAS', '08', '0848', '084810', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1019, '084811000', 'LAVEZARES', '08', '0848', '084811', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1020, '084812000', 'MAPANAS', '08', '0848', '084812', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1021, '084813000', 'MONDRAGON', '08', '0848', '084813', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1022, '084814000', 'PALAPAG', '08', '0848', '084814', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1023, '084815000', 'PAMBUJAN', '08', '0848', '084815', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1024, '084816000', 'ROSARIO', '08', '0848', '084816', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1025, '084817000', 'SAN ANTONIO', '08', '0848', '084817', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1026, '084818000', 'SAN ISIDRO', '08', '0848', '084818', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1027, '084819000', 'SAN JOSE', '08', '0848', '084819', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1028, '084820000', 'SAN ROQUE', '08', '0848', '084820', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1029, '084821000', 'SAN VICENTE', '08', '0848', '084821', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1030, '084822000', 'SILVINO LOBOS', '08', '0848', '084822', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1031, '084823000', 'VICTORIA', '08', '0848', '084823', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1032, '084824000', 'LOPE DE VEGA', '08', '0848', '084824', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1033, '086001000', 'ALMAGRO', '08', '0860', '086001', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1034, '086002000', 'BASEY', '08', '0860', '086002', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1035, '086003000', 'CALBAYOG CITY', '08', '0860', '086003', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1036, '086004000', 'CALBIGA', '08', '0860', '086004', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1037, '086005000', 'CITY OF CATBALOGAN (Capital)', '08', '0860', '086005', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1038, '086006000', 'DARAM', '08', '0860', '086006', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1039, '086007000', 'GANDARA', '08', '0860', '086007', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1040, '086008000', 'HINABANGAN', '08', '0860', '086008', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1041, '086009000', 'JIABONG', '08', '0860', '086009', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1042, '086010000', 'MARABUT', '08', '0860', '086010', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1043, '086011000', 'MATUGUINAO', '08', '0860', '086011', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1044, '086012000', 'MOTIONG', '08', '0860', '086012', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1045, '086013000', 'PINABACDAO', '08', '0860', '086013', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1046, '086014000', 'SAN JOSE DE BUAN', '08', '0860', '086014', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1047, '086015000', 'SAN SEBASTIAN', '08', '0860', '086015', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1048, '086016000', 'SANTA MARGARITA', '08', '0860', '086016', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1049, '086017000', 'SANTA RITA', '08', '0860', '086017', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1050, '086018000', 'SANTO NIÑO', '08', '0860', '086018', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1051, '086019000', 'TALALORA', '08', '0860', '086019', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1052, '086020000', 'TARANGNAN', '08', '0860', '086020', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1053, '086021000', 'VILLAREAL', '08', '0860', '086021', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1054, '086022000', 'PARANAS (WRIGHT)', '08', '0860', '086022', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1055, '086023000', 'ZUMARRAGA', '08', '0860', '086023', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1056, '086024000', 'TAGAPUL-AN', '08', '0860', '086024', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1057, '086025000', 'SAN JORGE', '08', '0860', '086025', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1058, '086026000', 'PAGSANGHAN', '08', '0860', '086026', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1059, '086401000', 'ANAHAWAN', '08', '0864', '086401', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1060, '086402000', 'BONTOC', '08', '0864', '086402', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1061, '086403000', 'HINUNANGAN', '08', '0864', '086403', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1062, '086404000', 'HINUNDAYAN', '08', '0864', '086404', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1063, '086405000', 'LIBAGON', '08', '0864', '086405', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1064, '086406000', 'LILOAN', '08', '0864', '086406', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1065, '086407000', 'CITY OF MAASIN (Capital)', '08', '0864', '086407', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1066, '086408000', 'MACROHON', '08', '0864', '086408', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1067, '086409000', 'MALITBOG', '08', '0864', '086409', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1068, '086410000', 'PADRE BURGOS', '08', '0864', '086410', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1069, '086411000', 'PINTUYAN', '08', '0864', '086411', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1070, '086412000', 'SAINT BERNARD', '08', '0864', '086412', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1071, '086413000', 'SAN FRANCISCO', '08', '0864', '086413', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1072, '086414000', 'SAN JUAN (CABALIAN)', '08', '0864', '086414', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1073, '086415000', 'SAN RICARDO', '08', '0864', '086415', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1074, '086416000', 'SILAGO', '08', '0864', '086416', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1075, '086417000', 'SOGOD', '08', '0864', '086417', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1076, '086418000', 'TOMAS OPPUS', '08', '0864', '086418', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1077, '086419000', 'LIMASAWA', '08', '0864', '086419', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1078, '087801000', 'ALMERIA', '08', '0878', '087801', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1079, '087802000', 'BILIRAN', '08', '0878', '087802', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1080, '087803000', 'CABUCGAYAN', '08', '0878', '087803', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1081, '087804000', 'CAIBIRAN', '08', '0878', '087804', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1082, '087805000', 'CULABA', '08', '0878', '087805', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1083, '087806000', 'KAWAYAN', '08', '0878', '087806', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1084, '087807000', 'MARIPIPI', '08', '0878', '087807', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1085, '087808000', 'NAVAL (Capital)', '08', '0878', '087808', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1086, '097201000', 'DAPITAN CITY', '09', '0972', '097201', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1087, '097202000', 'DIPOLOG CITY (Capital)', '09', '0972', '097202', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1088, '097203000', 'KATIPUNAN', '09', '0972', '097203', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1089, '097204000', 'LA LIBERTAD', '09', '0972', '097204', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1090, '097205000', 'LABASON', '09', '0972', '097205', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1091, '097206000', 'LILOY', '09', '0972', '097206', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1092, '097207000', 'MANUKAN', '09', '0972', '097207', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1093, '097208000', 'MUTIA', '09', '0972', '097208', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1094, '097209000', 'PIÑAN (NEW PIÑAN)', '09', '0972', '097209', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1095, '097210000', 'POLANCO', '09', '0972', '097210', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1096, '097211000', 'PRES. MANUEL A. ROXAS', '09', '0972', '097211', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1097, '097212000', 'RIZAL', '09', '0972', '097212', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1098, '097213000', 'SALUG', '09', '0972', '097213', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1099, '097214000', 'SERGIO OSMEÑA SR.', '09', '0972', '097214', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1100, '097215000', 'SIAYAN', '09', '0972', '097215', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1101, '097216000', 'SIBUCO', '09', '0972', '097216', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1102, '097217000', 'SIBUTAD', '09', '0972', '097217', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1103, '097218000', 'SINDANGAN', '09', '0972', '097218', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1104, '097219000', 'SIOCON', '09', '0972', '097219', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1105, '097220000', 'SIRAWAI', '09', '0972', '097220', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1106, '097221000', 'TAMPILISAN', '09', '0972', '097221', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1107, '097222000', 'JOSE DALMAN (PONOT)', '09', '0972', '097222', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1108, '097223000', 'GUTALAC', '09', '0972', '097223', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1109, '097224000', 'BALIGUIAN', '09', '0972', '097224', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1110, '097225000', 'GODOD', '09', '0972', '097225', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1111, '097226000', 'BACUNGAN (Leon T. Postigo)', '09', '0972', '097226', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1112, '097227000', 'KALAWIT', '09', '0972', '097227', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1113, '097302000', 'AURORA', '09', '0973', '097302', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1114, '097303000', 'BAYOG', '09', '0973', '097303', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1115, '097305000', 'DIMATALING', '09', '0973', '097305', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1116, '097306000', 'DINAS', '09', '0973', '097306', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1117, '097307000', 'DUMALINAO', '09', '0973', '097307', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1118, '097308000', 'DUMINGAG', '09', '0973', '097308', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1119, '097311000', 'KUMALARANG', '09', '0973', '097311', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1120, '097312000', 'LABANGAN', '09', '0973', '097312', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1121, '097313000', 'LAPUYAN', '09', '0973', '097313', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1122, '097315000', 'MAHAYAG', '09', '0973', '097315', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1123, '097317000', 'MARGOSATUBIG', '09', '0973', '097317', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1124, '097318000', 'MIDSALIP', '09', '0973', '097318', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1125, '097319000', 'MOLAVE', '09', '0973', '097319', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1126, '097322000', 'PAGADIAN CITY (Capital)', '09', '0973', '097322', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1127, '097323000', 'RAMON MAGSAYSAY (LIARGO)', '09', '0973', '097323', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1128, '097324000', 'SAN MIGUEL', '09', '0973', '097324', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1129, '097325000', 'SAN PABLO', '09', '0973', '097325', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1130, '097327000', 'TABINA', '09', '0973', '097327', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1131, '097328000', 'TAMBULIG', '09', '0973', '097328', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1132, '097330000', 'TUKURAN', '09', '0973', '097330', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1133, '097332000', 'ZAMBOANGA CITY', '09', '0973', '097332', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1134, '097333000', 'LAKEWOOD', '09', '0973', '097333', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1135, '097337000', 'JOSEFINA', '09', '0973', '097337', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1136, '097338000', 'PITOGO', '09', '0973', '097338', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1137, '097340000', 'SOMINOT (DON MARIANO MARCOS)', '09', '0973', '097340', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1138, '097341000', 'VINCENZO A. SAGUN', '09', '0973', '097341', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1139, '097343000', 'GUIPOS', '09', '0973', '097343', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1140, '097344000', 'TIGBAO', '09', '0973', '097344', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1141, '098301000', 'ALICIA', '09', '0983', '098301', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1142, '098302000', 'BUUG', '09', '0983', '098302', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1143, '098303000', 'DIPLAHAN', '09', '0983', '098303', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1144, '098304000', 'IMELDA', '09', '0983', '098304', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1145, '098305000', 'IPIL (Capital)', '09', '0983', '098305', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1146, '098306000', 'KABASALAN', '09', '0983', '098306', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1147, '098307000', 'MABUHAY', '09', '0983', '098307', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1148, '098308000', 'MALANGAS', '09', '0983', '098308', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1149, '098309000', 'NAGA', '09', '0983', '098309', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1150, '098310000', 'OLUTANGA', '09', '0983', '098310', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1151, '098311000', 'PAYAO', '09', '0983', '098311', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1152, '098312000', 'ROSELLER LIM', '09', '0983', '098312', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1153, '098313000', 'SIAY', '09', '0983', '098313', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1154, '098314000', 'TALUSAN', '09', '0983', '098314', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1155, '098315000', 'TITAY', '09', '0983', '098315', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1156, '098316000', 'TUNGAWAN', '09', '0983', '098316', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1157, '099701000', 'CITY OF ISABELA', '09', '0997', '099701', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1158, '101301000', 'BAUNGON', '10', '1013', '101301', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1159, '101302000', 'DAMULOG', '10', '1013', '101302', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1160, '101303000', 'DANGCAGAN', '10', '1013', '101303', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1161, '101304000', 'DON CARLOS', '10', '1013', '101304', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1162, '101305000', 'IMPASUG-ONG', '10', '1013', '101305', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1163, '101306000', 'KADINGILAN', '10', '1013', '101306', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1164, '101307000', 'KALILANGAN', '10', '1013', '101307', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1165, '101308000', 'KIBAWE', '10', '1013', '101308', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1166, '101309000', 'KITAOTAO', '10', '1013', '101309', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1167, '101310000', 'LANTAPAN', '10', '1013', '101310', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1168, '101311000', 'LIBONA', '10', '1013', '101311', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1169, '101312000', 'CITY OF MALAYBALAY (Capital)', '10', '1013', '101312', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1170, '101313000', 'MALITBOG', '10', '1013', '101313', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1171, '101314000', 'MANOLO FORTICH', '10', '1013', '101314', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1172, '101315000', 'MARAMAG', '10', '1013', '101315', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1173, '101316000', 'PANGANTUCAN', '10', '1013', '101316', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1174, '101317000', 'QUEZON', '10', '1013', '101317', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1175, '101318000', 'SAN FERNANDO', '10', '1013', '101318', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1176, '101319000', 'SUMILAO', '10', '1013', '101319', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1177, '101320000', 'TALAKAG', '10', '1013', '101320', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1178, '101321000', 'CITY OF VALENCIA', '10', '1013', '101321', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1179, '101322000', 'CABANGLASAN', '10', '1013', '101322', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1180, '101801000', 'CATARMAN', '10', '1018', '101801', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1181, '101802000', 'GUINSILIBAN', '10', '1018', '101802', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1182, '101803000', 'MAHINOG', '10', '1018', '101803', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1183, '101804000', 'MAMBAJAO (Capital)', '10', '1018', '101804', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1184, '101805000', 'SAGAY', '10', '1018', '101805', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1185, '103501000', 'BACOLOD', '10', '1035', '103501', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1186, '103502000', 'BALOI', '10', '1035', '103502', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1187, '103503000', 'BAROY', '10', '1035', '103503', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1188, '103504000', 'ILIGAN CITY', '10', '1035', '103504', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1189, '103505000', 'KAPATAGAN', '10', '1035', '103505', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1190, '103506000', 'SULTAN NAGA DIMAPORO (KAROMATAN)', '10', '1035', '103506', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1191, '103507000', 'KAUSWAGAN', '10', '1035', '103507', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1192, '103508000', 'KOLAMBUGAN', '10', '1035', '103508', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1193, '103509000', 'LALA', '10', '1035', '103509', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1194, '103510000', 'LINAMON', '10', '1035', '103510', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1195, '103511000', 'MAGSAYSAY', '10', '1035', '103511', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1196, '103512000', 'MAIGO', '10', '1035', '103512', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1197, '103513000', 'MATUNGAO', '10', '1035', '103513', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1198, '103514000', 'MUNAI', '10', '1035', '103514', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1199, '103515000', 'NUNUNGAN', '10', '1035', '103515', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1200, '103516000', 'PANTAO RAGAT', '10', '1035', '103516', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1201, '103517000', 'POONA PIAGAPO', '10', '1035', '103517', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1202, '103518000', 'SALVADOR', '10', '1035', '103518', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1203, '103519000', 'SAPAD', '10', '1035', '103519', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1204, '103520000', 'TAGOLOAN', '10', '1035', '103520', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1205, '103521000', 'TANGCAL', '10', '1035', '103521', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1206, '103522000', 'TUBOD (Capital)', '10', '1035', '103522', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1207, '103523000', 'PANTAR', '10', '1035', '103523', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1208, '104201000', 'ALORAN', '10', '1042', '104201', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1209, '104202000', 'BALIANGAO', '10', '1042', '104202', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1210, '104203000', 'BONIFACIO', '10', '1042', '104203', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1211, '104204000', 'CALAMBA', '10', '1042', '104204', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1212, '104205000', 'CLARIN', '10', '1042', '104205', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1213, '104206000', 'CONCEPCION', '10', '1042', '104206', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1214, '104207000', 'JIMENEZ', '10', '1042', '104207', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1215, '104208000', 'LOPEZ JAENA', '10', '1042', '104208', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1216, '104209000', 'OROQUIETA CITY (Capital)', '10', '1042', '104209', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1217, '104210000', 'OZAMIS CITY', '10', '1042', '104210', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1218, '104211000', 'PANAON', '10', '1042', '104211', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1219, '104212000', 'PLARIDEL', '10', '1042', '104212', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1220, '104213000', 'SAPANG DALAGA', '10', '1042', '104213', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1221, '104214000', 'SINACABAN', '10', '1042', '104214', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1222, '104215000', 'TANGUB CITY', '10', '1042', '104215', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1223, '104216000', 'TUDELA', '10', '1042', '104216', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1224, '104217000', 'DON VICTORIANO CHIONGBIAN  (DON MARIANO MARCOS)', '10', '1042', '104217', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1225, '104301000', 'ALUBIJID', '10', '1043', '104301', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1226, '104302000', 'BALINGASAG', '10', '1043', '104302', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1227, '104303000', 'BALINGOAN', '10', '1043', '104303', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1228, '104304000', 'BINUANGAN', '10', '1043', '104304', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1229, '104305000', 'CAGAYAN DE ORO CITY (Capital)', '10', '1043', '104305', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1230, '104306000', 'CLAVERIA', '10', '1043', '104306', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1231, '104307000', 'CITY OF EL SALVADOR', '10', '1043', '104307', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1232, '104308000', 'GINGOOG CITY', '10', '1043', '104308', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1233, '104309000', 'GITAGUM', '10', '1043', '104309', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1234, '104310000', 'INITAO', '10', '1043', '104310', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1235, '104311000', 'JASAAN', '10', '1043', '104311', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1236, '104312000', 'KINOGUITAN', '10', '1043', '104312', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1237, '104313000', 'LAGONGLONG', '10', '1043', '104313', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1238, '104314000', 'LAGUINDINGAN', '10', '1043', '104314', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1239, '104315000', 'LIBERTAD', '10', '1043', '104315', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1240, '104316000', 'LUGAIT', '10', '1043', '104316', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1241, '104317000', 'MAGSAYSAY (LINUGOS)', '10', '1043', '104317', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1242, '104318000', 'MANTICAO', '10', '1043', '104318', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1243, '104319000', 'MEDINA', '10', '1043', '104319', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1244, '104320000', 'NAAWAN', '10', '1043', '104320', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1245, '104321000', 'OPOL', '10', '1043', '104321', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1246, '104322000', 'SALAY', '10', '1043', '104322', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1247, '104323000', 'SUGBONGCOGON', '10', '1043', '104323', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1248, '104324000', 'TAGOLOAN', '10', '1043', '104324', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1249, '104325000', 'TALISAYAN', '10', '1043', '104325', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1250, '104326000', 'VILLANUEVA', '10', '1043', '104326', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1251, '112301000', 'ASUNCION (SAUG)', '11', '1123', '112301', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1252, '112303000', 'CARMEN', '11', '1123', '112303', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1253, '112305000', 'KAPALONG', '11', '1123', '112305', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1254, '112314000', 'NEW CORELLA', '11', '1123', '112314', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1255, '112315000', 'CITY OF PANABO', '11', '1123', '112315', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1256, '112317000', 'ISLAND GARDEN CITY OF SAMAL', '11', '1123', '112317', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1257, '112318000', 'SANTO TOMAS', '11', '1123', '112318', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1258, '112319000', 'CITY OF TAGUM (Capital)', '11', '1123', '112319', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1259, '112322000', 'TALAINGOD', '11', '1123', '112322', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1260, '112323000', 'BRAULIO E. DUJALI', '11', '1123', '112323', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1261, '112324000', 'SAN ISIDRO', '11', '1123', '112324', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1262, '112401000', 'BANSALAN', '11', '1124', '112401', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1263, '112402000', 'DAVAO CITY', '11', '1124', '112402', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1264, '112403000', 'CITY OF DIGOS (Capital)', '11', '1124', '112403', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1265, '112404000', 'HAGONOY', '11', '1124', '112404', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1266, '112406000', 'KIBLAWAN', '11', '1124', '112406', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1267, '112407000', 'MAGSAYSAY', '11', '1124', '112407', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1268, '112408000', 'MALALAG', '11', '1124', '112408', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1269, '112410000', 'MATANAO', '11', '1124', '112410', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1270, '112411000', 'PADADA', '11', '1124', '112411', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1271, '112412000', 'SANTA CRUZ', '11', '1124', '112412', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1272, '112414000', 'SULOP', '11', '1124', '112414', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1273, '112501000', 'BAGANGA', '11', '1125', '112501', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1274, '112502000', 'BANAYBANAY', '11', '1125', '112502', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1275, '112503000', 'BOSTON', '11', '1125', '112503', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1276, '112504000', 'CARAGA', '11', '1125', '112504', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1277, '112505000', 'CATEEL', '11', '1125', '112505', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1278, '112506000', 'GOVERNOR GENEROSO', '11', '1125', '112506', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1279, '112507000', 'LUPON', '11', '1125', '112507', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1280, '112508000', 'MANAY', '11', '1125', '112508', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1281, '112509000', 'CITY OF MATI (Capital)', '11', '1125', '112509', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1282, '112510000', 'SAN ISIDRO', '11', '1125', '112510', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1283, '112511000', 'TARRAGONA', '11', '1125', '112511', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1284, '118201000', 'COMPOSTELA', '11', '1182', '118201', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1285, '118202000', 'LAAK (SAN VICENTE)', '11', '1182', '118202', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1286, '118203000', 'MABINI (DOÑA ALICIA)', '11', '1182', '118203', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1287, '118204000', 'MACO', '11', '1182', '118204', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1288, '118205000', 'MARAGUSAN (SAN MARIANO)', '11', '1182', '118205', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1289, '118206000', 'MAWAB', '11', '1182', '118206', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1290, '118207000', 'MONKAYO', '11', '1182', '118207', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1291, '118208000', 'MONTEVISTA', '11', '1182', '118208', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1292, '118209000', 'NABUNTURAN (Capital)', '11', '1182', '118209', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1293, '118210000', 'NEW BATAAN', '11', '1182', '118210', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1294, '118211000', 'PANTUKAN', '11', '1182', '118211', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1295, '118601000', 'DON MARCELINO', '11', '1186', '118601', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1296, '118602000', 'JOSE ABAD SANTOS (TRINIDAD)', '11', '1186', '118602', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1297, '118603000', 'MALITA', '11', '1186', '118603', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1298, '118604000', 'SANTA MARIA', '11', '1186', '118604', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1299, '118605000', 'SARANGANI', '11', '1186', '118605', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1300, '124701000', 'ALAMADA', '12', '1247', '124701', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1301, '124702000', 'CARMEN', '12', '1247', '124702', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1302, '124703000', 'KABACAN', '12', '1247', '124703', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1303, '124704000', 'CITY OF KIDAPAWAN (Capital)', '12', '1247', '124704', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1304, '124705000', 'LIBUNGAN', '12', '1247', '124705', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1305, '124706000', 'MAGPET', '12', '1247', '124706', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1306, '124707000', 'MAKILALA', '12', '1247', '124707', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1307, '124708000', 'MATALAM', '12', '1247', '124708', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1308, '124709000', 'MIDSAYAP', '12', '1247', '124709', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1309, '124710000', 'M\'LANG', '12', '1247', '124710', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1310, '124711000', 'PIGKAWAYAN', '12', '1247', '124711', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1311, '124712000', 'PIKIT', '12', '1247', '124712', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1312, '124713000', 'PRESIDENT ROXAS', '12', '1247', '124713', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1313, '124714000', 'TULUNAN', '12', '1247', '124714', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1314, '124715000', 'ANTIPAS', '12', '1247', '124715', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1315, '124716000', 'BANISILAN', '12', '1247', '124716', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1316, '124717000', 'ALEOSAN', '12', '1247', '124717', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1317, '124718000', 'ARAKAN', '12', '1247', '124718', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1318, '126302000', 'BANGA', '12', '1263', '126302', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1319, '126303000', 'GENERAL SANTOS CITY (DADIANGAS)', '12', '1263', '126303', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1320, '126306000', 'CITY OF KORONADAL (Capital)', '12', '1263', '126306', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1321, '126311000', 'NORALA', '12', '1263', '126311', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1322, '126312000', 'POLOMOLOK', '12', '1263', '126312', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1323, '126313000', 'SURALLAH', '12', '1263', '126313', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1324, '126314000', 'TAMPAKAN', '12', '1263', '126314', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1325, '126315000', 'TANTANGAN', '12', '1263', '126315', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1326, '126316000', 'T\'BOLI', '12', '1263', '126316', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1327, '126317000', 'TUPI', '12', '1263', '126317', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1328, '126318000', 'SANTO NIÑO', '12', '1263', '126318', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1329, '126319000', 'LAKE SEBU', '12', '1263', '126319', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1330, '126501000', 'BAGUMBAYAN', '12', '1265', '126501', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1331, '126502000', 'COLUMBIO', '12', '1265', '126502', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1332, '126503000', 'ESPERANZA', '12', '1265', '126503', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1333, '126504000', 'ISULAN (Capital)', '12', '1265', '126504', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1334, '126505000', 'KALAMANSIG', '12', '1265', '126505', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1335, '126506000', 'LEBAK', '12', '1265', '126506', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1336, '126507000', 'LUTAYAN', '12', '1265', '126507', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1337, '126508000', 'LAMBAYONG (MARIANO MARCOS)', '12', '1265', '126508', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1338, '126509000', 'PALIMBANG', '12', '1265', '126509', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1339, '126510000', 'PRESIDENT QUIRINO', '12', '1265', '126510', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1340, '126511000', 'CITY OF TACURONG', '12', '1265', '126511', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1341, '126512000', 'SEN. NINOY AQUINO', '12', '1265', '126512', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1342, '128001000', 'ALABEL (Capital)', '12', '1280', '128001', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1343, '128002000', 'GLAN', '12', '1280', '128002', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1344, '128003000', 'KIAMBA', '12', '1280', '128003', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1345, '128004000', 'MAASIM', '12', '1280', '128004', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1346, '128005000', 'MAITUM', '12', '1280', '128005', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1347, '128006000', 'MALAPATAN', '12', '1280', '128006', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1348, '128007000', 'MALUNGON', '12', '1280', '128007', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1349, '129804000', 'COTABATO CITY', '12', '1298', '129804', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1350, '133901000', 'TONDO I / II', '13', '1339', '133901', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1351, '133902000', 'BINONDO', '13', '1339', '133902', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1352, '133903000', 'QUIAPO', '13', '1339', '133903', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1353, '133904000', 'SAN NICOLAS', '13', '1339', '133904', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1354, '133905000', 'SANTA CRUZ', '13', '1339', '133905', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1355, '133906000', 'SAMPALOC', '13', '1339', '133906', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1356, '133907000', 'SAN MIGUEL', '13', '1339', '133907', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1357, '133908000', 'ERMITA', '13', '1339', '133908', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1358, '133909000', 'INTRAMUROS', '13', '1339', '133909', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1359, '133910000', 'MALATE', '13', '1339', '133910', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1360, '133911000', 'PACO', '13', '1339', '133911', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1361, '133912000', 'PANDACAN', '13', '1339', '133912', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1362, '133913000', 'PORT AREA', '13', '1339', '133913', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1363, '133914000', 'SANTA ANA', '13', '1339', '133914', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1364, '137401000', 'CITY OF MANDALUYONG', '13', '1374', '137401', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1365, '137402000', 'CITY OF MARIKINA', '13', '1374', '137402', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1366, '137403000', 'CITY OF PASIG', '13', '1374', '137403', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1367, '137404000', 'QUEZON CITY', '13', '1374', '137404', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1368, '137405000', 'CITY OF SAN JUAN', '13', '1374', '137405', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1369, '137501000', 'CALOOCAN CITY', '13', '1375', '137501', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1370, '137502000', 'CITY OF MALABON', '13', '1375', '137502', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1371, '137503000', 'CITY OF NAVOTAS', '13', '1375', '137503', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1372, '137504000', 'CITY OF VALENZUELA', '13', '1375', '137504', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1373, '137601000', 'CITY OF LAS PIÑAS', '13', '1376', '137601', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1374, '137602000', 'CITY OF MAKATI', '13', '1376', '137602', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1375, '137603000', 'CITY OF MUNTINLUPA', '13', '1376', '137603', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1376, '137604000', 'CITY OF PARAÑAQUE', '13', '1376', '137604', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1377, '137605000', 'PASAY CITY', '13', '1376', '137605', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1378, '137606000', 'PATEROS', '13', '1376', '137606', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1379, '137607000', 'TAGUIG CITY', '13', '1376', '137607', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1380, '140101000', 'BANGUED (Capital)', '14', '1401', '140101', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1381, '140102000', 'BOLINEY', '14', '1401', '140102', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1382, '140103000', 'BUCAY', '14', '1401', '140103', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1383, '140104000', 'BUCLOC', '14', '1401', '140104', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1384, '140105000', 'DAGUIOMAN', '14', '1401', '140105', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1385, '140106000', 'DANGLAS', '14', '1401', '140106', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1386, '140107000', 'DOLORES', '14', '1401', '140107', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1387, '140108000', 'LA PAZ', '14', '1401', '140108', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1388, '140109000', 'LACUB', '14', '1401', '140109', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1389, '140110000', 'LAGANGILANG', '14', '1401', '140110', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1390, '140111000', 'LAGAYAN', '14', '1401', '140111', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1391, '140112000', 'LANGIDEN', '14', '1401', '140112', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1392, '140113000', 'LICUAN-BAAY (LICUAN)', '14', '1401', '140113', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1393, '140114000', 'LUBA', '14', '1401', '140114', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1394, '140115000', 'MALIBCONG', '14', '1401', '140115', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1395, '140116000', 'MANABO', '14', '1401', '140116', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1396, '140117000', 'PEÑARRUBIA', '14', '1401', '140117', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1397, '140118000', 'PIDIGAN', '14', '1401', '140118', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1398, '140119000', 'PILAR', '14', '1401', '140119', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1399, '140120000', 'SALLAPADAN', '14', '1401', '140120', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1400, '140121000', 'SAN ISIDRO', '14', '1401', '140121', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1401, '140122000', 'SAN JUAN', '14', '1401', '140122', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1402, '140123000', 'SAN QUINTIN', '14', '1401', '140123', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1403, '140124000', 'TAYUM', '14', '1401', '140124', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1404, '140125000', 'TINEG', '14', '1401', '140125', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1405, '140126000', 'TUBO', '14', '1401', '140126', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1406, '140127000', 'VILLAVICIOSA', '14', '1401', '140127', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1407, '141101000', 'ATOK', '14', '1411', '141101', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1408, '141102000', 'BAGUIO CITY', '14', '1411', '141102', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1409, '141103000', 'BAKUN', '14', '1411', '141103', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1410, '141104000', 'BOKOD', '14', '1411', '141104', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1411, '141105000', 'BUGUIAS', '14', '1411', '141105', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1412, '141106000', 'ITOGON', '14', '1411', '141106', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1413, '141107000', 'KABAYAN', '14', '1411', '141107', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1414, '141108000', 'KAPANGAN', '14', '1411', '141108', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1415, '141109000', 'KIBUNGAN', '14', '1411', '141109', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1416, '141110000', 'LA TRINIDAD (Capital)', '14', '1411', '141110', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1417, '141111000', 'MANKAYAN', '14', '1411', '141111', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1418, '141112000', 'SABLAN', '14', '1411', '141112', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1419, '141113000', 'TUBA', '14', '1411', '141113', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1420, '141114000', 'TUBLAY', '14', '1411', '141114', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1421, '142701000', 'BANAUE', '14', '1427', '142701', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1422, '142702000', 'HUNGDUAN', '14', '1427', '142702', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1423, '142703000', 'KIANGAN', '14', '1427', '142703', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1424, '142704000', 'LAGAWE (Capital)', '14', '1427', '142704', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1425, '142705000', 'LAMUT', '14', '1427', '142705', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1426, '142706000', 'MAYOYAO', '14', '1427', '142706', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1427, '142707000', 'ALFONSO LISTA (POTIA)', '14', '1427', '142707', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1428, '142708000', 'AGUINALDO', '14', '1427', '142708', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1429, '142709000', 'HINGYON', '14', '1427', '142709', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1430, '142710000', 'TINOC', '14', '1427', '142710', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1431, '142711000', 'ASIPULO', '14', '1427', '142711', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1432, '143201000', 'BALBALAN', '14', '1432', '143201', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1433, '143206000', 'LUBUAGAN', '14', '1432', '143206', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1434, '143208000', 'PASIL', '14', '1432', '143208', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1435, '143209000', 'PINUKPUK', '14', '1432', '143209', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1436, '143211000', 'RIZAL (LIWAN)', '14', '1432', '143211', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1437, '143213000', 'CITY OF TABUK (Capital)', '14', '1432', '143213', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1438, '143214000', 'TANUDAN', '14', '1432', '143214', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1439, '143215000', 'TINGLAYAN', '14', '1432', '143215', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1440, '144401000', 'BARLIG', '14', '1444', '144401', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1441, '144402000', 'BAUKO', '14', '1444', '144402', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1442, '144403000', 'BESAO', '14', '1444', '144403', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1443, '144404000', 'BONTOC (Capital)', '14', '1444', '144404', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1444, '144405000', 'NATONIN', '14', '1444', '144405', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1445, '144406000', 'PARACELIS', '14', '1444', '144406', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1446, '144407000', 'SABANGAN', '14', '1444', '144407', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1447, '144408000', 'SADANGA', '14', '1444', '144408', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1448, '144409000', 'SAGADA', '14', '1444', '144409', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1449, '144410000', 'TADIAN', '14', '1444', '144410', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1450, '148101000', 'CALANASAN (BAYAG)', '14', '1481', '148101', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1451, '148102000', 'CONNER', '14', '1481', '148102', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1452, '148103000', 'FLORA', '14', '1481', '148103', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1453, '148104000', 'KABUGAO (Capital)', '14', '1481', '148104', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1454, '148105000', 'LUNA', '14', '1481', '148105', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1455, '148106000', 'PUDTOL', '14', '1481', '148106', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1456, '148107000', 'SANTA MARCELA', '14', '1481', '148107', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1457, '150702000', 'CITY OF LAMITAN', '15', '1507', '150702', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1458, '150703000', 'LANTAWAN', '15', '1507', '150703', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1459, '150704000', 'MALUSO', '15', '1507', '150704', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1460, '150705000', 'SUMISIP', '15', '1507', '150705', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1461, '150706000', 'TIPO-TIPO', '15', '1507', '150706', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1462, '150707000', 'TUBURAN', '15', '1507', '150707', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1463, '150708000', 'AKBAR', '15', '1507', '150708', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1464, '150709000', 'AL-BARKA', '15', '1507', '150709', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1465, '150710000', 'HADJI MOHAMMAD AJUL', '15', '1507', '150710', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1466, '150711000', 'UNGKAYA PUKAN', '15', '1507', '150711', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1467, '150712000', 'HADJI MUHTAMAD', '15', '1507', '150712', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1468, '150713000', 'TABUAN-LASA', '15', '1507', '150713', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1469, '153601000', 'BACOLOD-KALAWI (BACOLOD GRANDE)', '15', '1536', '153601', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1470, '153602000', 'BALABAGAN', '15', '1536', '153602', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1471, '153603000', 'BALINDONG (WATU)', '15', '1536', '153603', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1472, '153604000', 'BAYANG', '15', '1536', '153604', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1473, '153605000', 'BINIDAYAN', '15', '1536', '153605', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1474, '153606000', 'BUBONG', '15', '1536', '153606', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1475, '153607000', 'BUTIG', '15', '1536', '153607', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1476, '153609000', 'GANASSI', '15', '1536', '153609', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1477, '153610000', 'KAPAI', '15', '1536', '153610', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1478, '153611000', 'LUMBA-BAYABAO (MAGUING)', '15', '1536', '153611', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1479, '153612000', 'LUMBATAN', '15', '1536', '153612', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1480, '153613000', 'MADALUM', '15', '1536', '153613', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1481, '153614000', 'MADAMBA', '15', '1536', '153614', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1482, '153615000', 'MALABANG', '15', '1536', '153615', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1483, '153616000', 'MARANTAO', '15', '1536', '153616', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1484, '153617000', 'MARAWI CITY (Capital)', '15', '1536', '153617', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1485, '153618000', 'MASIU', '15', '1536', '153618', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1486, '153619000', 'MULONDO', '15', '1536', '153619', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1487, '153620000', 'PAGAYAWAN (TATARIKAN)', '15', '1536', '153620', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1488, '153621000', 'PIAGAPO', '15', '1536', '153621', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1489, '153622000', 'POONA BAYABAO (GATA)', '15', '1536', '153622', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1490, '153623000', 'PUALAS', '15', '1536', '153623', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1491, '153624000', 'DITSAAN-RAMAIN', '15', '1536', '153624', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1492, '153625000', 'SAGUIARAN', '15', '1536', '153625', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1493, '153626000', 'TAMPARAN', '15', '1536', '153626', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1494, '153627000', 'TARAKA', '15', '1536', '153627', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1495, '153628000', 'TUBARAN', '15', '1536', '153628', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1496, '153629000', 'TUGAYA', '15', '1536', '153629', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1497, '153630000', 'WAO', '15', '1536', '153630', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1498, '153631000', 'MAROGONG', '15', '1536', '153631', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1499, '153632000', 'CALANOGAS', '15', '1536', '153632', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1500, '153633000', 'BUADIPOSO-BUNTONG', '15', '1536', '153633', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1501, '153634000', 'MAGUING', '15', '1536', '153634', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1502, '153635000', 'PICONG (SULTAN GUMANDER)', '15', '1536', '153635', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1503, '153636000', 'LUMBAYANAGUE', '15', '1536', '153636', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1504, '153637000', 'BUMBARAN', '15', '1536', '153637', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1505, '153638000', 'TAGOLOAN II', '15', '1536', '153638', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1506, '153639000', 'KAPATAGAN', '15', '1536', '153639', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1507, '153640000', 'SULTAN DUMALONDONG', '15', '1536', '153640', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1508, '153641000', 'LUMBACA-UNAYAN', '15', '1536', '153641', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1509, '153801000', 'AMPATUAN', '15', '1538', '153801', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1510, '153802000', 'BULDON', '15', '1538', '153802', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1511, '153803000', 'BULUAN', '15', '1538', '153803', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1512, '153805000', 'DATU PAGLAS', '15', '1538', '153805', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1513, '153806000', 'DATU PIANG', '15', '1538', '153806', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1514, '153807000', 'DATU ODIN SINSUAT (DINAIG)', '15', '1538', '153807', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1515, '153808000', 'SHARIFF AGUAK (MAGANOY) (Capital)', '15', '1538', '153808', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1516, '153809000', 'MATANOG', '15', '1538', '153809', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1517, '153810000', 'PAGALUNGAN', '15', '1538', '153810', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1518, '153811000', 'PARANG', '15', '1538', '153811', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1519, '153812000', 'SULTAN KUDARAT (NULING)', '15', '1538', '153812', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1520, '153813000', 'SULTAN SA BARONGIS (LAMBAYONG)', '15', '1538', '153813', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1521, '153814000', 'KABUNTALAN (TUMBAO)', '15', '1538', '153814', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1522, '153815000', 'UPI', '15', '1538', '153815', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1523, '153816000', 'TALAYAN', '15', '1538', '153816', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1524, '153817000', 'SOUTH UPI', '15', '1538', '153817', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1525, '153818000', 'BARIRA', '15', '1538', '153818', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1526, '153819000', 'GEN. S. K. PENDATUN', '15', '1538', '153819', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1527, '153820000', 'MAMASAPANO', '15', '1538', '153820', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1528, '153821000', 'TALITAY', '15', '1538', '153821', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1529, '153822000', 'PAGAGAWAN', '15', '1538', '153822', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1530, '153823000', 'PAGLAT', '15', '1538', '153823', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1531, '153824000', 'SULTAN MASTURA', '15', '1538', '153824', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1532, '153825000', 'GUINDULUNGAN', '15', '1538', '153825', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1533, '153826000', 'DATU SAUDI-AMPATUAN', '15', '1538', '153826', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1534, '153827000', 'DATU UNSAY', '15', '1538', '153827', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1535, '153828000', 'DATU ABDULLAH SANGKI', '15', '1538', '153828', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1536, '153829000', 'RAJAH BUAYAN', '15', '1538', '153829', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1537, '153830000', 'DATU BLAH T. SINSUAT', '15', '1538', '153830', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1538, '153831000', 'DATU ANGGAL MIDTIMBANG', '15', '1538', '153831', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1539, '153832000', 'MANGUDADATU', '15', '1538', '153832', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1540, '153833000', 'PANDAG', '15', '1538', '153833', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1541, '153834000', 'NORTHERN KABUNTALAN', '15', '1538', '153834', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1542, '153835000', 'DATU HOFFER AMPATUAN', '15', '1538', '153835', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1543, '153836000', 'DATU SALIBO', '15', '1538', '153836', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1544, '153837000', 'SHARIFF SAYDONA MUSTAPHA', '15', '1538', '153837', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1545, '156601000', 'INDANAN', '15', '1566', '156601', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1546, '156602000', 'JOLO (Capital)', '15', '1566', '156602', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1547, '156603000', 'KALINGALAN CALUANG', '15', '1566', '156603', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1548, '156604000', 'LUUK', '15', '1566', '156604', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1549, '156605000', 'MAIMBUNG', '15', '1566', '156605', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1550, '156606000', 'HADJI PANGLIMA TAHIL (MARUNGGAS)', '15', '1566', '156606', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1551, '156607000', 'OLD PANAMAO', '15', '1566', '156607', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1552, '156608000', 'PANGUTARAN', '15', '1566', '156608', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1553, '156609000', 'PARANG', '15', '1566', '156609', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1554, '156610000', 'PATA', '15', '1566', '156610', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1555, '156611000', 'PATIKUL', '15', '1566', '156611', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1556, '156612000', 'SIASI', '15', '1566', '156612', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1557, '156613000', 'TALIPAO', '15', '1566', '156613', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1558, '156614000', 'TAPUL', '15', '1566', '156614', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1559, '156615000', 'TONGKIL', '15', '1566', '156615', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1560, '156616000', 'PANGLIMA ESTINO (NEW PANAMAO)', '15', '1566', '156616', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1561, '156617000', 'LUGUS', '15', '1566', '156617', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1562, '156618000', 'PANDAMI', '15', '1566', '156618', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1563, '156619000', 'OMAR', '15', '1566', '156619', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1564, '157001000', 'PANGLIMA SUGALA (BALIMBING)', '15', '1570', '157001', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1565, '157002000', 'BONGAO (Capital)', '15', '1570', '157002', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1566, '157003000', 'MAPUN (CAGAYAN DE TAWI-TAWI)', '15', '1570', '157003', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1567, '157004000', 'SIMUNUL', '15', '1570', '157004', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1568, '157005000', 'SITANGKAI', '15', '1570', '157005', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1569, '157006000', 'SOUTH UBIAN', '15', '1570', '157006', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1570, '157007000', 'TANDUBAS', '15', '1570', '157007', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1571, '157008000', 'TURTLE ISLANDS', '15', '1570', '157008', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1572, '157009000', 'LANGUYAN', '15', '1570', '157009', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1573, '157010000', 'SAPA-SAPA', '15', '1570', '157010', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1574, '157011000', 'SIBUTU', '15', '1570', '157011', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1575, '160201000', 'BUENAVISTA', '16', '1602', '160201', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1576, '160202000', 'BUTUAN CITY (Capital)', '16', '1602', '160202', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1577, '160203000', 'CITY OF CABADBARAN', '16', '1602', '160203', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1578, '160204000', 'CARMEN', '16', '1602', '160204', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1579, '160205000', 'JABONGA', '16', '1602', '160205', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1580, '160206000', 'KITCHARAO', '16', '1602', '160206', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1581, '160207000', 'LAS NIEVES', '16', '1602', '160207', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1582, '160208000', 'MAGALLANES', '16', '1602', '160208', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1583, '160209000', 'NASIPIT', '16', '1602', '160209', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1584, '160210000', 'SANTIAGO', '16', '1602', '160210', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1585, '160211000', 'TUBAY', '16', '1602', '160211', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1586, '160212000', 'REMEDIOS T. ROMUALDEZ', '16', '1602', '160212', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1587, '160301000', 'CITY OF BAYUGAN', '16', '1603', '160301', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1588, '160302000', 'BUNAWAN', '16', '1603', '160302', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1589, '160303000', 'ESPERANZA', '16', '1603', '160303', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1590, '160304000', 'LA PAZ', '16', '1603', '160304', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1591, '160305000', 'LORETO', '16', '1603', '160305', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1592, '160306000', 'PROSPERIDAD (Capital)', '16', '1603', '160306', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1593, '160307000', 'ROSARIO', '16', '1603', '160307', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1594, '160308000', 'SAN FRANCISCO', '16', '1603', '160308', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1595, '160309000', 'SAN LUIS', '16', '1603', '160309', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1596, '160310000', 'SANTA JOSEFA', '16', '1603', '160310', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1597, '160311000', 'TALACOGON', '16', '1603', '160311', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1598, '160312000', 'TRENTO', '16', '1603', '160312', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1599, '160313000', 'VERUELA', '16', '1603', '160313', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1600, '160314000', 'SIBAGAT', '16', '1603', '160314', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1601, '166701000', 'ALEGRIA', '16', '1667', '166701', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1602, '166702000', 'BACUAG', '16', '1667', '166702', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1603, '166704000', 'BURGOS', '16', '1667', '166704', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1604, '166706000', 'CLAVER', '16', '1667', '166706', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1605, '166707000', 'DAPA', '16', '1667', '166707', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1606, '166708000', 'DEL CARMEN', '16', '1667', '166708', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1607, '166710000', 'GENERAL LUNA', '16', '1667', '166710', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1608, '166711000', 'GIGAQUIT', '16', '1667', '166711', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1609, '166714000', 'MAINIT', '16', '1667', '166714', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1610, '166715000', 'MALIMONO', '16', '1667', '166715', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1611, '166716000', 'PILAR', '16', '1667', '166716', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1612, '166717000', 'PLACER', '16', '1667', '166717', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1613, '166718000', 'SAN BENITO', '16', '1667', '166718', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1614, '166719000', 'SAN FRANCISCO (ANAO-AON)', '16', '1667', '166719', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1615, '166720000', 'SAN ISIDRO', '16', '1667', '166720', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1616, '166721000', 'SANTA MONICA (SAPAO)', '16', '1667', '166721', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1617, '166722000', 'SISON', '16', '1667', '166722', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1618, '166723000', 'SOCORRO', '16', '1667', '166723', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1619, '166724000', 'SURIGAO CITY (Capital)', '16', '1667', '166724', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1620, '166725000', 'TAGANA-AN', '16', '1667', '166725', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1621, '166727000', 'TUBOD', '16', '1667', '166727', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1622, '166801000', 'BAROBO', '16', '1668', '166801', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1623, '166802000', 'BAYABAS', '16', '1668', '166802', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1624, '166803000', 'CITY OF BISLIG', '16', '1668', '166803', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1625, '166804000', 'CAGWAIT', '16', '1668', '166804', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1626, '166805000', 'CANTILAN', '16', '1668', '166805', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1627, '166806000', 'CARMEN', '16', '1668', '166806', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1628, '166807000', 'CARRASCAL', '16', '1668', '166807', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1629, '166808000', 'CORTES', '16', '1668', '166808', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1630, '166809000', 'HINATUAN', '16', '1668', '166809', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1631, '166810000', 'LANUZA', '16', '1668', '166810', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1632, '166811000', 'LIANGA', '16', '1668', '166811', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1633, '166812000', 'LINGIG', '16', '1668', '166812', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1634, '166813000', 'MADRID', '16', '1668', '166813', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1635, '166814000', 'MARIHATAG', '16', '1668', '166814', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1636, '166815000', 'SAN AGUSTIN', '16', '1668', '166815', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1637, '166816000', 'SAN MIGUEL', '16', '1668', '166816', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1638, '166817000', 'TAGBINA', '16', '1668', '166817', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1639, '166818000', 'TAGO', '16', '1668', '166818', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1640, '166819000', 'CITY OF TANDAG (Capital)', '16', '1668', '166819', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1641, '168501000', 'BASILISA (RIZAL)', '16', '1685', '168501', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1642, '168502000', 'CAGDIANAO', '16', '1685', '168502', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1643, '168503000', 'DINAGAT', '16', '1685', '168503', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1644, '168504000', 'LIBJO (ALBOR)', '16', '1685', '168504', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1645, '168505000', 'LORETO', '16', '1685', '168505', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1646, '168506000', 'SAN JOSE (Capital)', '16', '1685', '168506', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` VALUES (1647, '168507000', 'TUBAJON', '16', '1685', '168507', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');

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
INSERT INTO `contacts` VALUES (1, 1, 'Minor Basilica of the National Shrine of Our Lady of Mount Carmel', 'Minor Basilica of the National Shrine of Our Lady of Mount Carmel', '90 4th Street', 'New Manila', NULL, NULL, NULL, '(02) 724 5938<br/>\r\n(02) 701 5867<br/>\r\n(02) 701 5868<br/>\r\n(02) 701 5869', '(918) 407 7760<br/>\r\n(956) 658 3660', 'basilica@mountcarmel.ph', NULL, 1, '2019-06-19 16:45:18', NULL, NULL, b'0');

-- ----------------------------
-- Table structure for country
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
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
INSERT INTO `country` VALUES (1, 'Philippines', 'ph', '01', 'xxxxx-xxxxxxx', '+63 (9yy) xxx-xxxx', 1, '2019-07-23 14:45:34', NULL, NULL, b'0');
INSERT INTO `country` VALUES (2, 'Andorra', 'ad', '02', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (3, 'United Arab Emirates', 'ae', '03', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (4, 'Afghanistan', 'af', '04', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (5, 'Antigua and Barbuda', 'ag', '05', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (6, 'Anguilla', 'ai', '06', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (7, 'Albania', 'al', '07', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (8, 'Armenia', 'am', '08', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (9, 'Netherlands Antilles', 'an', '09', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (10, 'Angola', 'ao', '10', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (11, 'Argentina', 'ar', '11', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (12, 'Austria', 'at', '12', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (13, 'Australia', 'au', '13', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (14, 'Aruba', 'aw', '14', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (15, 'Azerbaijan', 'az', '15', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (16, 'Bosnia and Herzegovina', 'ba', '16', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (17, 'Barbados', 'bb', '17', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (18, 'Bangladesh', 'bd', '18', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (19, 'Belgium', 'be', '19', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (20, 'Burkina Faso', 'bf', '20', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (21, 'Bulgaria', 'bg', '21', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (22, 'Bahrain', 'bh', '22', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (23, 'Burundi', 'bi', '23', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (24, 'Benin', 'bj', '24', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (25, 'Bermuda', 'bm', '25', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (26, 'Brunei Darussalam', 'bn', '26', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (27, 'Bolivia', 'bo', '27', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (28, 'Brazil', 'br', '28', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (29, 'Bahamas', 'bs', '29', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (30, 'Bhutan', 'bt', '30', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (31, 'Botswana', 'bw', '31', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (32, 'Belarus', 'by', '32', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (33, 'Belize', 'bz', '33', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (34, 'Canada', 'ca', '34', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (35, 'Cocos (Keeling) Islands', 'cc', '35', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (36, 'Democratic Republic of the Congo', 'cd', '36', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (37, 'Central African Republic', 'cf', '37', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (38, 'Congo', 'cg', '38', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (39, 'Switzerland', 'ch', '39', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (40, 'Cote D\'Ivoire Ivory Coast', 'ci', '40', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (41, 'Cook Islands', 'ck', '41', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (42, 'Chile', 'cl', '42', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (43, 'Cameroon', 'cm', '43', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (44, 'China', 'cn', '44', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (45, 'Colombia', 'co', '45', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (46, 'Costa Rica', 'cr', '46', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (47, 'Cuba', 'cu', '47', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (48, 'Cape Verde', 'cv', '48', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (49, 'Christmas Island', 'cx', '49', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (50, 'Cyprus', 'cy', '50', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (51, 'Czech Republic', 'cz', '51', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (52, 'Germany', 'de', '52', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (53, 'Djibouti', 'dj', '53', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (54, 'Denmark', 'dk', '55', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (55, 'Dominica', 'dm', '55', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (56, 'Dominican Republic', 'do', '56', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (57, 'Algeria', 'dz', '57', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (58, 'Ecuador', 'ec', '58', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (59, 'Estonia', 'ee', '59', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (60, 'Egypt', 'eg', '60', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (61, 'Western Sahara', 'eh', '61', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (62, 'Eritrea', 'er', '62', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (63, 'Spain', 'es', '63', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (64, 'Ethiopia', 'et', '64', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (65, 'Finland', 'fi', '65', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (66, 'Fiji', 'fj', '66', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (67, 'Falkland Islands (Malvinas)', 'fk', '67', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (68, 'Federated States of Micronesia', 'fm', '68', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (69, 'Faroe Islands', 'fo', '69', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (70, 'France', 'fr', '70', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (71, 'Gabon', 'ga', '71', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (72, 'Great Britain (UK)', 'gb', '72', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (73, 'Grenada', 'gd', '73', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (74, 'Georgia', 'ge', '74', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (75, 'French Guiana', 'gf', '75', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (76, 'Guernsey', 'gg', '76', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (77, 'Ghana', 'gh', '77', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (78, 'Gibraltar', 'gi', '78', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (79, 'Greenland', 'gl', '79', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (80, 'Gambia', 'gm', '80', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (81, 'Guinea', 'gn', '81', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (82, 'Guadeloupe', 'gp', '82', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (83, 'Equatorial Guinea', 'gq', '83', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (84, 'Greece', 'gr', '84', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (85, 'S. Georgia and S. Sandwich Islands', 'gs', '85', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (86, 'Guatemala', 'gt', '86', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (87, 'Guinea-Bissau', 'gw', '87', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (88, 'Guyana', 'gy', '88', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (89, 'Hong Kong', 'hk', '89', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (90, 'Honduras', 'hn', '90', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (91, 'Croatia (Hrvatska)', 'hr', '91', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (92, 'Haiti', 'ht', '92', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (93, 'Hungary', 'hu', '93', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (94, 'Indonesia', 'id', '94', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (95, 'Ireland', 'ie', '95', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (96, 'Israel', 'il', '96', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (97, 'India', 'in', '97', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (98, 'Iraq', 'iq', '98', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (99, 'Iran', 'ir', '99', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (100, 'Iceland', 'is', '100', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (101, 'Italy', 'it', '101', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (102, 'Jamaica', 'jm', '102', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (103, 'Jordan', 'jo', '103', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (104, 'Japan', 'jp', '104', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (105, 'Kenya', 'ke', '105', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (106, 'Kyrgyzstan', 'kg', '106', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (107, 'Cambodia', 'kh', '107', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (108, 'Kiribati', 'ki', '108', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (109, 'Comoros', 'km', '109', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (110, 'Saint Kitts and Nevis', 'kn', '110', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (111, 'Korea (North)', 'kp', '111', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (112, 'Korea (South)', 'kr', '112', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (113, 'Kuwait', 'kw', '113', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (114, 'Cayman Islands', 'ky', '114', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (115, 'Kazakhstan', 'kz', '115', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (116, 'Laos', 'la', '116', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (117, 'Lebanon', 'lb', '117', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (118, 'Saint Lucia', 'lc', '118', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (119, 'Liechtenstein', 'li', '119', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (120, 'Sri Lanka', 'lk', '120', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (121, 'Liberia', 'lr', '121', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (122, 'Lesotho', 'ls', '122', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (123, 'Lithuania', 'lt', '123', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (124, 'Luxembourg', 'lu', '124', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (125, 'Latvia', 'lv', '125', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (126, 'Libya', 'ly', '126', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (127, 'Morocco', 'ma', '127', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (128, 'Monaco', 'mc', '128', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (129, 'Moldova', 'md', '129', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (130, 'Madagascar', 'mg', '130', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (131, 'Marshall Islands', 'mh', '131', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (132, 'Macedonia', 'mk', '132', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (133, 'Mali', 'ml', '133', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (134, 'Myanmar', 'mm', '134', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (135, 'Mongolia', 'mn', '135', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (136, 'Macao', 'mo', '136', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (137, 'Northern Mariana Islands', 'mp', '137', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (138, 'Martinique', 'mq', '138', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (139, 'Mauritania', 'mr', '139', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (140, 'Montserrat', 'ms', '140', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (141, 'Malta', 'mt', '141', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (142, 'Mauritius', 'mu', '142', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (143, 'Maldives', 'mv', '143', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (144, 'Malawi', 'mw', '144', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (145, 'Mexico', 'mx', '145', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (146, 'Malaysia', 'my', '146', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (147, 'Mozambique', 'mz', '147', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (148, 'Namibia', 'na', '148', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (149, 'New Caledonia', 'nc', '149', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (150, 'Niger', 'ne', '150', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (151, 'Norfolk Island', 'nf', '151', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (152, 'Nigeria', 'ng', '152', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (153, 'Nicaragua', 'ni', '153', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (154, 'Netherlands', 'nl', '154', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (155, 'Norway', 'no', '155', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (156, 'Nepal', 'np', '156', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (157, 'Nauru', 'nr', '157', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (158, 'Niue', 'nu', '158', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (159, 'New Zealand (Aotearoa)', 'nz', '159', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (160, 'Oman', 'om', '160', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (161, 'Panama', 'pa', '161', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (162, 'Peru', 'pe', '162', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (163, 'French Polynesia', 'pf', '163', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (164, 'Papua New Guinea', 'pg', '164', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (165, 'Philippines', 'ph', '165', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'1');
INSERT INTO `country` VALUES (166, 'Pakistan', 'pk', '166', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (167, 'Poland', 'pl', '167', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (168, 'Saint Pierre and Miquelon', 'pm', '168', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (169, 'Pitcairn', 'pn', '169', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (170, 'Palestinian Territory', 'ps', '170', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (171, 'Portugal', 'pt', '171', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (172, 'Palau', 'pw', '172', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (173, 'Paraguay', 'py', '173', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (174, 'Qatar', 'qa', '174', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (175, 'Reunion', 're', '175', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (176, 'Romania', 'ro', '176', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (177, 'Russian Federation', 'ru', '177', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (178, 'Rwanda', 'rw', '178', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (179, 'Saudi Arabia', 'sa', '179', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (180, 'Solomon Islands', 'sb', '180', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (181, 'Seychelles', 'sc', '181', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (182, 'Sudan', 'sd', '182', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (183, 'Sweden', 'se', '183', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (184, 'Singapore', 'sg', '184', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (185, 'Saint Helena', 'sh', '185', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (186, 'Slovenia', 'si', '186', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (187, 'Svalbard and Jan Mayen', 'sj', '187', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (188, 'Slovakia', 'sk', '188', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (189, 'Sierra Leone', 'sl', '189', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (190, 'San Marino', 'sm', '190', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (191, 'Senegal', 'sn', '191', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (192, 'Somalia', 'so', '192', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (193, 'Suriname', 'sr', '193', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (194, 'Sao Tome and Principe', 'st', '194', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (195, 'El Salvador', 'sv', '195', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (196, 'Syria', 'sy', '196', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (197, 'Swaziland', 'sz', '197', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (198, 'Turks and Caicos Islands', 'tc', '198', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (199, 'Chad', 'td', '199', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (200, 'French Southern Territories', 'tf', '200', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (201, 'Togo', 'tg', '201', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (202, 'Thailand', 'th', '202', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (203, 'Tajikistan', 'tj', '203', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (204, 'Tokelau', 'tk', '204', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (205, 'Turkmenistan', 'tm', '205', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (206, 'Tunisia', 'tn', '206', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (207, 'Tonga', 'to', '207', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (208, 'Turkey', 'tr', '208', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (209, 'Trinidad and Tobago', 'tt', '209', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (210, 'Tuvalu', 'tv', '210', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (211, 'Taiwan', 'tw', '211', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (212, 'Tanzania', 'tz', '212', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (213, 'Ukraine', 'ua', '213', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (214, 'Uganda', 'ug', '214', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (215, 'Uruguay', 'uy', '215', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (216, 'Uzbekistan', 'uz', '216', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (217, 'Saint Vincent and the Grenadines', 'vc', '217', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (218, 'Venezuela', 've', '218', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (219, 'Virgin Islands (British)', 'vg', '219', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (220, 'Virgin Islands (U.S.)', 'vi', '220', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (221, 'Viet Nam', 'vn', '221', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (222, 'Vanuatu', 'vu', '222', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (223, 'Wallis and Futuna', 'wf', '223', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (224, 'Samoa', 'ws', '224', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (225, 'Yemen', 'ye', '225', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (226, 'Mayotte', 'yt', '226', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (227, 'South Africa', 'za', '227', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (228, 'Zambia', 'zm', '228', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (229, 'Zaire (former)', 'zr', '229', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (230, 'Zimbabwe', 'zw', '230', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');
INSERT INTO `country` VALUES (231, 'United States of America', 'us', '231', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');

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
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

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

-- ----------------------------
-- Table structure for global_reference_value
-- ----------------------------
DROP TABLE IF EXISTS `global_reference_value`;
CREATE TABLE `global_reference_value`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NULL DEFAULT NULL,
  `module_id` int(11) NULL DEFAULT NULL,
  `sub_module_id` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `project_id` int(11) NULL DEFAULT NULL,
  `donation_schedule_type_id` int(11) NULL DEFAULT NULL,
  `media_id` int(11) NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 120 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of global_reference_value
-- ----------------------------
INSERT INTO `global_reference_value` VALUES (1, 1, NULL, NULL, 'On-going', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (2, 1, NULL, NULL, 'Done', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (3, 1, NULL, NULL, 'Denied', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (4, 1, NULL, NULL, 'Expired', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (5, 1, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'1');
INSERT INTO `global_reference_value` VALUES (6, 2, NULL, NULL, 'Waiting', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (7, 2, NULL, NULL, 'Reviewed', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (8, 2, NULL, NULL, 'Approved', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (9, 2, NULL, NULL, 'Denied', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (10, 2, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'1');
INSERT INTO `global_reference_value` VALUES (11, 3, NULL, NULL, 'Waiting', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (12, 3, NULL, NULL, 'Approved', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (13, 3, NULL, NULL, 'Rechoose', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (14, 3, NULL, NULL, 'Denied', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'1');
INSERT INTO `global_reference_value` VALUES (15, 3, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'1');
INSERT INTO `global_reference_value` VALUES (16, 4, NULL, NULL, 'Baptismal', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (17, 4, NULL, NULL, 'Marriage', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:56', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (18, 4, NULL, NULL, 'Confirmation', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 15:16:11', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (19, 4, NULL, NULL, 'Communion', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 15:16:11', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (20, 4, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 15:16:11', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (21, 5, NULL, NULL, 'Single', 'A person who has never been married', NULL, NULL, NULL, NULL, 1, '2019-06-20 14:46:42', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (22, 5, NULL, NULL, 'Married', 'A couple living together as husband and wife, legally or consensually;', NULL, NULL, NULL, NULL, 1, '2019-06-20 14:47:02', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (23, 5, NULL, NULL, 'Widowed', 'A person whose bond of matrimony has been dissolved by death of his/her spouse', NULL, NULL, NULL, NULL, 1, '2019-06-20 14:47:14', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (24, 5, NULL, NULL, 'Divorced', 'A person whose bond of matrimony has been dissolved legally and who therefore can remarry; ', NULL, NULL, NULL, NULL, 1, '2019-06-20 14:47:24', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (25, 5, NULL, NULL, 'Separated ', 'A person separated legally or not from his/her spouse because of marital discord or misunderstanding;', NULL, NULL, NULL, NULL, 1, '2019-06-20 14:47:41', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (26, 5, NULL, NULL, 'Registered Partnership', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 14:47:58', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (27, 5, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 14:47:58', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (28, 6, NULL, NULL, 'Always', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-18 17:01:23', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (29, 6, NULL, NULL, 'December', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-18 17:02:21', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (30, 6, NULL, NULL, 'July', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-18 17:03:20', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (31, 6, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-18 17:03:20', NULL, NULL, b'1');
INSERT INTO `global_reference_value` VALUES (32, 7, NULL, NULL, 'Wedding Reception', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 14:26:37', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (33, 7, NULL, NULL, 'Baptismal Celebration', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 14:27:33', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (34, 7, NULL, NULL, 'Birthday Celebration', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 14:27:49', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (35, 7, NULL, NULL, 'Anniversary Celebration', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 14:28:07', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (36, 7, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 14:28:07', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (37, 8, NULL, NULL, 'Filipino', 'Filipino', NULL, NULL, NULL, NULL, 1, '2019-06-19 16:09:38', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (38, 8, NULL, NULL, 'English', 'English', NULL, NULL, NULL, NULL, 1, '2019-06-19 16:09:57', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (39, 8, NULL, NULL, 'Other', 'Other', NULL, NULL, NULL, NULL, 1, '2019-06-19 16:09:57', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (40, 9, NULL, NULL, 'Catholic', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 16:08:29', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (41, 9, NULL, NULL, 'Protestant', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 16:08:43', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (42, 9, NULL, NULL, 'Civil', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 16:08:54', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (43, 9, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 16:09:07', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (44, 10, NULL, NULL, 'Filipino', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 18:40:59', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (45, 10, NULL, NULL, 'American', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 18:41:06', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (46, 10, NULL, NULL, 'Canadian', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 18:41:14', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (47, 10, NULL, NULL, 'Chinese', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 18:45:56', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (48, 10, NULL, NULL, 'Australian', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 18:46:29', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (49, 10, NULL, NULL, 'French', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 18:46:59', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (50, 10, NULL, NULL, 'Japanese', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 18:47:25', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (51, 10, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 18:47:25', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (52, 11, NULL, NULL, 'Blessing of the house', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 15:08:38', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (53, 11, NULL, NULL, 'Blessing of the businesses', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 15:11:15', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (54, 11, NULL, NULL, 'Blessing of the cars', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 15:11:38', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (55, 11, NULL, NULL, 'Annointing of the sick', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 15:11:55', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (56, 11, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 15:11:55', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (57, 12, NULL, NULL, 'News', 'News', NULL, NULL, NULL, NULL, 1, '2019-06-18 15:50:27', 1, '2019-06-18 15:50:27', b'0');
INSERT INTO `global_reference_value` VALUES (58, 12, NULL, NULL, 'Updates', 'Updates', NULL, NULL, NULL, NULL, 1, '2019-06-18 15:50:35', 1, '2019-06-18 15:50:35', b'0');
INSERT INTO `global_reference_value` VALUES (59, 12, NULL, NULL, 'Projects', 'Projects', NULL, NULL, NULL, NULL, 1, '2019-06-18 15:51:14', 1, '2019-06-18 15:51:14', b'0');
INSERT INTO `global_reference_value` VALUES (60, 12, NULL, NULL, 'Schedules', 'Schedules', NULL, NULL, NULL, NULL, 1, '2019-06-18 15:52:29', 1, '2019-06-18 15:52:29', b'0');
INSERT INTO `global_reference_value` VALUES (61, 12, NULL, NULL, 'Announcements', 'Announcements', NULL, NULL, NULL, NULL, 1, '2019-06-18 15:53:22', 1, '2019-06-18 15:53:22', b'0');
INSERT INTO `global_reference_value` VALUES (62, 12, NULL, NULL, 'Advertisements ', 'Advertisements ', NULL, NULL, NULL, NULL, 1, '2019-06-18 15:54:31', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (63, 12, NULL, NULL, 'Icons', 'Icons', NULL, NULL, NULL, NULL, 1, '2019-06-18 17:09:09', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (64, 13, NULL, NULL, 'Home', 'Home', NULL, NULL, NULL, NULL, 1, '2019-06-19 17:55:55', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (65, 13, NULL, NULL, 'Send Help', 'Send Help', NULL, NULL, NULL, NULL, 1, '2019-06-19 17:57:27', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (66, 13, NULL, NULL, 'Services', 'Services', NULL, NULL, NULL, NULL, 1, '2019-06-19 17:57:44', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (67, 13, NULL, NULL, 'Transparency', 'Transparency', NULL, NULL, NULL, NULL, 1, '2019-06-19 17:58:30', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (68, 14, 5, 3, 'Thanksgiving', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 15:48:41', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (69, 14, 5, 3, 'Anniversary (Wedding)', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 15:49:08', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (70, 14, 5, 3, 'Anniversary (Death)', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 15:49:33', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (71, 14, 5, 3, 'Birthday', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 15:49:47', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (72, 14, 5, 3, 'Healing', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 15:59:31', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (73, 14, 5, 3, 'Employment', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 15:59:59', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (74, 14, 5, 3, 'Board exam ', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 16:02:45', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (75, 14, 5, 3, 'Other', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 16:03:07', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (76, 14, 5, 5, 'Personal file ', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 16:03:48', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (77, 14, 5, 5, 'School', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 16:04:04', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (78, 14, 5, 5, 'Confimation', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 16:04:19', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (79, 14, 5, 5, 'First communion', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 16:04:35', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (80, 14, 5, 5, 'Legal documents', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 16:04:50', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (81, 14, 5, 5, 'Issuance of Birth certificate', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 16:05:11', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (82, 14, 5, 5, 'Marriage', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 16:05:28', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (83, 14, 5, 5, 'Other', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 16:05:28', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (84, 15, NULL, NULL, 'Christianity', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 18:15:24', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (85, 15, NULL, NULL, 'Protestant', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 18:23:38', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (86, 15, NULL, NULL, 'Orthodox', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 18:24:41', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (87, 15, NULL, NULL, 'Iglesia ni Cristo', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 18:25:00', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (88, 15, NULL, NULL, 'Seventh-day Adventist Church', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 18:25:20', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (89, 15, NULL, NULL, 'United Church of Christ in the Philippines', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 18:25:51', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (90, 15, NULL, NULL, 'Evangelicals', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 18:26:04', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (91, 15, NULL, NULL, 'Muslim', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 18:26:24', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (92, 15, NULL, NULL, 'Anitism', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 18:26:54', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (93, 15, NULL, NULL, 'Buddhism', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 18:27:20', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (94, 15, NULL, NULL, 'Sikhs', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 18:27:49', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (95, 15, NULL, NULL, 'Hinduism', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 18:27:58', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (96, 15, NULL, NULL, 'Judaism', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 18:28:10', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (97, 15, NULL, NULL, 'Baha\'i', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 18:28:38', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (98, 15, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 18:28:38', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (99, 16, NULL, NULL, 'Holy Mass', 'Holy Mass', NULL, NULL, NULL, NULL, 1, '2019-06-19 16:04:15', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (100, 16, NULL, NULL, 'Confessions', 'Confessions', NULL, NULL, NULL, NULL, 1, '2019-06-19 16:04:33', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (101, 16, NULL, NULL, 'Blessings', 'Blessings of cars and religious items', NULL, NULL, NULL, NULL, 1, '2019-06-19 16:05:05', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (102, 16, NULL, NULL, 'Live Mass', 'Live Mass', NULL, NULL, NULL, NULL, 1, '2019-06-19 16:05:16', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (103, 17, NULL, NULL, 'Mass', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 18:11:39', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (104, 17, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, NULL, 1, '2019-06-20 18:11:39', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (105, 18, NULL, NULL, 'Male', 'Male', NULL, NULL, NULL, NULL, 1, '2019-08-22 20:14:47', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (106, 18, NULL, NULL, 'Female', 'Female', NULL, NULL, NULL, NULL, 1, '2019-08-22 20:15:00', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (107, 19, NULL, NULL, 'Father', 'Father', NULL, NULL, NULL, NULL, 1, '2019-08-25 15:19:27', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (108, 19, NULL, NULL, 'Brother', 'Brother', NULL, NULL, NULL, NULL, 1, '2019-08-25 15:19:29', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (109, 19, NULL, NULL, 'Mother', 'Mother', NULL, NULL, NULL, NULL, 1, '2019-08-25 15:19:53', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (110, 19, NULL, NULL, 'Sister', 'Sister', NULL, NULL, NULL, NULL, 1, '2019-08-25 15:19:57', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (111, 20, NULL, NULL, 'Widget', 'This is for widget type of ads', NULL, NULL, NULL, NULL, 1, '2019-08-25 19:30:35', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (112, 20, NULL, NULL, 'Splash', 'This is for splash screen type of ads', NULL, NULL, NULL, NULL, 1, '2019-08-25 19:30:39', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (113, 21, NULL, NULL, 'Mt. Carmel Shrine', 'Our Lady of Mount Carmel Shrine', NULL, 0, 28, 31, 1, '2019-07-21 12:30:40', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (114, 21, NULL, NULL, 'Scholastics', 'Carmelite Foundation for Carmelite Scholastics, Inc.\r\nFor recruitment, postulant, novice, deacon, presbyter and seminary for philosophy and theology.', NULL, 0, 28, 28, 1, '2019-06-21 12:30:54', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (115, 21, NULL, NULL, 'Carefund', 'For elderly priests, sick priests, medication and hospitalization', NULL, 0, 28, 26, 1, '2019-06-21 12:30:54', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (116, 21, NULL, NULL, 'Feeding Program', 'for National Children’s Hospital ', NULL, 0, 28, 27, 1, '2019-06-21 12:30:54', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (117, 21, NULL, NULL, 'Noche Buena', 'Handog Noche Buena sa Pamilya', NULL, 0, 29, 30, 1, '2019-06-21 12:30:54', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (118, 21, NULL, NULL, 'Christmas Gift', 'My Christmas Gift to Infant Jesus ', NULL, 0, 29, 29, 1, '2019-06-21 12:30:54', NULL, NULL, b'0');
INSERT INTO `global_reference_value` VALUES (119, 21, NULL, NULL, 'Fiesta', 'Feast of Our Lady of Mount Carmel', NULL, 0, 30, 31, 1, '2019-07-01 18:38:05', NULL, NULL, b'0');

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
INSERT INTO `history` VALUES (1, 1, '17 February 1975', '16 July', 'Our Lady of Mt. Carmel', 'Cubao', '<p style=\"text-align: justify\">The Quezon City district of New Manila is a haven for various Catholic orders, with many chapels and convents scattered around the area; from the American colonial period (1898-1946) Convent of Carmel of Thérèse of Lisieux, the Sisters of St. Paul of Chartres Novitiate and Provincial House (established 1931), Franciscan St. Joseph’s Academy and Convent (established 1932), and the Society of the Divine Word’s Christ the King Mission Seminary (established 1933), to the post-war Congregation of the Religious of the Virgin Mary Compound (established 1950), the Pink Sister’s St. Joseph Convent of Perpetual Adoration (established 1965), the Congregatio Immaculati Cordis Mariae’s Maryhill School Of The Theology (1979),the Local Superior of The Society of Monfort Missionaries(established 1984), and the Foundation for Carmelite Scholastics(established 1987). However, the center of most Catholic activities is the Minor Basilica of the National Shrine of Our Lady of Mount Carmel, located on Broadway Avenue, taking most of the block between 4th and 5th street.</p><p>\r\n\r\n</p><p style=\"text-align: justify\">The Mount Carmel Parish is part of the third wave of Discalced Carmelites missions to the Philippines, which started in 1923, with the arrival of four French nuns from Hue, Vietnam, to the shores of Jaro, Iloilo. In this first wave, the Convent Carmel of Thérèse of Lisieux was founded in 1926, along Gilmore Avenue, in New Manila. The second wave also began in Infanta, Quezon Province, in 1946; and this time the Discalced Carmelite friars were now leading the wave. Part of the third wave that started in Jaro, Iloilo, the Anglo-Irish Carmelite friars established a foundation in 1954, in New Manila, Quezon City, and on December 30 of the same year, the cornerstone was laid for the new church.</p><p>\r\n\r\n</p><p style=\"text-align: justify\">The new church was dedicated as a shrine to Our Lady of Mount Carmel, a title of the Blessed Virgin Mary, which the first Carmelites named in the construction of their first monastery on Mount Karmel (Har HaKarmel) in the northern territories of Israel, during the 12th Century. The order of Carmelite started with Christian hermits living in Har HaKarmel, during the Crusades, who chose the mountain where the prophet Elijah had lived and challenged the priests of the god Baal, as a reflection of their faith against the Muslims who have taken over the holy city of Jerusalem. The old friary is built around the c', NULL, 1, '2019-06-19 14:27:04', 1, '2019-08-22 23:05:22', b'0');

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
INSERT INTO `live_streams` VALUES (1, 1, 'Mount Carmel Live Mass', 'National Shrine of Mount Carmel Minor Basilica Live Mass', 'LtKHvOXxbV4', 1, '2019-07-19 21:26:10', 1, '2019-08-28 08:16:49', b'0');

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
-- Table structure for main
-- ----------------------------
DROP TABLE IF EXISTS `main`;
CREATE TABLE `main`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(2500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of main
-- ----------------------------
INSERT INTO `main` VALUES (1, 'Mt. Carmel Church', 'Mt. Carmel Church', 1, '2019-06-18 16:04:06', NULL, NULL, b'0');

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
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

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
  `rank` int(11) NULL DEFAULT NULL,
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
INSERT INTO `ministers` VALUES (1, 1, 107, 'Fr. Alan Rieger', 'Superior', 'OCD', 1, 2, 1, '2019-06-19 12:59:16', 1, '2019-08-26 15:27:03', b'0');
INSERT INTO `ministers` VALUES (2, 1, 107, 'Fr. Joey Mabborang', 'Parish Priest / Shrine Rector', 'OCD', 1, 3, 1, '2019-06-19 13:02:24', 1, '2019-08-28 14:18:48', b'0');
INSERT INTO `ministers` VALUES (3, 1, 107, 'Fr. Hernani Añis', 'Parochial Vicar for the Parish', 'OCD', 2, 8, 1, '2019-06-19 13:03:59', 1, '2019-08-26 15:26:15', b'0');
INSERT INTO `ministers` VALUES (4, 1, 107, 'Fr. Ransom Rapirap', 'Parochial Vicar for the National Shrine', 'OCD', 2, 9, 1, '2019-06-19 13:04:28', 1, '2019-08-26 15:17:53', b'0');
INSERT INTO `ministers` VALUES (5, 1, 107, 'Fr. Narciso \"Chito\" Reyes', '', 'OCD', 3, 7, 1, '2019-06-19 13:04:50', 1, '2019-08-26 15:17:29', b'0');
INSERT INTO `ministers` VALUES (6, 1, 107, 'Fr. Alex Collera', '', 'OCD', 3, 4, 1, '2019-06-19 13:05:14', 1, '2019-08-26 15:17:04', b'0');
INSERT INTO `ministers` VALUES (7, 1, 107, 'Fr. Angelo \"Bing\" Madelo', '', 'OCD', 3, 6, 1, '2019-06-19 13:05:56', 1, '2019-08-28 14:01:05', b'0');
INSERT INTO `ministers` VALUES (8, 1, 107, 'Fr. Benedick Piangco', '', 'OCD', 3, 5, 1, '2019-06-19 13:06:11', 1, '2019-08-25 14:07:07', b'0');
INSERT INTO `ministers` VALUES (9, 1, 107, 'Rev. Nguyen Cong Vinh (Rev. Paul)', '', 'OCD', 4, 10, 1, '2019-06-19 14:10:16', 1, '2019-08-23 12:24:05', b'0');
INSERT INTO `ministers` VALUES (10, 1, 107, 'Bro. Porferio Nalzaro', '', 'OCD', 4, 11, 1, '2019-06-19 14:10:35', 1, '2019-08-23 10:51:11', b'0');
INSERT INTO `ministers` VALUES (11, 1, 107, 'Fr. Paul O\'Sullivan', NULL, 'OCD (1975-1978)', 1, 1, 1, '2019-06-19 14:11:47', 1, '2019-08-23 10:37:13', b'0');
INSERT INTO `ministers` VALUES (12, 1, 107, 'Fr. Tom Shanahan', NULL, 'OCD (1978-1981)', 2, 3, 1, '2019-06-19 14:12:12', 1, '2019-08-23 10:37:11', b'0');
INSERT INTO `ministers` VALUES (13, 1, 107, 'Fr. Rolando Tria-Tirona', NULL, 'D.D. (1981-1984)', 3, 1, 1, '2019-06-19 14:13:34', 1, '2019-08-23 10:37:08', b'0');
INSERT INTO `ministers` VALUES (14, 1, 107, 'Fr. Paul Sullivan', NULL, 'OCD (1984-1987)', 4, 1, 1, '2019-06-19 14:14:05', 1, '2019-08-23 10:37:05', b'0');
INSERT INTO `ministers` VALUES (15, 1, 107, 'Fr. Michael Fitzgerald', NULL, 'CD  (1987-1988)', 5, 1, 1, '2019-06-19 14:15:56', 1, '2019-08-23 10:37:01', b'0');
INSERT INTO `ministers` VALUES (16, 1, 107, 'Fr. Paul O\'Sullivan', NULL, 'OCD (1988-1990)', 6, 1, 1, '2019-06-19 14:16:25', 1, '2019-08-23 10:36:53', b'0');
INSERT INTO `ministers` VALUES (17, 1, 107, 'Fr. Rolando Tria-Tirona', NULL, 'DD (1990-1993)', 7, 1, 1, '2019-06-19 14:16:56', 1, '2019-08-23 10:36:50', b'0');
INSERT INTO `ministers` VALUES (18, 1, 107, 'Fr. Angelo \"Bing\" Madelo', '', 'OCD (1993-1996)', 8, 6, 1, '2019-06-19 14:17:26', 1, '2019-08-28 14:01:23', b'0');
INSERT INTO `ministers` VALUES (19, 1, 107, 'Fr. Alex Collera', '', 'OCD (1996 -1999)', 9, 4, 1, '2019-06-19 14:18:00', 1, '2019-08-28 14:00:13', b'0');
INSERT INTO `ministers` VALUES (20, 1, 107, 'Fr. Mariano Agruda', NULL, 'OCD (1999-2005)', 10, 1, 1, '2019-06-19 14:18:33', 1, '2019-08-23 10:36:37', b'0');
INSERT INTO `ministers` VALUES (21, 1, 107, 'Fr. Paulo Gamboa', NULL, 'OCD (2005-2006)', 11, 1, 1, '2019-06-19 14:19:13', 1, '2019-08-23 10:36:34', b'0');
INSERT INTO `ministers` VALUES (22, 1, 107, 'Fr. Arnie Boehme', '', 'OCD (2006-2008)', 12, 1, 1, '2019-06-19 14:21:05', 1, '2019-08-26 16:36:16', b'0');
INSERT INTO `ministers` VALUES (23, 1, 107, 'Fr. Alex Collera', '', 'OCD (2008-2011)', 13, 4, 1, '2019-06-19 14:21:31', 1, '2019-08-28 14:00:26', b'0');
INSERT INTO `ministers` VALUES (24, 1, 107, 'Fr. Dan Lim', '', 'OCD (2011-2014)', 14, 1, 1, '2019-06-19 14:22:09', 1, '2019-08-26 16:23:41', b'0');
INSERT INTO `ministers` VALUES (25, 1, 107, 'Fr. Joey Maborrang', '', 'OCD (2014-present)', 15, 3, 1, '2019-06-19 14:22:31', 1, '2019-08-28 13:57:45', b'0');

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (1, 1, 'Official Web and Mobile App', '<p style=\"text-align: justify\">We have released the new official web and mobile applications of Minor Basilica of the National Shrine of Our Lady of Mount Carmel, located at 90 4th Street, New Manila, Quezon City, Philippines.</p><p>\r\n</p><p style=\"text-align: justify\">Our vision for the new system will help the church improve its security, sustainability, and efficiency.</p><p>\r\n</p><p style=\"text-align: justify\">We have seen massive loopholes in the old system, that is undoubtedly been exploited by countless people.</p><p>\r\n</p><p style=\"text-align: justify\">We have automated the old system to remove the presence of human resources as middlemen in every transaction, such as donations and services. In result, it ceases theft and temptations from employees and other people. Despite the innumerable security measures that we have installed, the system can also identify thieves and unscrupulous transactions, should there be any.</p><p>\r\n</p><p style=\"text-align: justify\">The Pope demands the church to loosen up from asking donations from people. We have designed a plan called the Progressive Leap Strategy that requires zero donations.</p><p>\r\n</p><p style=\"text-align: justify\">To achieve a self-sustaining technology, we have monetized the platform to build and expand the system. We have placed a number of ad placements in the applications, aiming to produce a platform without asking for any donations. Eventually, the system will lessen the monetary help needed by the church.</p><p>\r\n</p><p style=\"text-align: justify\">This approach will aggressively expand the system throughout Mount Carmel Churches in the Philippines, in parallel with the improvement of the system by adding more features and upgrading the overall performance of the application.</p><p>\r\n</p><p style=\"text-align: justify\">The Catholic Church ought to focus on the next generation of Christians, the survival of Catholicism is highly dependent on the new generation than of the previous. Adapting to the information age is a great way of reaching out to the young ones, being available to anyone, anytime and anywhere.</p><p>\r\n</p><p style=\"text-align: justify\">This platform will serve as a tool to secure transactions, promote efficiency and preserve Christianity.</p>', 57, NULL, 14, 1, '2019-06-19 14:49:12', 1, '2019-08-08 22:54:33', b'0');
INSERT INTO `posts` VALUES (2, 1, 'Solemn Declaration of The National Shrine of Our Lady of Mt. Carmel as Minor Basilica', '<p style=\"text-align: justify\">Solemn Declaration of The National Shrine of Our Lady of Mt. Carmel as Minor Basilica. Let us be at the service of others and bring Christ to them. So that the presence of a Basilica is a strong confirmation that we are never alone. God is with us!</p>', 57, NULL, 24, 1, '2019-06-18 17:38:33', 1, '2019-08-08 22:54:26', b'0');
INSERT INTO `posts` VALUES (3, 1, 'Sample Ads - Coca-Cola Awarded for Advertising Innovation', '<p style=\"text-align: justify\">When Coca-Cola was named \"Marketer of the Year\" by AdAge in 2011, the flagship brand was 125 years old. But even today, the company is not too old to learn and does not rest on its laurels. Coke\'s marketing strategies have produced some volatility over the long-haul, but part of that is due to the willingness of The Coca-Cola Company to innovate. Apparently, the marketing overhaul has worked.</p><p>\r\n</p><p style=\"text-align: justify\">According to Natalie Zmuda of AdAge, Coca-Cola\'s marketing focus changed in 2007 when Mr. Tripodi came on board from Allstate. AdAge described the following marketing challenges:</p><p>\r\n</p><p style=\"text-align: justify\">Coca-Cola was too dependent on its flagship drink - Coke® Coca-Cola\'s advertising and use of advertising agencies was inconsistent Coca-Cola was seen as a \"sluggish, hidebound marketer.\" Mr. Tripodi told Zamuda he believes that the culture at Coca-Cola has a lot to do with its success. The team is said to share both the successes and the learnings from failures, which is a must given the size and scale of The Coca-Cola Company. Mr. Tripodi said, \"We\'ve got a team of people around the world that is less concerned with getting credit and more concerned with getting behind a great idea.\" The Coca-Cola Company could be classified as a learning organization as it has demonstrated adaptability and creativity over many decades.</p>', 62, NULL, 48, 1, '2019-06-18 17:52:40', 1, '2019-08-23 07:32:44', b'0');

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
  `psgc_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
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
INSERT INTO `province` VALUES (1, '012800000', 'ILOCOS NORTE', '01', '0128', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (2, '012900000', 'ILOCOS SUR', '01', '0129', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (3, '013300000', 'LA UNION', '01', '0133', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (4, '015500000', 'PANGASINAN', '01', '0155', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (5, '020900000', 'BATANES', '02', '0209', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (6, '021500000', 'CAGAYAN', '02', '0215', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (7, '023100000', 'ISABELA', '02', '0231', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (8, '025000000', 'NUEVA VIZCAYA', '02', '0250', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (9, '025700000', 'QUIRINO', '02', '0257', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (10, '030800000', 'BATAAN', '03', '0308', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (11, '031400000', 'BULACAN', '03', '0314', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (12, '034900000', 'NUEVA ECIJA', '03', '0349', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (13, '035400000', 'PAMPANGA', '03', '0354', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (14, '036900000', 'TARLAC', '03', '0369', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (15, '037100000', 'ZAMBALES', '03', '0371', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (16, '037700000', 'AURORA', '03', '0377', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (17, '041000000', 'BATANGAS', '04', '0410', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (18, '042100000', 'CAVITE', '04', '0421', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (19, '043400000', 'LAGUNA', '04', '0434', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (20, '045600000', 'QUEZON', '04', '0456', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (21, '045800000', 'RIZAL', '04', '0458', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (22, '174000000', 'MARINDUQUE', '17', '1740', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (23, '175100000', 'OCCIDENTAL MINDORO', '17', '1751', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (24, '175200000', 'ORIENTAL MINDORO', '17', '1752', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (25, '175300000', 'PALAWAN', '17', '1753', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (26, '175900000', 'ROMBLON', '17', '1759', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (27, '050500000', 'ALBAY', '05', '0505', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (28, '051600000', 'CAMARINES NORTE', '05', '0516', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (29, '051700000', 'CAMARINES SUR', '05', '0517', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (30, '052000000', 'CATANDUANES', '05', '0520', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (31, '054100000', 'MASBATE', '05', '0541', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (32, '056200000', 'SORSOGON', '05', '0562', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (33, '060400000', 'AKLAN', '06', '0604', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (34, '060600000', 'ANTIQUE', '06', '0606', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (35, '061900000', 'CAPIZ', '06', '0619', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (36, '063000000', 'ILOILO', '06', '0630', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (37, '064500000', 'NEGROS OCCIDENTAL', '06', '0645', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (38, '067900000', 'GUIMARAS', '06', '0679', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (39, '071200000', 'BOHOL', '07', '0712', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (40, '072200000', 'CEBU', '07', '0722', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (41, '074600000', 'NEGROS ORIENTAL', '07', '0746', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (42, '076100000', 'SIQUIJOR', '07', '0761', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (43, '082600000', 'EASTERN SAMAR', '08', '0826', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (44, '083700000', 'LEYTE', '08', '0837', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (45, '084800000', 'NORTHERN SAMAR', '08', '0848', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (46, '086000000', 'SAMAR (WESTERN SAMAR)', '08', '0860', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (47, '086400000', 'SOUTHERN LEYTE', '08', '0864', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (48, '087800000', 'BILIRAN', '08', '0878', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (49, '097200000', 'ZAMBOANGA DEL NORTE', '09', '0972', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (50, '097300000', 'ZAMBOANGA DEL SUR', '09', '0973', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (51, '098300000', 'ZAMBOANGA SIBUGAY', '09', '0983', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (52, '099700000', 'CITY OF ISABELA', '09', '0997', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (53, '101300000', 'BUKIDNON', '10', '1013', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (54, '101800000', 'CAMIGUIN', '10', '1018', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (55, '103500000', 'LANAO DEL NORTE', '10', '1035', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (56, '104200000', 'MISAMIS OCCIDENTAL', '10', '1042', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (57, '104300000', 'MISAMIS ORIENTAL', '10', '1043', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (58, '112300000', 'DAVAO DEL NORTE', '11', '1123', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (59, '112400000', 'DAVAO DEL SUR', '11', '1124', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (60, '112500000', 'DAVAO ORIENTAL', '11', '1125', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (61, '118200000', 'COMPOSTELA VALLEY', '11', '1182', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (62, '118600000', 'DAVAO OCCIDENTAL', '11', '1186', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (63, '124700000', 'COTABATO (NORTH COTABATO)', '12', '1247', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (64, '126300000', 'SOUTH COTABATO', '12', '1263', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (65, '126500000', 'SULTAN KUDARAT', '12', '1265', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (66, '128000000', 'SARANGANI', '12', '1280', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (67, '129800000', 'COTABATO CITY', '12', '1298', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (68, '133900000', 'NCR, CITY OF MANILA, FIRST DISTRICT', '13', '1339', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (69, '133900000', 'CITY OF MANILA', '13', '1339', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (70, '137400000', 'NCR, SECOND DISTRICT', '13', '1374', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (71, '137500000', 'NCR, THIRD DISTRICT', '13', '1375', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (72, '137600000', 'NCR, FOURTH DISTRICT', '13', '1376', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (73, '140100000', 'ABRA', '14', '1401', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (74, '141100000', 'BENGUET', '14', '1411', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (75, '142700000', 'IFUGAO', '14', '1427', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (76, '143200000', 'KALINGA', '14', '1432', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (77, '144400000', 'MOUNTAIN PROVINCE', '14', '1444', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (78, '148100000', 'APAYAO', '14', '1481', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (79, '150700000', 'BASILAN', '15', '1507', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (80, '153600000', 'LANAO DEL SUR', '15', '1536', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (81, '153800000', 'MAGUINDANAO', '15', '1538', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (82, '156600000', 'SULU', '15', '1566', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (83, '157000000', 'TAWI-TAWI', '15', '1570', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (84, '160200000', 'AGUSAN DEL NORTE', '16', '1602', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (85, '160300000', 'AGUSAN DEL SUR', '16', '1603', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (86, '166700000', 'SURIGAO DEL NORTE', '16', '1667', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (87, '166800000', 'SURIGAO DEL SUR', '16', '1668', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');
INSERT INTO `province` VALUES (88, '168500000', 'DINAGAT ISLANDS', '16', '1685', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');

-- ----------------------------
-- Table structure for region
-- ----------------------------
DROP TABLE IF EXISTS `region`;
CREATE TABLE `region`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `psgc_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
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
INSERT INTO `region` VALUES (1, '010000000', 'REGION I (ILOCOS REGION)', '01', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');
INSERT INTO `region` VALUES (2, '020000000', 'REGION II (CAGAYAN VALLEY)', '02', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');
INSERT INTO `region` VALUES (3, '030000000', 'REGION III (CENTRAL LUZON)', '03', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');
INSERT INTO `region` VALUES (4, '040000000', 'REGION IV-A (CALABARZON)', '04', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');
INSERT INTO `region` VALUES (5, '170000000', 'REGION IV-B (MIMAROPA)', '17', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');
INSERT INTO `region` VALUES (6, '050000000', 'REGION V (BICOL REGION)', '05', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');
INSERT INTO `region` VALUES (7, '060000000', 'REGION VI (WESTERN VISAYAS)', '06', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');
INSERT INTO `region` VALUES (8, '070000000', 'REGION VII (CENTRAL VISAYAS)', '07', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');
INSERT INTO `region` VALUES (9, '080000000', 'REGION VIII (EASTERN VISAYAS)', '08', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');
INSERT INTO `region` VALUES (10, '090000000', 'REGION IX (ZAMBOANGA PENINSULA)', '09', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');
INSERT INTO `region` VALUES (11, '100000000', 'REGION X (NORTHERN MINDANAO)', '10', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');
INSERT INTO `region` VALUES (12, '110000000', 'REGION XI (DAVAO REGION)', '11', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');
INSERT INTO `region` VALUES (13, '120000000', 'REGION XII (SOCCSKSARGEN)', '12', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');
INSERT INTO `region` VALUES (14, '130000000', 'NATIONAL CAPITAL REGION (NCR)', '13', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');
INSERT INTO `region` VALUES (15, '140000000', 'CORDILLERA ADMINISTRATIVE REGION (CAR)', '14', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');
INSERT INTO `region` VALUES (16, '150000000', 'AUTONOMOUS REGION IN MUSLIM MINDANAO (ARMM)', '15', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');
INSERT INTO `region` VALUES (17, '160000000', 'REGION XIII (Caraga)', '16', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');

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
  `schedule_type_id` int(11) NULL DEFAULT NULL,
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
INSERT INTO `schedules` VALUES (18, 1, 'Confession', 'Confession', '06:30:00', '07:30:00', 'Weekdays', 100, NULL, NULL, 1, '2019-06-19 16:26:03', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (19, 1, 'Confession', 'Confession', '18:30:00', '19:30:00', 'Weekdays', 100, NULL, NULL, 1, '2019-06-19 16:26:45', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (20, 1, 'Blessings', 'Blessings', '09:00:00', '11:00:00', 'Everyday', 101, NULL, NULL, 1, '2019-06-19 16:27:41', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (21, 1, 'Blessings', 'Blessings', '15:00:00', '16:00:00', 'Everyday', 101, NULL, NULL, 1, '2019-06-19 16:28:21', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (22, 1, 'Live Mass', 'Live Mass', '06:00:00', '07:00:00', 'Sundays', 102, 37, NULL, 1, '2019-06-19 16:29:28', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (23, 1, 'Live Mass', 'Live Mass', '07:00:00', '08:00:00', 'Sundays', 102, 38, NULL, 1, '2019-06-19 16:30:10', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (24, 1, 'Live Mass', 'Live Mass', '18:00:00', '19:00:00', 'Sundays', 102, 38, NULL, 1, '2019-06-19 16:30:44', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (25, 1, 'Live Mass', 'Live Mass', '19:00:00', '20:00:00', 'Sundays', 102, 38, NULL, 1, '2019-06-19 16:31:24', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (26, 1, 'Live Mass', 'Live Mass', '06:00:00', '07:00:00', 'Saturdays', 102, 38, NULL, 1, '2019-06-19 16:29:28', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (27, 1, 'Live Mass', 'Live Mass', '07:00:00', '08:00:00', 'Saturdays', 102, 38, NULL, 1, '2019-06-19 16:29:28', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (28, 1, 'Live Mass', 'Live Mass', '18:00:00', '19:00:00', 'Saturdays', 102, 38, NULL, 1, '2019-06-19 16:30:44', 1, '2019-08-23 07:32:31', b'0');
INSERT INTO `schedules` VALUES (29, 1, 'Live Mass', 'Live Mass', '19:00:00', '20:00:00', 'Saturdays', 102, 38, NULL, 1, '2019-06-19 16:31:24', 1, '2019-08-23 07:33:24', b'0');

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
  `name` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `dt_birth` datetime(0) NULL DEFAULT NULL,
  `address_1` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `address_2` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `barangay` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
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
  `purpose_mass` int(11) NULL DEFAULT NULL,
  `dt_offered` datetime(0) NULL DEFAULT NULL,
  `time_offered` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
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
  `status` int(11) NOT NULL DEFAULT 1,
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
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of service_transactions
-- ----------------------------
INSERT INTO `service_transactions` VALUES (1, 1, 4, 1, 'Ice Dee', '1990-10-12 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '630917883335', 'ijvdee@gmail.com', NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-30 17:44:24', NULL, NULL, b'0');
INSERT INTO `service_transactions` VALUES (2, 1, 5, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, 'test prayer request\r\n\r\ntest test\r\n\r\ntest test test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-30 17:45:28', NULL, NULL, b'0');
INSERT INTO `service_transactions` VALUES (3, 1, 5, 3, 'Joan Mojeco', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, 68, '2019-08-03 00:00:00', '10:00 AM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-31 13:52:44', NULL, NULL, b'0');
INSERT INTO `service_transactions` VALUES (4, 1, 4, 1, 'itsitsitd', '2000-01-01 00:00:00', 'ktditsi', 'itditdi', '12802004', '12802', '128', '1', '12345678', '123456789123', 'asd@gfs.ph', NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-31 16:47:06', NULL, NULL, b'0');
INSERT INTO `service_transactions` VALUES (5, 1, 4, 1, 'itsitsitd', '2000-01-01 00:00:00', 'ktditsi', 'itditdi', '12802004', '12802', '128', '1', '12345678', '123456789123', 'asd@gfs.ph', NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-31 16:53:37', NULL, NULL, b'0');
INSERT INTO `service_transactions` VALUES (6, 1, 4, 1, 'itsitsitd', '2000-01-01 00:00:00', 'ktditsi', 'itditdi', '12802004', '12802', '128', '1', '12345678', '123456789123', 'asd@gfs.ph', NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 2, '2019-07-31 16:58:46', NULL, NULL, b'0');
INSERT INTO `service_transactions` VALUES (7, 1, 4, 1, 'Adrian', '2000-01-01 00:00:00', 'Somewhere', 'Down the Road', '12802004', '12802', '128', '1', '12345678', '123456789123', 'asd@gfs.ph', NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, '2019-07-31 17:15:19', NULL, NULL, b'0');
INSERT INTO `service_transactions` VALUES (8, 1, 4, 1, 'Adrian', '2000-01-01 00:00:00', 'Somewhere', 'Down the Road', '12802004', '12802', '128', '1', '12345678', '123456789123', 'asd@gfs.ph', NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 5, '2019-07-31 17:21:26', NULL, NULL, b'0');
INSERT INTO `service_transactions` VALUES (9, 1, 4, 1, 'Adrian', '2000-01-01 00:00:00', 'Somewhere', 'Down the Road', '12802004', '12802', '128', '1', '12345678', '123456789123', 'asd@gfs.ph', NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 5, '2019-07-31 17:25:45', NULL, NULL, b'0');
INSERT INTO `service_transactions` VALUES (10, 1, 4, 1, 'Adrian', '2000-01-01 00:00:00', 'Somewhere', 'Down the Road', '12802004', '12802', '128', '1', '12345678', '123456789123', 'asd@gfs.ph', NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 5, '2019-07-31 17:26:20', NULL, NULL, b'0');
INSERT INTO `service_transactions` VALUES (11, 1, 4, 1, 'Adrian', '2000-01-01 00:00:00', 'Somewhere', 'Down the Road', '12802004', '12802', '128', '1', '12345678', '123456789123', 'asd@gfs.ph', NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 5, '2019-07-31 17:26:40', NULL, NULL, b'0');
INSERT INTO `service_transactions` VALUES (12, 1, 4, 1, 'Adrian', '2000-01-01 00:00:00', 'Somewhere', 'Down the Road', '12802004', '12802', '128', '1', '12345678', '123456789123', 'asd@gfs.ph', NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 5, '2019-07-31 17:26:46', NULL, NULL, b'0');
INSERT INTO `service_transactions` VALUES (13, 1, 4, 1, 'Adrian', '2019-08-15 12:32:49', 'Bahay', 'Kalye', '15533003', '15533', '155', '1', '1234567', '09191234567', 'abcd@abc.ph', NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 5, '2019-08-15 12:35:50', NULL, NULL, b'0');
INSERT INTO `service_transactions` VALUES (14, 1, 5, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, 'please pray for Hong kong', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 5, '2019-08-15 12:41:03', NULL, NULL, b'0');
INSERT INTO `service_transactions` VALUES (15, 1, 5, 3, 'Dasal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, 69, '2019-08-15 13:12:39', '2019-08-15 20:17:24.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 5, '2019-08-15 13:12:50', NULL, NULL, b'0');
INSERT INTO `service_transactions` VALUES (16, 1, 5, 3, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, 70, '2019-08-15 13:35:28', '13:35:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 5, '2019-08-15 13:35:50', NULL, NULL, b'0');
INSERT INTO `service_transactions` VALUES (17, 1, 4, 1, 'A', '2019-08-15 13:39:27', 'Manila', 'Street', '015503004', '015503', '0155', '01', '1346888', '097768885', 'daft@ghi.ph', NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 5, '2019-08-15 13:40:01', NULL, NULL, b'0');
INSERT INTO `service_transactions` VALUES (18, 1, 5, 3, 'Dasal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, 71, '2019-08-15 00:00:00', '13:56:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 5, '2019-08-15 13:56:17', NULL, NULL, b'0');
INSERT INTO `service_transactions` VALUES (19, 1, 4, 1, 'John Dor', '2019-08-15 00:00:00', 'Here', 'There', '015504006', '015504', '0155', '01', '12345', '123455', 'adfh@dfgg.gmail.com', NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 5, '2019-08-15 16:04:14', NULL, NULL, b'0');
INSERT INTO `service_transactions` VALUES (20, 1, 5, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'John', '1234567', '09171234567', NULL, b'0', NULL, NULL, NULL, NULL, NULL, '2019-08-15 00:00:00', '16:48:28', 'Basilica', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 5, '2019-08-15 16:49:24', NULL, NULL, b'0');
INSERT INTO `service_transactions` VALUES (21, 1, 5, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, 'Please pray for the increase of my salary.\n\nThank you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 9, '2019-08-16 09:47:58', NULL, NULL, b'0');
INSERT INTO `service_transactions` VALUES (22, 1, 4, 1, '', '2019-10-20 00:00:00', '', '', '013307005', '013307', '0133', '01', '', '', '', NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 9, '2019-08-20 10:42:31', NULL, NULL, b'0');
INSERT INTO `service_transactions` VALUES (23, 1, 5, 3, 'Help for the future.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, 72, '2019-08-20 00:00:00', '20:6:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 9, '2019-08-20 20:07:01', NULL, NULL, b'0');
INSERT INTO `service_transactions` VALUES (24, 1, 5, 3, 'Sample mass request', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, 73, '2019-08-20 00:00:00', '20:34:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 9, '2019-08-20 20:34:59', NULL, NULL, b'0');
INSERT INTO `service_transactions` VALUES (25, 1, 5, 3, 'Pray for the blessings', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, 74, '2019-08-22 00:00:00', '10:35:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 9, '2019-08-22 10:35:58', NULL, NULL, b'0');
INSERT INTO `service_transactions` VALUES (26, 1, 5, 3, 'Mass for the success.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, 68, '2019-08-22 00:00:00', '11:19:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 9, '2019-08-22 11:19:12', NULL, NULL, b'0');
INSERT INTO `service_transactions` VALUES (27, 1, 5, 3, 'sample mass request', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, 72, '2019-08-22 00:00:00', '14:26:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 9, '2019-08-22 14:27:30', NULL, NULL, b'0');

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
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, 1, 'System', NULL, 'Admin', 'admin@mountcarmel.ph', 'St. Mary Street', NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, '2019-06-21 12:38:50', NULL, NULL, b'0');
INSERT INTO `user_info` VALUES (2, 2, 'John', NULL, 'Appleseed', 'john@appleseed.com', 'St. Mary Street', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-06-21 12:38:50', NULL, NULL, b'0');
INSERT INTO `user_info` VALUES (3, 3, 'Jane', NULL, 'Doe', 'jane@doe.com', 'St. Mary Street', NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, '2019-07-16 12:48:05', NULL, NULL, b'0');
INSERT INTO `user_info` VALUES (4, 4, 'John', NULL, 'Doe', 'john@doe.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, '2019-07-17 22:46:53', NULL, NULL, b'0');
INSERT INTO `user_info` VALUES (5, 5, 'Adrian', NULL, 'Evangelista', 'adriane.macer@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 1, '2019-07-18 21:16:07', NULL, NULL, b'0');
INSERT INTO `user_info` VALUES (6, 6, 'Adrian', NULL, 'Evangelista', 'adrianevangelista.bicolresearch@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 2, '2019-07-18 21:20:05', NULL, NULL, b'0');
INSERT INTO `user_info` VALUES (7, 7, 'Adrian', NULL, 'Evangelista', 'macer_0001@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 2, '2019-07-19 14:32:36', NULL, NULL, b'0');
INSERT INTO `user_info` VALUES (8, 8, 'adrian', NULL, 'the Great', 'adrianthegreat@email.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 2, '2019-07-23 13:49:38', NULL, NULL, b'0');
INSERT INTO `user_info` VALUES (9, 9, 'Priest', NULL, 'Appleseed', 'priest@mountcarmel.com', 'St. Mary Street', NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, '2019-06-21 12:38:50', NULL, NULL, b'0');

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
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 1, 1, 'admin@mountcarmel.ph', '933e52712f2663bad0322db2e74fa2af8411c55a2611e193cb1076327c014f20fcea5e37355c92be7a43c89409dce639b207e2ea0ab3739e740283bde8479754', 1, '2019-06-21 12:36:40', 1, '2019-08-28 06:33:14', b'0');
INSERT INTO `users` VALUES (2, 1, 2, 'john@appleseed.com', '933e52712f2663bad0322db2e74fa2af8411c55a2611e193cb1076327c014f20fcea5e37355c92be7a43c89409dce639b207e2ea0ab3739e740283bde8479754', 1, '2019-06-21 12:37:34', 2, '2019-08-22 09:33:14', b'0');
INSERT INTO `users` VALUES (3, 1, 2, 'jane@doe.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 1, '2019-07-16 12:48:05', 3, '2019-07-18 19:18:55', b'0');
INSERT INTO `users` VALUES (4, 1, 2, 'john@doe.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 1, '2019-07-17 22:46:53', 4, '2019-08-27 00:16:27', b'0');
INSERT INTO `users` VALUES (5, 1, 2, 'adriane.macer@gmail.com', 'b109f3bbbc244eb82441917ed06d618b9008dd09b3befd1b5e07394c706a8bb980b1d7785e5976ec049b46df5f1326af5a2ea6d103fd07c95385ffab0cacbc86', 1, '2019-07-18 21:16:07', NULL, NULL, b'0');
INSERT INTO `users` VALUES (6, 1, 2, 'adrianevangelista.bicolresearch@gmail.com', '933e52712f2663bad0322db2e74fa2af8411c55a2611e193cb1076327c014f20fcea5e37355c92be7a43c89409dce639b207e2ea0ab3739e740283bde8479754', 2, '2019-07-18 21:20:05', NULL, NULL, b'0');
INSERT INTO `users` VALUES (7, 1, 2, 'macer_0001@yahoo.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 2, '2019-07-19 14:32:36', NULL, NULL, b'0');
INSERT INTO `users` VALUES (8, 1, 2, 'adrianthegreat@email.com', 'b109f3bbbc244eb82441917ed06d618b9008dd09b3befd1b5e07394c706a8bb980b1d7785e5976ec049b46df5f1326af5a2ea6d103fd07c95385ffab0cacbc86', 2, '2019-07-23 13:49:38', NULL, NULL, b'0');
INSERT INTO `users` VALUES (9, 1, 3, 'priest@mountcarmel.com', '933e52712f2663bad0322db2e74fa2af8411c55a2611e193cb1076327c014f20fcea5e37355c92be7a43c89409dce639b207e2ea0ab3739e740283bde8479754', 1, '2019-06-21 12:37:34', 1, '2019-07-25 16:17:24', b'0');

SET FOREIGN_KEY_CHECKS = 1;
