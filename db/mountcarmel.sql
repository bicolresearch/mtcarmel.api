/*
 Navicat MySQL Data Transfer

 Source Server         : bicolresearch
 Source Server Type    : MySQL
 Source Server Version : 100139
 Source Host           : localhost:3306
 Source Schema         : mountcarmel

 Target Server Type    : MySQL
 Target Server Version : 100139
 File Encoding         : 65001

 Date: 15/08/2019 08:48:40
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
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
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
  `date_modified` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ad_type
-- ----------------------------
DROP TABLE IF EXISTS `ad_type`;
CREATE TABLE `ad_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ad_type
-- ----------------------------
INSERT INTO `ad_type` VALUES (1, 'Widget', 'This is for widget type of ads', 1, '2019-08-14 18:37:15', NULL, NULL, b'0');
INSERT INTO `ad_type` VALUES (2, 'Splash', 'This is for splash screen type of ads', 1, '2019-08-14 18:38:23', NULL, NULL, b'0');

-- ----------------------------
-- Table structure for ads
-- ----------------------------
DROP TABLE IF EXISTS `ads`;
CREATE TABLE `ads`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `media_id` int(11) NOT NULL,
  `type_id` int(11) NULL DEFAULT NULL,
  `expiration` datetime(0) NOT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ads
-- ----------------------------
INSERT INTO `ads` VALUES (1, 1, 'Advertisement 1', 'Advertisement 1', 23, 1, '2020-06-30 00:00:00', 1, '2019-06-24 14:30:17', 1, '2019-08-08 22:55:09', b'0');
INSERT INTO `ads` VALUES (2, 1, 'Advertisement 2', 'Advertisement 2', 23, 1, '2020-06-30 00:00:00', 1, '2019-06-24 14:30:31', 1, '2019-08-08 22:55:05', b'0');
INSERT INTO `ads` VALUES (3, 1, 'Advertisement 3', 'Advertisement 3', 23, 1, '2020-06-30 00:00:00', 1, '2019-06-24 14:30:47', 1, '2019-08-08 22:55:01', b'0');
INSERT INTO `ads` VALUES (4, 1, 'Advertisement 4', 'Advertisement 4', 23, 1, '2020-06-30 00:00:00', 1, '2019-06-24 14:30:56', 1, '2019-08-09 15:20:35', b'0');

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
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
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
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of boundaries
-- ----------------------------
INSERT INTO `boundaries` VALUES (1, 1, 'North', 'E. Rodriguez Avenue (formerly España Extension)', 1, '2019-06-19 16:46:24', 1, '2019-08-14 23:50:35', b'0');
INSERT INTO `boundaries` VALUES (2, 1, 'South', 'Ermitaño Creek', 1, '2019-06-19 16:46:53', 1, '2019-08-14 23:50:30', b'0');
INSERT INTO `boundaries` VALUES (3, 1, 'West', 'San Juan River', 1, '2019-06-19 16:47:19', 1, '2019-08-14 23:50:26', b'0');
INSERT INTO `boundaries` VALUES (4, 1, 'East', 'Balete Drive through N. Domingo and Horseshoe Drive until Ermitaño Creek', 1, '2019-06-19 16:47:43', 1, '2019-08-14 23:50:23', b'0');

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
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
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
-- Table structure for bride
-- ----------------------------
DROP TABLE IF EXISTS `bride`;
CREATE TABLE `bride`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `sub_module_id` int(11) NOT NULL,
  `sub_module_info_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dt_birth` datetime(0) NULL DEFAULT NULL,
  `birth_place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `religion_id` int(11) NULL DEFAULT NULL,
  `occupation` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `work_place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nationality_id` int(11) NULL DEFAULT NULL,
  `mobile` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` int(11) NULL DEFAULT NULL,
  `province` int(11) NULL DEFAULT NULL,
  `country` int(11) NULL DEFAULT NULL,
  `parish_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parish_address_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parish_address_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parish_city` int(11) NULL DEFAULT NULL,
  `parish_province` int(11) NULL DEFAULT NULL,
  `parish_country` int(11) NULL DEFAULT NULL,
  `provincial_address_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `provincial_address_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `provincial_city` int(11) NULL DEFAULT NULL,
  `provincial_province` int(11) NULL DEFAULT NULL,
  `provincial_country` int(11) NULL DEFAULT NULL,
  `name_father` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nationality_father` int(11) NULL DEFAULT NULL,
  `name_mother` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nationality_mother` int(11) NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

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
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for certificate_type
-- ----------------------------
DROP TABLE IF EXISTS `certificate_type`;
CREATE TABLE `certificate_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of certificate_type
-- ----------------------------
INSERT INTO `certificate_type` VALUES (1, 1, 'Baptismal', NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0');
INSERT INTO `certificate_type` VALUES (2, 1, 'Marriage', NULL, 1, '2019-06-20 15:15:56', NULL, NULL, b'0');
INSERT INTO `certificate_type` VALUES (3, 1, 'Confirmation', NULL, 1, '2019-06-20 15:16:11', NULL, NULL, b'0');

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
  `dt_created` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for civil_status
-- ----------------------------
DROP TABLE IF EXISTS `civil_status`;
CREATE TABLE `civil_status`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of civil_status
-- ----------------------------
INSERT INTO `civil_status` VALUES (1, 1, 'Single', 'A person who has never been married', 1, '2019-06-20 14:46:42', NULL, NULL, b'0');
INSERT INTO `civil_status` VALUES (2, 1, 'Married', 'A couple living together as husband and wife, legally or consensually;', 1, '2019-06-20 14:47:02', NULL, NULL, b'0');
INSERT INTO `civil_status` VALUES (3, 1, 'Widowed', 'A person whose bond of matrimony has been dissolved by death of his/her spouse', 1, '2019-06-20 14:47:14', NULL, NULL, b'0');
INSERT INTO `civil_status` VALUES (4, 1, 'Divorced', 'A person whose bond of matrimony has been dissolved legally and who therefore can remarry; ', 1, '2019-06-20 14:47:24', NULL, NULL, b'0');
INSERT INTO `civil_status` VALUES (5, 1, 'Separated ', 'A person separated legally or not from his/her spouse because of marital discord or misunderstanding;', 1, '2019-06-20 14:47:41', NULL, NULL, b'0');
INSERT INTO `civil_status` VALUES (6, 1, 'Registered Partnership', NULL, 1, '2019-06-20 14:47:58', NULL, NULL, b'0');

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
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
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
  `landline_format` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile_format` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for donation_schedule_type
-- ----------------------------
DROP TABLE IF EXISTS `donation_schedule_type`;
CREATE TABLE `donation_schedule_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of donation_schedule_type
-- ----------------------------
INSERT INTO `donation_schedule_type` VALUES (1, 1, 'Always', NULL, 1, '2019-07-18 17:01:23', NULL, NULL, b'0');
INSERT INTO `donation_schedule_type` VALUES (2, 1, 'December', NULL, 1, '2019-07-18 17:02:21', NULL, NULL, b'0');
INSERT INTO `donation_schedule_type` VALUES (3, 1, 'July', NULL, 1, '2019-07-18 17:03:20', NULL, NULL, b'0');

-- ----------------------------
-- Table structure for donation_type
-- ----------------------------
DROP TABLE IF EXISTS `donation_type`;
CREATE TABLE `donation_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `donation_schedule_type_id` int(11) NULL DEFAULT NULL,
  `media_id` int(11) UNSIGNED NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of donation_type
-- ----------------------------
INSERT INTO `donation_type` VALUES (1, 1, 'Mt. Carmel Shrine', 'Our Lady of Mount Carmel Shrine', 0, 1, 31, 1, '2019-07-21 12:30:40', NULL, NULL, b'0');
INSERT INTO `donation_type` VALUES (2, 1, 'Scholastics', 'Carmelite Foundation for Carmelite Scholastics, Inc.\r\nFor recruitment, postulant, novice, deacon, presbyter and seminary for philosophy and theology.', 0, 1, 28, 1, '2019-06-21 12:30:54', NULL, NULL, b'0');
INSERT INTO `donation_type` VALUES (3, 1, 'Carefund', 'For elderly priests, sick priests, medication and hospitalization', 0, 1, 26, 1, '2019-06-21 12:30:54', NULL, NULL, b'0');
INSERT INTO `donation_type` VALUES (4, 1, 'Feeding Program', 'for National Children’s Hospital ', 0, 1, 27, 1, '2019-06-21 12:30:54', NULL, NULL, b'0');
INSERT INTO `donation_type` VALUES (5, 1, 'Noche Buena', 'Handog Noche Buena sa Pamilya', 0, 2, 30, 1, '2019-06-21 12:30:54', NULL, NULL, b'0');
INSERT INTO `donation_type` VALUES (6, 1, 'Christmas Gift', 'My Christmas Gift to Infant Jesus ', 0, 2, 29, 1, '2019-06-21 12:30:54', NULL, NULL, b'0');
INSERT INTO `donation_type` VALUES (7, 1, 'Fiesta', 'Feast of Our Lady of Mount Carmel', 0, 3, 31, 1, '2019-07-01 18:38:05', NULL, NULL, b'0');

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
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of donations
-- ----------------------------
INSERT INTO `donations` VALUES (1, 1, 1, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:42:57', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (2, 1, 1, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (3, 1, 1, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (4, 1, 1, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (5, 1, 1, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (6, 1, 1, 120, NULL, NULL, NULL, b'0', 3, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (7, 1, 1, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (8, 1, 1, 120, NULL, NULL, NULL, b'0', 3, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (9, 1, 1, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (10, 1, 1, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (11, 1, 1, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (12, 1, 1, 120, NULL, NULL, NULL, b'0', 3, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (13, 1, 1, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (14, 1, 1, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (15, 1, 1, 120, NULL, NULL, NULL, b'0', 3, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (16, 1, 1, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (17, 1, 1, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (18, 1, 1, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (19, 1, 1, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (20, 1, 1, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (21, 1, 1, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (22, 1, 1, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (23, 1, 1, 120, NULL, NULL, NULL, b'0', 3, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (24, 1, 1, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (25, 1, 1, 120, NULL, NULL, NULL, b'0', 3, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (26, 1, 1, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (27, 1, 1, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (28, 1, 1, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (29, 1, 1, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');
INSERT INTO `donations` VALUES (30, 1, 1, 120, NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');

-- ----------------------------
-- Table structure for event_type
-- ----------------------------
DROP TABLE IF EXISTS `event_type`;
CREATE TABLE `event_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of event_type
-- ----------------------------
INSERT INTO `event_type` VALUES (1, 1, 'Wedding Reception', NULL, 1, '2019-06-20 14:26:37', NULL, NULL, b'0');
INSERT INTO `event_type` VALUES (2, 1, 'Baptismal Celebration', NULL, 1, '2019-06-20 14:27:33', NULL, NULL, b'0');
INSERT INTO `event_type` VALUES (3, 1, 'Birthday Celebration', NULL, 1, '2019-06-20 14:27:49', NULL, NULL, b'0');
INSERT INTO `event_type` VALUES (4, 1, 'Anniversary Celebration', NULL, 1, '2019-06-20 14:28:07', NULL, NULL, b'0');

-- ----------------------------
-- Table structure for groom
-- ----------------------------
DROP TABLE IF EXISTS `groom`;
CREATE TABLE `groom`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `sub_module_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dt_birth` datetime(0) NULL DEFAULT NULL,
  `birth_place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `religion_id` int(11) NULL DEFAULT NULL,
  `occupation` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `work_place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nationality_id` int(11) NULL DEFAULT NULL,
  `mobile` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` int(11) NULL DEFAULT NULL,
  `province` int(11) NULL DEFAULT NULL,
  `country` int(11) NULL DEFAULT NULL,
  `parish_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parish_address_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parish_address_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parish_city` int(11) NULL DEFAULT NULL,
  `parish_province` int(11) NULL DEFAULT NULL,
  `parish_country` int(11) NULL DEFAULT NULL,
  `provincial_address_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `provincial_address_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `provincial_city` int(11) NULL DEFAULT NULL,
  `provincial_province` int(11) NULL DEFAULT NULL,
  `provincial_country` int(11) NULL DEFAULT NULL,
  `name_father` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nationality_father` int(11) NULL DEFAULT NULL,
  `name_mother` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nationality_mother` int(11) NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `date_of_establishment` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `feast_day` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `titular` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `diocese` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(2500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `media_id` int(11) NULL DEFAULT NULL COMMENT 'photo',
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of history
-- ----------------------------
INSERT INTO `history` VALUES (1, 1, '17 February 1975', '16 July', 'Our Lady of Mt. Carmel', 'Cubao', '<p style=\"text-align: justify\">The Quezon City district of New Manila is a haven for various Catholic orders, with many chapels and convents scattered around the area; from the American colonial period (1898-1946) Convent of Carmel of Thérèse of Lisieux, the Sisters of St. Paul of Chartres Novitiate and Provincial House (established 1931), Franciscan St. Joseph’s Academy and Convent (established 1932), and the Society of the Divine Word’s Christ the King Mission Seminary (established 1933), to the post-war Congregation of the Religious of the Virgin Mary Compound (established 1950), the Pink Sister’s St. Joseph Convent of Perpetual Adoration (established 1965), the Congregatio Immaculati Cordis Mariae’s Maryhill School Of The Theology (1979),the Local Superior of The Society of Monfort Missionaries(established 1984), and the Foundation for Carmelite Scholastics(established 1987). However, the center of most Catholic activities is the Minor Basilica of the National Shrine of Our Lady of Mount Carmel, located on Broadway Avenue, taking most of the block between 4th and 5th street.</p><p>\r\n\r\n</p><p style=\"text-align: justify\">The Mount Carmel Parish is part of the third wave of Discalced Carmelites missions to the Philippines, which started in 1923, with the arrival of four French nuns from Hue, Vietnam, to the shores of Jaro, Iloilo. In this first wave, the Convent Carmel of Thérèse of Lisieux was founded in 1926, along Gilmore Avenue, in New Manila. The second wave also began in Infanta, Quezon Province, in 1946; and this time the Discalced Carmelite friars were now leading the wave. Part of the third wave that started in Jaro, Iloilo, the Anglo-Irish Carmelite friars established a foundation in 1954, in New Manila, Quezon City, and on December 30 of the same year, the cornerstone was laid for the new church.</p><p>\r\n\r\n</p><p style=\"text-align: justify\">The new church was dedicated as a shrine to Our Lady of Mount Carmel, a title of the Blessed Virgin Mary, which the first Carmelites named in the construction of their first monastery on Mount Karmel (Har HaKarmel) in the northern territories of Israel, during the 12th Century. The order of Carmelite started with Christian hermits living in Har HaKarmel, during the Crusades, who chose the mountain where the prophet Elijah had lived and challenged the priests of the god Baal, as a reflection of their faith against the Muslims who have taken over the holy city of Jerusalem. </p>', NULL, 1, '2019-06-19 14:27:04', 1, '2019-08-12 23:42:34', b'0');

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
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
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
-- Table structure for language
-- ----------------------------
DROP TABLE IF EXISTS `language`;
CREATE TABLE `language`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `branch_id` int(11) NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of language
-- ----------------------------
INSERT INTO `language` VALUES (1, 'Filipino', 1, 'Filipino', 1, '2019-06-19 16:09:38', NULL, NULL, b'0');
INSERT INTO `language` VALUES (2, 'English', 1, 'English', 1, '2019-06-19 16:09:57', NULL, NULL, b'0');

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
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for live_streaming
-- ----------------------------
DROP TABLE IF EXISTS `live_streaming`;
CREATE TABLE `live_streaming`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `video_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_by` int(1) NOT NULL,
  `dt_created` datetime(0) NOT NULL,
  `updated_by` int(1) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `branch_id` int(11) NOT NULL,
  `is_deleted` bit(1) NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of live_streaming
-- ----------------------------
INSERT INTO `live_streaming` VALUES (1, 'Mount Carmel Live Mass', 'National Shrine of Mount Carmel Minor Basilica Live Mass', 'https://www.youtube.com/embed/CvfAgZHxIr8', 1, '2019-07-19 21:26:10', NULL, NULL, 1, b'0');

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
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
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
) ENGINE = InnoDB AUTO_INCREMENT = 383 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for main
-- ----------------------------
DROP TABLE IF EXISTS `main`;
CREATE TABLE `main`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(2500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
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
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
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
-- Table structure for marriage_type
-- ----------------------------
DROP TABLE IF EXISTS `marriage_type`;
CREATE TABLE `marriage_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of marriage_type
-- ----------------------------
INSERT INTO `marriage_type` VALUES (1, 1, 'Catholic', NULL, 1, '2019-06-20 16:08:29', NULL, NULL, b'0');
INSERT INTO `marriage_type` VALUES (2, 1, 'Protestant', NULL, 1, '2019-06-20 16:08:43', NULL, NULL, b'0');
INSERT INTO `marriage_type` VALUES (3, 1, 'Civil', NULL, 1, '2019-06-20 16:08:54', NULL, NULL, b'0');
INSERT INTO `marriage_type` VALUES (4, 1, 'Others', NULL, 1, '2019-06-20 16:09:07', NULL, NULL, b'0');

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
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
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
INSERT INTO `media` VALUES (49, 1, 'Pepsi', 'Pepsi', '5.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/5.jpg', NULL, NULL, NULL, '.jpg', '636.1', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 09:09:13', 1, '2019-07-25 12:47:05', b'0');
INSERT INTO `media` VALUES (50, 1, 'YTS', 'YTS', 'WWW_YTS_RE.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/WWW_YTS_RE.jpg', NULL, NULL, NULL, '.jpg', '107.92', NULL, NULL, NULL, NULL, NULL, 1, '2019-08-06 02:03:14', 1, '2019-08-08 22:48:58', b'1');

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
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of modules
-- ----------------------------
INSERT INTO `modules` VALUES (1, 1, 1, 'News & Updates', 'News & Updates', NULL, 41, 1, '2019-06-19 18:00:13', NULL, NULL, b'0');
INSERT INTO `modules` VALUES (2, 1, 1, 'Calendar', 'Calendar', NULL, 33, 1, '2019-06-19 18:00:30', NULL, NULL, b'0');
INSERT INTO `modules` VALUES (3, 1, 1, 'Live Mass', 'Live Mass', NULL, 40, 1, '2019-06-19 18:00:47', NULL, NULL, b'0');
INSERT INTO `modules` VALUES (4, 1, 3, 'Join Us!', 'Be an active part of the mission and service of the Carmelite Church', NULL, 37, 1, '2019-06-19 18:01:28', NULL, NULL, b'0');
INSERT INTO `modules` VALUES (5, 1, 3, 'Make a Request', 'Be closer to God with the help of the church through prayers, holy masses and liturgy', NULL, 43, 1, '2019-06-19 18:01:56', NULL, NULL, b'0');
INSERT INTO `modules` VALUES (6, 1, 3, 'Baptism', 'Be part of the christian community and follow the word of the Lord', NULL, 34, 1, '2019-06-19 18:02:17', NULL, NULL, b'0');
INSERT INTO `modules` VALUES (7, 1, 3, 'Communion', 'Be united with our God through the christian rite of communion', NULL, 35, 1, '2019-06-19 18:02:37', NULL, NULL, b'0');
INSERT INTO `modules` VALUES (8, 1, 3, 'Confirmation', 'Duis accumsan nibh justo, eu eleifend nisi mattis ut. Nullam congue iaculis auctor.', NULL, 36, 1, '2019-06-19 18:02:55', NULL, NULL, b'0');
INSERT INTO `modules` VALUES (9, 1, 3, 'Marriage', 'Duis accumsan nibh justo, eu eleifend nisi mattis ut. Nullam congue iaculis auctor.', NULL, 52, 1, '2019-06-19 18:03:15', NULL, NULL, b'0');
INSERT INTO `modules` VALUES (10, 1, 3, 'Passing', 'Passing', NULL, 42, 1, '2019-06-19 18:03:32', NULL, NULL, b'0');
INSERT INTO `modules` VALUES (11, 1, 3, 'Events', 'Celebrate marriage or events in the delightful premises of the church', NULL, 38, 1, '2019-06-19 18:03:47', NULL, NULL, b'0');

-- ----------------------------
-- Table structure for nationality
-- ----------------------------
DROP TABLE IF EXISTS `nationality`;
CREATE TABLE `nationality`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nationality
-- ----------------------------
INSERT INTO `nationality` VALUES (1, 1, 'Filipino', NULL, 1, '2019-06-20 18:40:59', NULL, NULL, b'0');
INSERT INTO `nationality` VALUES (2, 1, 'American', NULL, 1, '2019-06-20 18:41:06', NULL, NULL, b'0');
INSERT INTO `nationality` VALUES (3, 1, 'Canadian', NULL, 1, '2019-06-20 18:41:14', NULL, NULL, b'0');
INSERT INTO `nationality` VALUES (4, 1, 'Chinese', NULL, 1, '2019-06-20 18:45:56', NULL, NULL, b'0');
INSERT INTO `nationality` VALUES (5, 1, 'Australian', NULL, 1, '2019-06-20 18:46:29', NULL, NULL, b'0');
INSERT INTO `nationality` VALUES (6, 1, 'French', NULL, 1, '2019-06-20 18:46:59', NULL, NULL, b'0');
INSERT INTO `nationality` VALUES (7, 1, 'Japanese', NULL, 1, '2019-06-20 18:47:25', NULL, NULL, b'0');

-- ----------------------------
-- Table structure for occasion
-- ----------------------------
DROP TABLE IF EXISTS `occasion`;
CREATE TABLE `occasion`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of occasion
-- ----------------------------
INSERT INTO `occasion` VALUES (1, 1, 'Blessing of the house', NULL, 1, '2019-06-20 15:08:38', NULL, NULL, b'0');
INSERT INTO `occasion` VALUES (2, 1, 'Blessing of the businesses', NULL, 1, '2019-06-20 15:11:15', NULL, NULL, b'0');
INSERT INTO `occasion` VALUES (3, 1, 'Blessing of the cars', NULL, 1, '2019-06-20 15:11:38', NULL, NULL, b'0');
INSERT INTO `occasion` VALUES (4, 1, 'Annointing of the sick', NULL, 1, '2019-06-20 15:11:55', NULL, NULL, b'0');

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
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
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
-- Table structure for parents
-- ----------------------------
DROP TABLE IF EXISTS `parents`;
CREATE TABLE `parents`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `sub_module_id` int(11) NOT NULL,
  `name_father` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dt_birth_father` datetime(0) NULL DEFAULT NULL,
  `birth_place_father` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `religion_father` int(11) NULL DEFAULT NULL,
  `nationality_father` int(11) NULL DEFAULT NULL,
  `name_mother` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dt_birth_mother` datetime(0) NULL DEFAULT NULL,
  `birth_place_mother` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `religion_mother` int(11) NULL DEFAULT NULL,
  `nationality_mother` int(11) NULL DEFAULT NULL,
  `marriage_type` int(11) NULL DEFAULT NULL,
  `place_marriage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` int(11) NULL DEFAULT NULL,
  `province` int(11) NULL DEFAULT NULL,
  `country` int(11) NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pastors
-- ----------------------------
DROP TABLE IF EXISTS `pastors`;
CREATE TABLE `pastors`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rank` int(11) NULL DEFAULT NULL,
  `media_id` int(11) NULL DEFAULT NULL COMMENT 'photo',
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pastors
-- ----------------------------
INSERT INTO `pastors` VALUES (1, 1, 'Fr. Paul O\'Sullivan', 'OCD (1975-1978)', 1, NULL, 1, '2019-06-19 14:11:47', NULL, NULL, b'0');
INSERT INTO `pastors` VALUES (2, 1, 'Fr. Tom Shanahan', 'OCD (1978-1981)\r\n', 2, 3, 1, '2019-06-19 14:12:12', NULL, NULL, b'0');
INSERT INTO `pastors` VALUES (3, 1, 'Fr. Rolando Tria-Tir', 'D.D. (1981-1984) Archbishop of the Archdiocese of Nueva Caceres\r\n', 3, NULL, 1, '2019-06-19 14:13:34', NULL, NULL, b'0');
INSERT INTO `pastors` VALUES (4, 1, 'Fr. Paul Sullivan', 'OCD (1984-1987)', 4, NULL, 1, '2019-06-19 14:14:05', NULL, NULL, b'0');
INSERT INTO `pastors` VALUES (5, 1, 'Fr. Michael Fitzgera', 'CD+ (1987-1988)', 5, NULL, 1, '2019-06-19 14:15:56', NULL, NULL, b'0');
INSERT INTO `pastors` VALUES (6, 1, 'Fr. Paul O\'Sullivan', 'OCD (1988-1990)\r\n', 6, NULL, 1, '2019-06-19 14:16:25', NULL, NULL, b'0');
INSERT INTO `pastors` VALUES (7, 1, 'Fr. Rolando Tria-Tir', 'D.D. (1990-1993) Archbishop of the Archdiocese of Nueva Caceres', 7, NULL, 1, '2019-06-19 14:16:56', NULL, NULL, b'0');
INSERT INTO `pastors` VALUES (8, 1, 'Fr. Angelo Madelo', 'OCD (1993-1996)', 8, NULL, 1, '2019-06-19 14:17:26', NULL, NULL, b'0');
INSERT INTO `pastors` VALUES (9, 1, 'Fr. Alex Collera', 'OCD (1996 -1999)', 9, NULL, 1, '2019-06-19 14:18:00', NULL, NULL, b'0');
INSERT INTO `pastors` VALUES (10, 1, 'Fr. Mariano Agruda', 'OCD (1999-2005)', 10, NULL, 1, '2019-06-19 14:18:33', NULL, NULL, b'0');
INSERT INTO `pastors` VALUES (11, 1, 'Fr. Paulo Gamboa', 'OCD (2005-2006)', 11, NULL, 1, '2019-06-19 14:19:13', NULL, NULL, b'0');
INSERT INTO `pastors` VALUES (12, 1, 'Fr. Arnie Boehme', 'OCD (2006-2008)\r\n', 12, NULL, 1, '2019-06-19 14:21:05', NULL, NULL, b'0');
INSERT INTO `pastors` VALUES (13, 1, 'Fr. Alex Collera', 'OCD (2008-2011)', 13, NULL, 1, '2019-06-19 14:21:31', NULL, NULL, b'0');
INSERT INTO `pastors` VALUES (14, 1, 'Fr. Dan Lim', 'OCD (2011-2014)', 14, NULL, 1, '2019-06-19 14:22:09', NULL, NULL, b'0');
INSERT INTO `pastors` VALUES (15, 1, 'Fr. Joey Maborrang', 'OCD (2014-present)', 15, NULL, 1, '2019-06-19 14:22:31', NULL, NULL, b'0');

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
  `dt_created` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
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
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (1, 1, 'Official Web and Mobile App', '<p style=\"text-align: justify\">We have released the new official web and mobile applications of Minor Basilica of the National Shrine of Our Lady of Mount Carmel, located at 90 4th Street, New Manila, Quezon City, Philippines.</p><p>\r\n</p><p style=\"text-align: justify\">Our vision for the new system will help the church improve its security, sustainability, and efficiency.</p><p>\r\n</p><p style=\"text-align: justify\">We have seen massive loopholes in the old system, that is undoubtedly been exploited by countless people.</p><p>\r\n</p><p style=\"text-align: justify\">We have automated the old system to remove the presence of human resources as middlemen in every transaction, such as donations and services. In result, it ceases theft and temptations from employees and other people. Despite the innumerable security measures that we have installed, the system can also identify thieves and unscrupulous transactions, should there be any.</p><p>\r\n</p><p style=\"text-align: justify\">The Pope demands the church to loosen up from asking donations from people. We have designed a plan called the Progressive Leap Strategy that requires zero donations.</p><p>\r\n</p><p style=\"text-align: justify\">To achieve a self-sustaining technology, we have monetized the platform to build and expand the system. We have placed a number of ad placements in the applications, aiming to produce a platform without asking for any donations. Eventually, the system will lessen the monetary help needed by the church.</p><p>\r\n</p><p style=\"text-align: justify\">This approach will aggressively expand the system throughout Mount Carmel Churches in the Philippines, in parallel with the improvement of the system by adding more features and upgrading the overall performance of the application.</p><p>\r\n</p><p style=\"text-align: justify\">The Catholic Church ought to focus on the next generation of Christians, the survival of Catholicism is highly dependent on the new generation than of the previous. Adapting to the information age is a great way of reaching out to the young ones, being available to anyone, anytime and anywhere.</p><p>\r\n</p><p style=\"text-align: justify\">This platform will serve as a tool to secure transactions, promote efficiency and preserve Christianity.</p>', 1, NULL, 14, 1, '2019-06-19 14:49:12', 1, '2019-08-08 22:54:33', b'0');
INSERT INTO `posts` VALUES (2, 1, 'Solemn Declaration of The National Shrine of Our Lady of Mt. Carmel as Minor Basilica', '<p style=\"text-align: justify\">Solemn Declaration of The National Shrine of Our Lady of Mt. Carmel as Minor Basilica. Let us be at the service of others and bring Christ to them. So that the presence of a Basilica is a strong confirmation that we are never alone. God is with us!</p>', 1, NULL, 24, 1, '2019-06-18 17:38:33', 1, '2019-08-08 22:54:26', b'0');
INSERT INTO `posts` VALUES (3, 1, 'Sample Ads - Coca-Cola Awarded for Advertising Innovation', '<p style=\"text-align: justify\">When Coca-Cola was named \"Marketer of the Year\" by AdAge in 2011, the flagship brand was 125 years old. But even today, the company is not too old to learn and does not rest on its laurels. Coke\'s marketing strategies have produced some volatility over the long-haul, but part of that is due to the willingness of The Coca-Cola Company to innovate. Apparently, the marketing overhaul has worked.</p><p>\r\n</p><p style=\"text-align: justify\">According to Natalie Zmuda of AdAge, Coca-Cola\'s marketing focus changed in 2007 when Mr. Tripodi came on board from Allstate. AdAge described the following marketing challenges:</p><p>\r\n</p><p style=\"text-align: justify\">Coca-Cola was too dependent on its flagship drink - Coke® Coca-Cola\'s advertising and use of advertising agencies was inconsistent Coca-Cola was seen as a \"sluggish, hidebound marketer.\" Mr. Tripodi told Zamuda he believes that the culture at Coca-Cola has a lot to do with its success. The team is said to share both the successes and the learnings from failures, which is a must given the size and scale of The Coca-Cola Company. Mr. Tripodi said, \"We\'ve got a team of people around the world that is less concerned with getting credit and more concerned with getting behind a great idea.\" The Coca-Cola Company could be classified as a learning organization as it has demonstrated adaptability and creativity over many decades.</p>', 6, NULL, 48, 1, '2019-06-18 17:52:40', 1, '2019-08-09 22:23:17', b'0');

-- ----------------------------
-- Table structure for posts_type
-- ----------------------------
DROP TABLE IF EXISTS `posts_type`;
CREATE TABLE `posts_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of posts_type
-- ----------------------------
INSERT INTO `posts_type` VALUES (1, 'News', 'News', 1, '2019-06-18 15:50:27', 1, '2019-06-18 15:50:27', b'0');
INSERT INTO `posts_type` VALUES (2, 'Updates', 'Updates', 1, '2019-06-18 15:50:35', 1, '2019-06-18 15:50:35', b'0');
INSERT INTO `posts_type` VALUES (3, 'Projects', 'Projects', 1, '2019-06-18 15:51:14', 1, '2019-06-18 15:51:14', b'0');
INSERT INTO `posts_type` VALUES (4, 'Schedules', 'Schedules', 1, '2019-06-18 15:52:29', 1, '2019-06-18 15:52:29', b'0');
INSERT INTO `posts_type` VALUES (5, 'Announcements', 'Announcements', 1, '2019-06-18 15:53:22', 1, '2019-06-18 15:53:22', b'0');
INSERT INTO `posts_type` VALUES (6, 'Advertisements ', 'Advertisements ', 1, '2019-06-18 15:54:31', NULL, NULL, b'0');
INSERT INTO `posts_type` VALUES (7, 'Icons', 'Icons', 1, '2019-06-18 17:09:09', NULL, NULL, b'0');

-- ----------------------------
-- Table structure for priests
-- ----------------------------
DROP TABLE IF EXISTS `priests`;
CREATE TABLE `priests`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rank` int(11) NULL DEFAULT NULL,
  `media_id` int(11) NULL DEFAULT NULL COMMENT 'photo',
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of priests
-- ----------------------------
INSERT INTO `priests` VALUES (1, 1, 'FR. ALAN RIEGER, OCD', 'Superior', 1, 6, 1, '2019-06-19 12:59:16', NULL, NULL, b'0');
INSERT INTO `priests` VALUES (2, 1, 'FR. JOEY D. MABBORAN', 'Parish Priest / Shrine Rector', 1, 7, 1, '2019-06-19 13:02:24', NULL, NULL, b'0');
INSERT INTO `priests` VALUES (3, 1, 'FR. HERNANI AÑIS, OC', 'Parochial Vicar for the Parish', 2, 8, 1, '2019-06-19 13:03:59', NULL, NULL, b'0');
INSERT INTO `priests` VALUES (4, 1, 'FR. RANSOM RAPIRAP, ', 'Parochial Vicar for the National Shrine', 2, 9, 1, '2019-06-19 13:04:28', NULL, NULL, b'0');
INSERT INTO `priests` VALUES (5, 1, 'FR. NARCISO “CHITO” ', NULL, 3, 10, 1, '2019-06-19 13:04:50', NULL, NULL, b'0');
INSERT INTO `priests` VALUES (6, 1, 'FR. ALEX COLLERA, OC', NULL, 3, 11, 1, '2019-06-19 13:05:14', NULL, NULL, b'0');
INSERT INTO `priests` VALUES (7, 1, 'FR. ANGELO “BING” MA', NULL, 3, 12, 1, '2019-06-19 13:05:56', NULL, NULL, b'0');
INSERT INTO `priests` VALUES (8, 1, 'FR. BENEDICK PIANGCO', NULL, 3, 13, 1, '2019-06-19 13:06:11', NULL, NULL, b'0');
INSERT INTO `priests` VALUES (9, 1, 'REV. NGUYEN CONG VIN', NULL, 4, 14, 1, '2019-06-19 14:10:16', NULL, NULL, b'0');
INSERT INTO `priests` VALUES (10, 1, 'BRO. PORFERIO NALZAR', NULL, 4, 15, 1, '2019-06-19 14:10:35', NULL, NULL, b'0');

-- ----------------------------
-- Table structure for program
-- ----------------------------
DROP TABLE IF EXISTS `program`;
CREATE TABLE `program`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `media_id` int(255) NULL DEFAULT NULL COMMENT 'icon',
  `created_by` int(11) NULL DEFAULT NULL,
  `dt_created` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of program
-- ----------------------------
INSERT INTO `program` VALUES (1, 1, 'Home', 'Home', NULL, NULL, 1, '2019-06-19 17:55:55', NULL, NULL, b'0');
INSERT INTO `program` VALUES (2, 1, 'Send Help', 'Send Help', NULL, NULL, 1, '2019-06-19 17:57:27', NULL, NULL, b'0');
INSERT INTO `program` VALUES (3, 1, 'Services', 'Services', NULL, NULL, 1, '2019-06-19 17:57:44', NULL, NULL, b'0');
INSERT INTO `program` VALUES (4, 1, 'Transparency', 'Transparency', NULL, NULL, 1, '2019-06-19 17:58:30', NULL, NULL, b'0');

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
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
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
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for purpose_type
-- ----------------------------
DROP TABLE IF EXISTS `purpose_type`;
CREATE TABLE `purpose_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `sub_module_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of purpose_type
-- ----------------------------
INSERT INTO `purpose_type` VALUES (1, 1, 5, 3, 'Thanksgiving', NULL, 1, '2019-06-20 15:48:41', NULL, NULL, b'0');
INSERT INTO `purpose_type` VALUES (2, 1, 5, 3, 'Anniversary (Wedding)', NULL, 1, '2019-06-20 15:49:08', NULL, NULL, b'0');
INSERT INTO `purpose_type` VALUES (3, 1, 5, 3, 'Anniversary (Death)', NULL, 1, '2019-06-20 15:49:33', NULL, NULL, b'0');
INSERT INTO `purpose_type` VALUES (4, 1, 5, 3, 'Birthday', NULL, 1, '2019-06-20 15:49:47', NULL, NULL, b'0');
INSERT INTO `purpose_type` VALUES (5, 1, 5, 3, 'Healing', NULL, 1, '2019-06-20 15:59:31', NULL, NULL, b'0');
INSERT INTO `purpose_type` VALUES (6, 1, 5, 3, 'Employment', NULL, 1, '2019-06-20 15:59:59', NULL, NULL, b'0');
INSERT INTO `purpose_type` VALUES (7, 1, 5, 3, 'Board exam ', NULL, 1, '2019-06-20 16:02:45', NULL, NULL, b'0');
INSERT INTO `purpose_type` VALUES (8, 1, 5, 3, 'Others', NULL, 1, '2019-06-20 16:03:07', NULL, NULL, b'0');
INSERT INTO `purpose_type` VALUES (9, 1, 5, 5, 'Personal file ', NULL, 1, '2019-06-20 16:03:48', NULL, NULL, b'0');
INSERT INTO `purpose_type` VALUES (10, 1, 5, 5, 'School', NULL, 1, '2019-06-20 16:04:04', NULL, NULL, b'0');
INSERT INTO `purpose_type` VALUES (11, 1, 5, 5, 'Confimation', NULL, 1, '2019-06-20 16:04:19', NULL, NULL, b'0');
INSERT INTO `purpose_type` VALUES (12, 1, 5, 5, 'First communion', NULL, 1, '2019-06-20 16:04:35', NULL, NULL, b'0');
INSERT INTO `purpose_type` VALUES (13, 1, 5, 5, 'Legal documents', NULL, 1, '2019-06-20 16:04:50', NULL, NULL, b'0');
INSERT INTO `purpose_type` VALUES (14, 1, 5, 5, 'Issuance of Birth certificate', NULL, 1, '2019-06-20 16:05:11', NULL, NULL, b'0');
INSERT INTO `purpose_type` VALUES (15, 1, 5, 5, 'Marriage', NULL, 1, '2019-06-20 16:05:28', NULL, NULL, b'0');

-- ----------------------------
-- Table structure for rank_type
-- ----------------------------
DROP TABLE IF EXISTS `rank_type`;
CREATE TABLE `rank_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `dt_created` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for religion
-- ----------------------------
DROP TABLE IF EXISTS `religion`;
CREATE TABLE `religion`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of religion
-- ----------------------------
INSERT INTO `religion` VALUES (1, 1, 'Christianity', NULL, 1, '2019-06-20 18:15:24', NULL, NULL, b'0');
INSERT INTO `religion` VALUES (2, 1, 'Protestant', NULL, 1, '2019-06-20 18:23:38', NULL, NULL, b'0');
INSERT INTO `religion` VALUES (3, 1, 'Orthodox', NULL, 1, '2019-06-20 18:24:41', NULL, NULL, b'0');
INSERT INTO `religion` VALUES (4, 1, 'Iglesia ni Cristo', NULL, 1, '2019-06-20 18:25:00', NULL, NULL, b'0');
INSERT INTO `religion` VALUES (5, 1, 'Seventh-day Adventist Church', NULL, 1, '2019-06-20 18:25:20', NULL, NULL, b'0');
INSERT INTO `religion` VALUES (6, 1, 'United Church of Christ in the Philippines', NULL, 1, '2019-06-20 18:25:51', NULL, NULL, b'0');
INSERT INTO `religion` VALUES (7, 1, 'Evangelicals', NULL, 1, '2019-06-20 18:26:04', NULL, NULL, b'0');
INSERT INTO `religion` VALUES (8, 1, 'Muslim', NULL, 1, '2019-06-20 18:26:24', NULL, NULL, b'0');
INSERT INTO `religion` VALUES (9, 1, 'Anitism', NULL, 1, '2019-06-20 18:26:54', NULL, NULL, b'0');
INSERT INTO `religion` VALUES (10, 1, 'Buddhism', NULL, 1, '2019-06-20 18:27:20', NULL, NULL, b'0');
INSERT INTO `religion` VALUES (11, 1, 'Sikhs', NULL, 1, '2019-06-20 18:27:49', NULL, NULL, b'0');
INSERT INTO `religion` VALUES (12, 1, 'Hinduism', NULL, 1, '2019-06-20 18:27:58', NULL, NULL, b'0');
INSERT INTO `religion` VALUES (13, 1, 'Judaism', NULL, 1, '2019-06-20 18:28:10', NULL, NULL, b'0');
INSERT INTO `religion` VALUES (14, 1, 'Baha\'i', NULL, 1, '2019-06-20 18:28:38', NULL, NULL, b'0');

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
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 1, 'Admin', NULL, 1, '2019-06-27 16:34:00', NULL, NULL, b'0');
INSERT INTO `roles` VALUES (2, 1, 'User', NULL, 1, '2019-06-27 16:35:13', NULL, NULL, b'0');

-- ----------------------------
-- Table structure for schedule_type
-- ----------------------------
DROP TABLE IF EXISTS `schedule_type`;
CREATE TABLE `schedule_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of schedule_type
-- ----------------------------
INSERT INTO `schedule_type` VALUES (1, 'Holy Mass', 'Holy Mass', 1, '2019-06-19 16:04:15', NULL, NULL, b'0');
INSERT INTO `schedule_type` VALUES (2, 'Confessions', 'Confessions', 1, '2019-06-19 16:04:33', NULL, NULL, b'0');
INSERT INTO `schedule_type` VALUES (3, 'Blessings', 'Blessings of cars and religious items', 1, '2019-06-19 16:05:05', NULL, NULL, b'0');
INSERT INTO `schedule_type` VALUES (4, 'Live Mass', 'Live Mass', 1, '2019-06-19 16:05:16', NULL, NULL, b'0');

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
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of schedules
-- ----------------------------
INSERT INTO `schedules` VALUES (1, 1, 'Holy Mass', 'Holy Mass', '06:00:00', '07:00:00', 'Sunday', 1, 1, NULL, 1, '2019-06-19 16:09:20', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (2, 1, 'Holy Mass', 'Holy Mass', '07:15:00', '08:15:00', 'Sunday', 1, 2, NULL, 1, '2019-06-19 16:11:17', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (3, 1, 'Holy Mass', 'Holy Mass', '08:30:00', '09:30:00', 'Sunday', 1, 2, NULL, 1, '2019-06-19 16:12:05', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (4, 1, 'Holy Mass', 'Holy Mass', '09:45:00', '10:45:00', 'Sunday', 1, 2, NULL, 1, '2019-06-19 16:12:38', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (5, 1, 'Holy Mass', 'Holy Mass', '11:00:00', '12:00:00', 'Sunday', 1, 2, NULL, 1, '2019-06-19 16:13:41', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (6, 1, 'Holy Mass', 'Holy Mass', '12:15:00', '13:15:00', 'Sunday', 1, 2, NULL, 1, '2019-06-19 16:14:26', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (7, 1, 'Holy Mass', 'Holy Mass', '15:45:00', '16:45:00', 'Sunday', 1, 1, NULL, 1, '2019-06-19 16:15:16', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (8, 1, 'Holy Mass', 'Holy Mass', '17:00:00', '18:00:00', 'Sunday', 1, 2, NULL, 1, '2019-06-19 16:16:12', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (9, 1, 'Holy Mass', 'Holy Mass', '18:15:00', '19:15:00', 'Sunday', 1, 2, NULL, 1, '2019-06-19 16:17:01', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (10, 1, 'Holy Mass', 'Holy Mass', '19:30:00', '20:30:00', 'Sunday', 1, 2, NULL, 1, '2019-06-19 16:17:44', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (11, 1, 'Holy Mass', 'Holy Mass', '06:00:00', '07:00:00', 'Weekdays', 1, 2, NULL, 1, '2019-06-19 16:18:36', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (12, 1, 'Holy Mass', 'Holy Mass', '07:00:00', '08:00:00', 'Weekdays', 1, 2, NULL, 1, '2019-06-19 16:19:14', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (13, 1, 'Holy Mass', 'Holy Mass', '12:15:00', '13:15:00', 'Weekdays', 1, 1, NULL, 1, '2019-06-19 16:19:56', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (14, 1, 'Holy Mass', 'Holy Mass', '18:00:00', '19:00:00', 'Weekdays', 1, 2, NULL, 1, '2019-06-19 16:20:45', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (15, 1, 'Confession', 'Confession', '14:00:00', '16:00:00', 'Sunday', 2, NULL, NULL, 1, '2019-06-19 16:21:53', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (16, 1, 'Confession', 'Confession', '06:30:00', '07:00:00', 'Saturday', 2, NULL, NULL, 1, '2019-06-19 16:22:56', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (17, 1, 'Confession', 'Confession', '17:00:00', '17:00:00', 'Saturday', 2, NULL, NULL, 1, '2019-06-19 16:23:56', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (18, 1, 'Confession', 'Confession', '06:30:00', '07:30:00', 'Weekday', 2, NULL, NULL, 1, '2019-06-19 16:26:03', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (19, 1, 'Confession', 'Confession', '18:30:00', '19:30:00', 'Weekday', 2, NULL, NULL, 1, '2019-06-19 16:26:45', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (20, 1, 'Blessings', 'Blessings', '09:00:00', '11:00:00', 'Everyday', 3, NULL, NULL, 1, '2019-06-19 16:27:41', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (21, 1, 'Blessings', 'Blessings', '15:00:00', '16:00:00', 'Everyday', 3, NULL, NULL, 1, '2019-06-19 16:28:21', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (22, 1, 'Live Mass', 'Live Mass', '06:00:00', '07:00:00', 'Sunday', 4, 1, NULL, 1, '2019-06-19 16:29:28', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (23, 1, 'Live Mass', 'Live Mass', '07:00:00', '08:00:00', 'Sunday', 4, 2, NULL, 1, '2019-06-19 16:30:10', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (24, 1, 'Live Mass', 'Live Mass', '18:00:00', '19:00:00', 'Sunday', 4, 2, NULL, 1, '2019-06-19 16:30:44', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (25, 1, 'Live Mass', 'Live Mass', '19:00:00', '20:00:00', 'Sunday', 4, 2, NULL, 1, '2019-06-19 16:31:24', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (26, 1, 'Live Mass', 'Live Mass', '06:00:00', '07:00:00', 'Saturday', 4, 2, NULL, 1, '2019-06-19 16:29:28', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (27, 1, 'Live Mass', 'Live Mass', '07:00:00', '08:00:00', 'Saturday', 4, 2, NULL, 1, '2019-06-19 16:29:28', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (28, 1, 'Live Mass', 'Live Mass', '18:00:00', '19:00:00', 'Saturday', 4, 2, NULL, 1, '2019-06-19 16:30:44', NULL, NULL, b'0');
INSERT INTO `schedules` VALUES (29, 1, 'Live Mass', 'Live Mass', '19:00:00', '20:00:00', 'Saturday', 4, 2, NULL, 1, '2019-06-19 16:31:24', 1, '2019-08-09 16:28:18', b'0');

-- ----------------------------
-- Table structure for service_type
-- ----------------------------
DROP TABLE IF EXISTS `service_type`;
CREATE TABLE `service_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of service_type
-- ----------------------------
INSERT INTO `service_type` VALUES (1, 1, 'Mass', NULL, 1, '2019-06-20 18:11:39', NULL, NULL, b'0');

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
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
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
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
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
  `media_id` int(11) NULL DEFAULT NULL COMMENT 'icons',
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sub_modules
-- ----------------------------
INSERT INTO `sub_modules` VALUES (1, 1, 3, 4, 'Confraternity of Our Lady of Mount Carmel', 'A Carmelite brotherhood in pursuit of the mission, and in service of the Lord', NULL, NULL, 1, '2019-06-19 18:29:13', NULL, NULL, b'0');
INSERT INTO `sub_modules` VALUES (2, 1, 3, 5, 'Prayer Request', 'Send your prayer request with the help of our Carmelite priests in offering your petitions', NULL, NULL, 1, '2019-06-19 18:30:35', NULL, NULL, b'0');
INSERT INTO `sub_modules` VALUES (3, 1, 3, 5, 'Mass Request', 'Send your mass request with the help of our Carmelite priests in offering your intentions', NULL, NULL, 1, '2019-06-19 18:31:05', NULL, NULL, b'0');
INSERT INTO `sub_modules` VALUES (4, 1, 3, 5, 'Liturgical Service', NULL, NULL, NULL, 1, '2019-06-19 18:32:13', NULL, NULL, b'0');
INSERT INTO `sub_modules` VALUES (5, 1, 3, 5, 'Certification', NULL, NULL, NULL, 1, '2019-06-19 18:32:40', NULL, NULL, b'0');
INSERT INTO `sub_modules` VALUES (6, 1, 3, 6, 'Individual Baptism', NULL, NULL, NULL, 1, '2019-06-19 18:33:27', NULL, NULL, b'0');
INSERT INTO `sub_modules` VALUES (7, 1, 3, 6, 'Community Baptism', NULL, NULL, NULL, 1, '2019-06-19 18:33:49', NULL, NULL, b'0');
INSERT INTO `sub_modules` VALUES (8, 1, 3, 6, 'Adult Baptism', NULL, NULL, NULL, 1, '2019-06-19 18:34:27', NULL, NULL, b'0');
INSERT INTO `sub_modules` VALUES (9, 1, 3, 7, 'First Communion', NULL, NULL, NULL, 1, '2019-06-19 18:35:00', NULL, NULL, b'0');
INSERT INTO `sub_modules` VALUES (10, 1, 3, 7, 'Communion of the Sick', NULL, NULL, NULL, 1, '2019-06-19 18:35:17', NULL, NULL, b'0');
INSERT INTO `sub_modules` VALUES (11, 1, 3, 8, 'Confirmation', NULL, NULL, NULL, 1, '2019-06-19 18:36:00', NULL, NULL, b'0');
INSERT INTO `sub_modules` VALUES (12, 1, 3, 9, 'Marriage', NULL, NULL, NULL, 1, '2019-06-19 18:36:19', NULL, NULL, b'0');
INSERT INTO `sub_modules` VALUES (13, 1, 3, 10, 'Funeral Service', NULL, NULL, NULL, 1, '2019-06-19 18:36:56', NULL, NULL, b'0');
INSERT INTO `sub_modules` VALUES (14, 1, 3, 10, 'Funeral Chapel', NULL, NULL, NULL, 1, '2019-06-19 18:37:23', NULL, NULL, b'0');
INSERT INTO `sub_modules` VALUES (15, 1, 3, 10, 'Crypt Lobby - Mass for the Dead', NULL, NULL, NULL, 1, '2019-06-19 18:37:42', NULL, NULL, b'0');
INSERT INTO `sub_modules` VALUES (16, 1, 3, 10, 'November Mass for the Dead', NULL, NULL, NULL, 1, '2019-06-19 18:37:57', NULL, NULL, b'0');
INSERT INTO `sub_modules` VALUES (17, 1, 3, 11, 'Father Mark Horan Hall - Venue', NULL, NULL, NULL, 1, '2019-06-19 18:39:03', NULL, NULL, b'0');

-- ----------------------------
-- Table structure for telephone
-- ----------------------------
DROP TABLE IF EXISTS `telephone`;
CREATE TABLE `telephone`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contacts` int(11) NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

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
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, 1, 'System', NULL, 'Admin', 'admin@mountcarmel.ph', 'St. Mary Street', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-06-21 12:38:50', NULL, NULL, b'0');
INSERT INTO `user_info` VALUES (2, 2, 'John', NULL, 'Appleseed', 'john@appleseed.com', 'St. Mary Street', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-06-21 12:38:50', NULL, NULL, b'0');
INSERT INTO `user_info` VALUES (3, 3, 'Jane', NULL, 'Doe', 'jane@doe.com', 'St. Mary Street', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-07-16 12:48:05', NULL, NULL, b'0');
INSERT INTO `user_info` VALUES (4, 4, 'John', NULL, 'Doe', 'john@doe.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-07-17 22:46:53', NULL, NULL, b'0');
INSERT INTO `user_info` VALUES (5, 5, 'Adrian', NULL, 'Evangelista', 'adriane.macer@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-07-18 21:16:07', NULL, NULL, b'0');
INSERT INTO `user_info` VALUES (6, 6, 'Adrian', NULL, 'Evangelista', 'adrianevangelista.bicolresearch@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, '2019-07-18 21:20:05', NULL, NULL, b'0');
INSERT INTO `user_info` VALUES (7, 7, 'Adrian', NULL, 'Evangelista', 'macer_0001@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, '2019-07-19 14:32:36', NULL, NULL, b'0');

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
  `dt_created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `dt_updated` datetime(0) NULL DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 1, 1, 'admin@mountcarmel.ph', '933e52712f2663bad0322db2e74fa2af8411c55a2611e193cb1076327c014f20fcea5e37355c92be7a43c89409dce639b207e2ea0ab3739e740283bde8479754', 1, '2019-06-21 12:36:40', 1, '2019-08-14 16:44:43', b'0');
INSERT INTO `users` VALUES (2, 1, 2, 'john@appleseed.com', '933e52712f2663bad0322db2e74fa2af8411c55a2611e193cb1076327c014f20fcea5e37355c92be7a43c89409dce639b207e2ea0ab3739e740283bde8479754', 1, '2019-06-21 12:37:34', 2, '2019-07-19 03:03:21', b'0');
INSERT INTO `users` VALUES (3, 1, 2, 'jane@doe.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 1, '2019-07-16 12:48:05', 3, '2019-07-23 07:23:10', b'0');
INSERT INTO `users` VALUES (4, 1, 2, 'john@doe.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 1, '2019-07-17 22:46:53', 4, '2019-07-18 19:56:14', b'0');
INSERT INTO `users` VALUES (5, 1, 2, 'adriane.macer@gmail.com', 'b109f3bbbc244eb82441917ed06d618b9008dd09b3befd1b5e07394c706a8bb980b1d7785e5976ec049b46df5f1326af5a2ea6d103fd07c95385ffab0cacbc86', 1, '2019-07-18 21:16:07', NULL, NULL, b'0');
INSERT INTO `users` VALUES (6, 1, 2, 'adrianevangelista.bicolresearch@gmail.com', '933e52712f2663bad0322db2e74fa2af8411c55a2611e193cb1076327c014f20fcea5e37355c92be7a43c89409dce639b207e2ea0ab3739e740283bde8479754', 2, '2019-07-18 21:20:05', NULL, NULL, b'0');
INSERT INTO `users` VALUES (7, 1, 2, 'macer_0001@yahoo.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 2, '2019-07-19 14:32:36', NULL, NULL, b'0');

SET FOREIGN_KEY_CHECKS = 1;
