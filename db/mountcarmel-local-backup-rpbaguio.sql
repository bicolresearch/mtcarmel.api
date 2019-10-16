-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2019 at 10:29 AM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mountcarmel`
--

-- --------------------------------------------------------

--
-- Table structure for table `acceptance`
--

CREATE TABLE `acceptance` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `sub_module_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `media_id` int(11) DEFAULT NULL COMMENT 'photo',
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `acceptance`
--

INSERT INTO `acceptance` (`id`, `branch_id`, `program_id`, `module_id`, `sub_module_id`, `name`, `description`, `content`, `media_id`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(1, 1, 3, 4, 1, 'Confraternity of Our Lady of Mount Carmel', '', '<p>Fees:</p>\r\n<p>Application Fee</p>                                        <p>Scapular</p>                                        <p>Confraternity Manual</p>                                        <p>Certificate of Confraternity</p>\r\n<p>200 php</p>\r\n<p>You may settle your bill using your debit card, credit card or cash.</p>', NULL, 1, '2019-06-19 18:51:19', NULL, NULL, b'0'),
(2, 1, 3, 5, 2, 'Prayer Request', '', '<p>Prayer Request is free of charge.</p>', NULL, 1, '2019-06-19 18:52:18', NULL, NULL, b'0'),
(3, 1, 3, 5, 3, 'Mass Request', '', '<p>After submission, you may donate any amount as an offering for your requested mass in your mailbox.</p>', NULL, 1, '2019-06-19 18:53:08', NULL, NULL, b'0'),
(4, 1, 3, 5, 4, 'Liturgical Service', '', '<p>Liturgical Service for blessing of houses, businesses and cars, as well as annointing of the sick or for other purposes.</p>\r\n\r\n<p>Parishioner may give the officiating priest a donation after the service.</p>\r\n\r\n<p>Exclusive for parishioners of Our Lady of Mount Carmel.</p>', NULL, 1, '2019-06-19 18:55:56', NULL, NULL, b'0'),
(5, 1, 3, 5, 5, 'Certification', '', '<p>We furnish baptismal certificate and confirmation certificate for parishioners.</p>\r\n<p>For Purposes such as for Personal file, School, Confirmation, First Communion, Legal documents, SSS requirement, Travel documents, Issuance of Birth Certificate and Marriage.</p>\r\n<p>Fees:</p>\r\n<p>Printing Service</p>\r\n<p>50 php</p>\r\n<p>ou may settle your bill using your debit card, credit card or cash.</p>', NULL, 1, '2019-06-19 18:57:48', NULL, NULL, b'0'),
(6, 1, 3, 6, 6, 'Individual Baptism', '', '<p>Schedule:</p>\r\n<p>Tuesday - Saturdays</p>\r\n<p>\r\n09:00 AM\r\n10:00 AM\r\n11:00 AM\r\n03:00 PM\r\n04:00 PM\r\n</p>\r\n<p>Sundays</p>\r\n<p>\r\n09:00 AM\r\n10:00 AM\r\n11:00 AM</p>\r\n\r\n<p>Additional Requirements:</p>\r\n\r\n<p>\r\nChild\'s Birth Certificate\r\nParent\'s Marriage Contract\r\nPermission Letter (if needed)</p>\r\n\r\n<p>Fees:</p>\r\n\r\n<p>Venue</p>\r\n<p>1,000 php</p>\r\n\r\n<p>Stipend for the Priest</p>\r\n<p>1,000 php</p>\r\n\r\n<p>For every Sponsor</p>\r\n<p>100 php</p>\r\n\r\n<p>Panyal, Certificate, Candle for the Parents, 2 Candles in glass for the Sponsors (candles for additional sponsors are not included)</p>\r\n<p>300 php</p>\r\n\r\n<p>Reservation Fee (deductible)</p>\r\n<p>2,000 php</p>\r\n\r\n<p>Baptism will be held in Pilgrim Chapel, St. Joseph Bldg.</p>\r\n\r\n<p>For non-parishioners, permission letter from your parish must be submitted in Mt. Carmel office.</p>\r\n\r\n<p>All sponsors must be catholic and 18 years old or above.</p>\r\n\r\n<p>Requirements and fees must be accomplished a week before the baptism.</p>\r\n\r\n<p>You may settle your bill using your debit card, credit card or cash.</p>\r\n\r\n<p>Be punctual, only an hour is alloted for the whole baptism.</p>', NULL, 1, '2019-06-19 19:05:15', NULL, NULL, b'0'),
(7, 1, 3, 6, 7, 'Community Baptism', '', '<p>Schedule:</p>\r\n<p>Sundays</p>\r\n<p>02:00 PM</p>\r\n<p>Additional Requirements:</p>\r\n<p>\r\nChild\'s Birth Certificate\r\nParent\'s Marriage Contract\r\nPermission Letter (if needed)\r\n</p>\r\n<p>Fees:</p>\r\n<p>For every Sponsor</p>\r\n<p>100 php</p>\r\n<p>Registration, Panyal, Certificate, Candle for the Parents, 2 Candles in glass for the Sponsors (candles for additional sponsors are not included)</p>\r\n<p>400 php</p>\r\n<p>For non-parishioners, permission letter from your parish must be submitted in Mt. Carmel office.</p>\r\n<p>All sponsors must be catholic and 18 years old or above.</p>\r\n<p>Requirements and fees must be accomplished a week before the baptism.</p>\r\n<p>You may settle your bill using your debit card, credit card or cash.</p>\r\n<p>Be punctual, only an hour is alloted for the whole baptism.</p>', NULL, 1, '2019-06-19 19:10:44', NULL, NULL, b'0'),
(8, 1, 3, 6, 8, 'Adult Baptism', '', '<p>Schedule:</p>\r\n<p>Tuesday - Saturdays</p>\r\n<p>\r\n09:00 AM\r\n10:00 AM<\r\n11:00 AM\r\n03:00 PM\r\n04:00 PM</p>\r\n<p>Sundays</p>\r\n<p>\r\n09:00 AM\r\n10:00 AM\r\n11:00 AM\r\n</p>\r\n<p>Additional Requirements:</p>\r\n<p>\r\nAdult\'s Birth Certificate\r\n4 Session Catechesis\r\nCertification of No Records (from 3 parishes from the Vicariate of Holy Family)\r\n</p>\r\n<p>Fees:</p>\r\n<p>Venue</p>\r\n<p>1,000 php</p>\r\n<p>Stipend for the Priest</p>\r\n<p>1,000 php</p>\r\n<p>For every Sponsor</p>\r\n<p>100 php</p>\r\n<p>Panyal, Certificate, Candle for the Parents</p>\r\n<p>150 php</p>\r\n<p>Candle for every Sponsor</p>\r\n<p>10 php</p>\r\n<p>Upon submission,you maycontact Catechetical Ministry office to schedule your catethesis.</p>\r\n<p>Call 727-94-32 local 411</p>\r\n<p>Tuesdays to Saturdays</p>\r\n<p>9am-5pm</p>\r\n<p>All sponsors must be catholic and 18 years old or above.</p>\r\n<p>Requirements and fees must be accomplished a week before the baptism.</p>\r\n<p>You may settle your bill using your debit card, credit card or cash.</p>\r\n<p>Be punctual, only an hour is alloted for the whole baptism.</p>', NULL, 1, '2019-06-19 19:11:37', NULL, NULL, b'0'),
(9, 1, 3, 7, 9, 'First Communion', '', '<p>Applicant may only have 1 or 2 sponsors during first communion.</p>\r\n<p>Fees:</p>\r\n<p>Application Fee</p>\r\n<p>500 php</p>\r\n<p>Upon submission, you may contact Catechetical Ministry office to schedule your catechesis.</p>\r\n<p>Call 727-94-32 local 411</p>\r\n<p>Tuesday to Saturdays</p>\r\n<p>9am-5pm</p>\r\n<p>You may settle your bill using your debit card, credit card or cash</p>', NULL, 1, '2019-06-19 19:17:36', NULL, NULL, b'0'),
(10, 1, 3, 7, 10, 'Communion of the Sick', '', '<p>Preferred time of visit will only serve as guide and may not always be accurate.</p>\r\n<p>Communion of the Sick is free of charge</p>\r\n<p>Exclusive for parishioners of Our Lady of Mount Carmel</p>', NULL, 1, '2019-06-19 19:23:01', NULL, NULL, b'0'),
(11, 1, 3, 8, 11, 'Confirmation', '', '<p>Applicant may only have 1 or 2 sponsors during confirmation.</p>\r\n<p>Fees:</p>\r\n<p>Application Fee<</p>\r\n<p>500 php</p>\r\n<p>Upon submission, you may contact Catechetical Ministry office to schedule your catechesis.</p>\r\n<p>Call 727-94-32 local 411</p>\r\n<p>Tuesday to Saturdays</p>\r\n<p>9am-5pm</p>\r\n<p>You may settle your bill using your debit card, credit card or cash</p>', NULL, 1, '2019-06-19 19:25:22', NULL, NULL, b'0'),
(12, 1, 3, 9, 12, 'Marriage', '', '<p>Wedding Rules and Regulations Agreement</p>\r\n<p>Version 1</p>\r\n<p>1. Reservation Fee and Full Payment</p>\r\n<p>a. Wedding should be arranged and scheduled at least 6 months before the wedding date.</p>\r\n<p>b. Reserved date is non-movable and non-transferrable.</p>\r\n<p>c. Reservation fee of 10,000 php will be accepted upon agreement of contract and National Shrine of Our Lady of Mount Carmel Rules and Regulations. Reservation fee is non-refundable but deductible on remaining balance.</p>\r\n<p>d. All fees should be settled 2 months before the wedding date.</p>\r\n<p>Wedding package includes use of the church, officiating priest, flowers with tulle, wedding candles or candles for secondary sponsors, wedding usherette, wedding commentator, altar server, red carpet, use of electricity for videos, pre-cana seminar and air conditioned holding area for the bride and choir.</p>\r\n<p>Wedding package rates:</p>\r\n<p>January to November rate</p>\r\n<p>29,000 php</p>\r\n<p>December rate</p>\r\n<p>34,000 php</p>\r\n<p>2. Wedding Requirements</p>\r\n<p>a. All requirements must be completed or accomplished at least 1 month before the wedding date exempting bride and groom under special cases which requires a permit from the Chancery Office of the Diocese of Cubao.</p>\r\n<p>Wedding cases the need to secure a permit:</p>\r\n<p>i. Mixed marriage (marriage between a Catholic and a non-Catholic or marriage between a Filipino or a foreigner)</p>\r\n<p>ii. Overseas Filipino working or living abroad for more than 2 years</p>\r\n<p>iii. With previous marriage (civilly or in the Roman Catholic church)</p>\r\n<p>b. We reserve the right to cancel a wedding if the requirements were not completed.</p>\r\n<p>c. Authorized representatives designated by the bride and groom are duty-bound to comply with the National Shrine of Our Lady of Mount Carmel Rules and Regulations Agreement and will be held responsible for the cancellation of the event for failure to submit all the needed requirements.</p>\r\n<p>d. National Shrine of Our Lady of Mount Carmel will not be responsible for any correction, fines and penalties that may be required on the marriage certificate already filed with the Quezon City Hall, Civil Registry after its entries were verified by the couple. Likewise, the Shrine is not liable if the couple fail to check their marriage contract as required.</p>\r\n<p>3. Cancellation</p>\r\n<p>a. In case of cancellation, a written advice must be submitted, otherwise the couple will have to pay the balance due.</p>\r\n<p>b. Reservation fee, full-payment, and additional fees made will be forfeited.</p>\r\n<p>c. Unclaimed documents will be disposed by the National Shrine of Our Lady of Mount Carmel within 2 months from the day of notice or from the wedding date.</p>\r\n<p>4. Punctuality</p>\r\n<p>a. The bride and groom, and the whole entourage including the soloist, singers and organist must be at the church premises 30 minutes before their wedding schedule.</p>\r\n<p>b. The allotted time for the wedding ceremony is 1 hour and 30 minutes only. Wedding ceremony are as follows, 15 minutes for the entrance procession of the wedding entourage; 45 minutes for the wedding liturgy; 15 minutes for pictorial, 15 minutes for the recessional of the wedding entourage. The wedding entourage should be exiting 15 minutes before the end of their time slot.</p>\r\n<p>c. If the bride, groom or the members of the entourage are late for 15 minutes, there will be no Prayers of the Faithful and Offertory Procession; if they are late for 30 minutes, there will be no Homily, Prayers of the Faithful and Offertory Procession; if they are late for 45 minutes, only the Wedding Rite outside the Mass will be celebrated.</p>\r\n<p>5. Wedding Entourage</p>\r\n<p>a. Bearers and flower girls should be 5 years old and above since they will not need the assistance of parents or guardian when marching down the aisle, which is usually the reason behind the delay of the ceremony.</p>\r\n<p>b. Only 5 pairs of principal sponsors are normally allowed. An additional fee of 500 php per person will be charged in excess of the 5 pairs of sponsors.</p>\r\n<p>c. The bride and groom must assign persons for the First and Second Reading, Responsorial Psalm and Prayers of the Faithful. Commentator will be provided by the church.</p>\r\n<p>6. Officiating Priest</p>\r\n<p>a. The bride and groom should inform the parish office 2 months before their wedding if they have their own officiating priest. If no advice was given, the invited priest will only be allowed to concelebrate with the assigned priest.</p>\r\n<p>b. For own priest, a photocopy of the priest Celebret ID, Certificate of Registration of Authority to Solemnize Marriage (CRASM) and appointment or endorsement letter from the Bishop is required.</p>\r\n<p>c. The Rector/Parish Priest has the right to approve or disapprove permission of the invited priest presider.</p>\r\n<p>d. In case of mixed marriages, the Shrine will not allow any form of rite, ceremony, or speeches to be conducted by other sects or religions.</p>\r\n<p>7. Solemnity and Wedding Dress Etiquette</p>\r\n<p>a. To preserve the solemnity of the wedding ceremony, all electronic gadgets are requested to be turned off or set to silent mode. Bride and groom should advice their respective entourages to refrain from unnecessary conversations and movements.</p>\r\n<p>b. The attire of the entire marriage entourage should be proper for church decorum. Provocative dresses like strapless, backless, spaghetti strap, bare midriff and off-the-shoulder dresses must be covered by a shawl jacket. We discourage above-the-knee length or miniskirt dresses.</p>\r\n<p>c. The National Shrine of Our Lady of Mount Carmel has the right to refuse any member of the entourage who are not properly dressed to join the entrance entourage.</p>\r\n<p>8. Offertory<</p>\r\n<p>a. Recommended list of items to be offered during the wedding are basket of fruits, mass wine and pack of hosts only.</p>\r\n<p>b. The bride and groom should assign two persons for the cruets and ciborium which will be provided by the shrine.</p>\r\n<p>c. Offertory procession may be cancelled if time constraints to give priority to the more essential parts of the mass.</p>\r\n<p>9. Church Decoration</p>\r\n<p>a. A simple yet elegant flower decoration in the aisle complete with tulle shall be provided by the shrine. All flower arrangement will be handled by the shrine’s in-house florist.</p>\r\n<p>b. For an additional floral arrangement, the bride and groom should submit a design arrangement for approval of the Rector/Parish Priest. Arrangement shall be done accordingly by the shrine’s in-house florist.</p>\r\n<p>c. During Lent, no flower decoration is allowed in the altar. The bride and groom are to be reminded that wedding events should respect the special nature of this liturgical season; they should refrain from much pomp or display.</p>\r\n<p>d. There will be no deduction in the wedding package rate for the flower arrangement if the bride and groom booked their wedding on Lenten season.</p>\r\n<p>10. Wedding Music</p>\r\n<p>a. Music for the whole ceremony is included in the package.</p>\r\n<p>b. During mass, singing may be done only during entrance, offertory, our Father, communion, recessional and photo sessions.</p>\r\n<p>c. The invited singer or musician should only render songs and music approved by the Rector/Parish Priest.</p>\r\n<p>11. Photographers and Videographers</p>\r\n<p>a. The bride and groom must properly endorse the photographers and videographers that will cover the whole wedding ceremony. The 2 photographers and 2 video personnel must be advised that they are required to attend the orientation seminar before their wedding coverage.</p>\r\n<p>b. Photographers and videographers not following the shrine’s instructions will be blacklisted.</p>\r\n<p>c. Guests of the couples who likewise want to take pictures or videos are allowed but they must remain in their seats.</p>\r\n<p>12. Church Assistance</p>\r\n<p>a. The shrine coordinator shall assist during the wedding for further instructions for the entourage.</p>\r\n<p>b. The bride and groom may assign their wedding coordinators provided that they were properly endorsed and they have attended the shrine’s orientation for coordinators before the wedding.</p>\r\n<p>c. Wedding coordinators not following the shrine’s rules and regulations will be blacklisted.</p>\r\n<p>13. Wedding Missalette</p>\r\n<p>a. The bride and groom my request a standard copy of wedding missalette in the parish office. Digital file or soft copy may be sent through email.</p>\r\n<p>b. No alterations or any addition to the approved liturgy should be made. Personal vows are not allowed.</p>\r\n<p>c. Draft of printed copy of the bride and groom’s wedding missalette must be submitted to the office for checking before making the final copies. Only checked and approved missalettes will be allowed for distribution during the wedding.</p>\r\n<p>14. Respect and Solemnity of the Holy Grounds</p>\r\n<p>a. Pets are not allowed to join the wedding procession.</p>\r\n<p>b. Cleanliness must be strictly observed inside and outside the shrine. Releasing of doves may be done outside the shrine’s doors.</p>\r\n<p>c. Only flower petals are allowed as extended greetings; permitted to be showered outside the shrine’s main entrance. Other extended greetings like party poppers, confetti and rice throwing are not permitted.</p>\r\n<p>d. Fogging and bubbles effect are not allowed inside and outside the shrine.</p>\r\n<p>e. Closed doors are not allowed.</p>\r\n<p>15. General Provision</p>\r\n<p>a. Any damage incurred during the wedding by the wedding entourage or guests, the reasonable cost shall be accounted for by the bride and groom.</p>\r\n<p>b. We have read and signify our agreement on the above terms and conditions of the National Shrine of Our Lady of Mount Carmel Rules and Regulations concerning wedding events and that the National Shrine of Our Lady of Mount Carmel and its personnel will not be held liable to any damages as a result of the enforcement of the said rules and regulations.</p>', NULL, 1, '2019-06-19 19:42:21', NULL, NULL, b'0'),
(13, 1, 3, 10, 13, 'Funeral Service', '', '<p>Funeral Service for blessing or conducting mass during the funeral.</p>\r\n<p>Parishioner may give the officiating priest a donation after the service.</p>\r\n<p>Exclusive for funerals conducted inside Our Lady of Mount Carmel premises.</p>', NULL, 1, '2019-06-19 20:17:26', NULL, NULL, b'0'),
(14, 1, 3, 10, 14, 'Funeral Chapel', '', '<p>There are three available chapels for conducting funeral rites and services.</p>\r\n<p>Chapels:</p>\r\n<p>Mt. Carmel Chapel</p>\r\n<p>\r\n150 sitting capacity\r\n15,000 php/day\r\n650 php/excess hour\r\n</p>\r\n<p>St. Joseph Chapel</p>\r\n<p>\r\n40 sitting capacity\r\n8,000 php/day\r\n350 php/excess hour\r\n</p>\r\n<p>Holy Family Chapel</p>\r\n<p>\r\n40 sitting capacity\r\n8,000 php/day\r\n350 php/excess hour\r\n</p>\r\n<p>Chapel Amenities:</p>\r\n<p>Daily Mass</p>\r\n<p>\r\nFully air-conditioned\r\nRefrigerator\r\nHot and cold water dispenser\r\nMicrowave oven\r\nKitchen sink\r\nSingle bed\r\nFamily room\r\n>Restroom\r\n</p>\r\n<p>\r\n24 hour security services\r\nAmple parking space\r\n</p>\r\n<p>You may settle your bill using your debit card, credit card or cash</p>', NULL, 1, '2019-06-19 20:18:01', NULL, NULL, b'0'),
(15, 1, 3, 10, 15, 'Crypt Lobby - Mass for the Dead', '', '<p>Crypt Lobby is available for conducting mass for the dead.</p>\r\n<p>Fees:</p>\r\n<p>Crypt Lobby</p>\r\n<p>20 sitting capacity</p>\r\n<p>500 php/hour</p>\r\n<p>You may settle your bill using your debit card, credit card or cash.</p>', NULL, 1, '2019-06-19 20:23:51', NULL, NULL, b'0'),
(16, 1, 3, 10, 16, 'November Mass for the Dead', '', '<p>Mass for the Dead will be offered every 06:00 AM of November.</p>\r\n<p>After submission, you may donate any amount as an offering for your requested mass in your mailbox.</p>', NULL, 1, '2019-06-19 20:24:22', NULL, NULL, b'0'),
(17, 1, 3, 11, 17, 'Father Mark Horan Hall - Venue', '', '<p>Father Mark Horan Hall Service Agreement</p>\r\n<p>Version 1</p>\r\n<p>1. Event and Duration</p>\r\n<p>a. Father Mark Horan Hall is available for wedding reception, baptismal, birthday celebration and anniversary celebration.</</p>\r\n<p>b. Client are given a maximum of 3 hours for the use of the Father Mark Horan Hall. Set up time is only 2 hours before the actual time of event.</p>\r\n<p>2. Reservation Fee and Full Payment</p>\r\n<p>a. Reservation fee of 50% will be accepted upon agreement of terms and conditions. Reservation fee is non-refundable but deductible on remaining balance.</p>\r\n<p>b. All fees should be settled 2 weeks before the event. Booking 1 week prior to the event, payment must be in full.</p>\r\n<p>Service package rates:</p>\r\n<p>Whole area package 1</p>\r\n<p>\r\n300 tiffany chairs\r\n30 tables\r\n30,000 php\r\n2,000 php/excess hour\r\n</p>\r\n<p>Whole area package 2</p>\r\n<p>\r\n300 monoblock chairs\r\n30 tables\r\n27,500 php\r\n2,000 php/excess hour\r\n</p>\r\n<p>Half area package 1</p>\r\n<p>\r\n120 tiffany chairs\r\n12 tables\r\n23,000 php\r\n1,000 php/excess hour\r\n</p>\r\n<p>Half area package 2</p>\r\n<p>\r\n120 monoblock chairs\r\n12 tables\r\n20,000 php\r\n1,000 php/excess hour\r\n</p>\r\n<p>Quarter area package 1</p>\r\n<p>80 tiffany chairs\r\n8 tables\r\n15,000 php\r\n500 php/excess hour\r\n</p>\r\n<p>Quarter area package 2</p>\r\n<p>\r\n80 monoblock chairs\r\n8 tables\r\n10,000 php\r\n500 php/excess hour\r\n</p>\r\n<p>All areas include the use of air conditioner, built-in sound system, ample parking space, clean toilet, LCD projector, and electricity for photo booth and maximum of 2 food carts.</p>\r\n<p>3. Reserved Date</p>\r\n<p>a. Reserved date is non-movable.</p>\r\n<p>>b. In the event wherein the client requests for a transfer of his/her reservation to another date or transfer his/her reservation to a member of his/her family, the client is requested to submit a letter of intent addressed to the superior of the shrine. If the superior allows the trasfer, the client will be charged for an additional 50% of the down payment made on his/her previous reservation as penalty.</p>\r\n<p>4. Lights and Sounds</p>\r\n<p>a. The services provided by the management include the sound system and the lights for the Father Mark Horan Hall. Other use of electricity-consuming gadgets may be allowed only with the prior approval of the management, such as photo booth, use of LCD projector, lights of more than 1,000 watts. Corresponding fees are to be determined by the management.</p>\r\n<p>b. Clients may bring their own sound system but no fees will be deducted from the contract package. Live band may be allowed but without drums.</p>\r\n<p>5. Safety and Security</p>\r\n<p>a. The client has the full responsibility toward the safety and security of their guests.</p>\r\n<p>b. The client and their guests are reminded to secure their valuables at all times. Management shall be free from any liability arising from any unforeseen events such as theft, robbery, accident, and any natural or man-made calamities that may cause harm to the client, their guests and their belongings before, during and after their function at the Father Mark Horan Hall.</p>\r\n<p>6. Damages</p>\r\n<p>a. Should there result in any damage to property incurred by the client or guests within the Father Mark Horan Hall, the cost thereof, or reasonable replacement cost shall be accounted for by the client.</p>\r\n<p>7. Power Outage</p>\r\n<p>a. In the event of power outage or brownout, there will be a stand-by generator which will provide power for lights, fans and some outlets but not the air conditioning units.</p>\r\n<p>There will be no refund if the Father Mark Horan Hall was booked with air conditioning.</p>\r\n<p>8. Catering Service</p>\r\n<p>a. The client may bring in catering service provider of their choice, all accredited and unaccredited catering service providers must abide with the regulations and policies regarding the use of Father Mark Horan Hall.</p>\r\n<p>b. The management shall be free from any legal suit and liability with regards to the services rendered by the catering service provider, including issues such as food poisoning and sanitation.</p>\r\n<p>9. Ground Rules</p>\r\n<p>a. Doves and butterflies are not allowed inside the Father Mark Horan Hall.</p>\r\n<p>b. Use of kerosene or gas torch is strictly prohibited inside Father Mark Horan Hall.</p>\r\n<p>c. Swag and drape clothing are strictly prohibited.</p>\r\n<p>d. Party poppers are not allowed inside the Father Mark Horan Hall.</p>\r\n<p>e. Clients are allowed to bring a maximum of 6 cases of liquor such as Pale Pilsen, Red Horse, San Mig Light,or the same kind only./p>\r\n<p>10. General Provision</p>\r\n<p>a. The client shall hold the management free from any liability whatsoever for the use of the Father Mark Horan Hall.</p>\r\n<p>b. The client\'s event coordinator must abide with all the rules and regulations. They shall inform the mamagement for any requests 2 weeks prior to the event. Any such requests may be declined without necessity of explanation.</p>', NULL, 1, '2019-06-19 20:48:09', NULL, NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `acceptance_logs`
--

CREATE TABLE `acceptance_logs` (
  `id` int(11) NOT NULL,
  `acceptance_id` int(11) NOT NULL,
  `action` varchar(1000) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE `access` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(40) NOT NULL DEFAULT '',
  `all_access` tinyint(1) NOT NULL DEFAULT '0',
  `controller` varchar(50) NOT NULL DEFAULT '',
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `type_id` int(11) NOT NULL,
  `service_type_id` int(11) NOT NULL,
  `expiration` datetime DEFAULT NULL,
  `durations` int(1) NOT NULL DEFAULT '1',
  `total` int(11) NOT NULL,
  `status_id` bit(1) NOT NULL DEFAULT b'0',
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `branch_id`, `brand_name`, `company_name`, `description`, `url`, `media_id`, `type_id`, `service_type_id`, `expiration`, `durations`, `total`, `status_id`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(1, 1, 'Apostleship of Prayer', 'Apostleship of Prayer', 'Apostleship of Prayer', 'https://sites.google.com/site/apostleshipofprayerphilippines/', 53, 111, 0, '2022-08-23 00:00:00', 1, 0, b'1', 1, '2019-06-24 14:30:17', 1, '2019-09-05 01:25:35', b'0'),
(2, 1, 'Pepsi', 'Pepsi', 'Pepsi', 'https://pepsiphilippines.com/', 54, 111, 0, '2022-08-23 00:00:00', 1, 0, b'1', 1, '2019-06-24 14:30:31', 1, '2019-09-05 01:24:41', b'0'),
(3, 1, 'BDO', 'BDO', 'BDO', 'https://www.bdo.com.ph/personal', 52, 111, 0, '2022-08-23 00:00:00', 1, 0, b'1', 1, '2019-06-24 14:30:47', 1, '2019-09-05 01:23:05', b'0'),
(4, 1, 'Cabalen', 'Cabalen', 'Cabalen Naga City', 'https://www.cabalen.ph/', 51, 111, 0, '2022-08-23 00:00:00', 1, 0, b'1', 1, '2019-06-24 14:30:56', 1, '2019-09-16 16:21:35', b'0'),
(5, 1, 'Splash Ad 1', 'Splash Ad 1', 'Splash Ad 1', '', 12, 112, 0, '2022-08-23 00:00:00', 1, 0, b'1', 1, '2019-08-16 23:13:43', 1, '2019-08-23 09:08:35', b'0'),
(6, 1, 'Splash Ad 2', 'Splash Ad 2', 'Splash Ad 2', 'https://play.google.com/store/apps', 14, 112, 0, '2022-08-23 00:00:00', 1, 0, b'1', 1, '2019-08-16 23:14:10', 1, '2019-08-23 09:08:40', b'0'),
(7, 1, 'Splash Ad 3', 'Splash Ad 3', 'Splash Ad 3', '', 13, 112, 0, '2022-08-23 00:00:00', 1, 0, b'1', 1, '2019-08-16 23:14:45', 1, '2019-08-23 09:08:09', b'0'),
(8, 1, 'Carmel App', 'Carmel App', 'Carmel App', 'https://carmel.ph', NULL, 111, 136, NULL, 1, 17885, b'0', 4, '2019-10-15 15:53:51', NULL, NULL, b'0'),
(9, 1, 'Sample', 'Sample', 'Sample', '', NULL, 111, 133, '2024-10-15 05:41:45', 5, 89425, b'0', 4, '2019-10-15 17:41:57', NULL, NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `audit_trail`
--

CREATE TABLE `audit_trail` (
  `id` int(11) NOT NULL,
  `action` varchar(1000) DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `sub_module_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `boundaries`
--

CREATE TABLE `boundaries` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `boundaries`
--

INSERT INTO `boundaries` (`id`, `branch_id`, `name`, `description`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(1, 1, 'North', 'E. Rodriguez Avenue (formerly España Extension)', 1, '2019-06-19 16:46:24', 1, '2019-09-06 19:23:57', b'0'),
(2, 1, 'South', 'Ermitaño Creek', 1, '2019-06-19 16:46:53', 1, '2019-09-06 19:23:51', b'0'),
(3, 1, 'West', 'San Juan River', 1, '2019-06-19 16:47:19', 1, '2019-09-06 19:23:45', b'0'),
(4, 1, 'East', 'Balete Drive through N. Domingo and Horseshoe Drive until Ermitaño Creek', 1, '2019-06-19 16:47:43', 1, '2019-09-07 02:26:51', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(2500) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `features_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `main_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `name`, `description`, `order_id`, `features_id`, `location_id`, `main_id`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(1, 'Minor Basilica of the National Shrine of Our Lady of Mount Carmel', 'Minor Basilica of the National Shrine of Our Lady of Mount Carmel', 144, 147, 1, 1, 1, '2019-06-18 16:02:09', 1, '2019-06-18 16:03:01', b'0'),
(2, 'St. Joseph the Worker Parish', 'St. Joseph the Worker Parish', 144, 147, 2, 0, 1, '2019-09-13 15:16:58', NULL, NULL, b'0'),
(3, 'Our Lady of Mt. Carmel and St. Therese of the Child Jesus', 'Our Lady of Mt. Carmel and St. Therese of the Child Jesus', 145, 157, 2, 0, 1, '2019-09-13 15:16:58', NULL, NULL, b'0'),
(4, 'Our Lady of Mount Carmel, Mary, Queen of Peace Community', 'Our Lady of Mount Carmel, Mary, Queen of Peace Community', 146, 158, 2, 0, 1, '2019-09-13 15:16:58', NULL, NULL, b'0'),
(5, 'Our Lady\'s Hill Center of Spirituality', 'Our Lady\'s Hill Center of Spirituality', 144, 148, 3, 0, 1, '2019-09-13 15:16:58', NULL, NULL, b'0'),
(6, 'Our Lady of the Smiles Community', 'Our Lady of the Smiles Community', 146, 158, 4, 0, 1, '2019-09-13 15:16:58', NULL, NULL, b'0'),
(7, 'Carmel of The Child Jesus and of Mary Mediatrix of All Graces', 'Carmel of The Child Jesus and of Mary Mediatrix of All Graces', 145, 157, 6, 0, 1, '2019-09-16 12:59:20', NULL, NULL, b'0'),
(8, 'Sto. Niño de Cebu Community', 'Sto. Niño de Cebu Community', 146, 158, 6, 0, 1, '2019-09-21 14:20:43', NULL, NULL, b'0'),
(9, 'Carmel of the Immaculate Heart of Mary', 'Carmel of the Immaculate Heart of Mary', 145, 157, 5, 0, 1, '2019-09-13 15:16:58', NULL, NULL, b'0'),
(10, 'Carmelite Monastery of St. John of The Cross', 'Carmelite Monastery of St. John of The Cross', 145, 157, 7, 0, 1, '2019-09-21 15:08:37', NULL, NULL, b'0'),
(11, 'Saint John of the Cross Community', 'Saint John of the Cross Community', 146, 158, 7, 0, 1, '2019-09-21 15:09:20', NULL, NULL, b'0'),
(12, 'Carmel of  Mary, Mother of The Church and of Saint Joseph', 'Carmel of  Mary, Mother of The Church and of Saint Joseph', 145, 157, 8, 0, 1, '2019-09-21 15:12:06', NULL, NULL, b'0'),
(13, 'Our Lady of Mount Carmel of Holy Mother Teresa of Jesus Community', 'Our Lady of Mount Carmel of Holy Mother Teresa of Jesus Community', 146, 158, 8, 0, 1, '2019-09-21 15:12:48', NULL, NULL, b'0'),
(14, 'Saint Joseph and Saint John of the Cross', 'Saint Joseph and Saint John of the Cross', 146, 158, 8, 0, 1, '2019-09-21 15:13:31', NULL, NULL, b'0'),
(15, 'Carmel of the Sacred Heart of Jesus and The Immaculate Heart of Mary', 'Carmel of the Sacred Heart of Jesus and The Immaculate Heart of Mary', 145, 157, 9, 0, 1, '2019-09-21 15:14:23', NULL, NULL, b'0'),
(16, 'Saint Joseph Community', 'Saint Joseph Community', 146, 158, 9, 0, 1, '2019-09-21 15:48:43', NULL, NULL, b'0'),
(17, 'Saint Therese of the Child Jesus Community', 'Saint Therese of the Child Jesus Community', 146, 158, 9, 0, 1, '2019-09-21 15:53:11', NULL, NULL, b'0'),
(18, 'Saint Teresa of Jesus Community', 'Saint Teresa of Jesus Community', 146, 158, 9, 0, 1, '2019-09-21 15:53:46', NULL, NULL, b'0'),
(19, 'Carmel of Saint Teresa of Jesus', 'Carmel of Saint Teresa of Jesus', 145, 157, 10, 0, 1, '2019-09-21 15:54:21', NULL, NULL, b'0'),
(20, 'St. Teresa of Jesus', 'St. Teresa of Jesus', 146, 158, 10, 0, 1, '2019-09-21 15:54:52', NULL, NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `branch_donations`
--

CREATE TABLE `branch_donations` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `donation_type_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `donation_schedule_type_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `branch_donations`
--

INSERT INTO `branch_donations` (`id`, `branch_id`, `donation_type_id`, `name`, `donation_schedule_type_id`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(1, 1, 113, '', 28, 1, '2019-09-25 13:15:09', NULL, NULL, b'0'),
(2, 1, 114, '', 28, 1, '2019-09-25 13:16:48', NULL, NULL, b'0'),
(3, 1, 115, '', 28, 1, '2019-09-25 13:17:42', NULL, NULL, b'0'),
(4, 1, 116, '', 28, 1, '2019-09-25 13:18:12', NULL, NULL, b'0'),
(5, 1, 119, '', 30, 1, '2019-09-25 13:20:04', NULL, NULL, b'0'),
(6, 1, 117, '', 29, 1, '2019-09-25 13:20:28', NULL, NULL, b'0'),
(7, 1, 118, '', 29, 1, '2019-09-25 13:20:55', NULL, NULL, b'0'),
(8, 3, 149, 'For Medication Of Our Old And Sick Sisters', 28, 1, '2019-09-25 13:22:41', NULL, NULL, b'0'),
(9, 3, 151, '', 28, 1, '2019-09-25 13:23:10', NULL, NULL, b'0'),
(10, 10, 152, 'Of Enclosure Wall Of The Monastery (Area: 4 Hectares)', 28, 1, '2019-09-25 13:24:34', NULL, NULL, b'0'),
(11, 10, 153, 'Of Chapel & Monastery', 28, 1, '2019-09-25 13:25:17', NULL, NULL, b'0'),
(12, 10, 154, 'For The Holy Mass', 28, 1, '2019-09-25 13:25:46', NULL, NULL, b'0'),
(13, 19, 150, 'of New Host Baking Machine', 28, 1, '2019-09-25 13:26:33', NULL, NULL, b'0'),
(14, 19, 151, 'of Anay Infested Areas of the Monastery', 28, 1, '2019-09-25 13:27:03', NULL, NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `branch_locations`
--

CREATE TABLE `branch_locations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(2500) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `branch_locations`
--

INSERT INTO `branch_locations` (`id`, `name`, `description`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(1, 'Quezon City', 'Quezon City', 1, '2019-09-19 14:41:02', NULL, NULL, b'0'),
(2, 'Iloilo City', 'Iloilo City', 1, '2019-09-19 14:41:29', NULL, NULL, b'0'),
(3, 'Bago City', 'Bago City', 1, '2019-09-19 14:42:53', NULL, NULL, b'0'),
(4, 'Bacolod City', 'Bacolod City', 1, '2019-09-19 14:43:20', NULL, NULL, b'0'),
(5, 'Naga City', 'Naga City', 1, '2019-09-19 14:43:38', NULL, NULL, b'0'),
(6, 'Cebu City', 'Cebu City', 1, '2019-09-19 15:38:57', NULL, NULL, b'0'),
(7, 'Ozamis City', 'Ozamis City', 1, '2019-09-21 14:22:15', NULL, NULL, b'0'),
(8, 'Cagayan de Oro City', 'Cagayan de Oro City', 1, '2019-09-21 14:22:38', NULL, NULL, b'0'),
(9, 'Davao City', 'Davao City', 1, '2019-09-21 14:23:04', NULL, NULL, b'0'),
(10, 'Mati City', 'Mati City', 1, '2019-09-21 14:23:22', NULL, NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(2550) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `chapel`
--

CREATE TABLE `chapel` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `amenities` varchar(255) DEFAULT NULL,
  `additional_amenities` mediumtext,
  `amount` decimal(10,0) NOT NULL,
  `amt_per` varchar(20) NOT NULL,
  `other_charges` decimal(10,0) DEFAULT NULL,
  `other_charges_per` varchar(20) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `dt_created` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `chapel`
--

INSERT INTO `chapel` (`id`, `branch_id`, `name`, `description`, `amenities`, `additional_amenities`, `amount`, `amt_per`, `other_charges`, `other_charges_per`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(1, 1, 'Mt. Carmel Chapel', NULL, '150 sitting capacity', '<p>Daily Mass</p>\r\n<p>\r\nFully air-conditioned\r\nRefrigerator\r\nHot and cold water dispenser\r\nMicrowave oven\r\nKitchen sink\r\nSingle bed\r\nFamily room\r\nRestroom                                      </p>                                        <p>\r\n24 hour security services\r\nAmple parking space\r\n</p>', '15000', 'day', '650', 'excess hour', 1, '2019-06-20 13:52:53', NULL, NULL, b'0'),
(2, 1, 'St. Joseph Chapel', NULL, '40 sitting capacity', '<p>Daily Mass</p>\r\n<p>\r\nFully air-conditioned\r\nRefrigerator\r\nHot and cold water dispenser\r\nMicrowave oven\r\nKitchen sink\r\nSingle bed\r\nFamily room\r\nRestroom                                      </p>                                        <p>\r\n24 hour security services\r\nAmple parking space\r\n</p>', '8000', 'day', '350', 'excess hour', 1, '2019-06-20 14:00:01', NULL, NULL, b'0'),
(3, 1, 'Holy Family Chapel', NULL, '40 sitting capacity', '<p>Daily Mass</p>\r\n<p>\r\nFully air-conditioned\r\nRefrigerator\r\nHot and cold water dispenser\r\nMicrowave oven\r\nKitchen sink\r\nSingle bed\r\nFamily room\r\nRestroom                                      </p>                                        <p>\r\n24 hour security services\r\nAmple parking space\r\n</p>', '8000', 'day', '350', 'excess hour', 1, '2019-06-20 14:01:47', NULL, NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `region_code` varchar(255) DEFAULT NULL,
  `province_code` varchar(255) DEFAULT NULL,
  `city_code` varchar(255) DEFAULT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`, `description`, `region_code`, `province_code`, `city_code`, `country_code`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(2, 'Abra De Ilog', NULL, '17', '1751', '175101', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(3, 'Abucay', NULL, '03', '0308', '030801', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(4, 'Abulug', NULL, '02', '0215', '021501', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(5, 'Abuyog', NULL, '08', '0837', '083701', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(6, 'Adams', NULL, '01', '0128', '012801', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(7, 'Agdangan', NULL, '04', '0456', '045601', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(8, 'Aglipay', NULL, '02', '0257', '025701', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(9, 'Agno', NULL, '01', '0155', '015501', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(10, 'Agoncillo', NULL, '04', '0410', '041001', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(11, 'Agoo', NULL, '01', '0133', '013301', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(12, 'Aguilar', NULL, '01', '0155', '015502', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(13, 'Aguinaldo', NULL, '14', '1427', '142708', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(14, 'Agutaya', NULL, '17', '1753', '175302', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(15, 'Ajuy', NULL, '06', '0630', '063001', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(16, 'Akbar', NULL, '15', '1507', '150708', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(17, 'Alabat', NULL, '04', '0456', '045602', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(18, 'Alabel (Capital)', NULL, '12', '1280', '128001', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(19, 'Alamada', NULL, '12', '1247', '124701', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(20, 'Alaminos', NULL, '04', '0434', '043401', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(21, 'Alangalang', NULL, '08', '0837', '083702', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(22, 'Al-Barka', NULL, '15', '1507', '150709', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(23, 'Albuera', NULL, '08', '0837', '083703', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(24, 'Alburquerque', NULL, '07', '0712', '071201', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(25, 'Alcala', NULL, '01', '0155', '015504', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(26, 'Alcantara', NULL, '17', '1759', '175901', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(27, 'Alcoy', NULL, '07', '0722', '072202', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(28, 'Alegria', NULL, '07', '0722', '072203', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(29, 'Aleosan', NULL, '12', '1247', '124717', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(30, 'Alfonso', NULL, '04', '0421', '042101', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(31, 'Alfonso Castaneda', NULL, '02', '0250', '025015', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(32, 'Alfonso Lista (Potia)', NULL, '14', '1427', '142707', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(33, 'Aliaga', NULL, '03', '0349', '034901', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(34, 'Alicia', NULL, '02', '0231', '023101', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(35, 'Alilem', NULL, '01', '0129', '012901', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(36, 'Alimodian', NULL, '06', '0630', '063002', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(37, 'Alitagtag', NULL, '04', '0410', '041002', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(38, 'Allacapan', NULL, '02', '0215', '021503', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(39, 'Allen', NULL, '08', '0848', '084801', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(40, 'Almagro', NULL, '08', '0860', '086001', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(41, 'Almeria', NULL, '08', '0878', '087801', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(42, 'Aloguinsan', NULL, '07', '0722', '072204', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(43, 'Aloran', NULL, '10', '1042', '104201', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(44, 'Altavas', NULL, '06', '0604', '060401', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(45, 'Alubijid', NULL, '10', '1043', '104301', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(46, 'Amadeo', NULL, '04', '0421', '042102', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(47, 'Ambaguio', NULL, '02', '0250', '025001', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(48, 'Amlan (Ayuquitan)', NULL, '07', '0746', '074601', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(49, 'Ampatuan', NULL, '15', '1538', '153801', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(50, 'Amulung', NULL, '02', '0215', '021504', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(51, 'Anahawan', NULL, '08', '0864', '086401', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(52, 'Anao', NULL, '03', '0369', '036901', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(53, 'Anda', NULL, '01', '0155', '015505', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(54, 'Angadanan', NULL, '02', '0231', '023102', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(55, 'Angat', NULL, '03', '0314', '031401', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(56, 'Angeles City', NULL, '03', '0354', '035401', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(57, 'Angono', NULL, '04', '0458', '045801', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(58, 'Anilao', NULL, '06', '0630', '063003', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(59, 'Anini-Y', NULL, '06', '0606', '060601', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(60, 'Antequera', NULL, '07', '0712', '071204', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(61, 'Antipas', NULL, '12', '1247', '124715', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(62, 'Apalit', NULL, '03', '0354', '035402', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(63, 'Aparri', NULL, '02', '0215', '021505', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(64, 'Araceli', NULL, '17', '1753', '175303', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(65, 'Arakan', NULL, '12', '1247', '124718', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(66, 'Arayat', NULL, '03', '0354', '035403', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(67, 'Argao', NULL, '07', '0722', '072205', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(68, 'Aringay', NULL, '01', '0133', '013302', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(69, 'Aritao', NULL, '02', '0250', '025002', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(70, 'Aroroy', NULL, '05', '0541', '054101', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(71, 'Arteche', NULL, '08', '0826', '082601', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(72, 'Asingan', NULL, '01', '0155', '015506', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(73, 'Asipulo', NULL, '14', '1427', '142711', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(74, 'Asturias', NULL, '07', '0722', '072206', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(75, 'Asuncion (Saug)', NULL, '11', '1123', '112301', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(76, 'Atimonan', NULL, '04', '0456', '045603', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(77, 'Atok', NULL, '14', '1411', '141101', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(78, 'Aurora', NULL, '02', '0231', '023103', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(79, 'Ayungon', NULL, '07', '0746', '074602', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(80, 'Baao', NULL, '05', '0517', '051701', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(81, 'Babatngon', NULL, '08', '0837', '083705', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(82, 'Bacacay', NULL, '05', '0505', '050501', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(83, 'Bacarra', NULL, '01', '0128', '012802', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(84, 'Baclayon', NULL, '07', '0712', '071205', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(85, 'Bacnotan', NULL, '01', '0133', '013303', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(86, 'Baco', NULL, '17', '1752', '175201', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(87, 'Bacolod', NULL, '10', '1035', '103501', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(88, 'Bacolod City (Capital)', NULL, '06', '0645', '064501', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(89, 'Bacolod-Kalawi (Bacolod Grande)', NULL, '15', '1536', '153601', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(90, 'Bacolor', NULL, '03', '0354', '035404', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(91, 'Bacong', NULL, '07', '0746', '074603', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(92, 'Bacoor City', NULL, '04', '0421', '042103', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(93, 'Bacuag', NULL, '16', '1667', '166702', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(94, 'Bacungan (Leon T. Postigo)', NULL, '09', '0972', '097226', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(95, 'Badian', NULL, '07', '0722', '072207', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(96, 'Badiangan', NULL, '06', '0630', '063004', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(97, 'Badoc', NULL, '01', '0128', '012803', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(98, 'Bagabag', NULL, '02', '0250', '025003', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(99, 'Bagac', NULL, '03', '0308', '030802', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(100, 'Bagamanoc', NULL, '05', '0520', '052001', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(101, 'Baganga', NULL, '11', '1125', '112501', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(102, 'Baggao', NULL, '02', '0215', '021506', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(103, 'Bago City', NULL, '06', '0645', '064502', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(104, 'Baguio City', NULL, '14', '1411', '141102', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(105, 'Bagulin', NULL, '01', '0133', '013304', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(106, 'Bagumbayan', NULL, '12', '1265', '126501', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(107, 'Bais City', NULL, '07', '0746', '074604', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(108, 'Bakun', NULL, '14', '1411', '141103', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(109, 'Balabac', NULL, '17', '1753', '175304', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(110, 'Balabagan', NULL, '15', '1536', '153602', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(111, 'Balagtas (Bigaa)', NULL, '03', '0314', '031402', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(112, 'Balamban', NULL, '07', '0722', '072208', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(113, 'Balangiga', NULL, '08', '0826', '082602', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(114, 'Balangkayan', NULL, '08', '0826', '082603', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(115, 'Balaoan', NULL, '01', '0133', '013305', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(116, 'Balasan', NULL, '06', '0630', '063005', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(117, 'Balatan', NULL, '05', '0517', '051702', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(118, 'Balayan', NULL, '04', '0410', '041003', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(119, 'Balbalan', NULL, '14', '1432', '143201', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(120, 'Baleno', NULL, '05', '0541', '054102', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(121, 'Baler (Capital)', NULL, '03', '0377', '037701', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(122, 'Balete', NULL, '04', '0410', '041004', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(123, 'Baliangao', NULL, '10', '1042', '104202', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(124, 'Baliguian', NULL, '09', '0972', '097224', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(125, 'Balilihan', NULL, '07', '0712', '071206', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(126, 'Balindong (Watu)', NULL, '15', '1536', '153603', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(127, 'Balingasag', NULL, '10', '1043', '104302', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(128, 'Balingoan', NULL, '10', '1043', '104303', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(129, 'Baliuag', NULL, '03', '0314', '031403', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(130, 'Ballesteros', NULL, '02', '0215', '021507', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(131, 'Baloi', NULL, '10', '1035', '103502', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(132, 'Balud', NULL, '05', '0541', '054103', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(133, 'Balungao', NULL, '01', '0155', '015507', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(134, 'Bamban', NULL, '03', '0369', '036902', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(135, 'Bambang', NULL, '02', '0250', '025004', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(136, 'Banate', NULL, '06', '0630', '063006', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(137, 'Banaue', NULL, '14', '1427', '142701', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(138, 'Banaybanay', NULL, '11', '1125', '112502', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(139, 'Banayoyo', NULL, '01', '0129', '012902', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(140, 'Banga', NULL, '06', '0604', '060403', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(141, 'Bangar', NULL, '01', '0133', '013306', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(142, 'Bangued (Capital)', NULL, '14', '1401', '140101', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(143, 'Bangui', NULL, '01', '0128', '012804', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(144, 'Bani', NULL, '01', '0155', '015508', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(145, 'Banisilan', NULL, '12', '1247', '124716', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(146, 'Banna (Espiritu)', NULL, '01', '0128', '012811', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(147, 'Bansalan', NULL, '11', '1124', '112401', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(148, 'Bansud', NULL, '17', '1752', '175202', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(149, 'Bantay', NULL, '01', '0129', '012903', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(150, 'Bantayan', NULL, '07', '0722', '072209', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(151, 'Banton', NULL, '17', '1759', '175902', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(152, 'Baras', NULL, '04', '0458', '045803', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(153, 'Barbaza', NULL, '06', '0606', '060602', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(154, 'Barcelona', NULL, '05', '0562', '056202', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(155, 'Barili', NULL, '07', '0722', '072210', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(156, 'Barira', NULL, '15', '1538', '153818', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(157, 'Barlig', NULL, '14', '1444', '144401', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(158, 'Barobo', NULL, '16', '1668', '166801', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(159, 'Barotac Nuevo', NULL, '06', '0630', '063007', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(160, 'Barotac Viejo', NULL, '06', '0630', '063008', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(161, 'Baroy', NULL, '10', '1035', '103503', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(162, 'Barugo', NULL, '08', '0837', '083706', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(163, 'Basay', NULL, '07', '0746', '074605', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(164, 'Basco (Capital)', NULL, '02', '0209', '020901', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(165, 'Basey', NULL, '08', '0860', '086002', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(166, 'Basilisa (Rizal)', NULL, '16', '1685', '168501', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(167, 'Basista', NULL, '01', '0155', '015509', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(168, 'Basud', NULL, '05', '0516', '051601', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(169, 'Batad', NULL, '06', '0630', '063009', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(170, 'Batan', NULL, '06', '0604', '060404', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(171, 'Batangas City (Capital)', NULL, '04', '0410', '041005', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(172, 'Bataraza', NULL, '17', '1753', '175305', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(173, 'Bato', NULL, '05', '0517', '051703', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(174, 'Batuan', NULL, '05', '0541', '054104', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(175, 'Bauan', NULL, '04', '0410', '041006', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(176, 'Bauang', NULL, '01', '0133', '013307', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(177, 'Bauko', NULL, '14', '1444', '144402', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(178, 'Baungon', NULL, '10', '1013', '101301', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(179, 'Bautista', NULL, '01', '0155', '015510', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(180, 'Bay', NULL, '04', '0434', '043402', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(181, 'Bayabas', NULL, '16', '1668', '166802', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(182, 'Bayambang', NULL, '01', '0155', '015511', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(183, 'Bayang', NULL, '15', '1536', '153604', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(184, 'Bayog', NULL, '09', '0973', '097303', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(185, 'Bayombong (Capital)', NULL, '02', '0250', '025005', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(186, 'Belison', NULL, '06', '0606', '060603', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(187, 'Benito Soliven', NULL, '02', '0231', '023104', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(188, 'Besao', NULL, '14', '1444', '144403', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(189, 'Bien Unido', NULL, '07', '0712', '071248', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(190, 'Bilar', NULL, '07', '0712', '071208', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(191, 'Biliran', NULL, '08', '0878', '087802', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(192, 'Binalbagan', NULL, '06', '0645', '064503', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(193, 'Binalonan', NULL, '01', '0155', '015512', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(194, 'Binangonan', NULL, '04', '0458', '045804', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(195, 'Bindoy (Payabon)', NULL, '07', '0746', '074607', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(196, 'Bingawan', NULL, '06', '0630', '063010', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(197, 'Binidayan', NULL, '15', '1536', '153605', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(198, 'Binmaley', NULL, '01', '0155', '015513', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(199, 'Binondo', NULL, '13', '1339', '133902', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(200, 'Binuangan', NULL, '10', '1043', '104304', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(201, 'Biri', NULL, '08', '0848', '084802', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(202, 'Boac (Capital)', NULL, '17', '1740', '174001', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(203, 'Bobon', NULL, '08', '0848', '084803', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(204, 'Bocaue', NULL, '03', '0314', '031404', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(205, 'Bokod', NULL, '14', '1411', '141104', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(206, 'Bolinao', NULL, '01', '0155', '015514', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(207, 'Boliney', NULL, '14', '1401', '140102', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(208, 'Boljoon', NULL, '07', '0722', '072212', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(209, 'Bombon', NULL, '05', '0517', '051704', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(210, 'Bongabon', NULL, '03', '0349', '034902', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(211, 'Bongabong', NULL, '17', '1752', '175203', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(212, 'Bongao (Capital)', NULL, '15', '1570', '157002', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(213, 'Bonifacio', NULL, '10', '1042', '104203', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(214, 'Bontoc', NULL, '08', '0864', '086402', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(215, 'Bontoc (Capital)', NULL, '14', '1444', '144404', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(216, 'Borbon', NULL, '07', '0722', '072213', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(217, 'Boston', NULL, '11', '1125', '112503', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(218, 'Botolan', NULL, '03', '0371', '037101', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(219, 'Braulio E. Dujali', NULL, '11', '1123', '112323', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(220, 'Brooke\'S Point', NULL, '17', '1753', '175306', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(221, 'Buadiposo-Buntong', NULL, '15', '1536', '153633', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(222, 'Bubong', NULL, '15', '1536', '153606', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(223, 'Bucay', NULL, '14', '1401', '140103', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(224, 'Bucloc', NULL, '14', '1401', '140104', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(225, 'Buenavista', NULL, '04', '0456', '045605', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(226, 'Bugallon', NULL, '01', '0155', '015515', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(227, 'Bugasong', NULL, '06', '0606', '060604', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(228, 'Buguey', NULL, '02', '0215', '021508', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(229, 'Buguias', NULL, '14', '1411', '141105', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(230, 'Buhi', NULL, '05', '0517', '051705', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(231, 'Bula', NULL, '05', '0517', '051706', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(232, 'Bulacan', NULL, '03', '0314', '031405', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(233, 'Bulalacao (San Pedro)', NULL, '17', '1752', '175204', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(234, 'Bulan', NULL, '05', '0562', '056203', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(235, 'Buldon', NULL, '15', '1538', '153802', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(236, 'Buluan', NULL, '15', '1538', '153803', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(237, 'Bulusan', NULL, '05', '0562', '056204', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(238, 'Bumbaran', NULL, '15', '1536', '153637', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(239, 'Bunawan', NULL, '16', '1603', '160302', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(240, 'Burauen', NULL, '08', '0837', '083710', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(241, 'Burdeos', NULL, '04', '0456', '045606', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(242, 'Burgos', NULL, '01', '0128', '012806', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(243, 'Buruanga', NULL, '06', '0604', '060405', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(244, 'Bustos', NULL, '03', '0314', '031406', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(245, 'Busuanga', NULL, '17', '1753', '175307', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(246, 'Butig', NULL, '15', '1536', '153607', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(247, 'Butuan City (Capital)', NULL, '16', '1602', '160202', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(248, 'Buug', NULL, '09', '0983', '098302', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(249, 'Caba', NULL, '01', '0133', '013309', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(250, 'Cabagan', NULL, '02', '0231', '023106', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(251, 'Cabanatuan City', NULL, '03', '0349', '034903', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(252, 'Cabangan', NULL, '03', '0371', '037102', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(253, 'Cabanglasan', NULL, '10', '1013', '101322', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(254, 'Cabarroguis (Capital)', NULL, '02', '0257', '025702', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(255, 'Cabatuan', NULL, '02', '0231', '023107', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(256, 'Cabiao', NULL, '03', '0349', '034904', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(257, 'Cabucgayan', NULL, '08', '0878', '087803', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(258, 'Cabugao', NULL, '01', '0129', '012905', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(259, 'Cabusao', NULL, '05', '0517', '051707', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(260, 'Cabuyao City', NULL, '04', '0434', '043404', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(261, 'Cadiz City', NULL, '06', '0645', '064504', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(262, 'Cagayan De Oro City (Capital)', NULL, '10', '1043', '104305', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(263, 'Cagayancillo', NULL, '17', '1753', '175308', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(264, 'Cagdianao', NULL, '16', '1685', '168502', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(265, 'Cagwait', NULL, '16', '1668', '166804', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(266, 'Caibiran', NULL, '08', '0878', '087804', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(267, 'Cainta', NULL, '04', '0458', '045805', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(268, 'Cajidiocan', NULL, '17', '1759', '175903', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(269, 'Calabanga', NULL, '05', '0517', '051708', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(270, 'Calaca', NULL, '04', '0410', '041007', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(271, 'Calamba', NULL, '10', '1042', '104204', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(272, 'Calanasan (Bayag)', NULL, '14', '1481', '148101', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(273, 'Calanogas', NULL, '15', '1536', '153632', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(274, 'Calape', NULL, '07', '0712', '071210', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(275, 'Calasiao', NULL, '01', '0155', '015517', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(276, 'Calatagan', NULL, '04', '0410', '041008', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(277, 'Calatrava', NULL, '17', '1759', '175904', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(278, 'Calauag', NULL, '04', '0456', '045607', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(279, 'Calauan', NULL, '04', '0434', '043406', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(280, 'Calayan', NULL, '02', '0215', '021509', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(281, 'Calbayog City', NULL, '08', '0860', '086003', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(282, 'Calbiga', NULL, '08', '0860', '086004', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(283, 'Calinog', NULL, '06', '0630', '063013', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(284, 'Calintaan', NULL, '17', '1751', '175102', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(285, 'Caloocan City', NULL, '13', '1375', '137501', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(286, 'Calubian', NULL, '08', '0837', '083713', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(287, 'Calumpit', NULL, '03', '0314', '031407', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(288, 'Caluya', NULL, '06', '0606', '060605', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(289, 'Camalaniugan', NULL, '02', '0215', '021510', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(290, 'Camalig', NULL, '05', '0505', '050502', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(291, 'Camaligan', NULL, '05', '0517', '051709', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(292, 'Camiling', NULL, '03', '0369', '036903', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(293, 'Canaman', NULL, '05', '0517', '051710', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(294, 'Can-Avid', NULL, '08', '0826', '082605', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(295, 'Candaba', NULL, '03', '0354', '035405', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(296, 'Candelaria', NULL, '03', '0371', '037103', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(297, 'Candijay', NULL, '07', '0712', '071211', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(298, 'Candoni', NULL, '06', '0645', '064506', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(299, 'Canlaon City', NULL, '07', '0746', '074608', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(300, 'Cantilan', NULL, '16', '1668', '166805', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(301, 'Caoayan', NULL, '01', '0129', '012907', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(302, 'Capalonga', NULL, '05', '0516', '051602', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(303, 'Capas', NULL, '03', '0369', '036904', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(304, 'Capoocan', NULL, '08', '0837', '083714', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(305, 'Capul', NULL, '08', '0848', '084804', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(306, 'Caraga', NULL, '11', '1125', '112504', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(307, 'Caramoan', NULL, '05', '0517', '051711', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(308, 'Caramoran', NULL, '05', '0520', '052004', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(309, 'Carasi', NULL, '01', '0128', '012807', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(310, 'Cardona', NULL, '04', '0458', '045806', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(311, 'Carigara', NULL, '08', '0837', '083715', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(312, 'Carles', NULL, '06', '0630', '063014', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(313, 'Carmen', NULL, '07', '0712', '071212', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(314, 'Carmona', NULL, '04', '0421', '042104', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(315, 'Carranglan', NULL, '03', '0349', '034905', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(316, 'Carrascal', NULL, '16', '1668', '166807', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(317, 'Casiguran', NULL, '03', '0377', '037702', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(318, 'Castilla', NULL, '05', '0562', '056206', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(319, 'Castillejos', NULL, '03', '0371', '037104', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(320, 'Cataingan', NULL, '05', '0541', '054105', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(321, 'Catanauan', NULL, '04', '0456', '045610', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(322, 'Catarman', NULL, '10', '1018', '101801', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(323, 'Catarman (Capital)', NULL, '08', '0848', '084805', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(324, 'Cateel', NULL, '11', '1125', '112505', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(325, 'Catigbian', NULL, '07', '0712', '071213', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(326, 'Catmon', NULL, '07', '0722', '072216', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(327, 'Catubig', NULL, '08', '0848', '084806', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(328, 'Cauayan', NULL, '06', '0645', '064507', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(329, 'Cavinti', NULL, '04', '0434', '043407', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(330, 'Cavite City', NULL, '04', '0421', '042105', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(331, 'Cawayan', NULL, '05', '0541', '054106', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(332, 'Cebu City (Capital)', NULL, '07', '0722', '072217', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(333, 'Cervantes', NULL, '01', '0129', '012908', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(334, 'City Of Alaminos', NULL, '01', '0155', '015503', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(335, 'City Of Antipolo', NULL, '04', '0458', '045802', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(336, 'City Of Balanga (Capital)', NULL, '03', '0308', '030803', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(337, 'City Of Batac', NULL, '01', '0128', '012805', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(338, 'City Of Bayawan (Tulong)', NULL, '07', '0746', '074606', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(339, 'City Of Baybay', NULL, '08', '0837', '083708', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(340, 'City Of Bayugan', NULL, '16', '1603', '160301', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(341, 'City Of Biñan', NULL, '04', '0434', '043403', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(342, 'City Of Bislig', NULL, '16', '1668', '166803', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(343, 'City Of Bogo', NULL, '07', '0722', '072211', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(344, 'City Of Borongan (Capital)', NULL, '08', '0826', '082604', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(345, 'City Of Cabadbaran', NULL, '16', '1602', '160203', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(346, 'City Of Calamba', NULL, '04', '0434', '043405', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(347, 'City Of Calapan (Capital)', NULL, '17', '1752', '175205', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(348, 'City Of Candon', NULL, '01', '0129', '012906', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(349, 'City Of Carcar', NULL, '07', '0722', '072214', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(350, 'City Of Catbalogan (Capital)', NULL, '08', '0860', '086005', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(351, 'City Of Cauayan', NULL, '02', '0231', '023108', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(352, 'City Of Dasmariñas', NULL, '04', '0421', '042106', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(353, 'City Of Digos (Capital)', NULL, '11', '1124', '112403', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(354, 'City Of El Salvador', NULL, '10', '1043', '104307', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(355, 'City Of Escalante', NULL, '06', '0645', '064509', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(356, 'City Of Gapan', NULL, '03', '0349', '034908', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(357, 'City Of Guihulngan', NULL, '07', '0746', '074611', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(358, 'City Of Himamaylan', NULL, '06', '0645', '064510', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(359, 'City Of Isabela', NULL, '09', '0997', '099701', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(360, 'City Of Kabankalan', NULL, '06', '0645', '064515', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(361, 'City Of Kidapawan (Capital)', NULL, '12', '1247', '124704', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(362, 'City Of Koronadal (Capital)', NULL, '12', '1263', '126306', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(363, 'City Of Lamitan', NULL, '15', '1507', '150702', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(364, 'City Of Las Piñas', NULL, '13', '1376', '137601', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(365, 'City Of Ligao', NULL, '05', '0505', '050508', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(366, 'City Of Maasin (Capital)', NULL, '08', '0864', '086407', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(367, 'City Of Makati', NULL, '13', '1376', '137602', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(368, 'City Of Malabon', NULL, '13', '1375', '137502', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(369, 'City Of Malaybalay (Capital)', NULL, '10', '1013', '101312', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(370, 'City Of Malolos (Capital)', NULL, '03', '0314', '031410', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(371, 'City Of Mandaluyong', NULL, '13', '1374', '137401', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(372, 'City Of Marikina', NULL, '13', '1374', '137402', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(373, 'City Of Masbate (Capital)', NULL, '05', '0541', '054111', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(374, 'City Of Mati (Capital)', NULL, '11', '1125', '112509', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(375, 'City Of Meycauayan', NULL, '03', '0314', '031412', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(376, 'City Of Muntinlupa', NULL, '13', '1376', '137603', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(377, 'City Of Naga', NULL, '07', '0722', '072234', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(378, 'City Of Navotas', NULL, '13', '1375', '137503', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(379, 'City Of Panabo', NULL, '11', '1123', '112315', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(380, 'City Of Parañaque', NULL, '13', '1376', '137604', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(381, 'City Of Pasig', NULL, '13', '1374', '137403', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(382, 'City Of Passi', NULL, '06', '0630', '063035', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(383, 'City Of San Fernando (Capital)', NULL, '01', '0133', '013314', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(384, 'City Of San Jose Del Monte', NULL, '03', '0314', '031420', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(385, 'City Of San Juan', NULL, '13', '1374', '137405', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(386, 'City Of San Pedro', NULL, '04', '0434', '043425', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(387, 'City Of Santa Rosa', NULL, '04', '0434', '043428', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(388, 'City Of Santiago', NULL, '02', '0231', '023135', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(389, 'City Of Sipalay', NULL, '06', '0645', '064527', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(390, 'City Of Sorsogon (Capital)', NULL, '05', '0562', '056216', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(391, 'City Of Tabaco', NULL, '05', '0505', '050517', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(392, 'City Of Tabuk (Capital)', NULL, '14', '1432', '143213', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(393, 'City Of Tacurong', NULL, '12', '1265', '126511', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(394, 'City Of Tagum (Capital)', NULL, '11', '1123', '112319', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(395, 'City Of Talisay', NULL, '06', '0645', '064528', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(396, 'City Of Tanauan', NULL, '04', '0410', '041031', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(397, 'City Of Tandag (Capital)', NULL, '16', '1668', '166819', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(398, 'City Of Tanjay', NULL, '07', '0746', '074621', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(399, 'City Of Tarlac (Capital)', NULL, '03', '0369', '036916', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(400, 'City Of Tayabas', NULL, '04', '0456', '045647', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(401, 'City Of Urdaneta', NULL, '01', '0155', '015546', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(402, 'City Of Valencia', NULL, '10', '1013', '101321', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(403, 'City Of Valenzuela', NULL, '13', '1375', '137504', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(404, 'City Of Victorias', NULL, '06', '0645', '064531', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(405, 'City Of Vigan (Capital)', NULL, '01', '0129', '012934', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(406, 'Clarin', NULL, '07', '0712', '071214', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(407, 'Claver', NULL, '16', '1667', '166706', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(408, 'Claveria', NULL, '02', '0215', '021511', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(409, 'Columbio', NULL, '12', '1265', '126502', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(410, 'Compostela', NULL, '07', '0722', '072218', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(411, 'Concepcion', NULL, '03', '0369', '036905', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(412, 'Conner', NULL, '14', '1481', '148102', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(413, 'Consolacion', NULL, '07', '0722', '072219', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(414, 'Corcuera', NULL, '17', '1759', '175906', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(415, 'Cordon', NULL, '02', '0231', '023109', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(416, 'Cordova', NULL, '07', '0722', '072220', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(417, 'Corella', NULL, '07', '0712', '071215', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(418, 'Coron', NULL, '17', '1753', '175309', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(419, 'Cortes', NULL, '07', '0712', '071216', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(420, 'Cotabato City', NULL, '12', '1298', '129804', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(421, 'Cuartero', NULL, '06', '0619', '061901', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(422, 'Cuenca', NULL, '04', '0410', '041009', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(423, 'Culaba', NULL, '08', '0878', '087805', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(424, 'Culasi', NULL, '06', '0606', '060606', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(425, 'Culion', NULL, '17', '1753', '175322', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(426, 'Currimao', NULL, '01', '0128', '012808', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(427, 'Cuyapo', NULL, '03', '0349', '034906', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(428, 'Cuyo', NULL, '17', '1753', '175310', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(429, 'Daanbantayan', NULL, '07', '0722', '072221', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(430, 'Daet (Capital)', NULL, '05', '0516', '051603', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(431, 'Dagami', NULL, '08', '0837', '083717', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(432, 'Dagohoy', NULL, '07', '0712', '071217', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(433, 'Daguioman', NULL, '14', '1401', '140105', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(434, 'Dagupan City', NULL, '01', '0155', '015518', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(435, 'Dalaguete', NULL, '07', '0722', '072222', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(436, 'Damulog', NULL, '10', '1013', '101302', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(437, 'Danao', NULL, '07', '0712', '071218', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(438, 'Danao City', NULL, '07', '0722', '072223', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(439, 'Dangcagan', NULL, '10', '1013', '101303', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(440, 'Danglas', NULL, '14', '1401', '140106', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(441, 'Dao', NULL, '06', '0619', '061902', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(442, 'Dapa', NULL, '16', '1667', '166707', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(443, 'Dapitan City', NULL, '09', '0972', '097201', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` (`id`, `name`, `description`, `region_code`, `province_code`, `city_code`, `country_code`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(444, 'Daraga (Locsin)', NULL, '05', '0505', '050503', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(445, 'Daram', NULL, '08', '0860', '086006', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(446, 'Dasol', NULL, '01', '0155', '015519', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(447, 'Datu Abdullah Sangki', NULL, '15', '1538', '153828', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(448, 'Datu Anggal Midtimbang', NULL, '15', '1538', '153831', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(449, 'Datu Blah T. Sinsuat', NULL, '15', '1538', '153830', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(450, 'Datu Hoffer Ampatuan', NULL, '15', '1538', '153835', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(451, 'Datu Odin Sinsuat (Dinaig)', NULL, '15', '1538', '153807', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(452, 'Datu Paglas', NULL, '15', '1538', '153805', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(453, 'Datu Piang', NULL, '15', '1538', '153806', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(454, 'Datu Salibo', NULL, '15', '1538', '153836', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(455, 'Datu Saudi-Ampatuan', NULL, '15', '1538', '153826', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(456, 'Datu Unsay', NULL, '15', '1538', '153827', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(457, 'Dauin', NULL, '07', '0746', '074609', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(458, 'Dauis', NULL, '07', '0712', '071219', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(459, 'Davao City', NULL, '11', '1124', '112402', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(460, 'Del Carmen', NULL, '16', '1667', '166708', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(461, 'Del Gallego', NULL, '05', '0517', '051712', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(462, 'Delfin Albano (Magsaysay)', NULL, '02', '0231', '023118', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(463, 'Diadi', NULL, '02', '0250', '025006', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(464, 'Diffun', NULL, '02', '0257', '025703', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(465, 'Dilasag', NULL, '03', '0377', '037703', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(466, 'Dimasalang', NULL, '05', '0541', '054108', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(467, 'Dimataling', NULL, '09', '0973', '097305', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(468, 'Dimiao', NULL, '07', '0712', '071220', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(469, 'Dinagat', NULL, '16', '1685', '168503', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(470, 'Dinalungan', NULL, '03', '0377', '037704', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(471, 'Dinalupihan', NULL, '03', '0308', '030804', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(472, 'Dinapigue', NULL, '02', '0231', '023110', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(473, 'Dinas', NULL, '09', '0973', '097306', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(474, 'Dingalan', NULL, '03', '0377', '037705', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(475, 'Dingle', NULL, '06', '0630', '063016', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(476, 'Dingras', NULL, '01', '0128', '012809', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(477, 'Dipaculao', NULL, '03', '0377', '037706', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(478, 'Diplahan', NULL, '09', '0983', '098303', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(479, 'Dipolog City (Capital)', NULL, '09', '0972', '097202', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(480, 'Ditsaan-Ramain', NULL, '15', '1536', '153624', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(481, 'Divilacan', NULL, '02', '0231', '023111', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(482, 'Dolores', NULL, '04', '0456', '045615', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(483, 'Don Carlos', NULL, '10', '1013', '101304', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(484, 'Don Marcelino', NULL, '11', '1186', '118601', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(485, 'Don Victoriano Chiongbian  (Don Mariano Marcos)', NULL, '10', '1042', '104217', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(486, 'Doña Remedios Trinidad', NULL, '03', '0314', '031424', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(487, 'Donsol', NULL, '05', '0562', '056207', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(488, 'Dueñas', NULL, '06', '0630', '063017', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(489, 'Duero', NULL, '07', '0712', '071221', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(490, 'Dulag', NULL, '08', '0837', '083718', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(491, 'Dumaguete City (Capital)', NULL, '07', '0746', '074610', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(492, 'Dumalag', NULL, '06', '0619', '061903', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(493, 'Dumalinao', NULL, '09', '0973', '097307', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(494, 'Dumalneg', NULL, '01', '0128', '012810', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(495, 'Dumangas', NULL, '06', '0630', '063018', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(496, 'Dumanjug', NULL, '07', '0722', '072224', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(497, 'Dumaran', NULL, '17', '1753', '175311', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(498, 'Dumarao', NULL, '06', '0619', '061904', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(499, 'Dumingag', NULL, '09', '0973', '097308', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(500, 'Dupax Del Norte', NULL, '02', '0250', '025007', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(501, 'Dupax Del Sur', NULL, '02', '0250', '025008', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(502, 'Echague', NULL, '02', '0231', '023112', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(503, 'El Nido (Bacuit)', NULL, '17', '1753', '175312', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(504, 'Enrile', NULL, '02', '0215', '021512', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(505, 'Enrique B. Magalona (Saravia)', NULL, '06', '0645', '064508', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(506, 'Enrique Villanueva', NULL, '07', '0761', '076101', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(507, 'Ermita', NULL, '13', '1339', '133908', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(508, 'Esperanza', NULL, '05', '0541', '054109', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(509, 'Estancia', NULL, '06', '0630', '063019', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(510, 'Famy', NULL, '04', '0434', '043408', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(511, 'Ferrol', NULL, '17', '1759', '175916', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(512, 'Flora', NULL, '14', '1481', '148103', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(513, 'Floridablanca', NULL, '03', '0354', '035406', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(514, 'Gabaldon (Bitulok & Sabani)', NULL, '03', '0349', '034907', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(515, 'Gainza', NULL, '05', '0517', '051713', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(516, 'Galimuyod', NULL, '01', '0129', '012909', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(517, 'Gamay', NULL, '08', '0848', '084807', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(518, 'Gamu', NULL, '02', '0231', '023113', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(519, 'Ganassi', NULL, '15', '1536', '153609', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(520, 'Gandara', NULL, '08', '0860', '086007', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(521, 'Garchitorena', NULL, '05', '0517', '051714', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(522, 'Garcia Hernandez', NULL, '07', '0712', '071222', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(523, 'Gasan', NULL, '17', '1740', '174003', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(524, 'Gattaran', NULL, '02', '0215', '021513', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(525, 'Gen. Mariano Alvarez', NULL, '04', '0421', '042123', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(526, 'Gen. S. K. Pendatun', NULL, '15', '1538', '153819', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(527, 'General Emilio Aguinaldo', NULL, '04', '0421', '042107', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(528, 'General Luna', NULL, '04', '0456', '045616', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(529, 'General Macarthur', NULL, '08', '0826', '082607', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(530, 'General Mamerto Natividad', NULL, '03', '0349', '034909', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(531, 'General Nakar', NULL, '04', '0456', '045617', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(532, 'General Santos City (Dadiangas)', NULL, '12', '1263', '126303', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(533, 'General Tinio (Papaya)', NULL, '03', '0349', '034910', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(534, 'General Trias', NULL, '04', '0421', '042108', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(535, 'Gerona', NULL, '03', '0369', '036906', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(536, 'Gigaquit', NULL, '16', '1667', '166711', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(537, 'Gigmoto', NULL, '05', '0520', '052005', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(538, 'Ginatilan', NULL, '07', '0722', '072225', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(539, 'Gingoog City', NULL, '10', '1043', '104308', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(540, 'Giporlos', NULL, '08', '0826', '082608', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(541, 'Gitagum', NULL, '10', '1043', '104309', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(542, 'Glan', NULL, '12', '1280', '128002', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(543, 'Gloria', NULL, '17', '1752', '175206', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(544, 'Goa', NULL, '05', '0517', '051715', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(545, 'Godod', NULL, '09', '0972', '097225', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(546, 'Gonzaga', NULL, '02', '0215', '021514', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(547, 'Governor Generoso', NULL, '11', '1125', '112506', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(548, 'Gregorio Del Pilar (Concepcion)', NULL, '01', '0129', '012910', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(549, 'Guagua', NULL, '03', '0354', '035407', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(550, 'Gubat', NULL, '05', '0562', '056208', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(551, 'Guiguinto', NULL, '03', '0314', '031408', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(552, 'Guimba', NULL, '03', '0349', '034911', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(553, 'Guimbal', NULL, '06', '0630', '063020', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(554, 'Guinayangan', NULL, '04', '0456', '045618', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(555, 'Guindulman', NULL, '07', '0712', '071223', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(556, 'Guindulungan', NULL, '15', '1538', '153825', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(557, 'Guinobatan', NULL, '05', '0505', '050504', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(558, 'Guinsiliban', NULL, '10', '1018', '101802', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(559, 'Guipos', NULL, '09', '0973', '097343', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(560, 'Guiuan', NULL, '08', '0826', '082609', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(561, 'Gumaca', NULL, '04', '0456', '045619', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(562, 'Gutalac', NULL, '09', '0972', '097223', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(563, 'Hadji Mohammad Ajul', NULL, '15', '1507', '150710', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(564, 'Hadji Muhtamad', NULL, '15', '1507', '150712', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(565, 'Hadji Panglima Tahil (Marunggas)', NULL, '15', '1566', '156606', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(566, 'Hagonoy', NULL, '03', '0314', '031409', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(567, 'Hamtic', NULL, '06', '0606', '060608', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(568, 'Hermosa', NULL, '03', '0308', '030805', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(569, 'Hernani', NULL, '08', '0826', '082610', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(570, 'Hilongos', NULL, '08', '0837', '083719', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(571, 'Hinabangan', NULL, '08', '0860', '086008', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(572, 'Hinatuan', NULL, '16', '1668', '166809', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(573, 'Hindang', NULL, '08', '0837', '083720', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(574, 'Hingyon', NULL, '14', '1427', '142709', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(575, 'Hinigaran', NULL, '06', '0645', '064511', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(576, 'Hinoba-An (Asia)', NULL, '06', '0645', '064512', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(577, 'Hinunangan', NULL, '08', '0864', '086403', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(578, 'Hinundayan', NULL, '08', '0864', '086404', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(579, 'Hungduan', NULL, '14', '1427', '142702', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(580, 'Iba (Capital)', NULL, '03', '0371', '037105', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(581, 'Ibaan', NULL, '04', '0410', '041010', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(582, 'Ibajay', NULL, '06', '0604', '060406', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(583, 'Igbaras', NULL, '06', '0630', '063021', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(584, 'Iguig', NULL, '02', '0215', '021515', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(585, 'Ilagan City (Capital)', NULL, '02', '0231', '023114', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(586, 'Iligan City', NULL, '10', '1035', '103504', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(587, 'Ilog', NULL, '06', '0645', '064513', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(588, 'Iloilo City (Capital)', NULL, '06', '0630', '063022', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(589, 'Imelda', NULL, '09', '0983', '098304', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(590, 'Impasug-Ong', NULL, '10', '1013', '101305', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(591, 'Imus City', NULL, '04', '0421', '042109', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(592, 'Inabanga', NULL, '07', '0712', '071224', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(593, 'Indanan', NULL, '15', '1566', '156601', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(594, 'Indang', NULL, '04', '0421', '042110', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(595, 'Infanta', NULL, '01', '0155', '015520', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(596, 'Initao', NULL, '10', '1043', '104310', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(597, 'Inopacan', NULL, '08', '0837', '083721', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(598, 'Intramuros', NULL, '13', '1339', '133909', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(599, 'Ipil (Capital)', NULL, '09', '0983', '098305', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(600, 'Iriga City', NULL, '05', '0517', '051716', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(601, 'Irosin', NULL, '05', '0562', '056209', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(602, 'Isabel', NULL, '08', '0837', '083722', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(603, 'Isabela', NULL, '06', '0645', '064514', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(604, 'Island Garden City Of Samal', NULL, '11', '1123', '112317', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(605, 'Isulan (Capital)', NULL, '12', '1265', '126504', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(606, 'Itbayat', NULL, '02', '0209', '020902', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(607, 'Itogon', NULL, '14', '1411', '141106', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(608, 'Ivana', NULL, '02', '0209', '020903', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(609, 'Ivisan', NULL, '06', '0619', '061905', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(610, 'Jabonga', NULL, '16', '1602', '160205', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(611, 'Jaen', NULL, '03', '0349', '034912', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(612, 'Jagna', NULL, '07', '0712', '071225', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(613, 'Jala-Jala', NULL, '04', '0458', '045807', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(614, 'Jamindan', NULL, '06', '0619', '061906', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(615, 'Janiuay', NULL, '06', '0630', '063023', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(616, 'Jaro', NULL, '08', '0837', '083723', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(617, 'Jasaan', NULL, '10', '1043', '104311', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(618, 'Javier (Bugho)', NULL, '08', '0837', '083724', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(619, 'Jetafe', NULL, '07', '0712', '071226', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(620, 'Jiabong', NULL, '08', '0860', '086009', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(621, 'Jimalalud', NULL, '07', '0746', '074612', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(622, 'Jimenez', NULL, '10', '1042', '104207', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(623, 'Jipapad', NULL, '08', '0826', '082611', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(624, 'Jolo (Capital)', NULL, '15', '1566', '156602', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(625, 'Jomalig', NULL, '04', '0456', '045621', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(626, 'Jones', NULL, '02', '0231', '023115', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(627, 'Jordan (Capital)', NULL, '06', '0679', '067902', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(628, 'Jose Abad Santos (Trinidad)', NULL, '11', '1186', '118602', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(629, 'Jose Dalman (Ponot)', NULL, '09', '0972', '097222', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(630, 'Jose Panganiban', NULL, '05', '0516', '051605', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(631, 'Josefina', NULL, '09', '0973', '097337', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(632, 'Jovellar', NULL, '05', '0505', '050505', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(633, 'Juban', NULL, '05', '0562', '056210', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(634, 'Julita', NULL, '08', '0837', '083725', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(635, 'Kabacan', NULL, '12', '1247', '124703', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(636, 'Kabasalan', NULL, '09', '0983', '098306', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(637, 'Kabayan', NULL, '14', '1411', '141107', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(638, 'Kabugao (Capital)', NULL, '14', '1481', '148104', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(639, 'Kabuntalan (Tumbao)', NULL, '15', '1538', '153814', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(640, 'Kadingilan', NULL, '10', '1013', '101306', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(641, 'Kalamansig', NULL, '12', '1265', '126505', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(642, 'Kalawit', NULL, '09', '0972', '097227', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(643, 'Kalayaan', NULL, '04', '0434', '043409', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(644, 'Kalibo (Capital)', NULL, '06', '0604', '060407', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(645, 'Kalilangan', NULL, '10', '1013', '101307', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(646, 'Kalingalan Caluang', NULL, '15', '1566', '156603', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(647, 'Kananga', NULL, '08', '0837', '083726', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(648, 'Kapai', NULL, '15', '1536', '153610', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(649, 'Kapalong', NULL, '11', '1123', '112305', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(650, 'Kapangan', NULL, '14', '1411', '141108', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(651, 'Kapatagan', NULL, '10', '1035', '103505', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(652, 'Kasibu', NULL, '02', '0250', '025009', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(653, 'Katipunan', NULL, '09', '0972', '097203', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(654, 'Kauswagan', NULL, '10', '1035', '103507', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(655, 'Kawayan', NULL, '08', '0878', '087806', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(656, 'Kawit', NULL, '04', '0421', '042111', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(657, 'Kayapa', NULL, '02', '0250', '025010', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(658, 'Kiamba', NULL, '12', '1280', '128003', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(659, 'Kiangan', NULL, '14', '1427', '142703', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(660, 'Kibawe', NULL, '10', '1013', '101308', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(661, 'Kiblawan', NULL, '11', '1124', '112406', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(662, 'Kibungan', NULL, '14', '1411', '141109', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(663, 'Kinoguitan', NULL, '10', '1043', '104312', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(664, 'Kitaotao', NULL, '10', '1013', '101309', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(665, 'Kitcharao', NULL, '16', '1602', '160206', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(666, 'Kolambugan', NULL, '10', '1035', '103508', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(667, 'Kumalarang', NULL, '09', '0973', '097311', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(668, 'La Carlota City', NULL, '06', '0645', '064516', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(669, 'La Castellana', NULL, '06', '0645', '064517', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(670, 'La Libertad', NULL, '07', '0746', '074613', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(671, 'La Paz', NULL, '03', '0369', '036907', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(672, 'La Trinidad (Capital)', NULL, '14', '1411', '141110', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(673, 'Laak (San Vicente)', NULL, '11', '1182', '118202', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(674, 'Labangan', NULL, '09', '0973', '097312', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(675, 'Labason', NULL, '09', '0972', '097205', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(676, 'Labo', NULL, '05', '0516', '051606', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(677, 'Labrador', NULL, '01', '0155', '015521', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(678, 'Lacub', NULL, '14', '1401', '140109', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(679, 'Lagangilang', NULL, '14', '1401', '140110', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(680, 'Lagawe (Capital)', NULL, '14', '1427', '142704', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(681, 'Lagayan', NULL, '14', '1401', '140111', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(682, 'Lagonglong', NULL, '10', '1043', '104313', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(683, 'Lagonoy', NULL, '05', '0517', '051717', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(684, 'Laguindingan', NULL, '10', '1043', '104314', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(685, 'Lake Sebu', NULL, '12', '1263', '126319', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(686, 'Lakewood', NULL, '09', '0973', '097333', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(687, 'Lala', NULL, '10', '1035', '103509', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(688, 'Lal-Lo', NULL, '02', '0215', '021516', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(689, 'Lambayong (Mariano Marcos)', NULL, '12', '1265', '126508', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(690, 'Lambunao', NULL, '06', '0630', '063025', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(691, 'Lamut', NULL, '14', '1427', '142705', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(692, 'Langiden', NULL, '14', '1401', '140112', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(693, 'Languyan', NULL, '15', '1570', '157009', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(694, 'Lantapan', NULL, '10', '1013', '101310', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(695, 'Lantawan', NULL, '15', '1507', '150703', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(696, 'Lanuza', NULL, '16', '1668', '166810', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(697, 'Laoac', NULL, '01', '0155', '015548', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(698, 'Laoag City (Capital)', NULL, '01', '0128', '012812', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(699, 'Laoang', NULL, '08', '0848', '084808', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(700, 'Lapinig', NULL, '08', '0848', '084809', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(701, 'Lapu-Lapu City (Opon)', NULL, '07', '0722', '072226', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(702, 'Lapuyan', NULL, '09', '0973', '097313', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(703, 'Larena', NULL, '07', '0761', '076102', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(704, 'Las Navas', NULL, '08', '0848', '084810', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(705, 'Las Nieves', NULL, '16', '1602', '160207', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(706, 'Lasam', NULL, '02', '0215', '021517', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(707, 'Laua-An', NULL, '06', '0606', '060609', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(708, 'Laur', NULL, '03', '0349', '034913', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(709, 'Laurel', NULL, '04', '0410', '041011', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(710, 'Lavezares', NULL, '08', '0848', '084811', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(711, 'Lawaan', NULL, '08', '0826', '082612', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(712, 'Lazi', NULL, '07', '0761', '076103', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(713, 'Lebak', NULL, '12', '1265', '126506', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(714, 'Leganes', NULL, '06', '0630', '063026', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(715, 'Legazpi City (Capital)', NULL, '05', '0505', '050506', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(716, 'Lemery', NULL, '04', '0410', '041012', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(717, 'Leon', NULL, '06', '0630', '063028', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(718, 'Leyte', NULL, '08', '0837', '083729', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(719, 'Lezo', NULL, '06', '0604', '060408', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(720, 'Lian', NULL, '04', '0410', '041013', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(721, 'Lianga', NULL, '16', '1668', '166811', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(722, 'Libacao', NULL, '06', '0604', '060409', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(723, 'Libagon', NULL, '08', '0864', '086405', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(724, 'Libertad', NULL, '06', '0606', '060610', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(725, 'Libjo (Albor)', NULL, '16', '1685', '168504', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(726, 'Libmanan', NULL, '05', '0517', '051718', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(727, 'Libon', NULL, '05', '0505', '050507', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(728, 'Libona', NULL, '10', '1013', '101311', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(729, 'Libungan', NULL, '12', '1247', '124705', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(730, 'Licab', NULL, '03', '0349', '034914', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(731, 'Licuan-Baay (Licuan)', NULL, '14', '1401', '140113', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(732, 'Lidlidda', NULL, '01', '0129', '012911', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(733, 'Lila', NULL, '07', '0712', '071227', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(734, 'Liliw', NULL, '04', '0434', '043410', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(735, 'Liloan', NULL, '07', '0722', '072227', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(736, 'Liloy', NULL, '09', '0972', '097206', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(737, 'Limasawa', NULL, '08', '0864', '086419', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(738, 'Limay', NULL, '03', '0308', '030806', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(739, 'Linamon', NULL, '10', '1035', '103510', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(740, 'Linapacan', NULL, '17', '1753', '175313', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(741, 'Lingayen (Capital)', NULL, '01', '0155', '015522', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(742, 'Lingig', NULL, '16', '1668', '166812', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(743, 'Lipa City', NULL, '04', '0410', '041014', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(744, 'Llanera', NULL, '03', '0349', '034915', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(745, 'Llorente', NULL, '08', '0826', '082613', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(746, 'Loay', NULL, '07', '0712', '071228', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(747, 'Lobo', NULL, '04', '0410', '041015', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(748, 'Loboc', NULL, '07', '0712', '071229', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(749, 'Looc', NULL, '17', '1751', '175103', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(750, 'Loon', NULL, '07', '0712', '071230', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(751, 'Lope De Vega', NULL, '08', '0848', '084824', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(752, 'Lopez', NULL, '04', '0456', '045622', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(753, 'Lopez Jaena', NULL, '10', '1042', '104208', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(754, 'Loreto', NULL, '16', '1603', '160305', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(755, 'Los Baños', NULL, '04', '0434', '043411', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(756, 'Luba', NULL, '14', '1401', '140114', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(757, 'Lubang', NULL, '17', '1751', '175104', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(758, 'Lubao', NULL, '03', '0354', '035408', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(759, 'Lubuagan', NULL, '14', '1432', '143206', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(760, 'Lucban', NULL, '04', '0456', '045623', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(761, 'Lucena City (Capital)', NULL, '04', '0456', '045624', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(762, 'Lugait', NULL, '10', '1043', '104316', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(763, 'Lugus', NULL, '15', '1566', '156617', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(764, 'Luisiana', NULL, '04', '0434', '043412', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(765, 'Lumba-Bayabao (Maguing)', NULL, '15', '1536', '153611', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(766, 'Lumbaca-Unayan', NULL, '15', '1536', '153641', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(767, 'Lumban', NULL, '04', '0434', '043413', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(768, 'Lumbatan', NULL, '15', '1536', '153612', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(769, 'Lumbayanague', NULL, '15', '1536', '153636', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(770, 'Luna', NULL, '01', '0133', '013310', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(771, 'Lupao', NULL, '03', '0349', '034916', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(772, 'Lupi', NULL, '05', '0517', '051719', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(773, 'Lupon', NULL, '11', '1125', '112507', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(774, 'Lutayan', NULL, '12', '1265', '126507', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(775, 'Luuk', NULL, '15', '1566', '156604', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(776, 'Maasim', NULL, '12', '1280', '128004', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(777, 'Maasin', NULL, '06', '0630', '063029', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(778, 'Ma-Ayon', NULL, '06', '0619', '061907', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(779, 'Mabalacat City', NULL, '03', '0354', '035409', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(780, 'Mabinay', NULL, '07', '0746', '074614', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(781, 'Mabini', NULL, '01', '0155', '015523', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(782, 'Mabini (Doña Alicia)', NULL, '11', '1182', '118203', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(783, 'Mabitac', NULL, '04', '0434', '043414', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(784, 'Mabuhay', NULL, '09', '0983', '098307', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(785, 'Macabebe', NULL, '03', '0354', '035410', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(786, 'Macalelon', NULL, '04', '0456', '045625', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(787, 'Macarthur', NULL, '08', '0837', '083730', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(788, 'Maco', NULL, '11', '1182', '118204', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(789, 'Maconacon', NULL, '02', '0231', '023117', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(790, 'Macrohon', NULL, '08', '0864', '086408', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(791, 'Madalag', NULL, '06', '0604', '060410', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(792, 'Madalum', NULL, '15', '1536', '153613', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(793, 'Madamba', NULL, '15', '1536', '153614', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(794, 'Maddela', NULL, '02', '0257', '025704', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(795, 'Madrid', NULL, '16', '1668', '166813', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(796, 'Madridejos', NULL, '07', '0722', '072228', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(797, 'Magalang', NULL, '03', '0354', '035411', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(798, 'Magallanes', NULL, '04', '0421', '042112', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(799, 'Magarao', NULL, '05', '0517', '051720', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(800, 'Magdalena', NULL, '04', '0434', '043415', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(801, 'Magdiwang', NULL, '17', '1759', '175908', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(802, 'Magpet', NULL, '12', '1247', '124706', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(803, 'Magsaysay', NULL, '17', '1751', '175105', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(804, 'Magsaysay (Linugos)', NULL, '10', '1043', '104317', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(805, 'Magsingal', NULL, '01', '0129', '012912', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(806, 'Maguing', NULL, '15', '1536', '153634', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(807, 'Mahaplag', NULL, '08', '0837', '083731', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(808, 'Mahatao', NULL, '02', '0209', '020904', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(809, 'Mahayag', NULL, '09', '0973', '097315', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(810, 'Mahinog', NULL, '10', '1018', '101803', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(811, 'Maigo', NULL, '10', '1035', '103512', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(812, 'Maimbung', NULL, '15', '1566', '156605', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(813, 'Mainit', NULL, '16', '1667', '166714', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(814, 'Maitum', NULL, '12', '1280', '128005', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(815, 'Majayjay', NULL, '04', '0434', '043416', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(816, 'Makato', NULL, '06', '0604', '060411', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(817, 'Makilala', NULL, '12', '1247', '124707', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(818, 'Malabang', NULL, '15', '1536', '153615', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(819, 'Malabuyoc', NULL, '07', '0722', '072229', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(820, 'Malalag', NULL, '11', '1124', '112408', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(821, 'Malangas', NULL, '09', '0983', '098308', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(822, 'Malapatan', NULL, '12', '1280', '128006', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(823, 'Malasiqui', NULL, '01', '0155', '015524', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(824, 'Malate', NULL, '13', '1339', '133910', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(825, 'Malay', NULL, '06', '0604', '060412', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(826, 'Malibcong', NULL, '14', '1401', '140115', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(827, 'Malilipot', NULL, '05', '0505', '050509', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(828, 'Malimono', NULL, '16', '1667', '166715', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(829, 'Malinao', NULL, '05', '0505', '050510', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(830, 'Malita', NULL, '11', '1186', '118603', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(831, 'Malitbog', NULL, '08', '0864', '086409', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(832, 'Mallig', NULL, '02', '0231', '023119', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(833, 'Malungon', NULL, '12', '1280', '128007', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(834, 'Maluso', NULL, '15', '1507', '150704', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(835, 'Malvar', NULL, '04', '0410', '041017', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(836, 'Mamasapano', NULL, '15', '1538', '153820', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(837, 'Mambajao (Capital)', NULL, '10', '1018', '101804', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(838, 'Mamburao (Capital)', NULL, '17', '1751', '175106', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(839, 'Mambusao', NULL, '06', '0619', '061908', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(840, 'Manabo', NULL, '14', '1401', '140116', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(841, 'Manaoag', NULL, '01', '0155', '015525', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(842, 'Manapla', NULL, '06', '0645', '064518', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(843, 'Manay', NULL, '11', '1125', '112508', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(844, 'Mandaon', NULL, '05', '0541', '054110', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(845, 'Mandaue City', NULL, '07', '0722', '072230', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(846, 'Mangaldan', NULL, '01', '0155', '015526', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(847, 'Mangatarem', NULL, '01', '0155', '015527', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(848, 'Mangudadatu', NULL, '15', '1538', '153832', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(849, 'Manito', NULL, '05', '0505', '050511', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(850, 'Manjuyod', NULL, '07', '0746', '074615', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(851, 'Mankayan', NULL, '14', '1411', '141111', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(852, 'Manolo Fortich', NULL, '10', '1013', '101314', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(853, 'Mansalay', NULL, '17', '1752', '175207', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(854, 'Manticao', NULL, '10', '1043', '104318', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(855, 'Manukan', NULL, '09', '0972', '097207', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(856, 'Mapanas', NULL, '08', '0848', '084812', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(857, 'Mapandan', NULL, '01', '0155', '015528', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(858, 'Mapun (Cagayan De Tawi-Tawi)', NULL, '15', '1570', '157003', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(859, 'Marabut', NULL, '08', '0860', '086010', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(860, 'Maragondon', NULL, '04', '0421', '042113', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(861, 'Maragusan (San Mariano)', NULL, '11', '1182', '118205', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(862, 'Maramag', NULL, '10', '1013', '101315', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(863, 'Marantao', NULL, '15', '1536', '153616', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(864, 'Marawi City (Capital)', NULL, '15', '1536', '153617', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(865, 'Marcos', NULL, '01', '0128', '012813', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(866, 'Margosatubig', NULL, '09', '0973', '097317', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(867, 'Maria', NULL, '07', '0761', '076104', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(868, 'Maria Aurora', NULL, '03', '0377', '037707', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(869, 'Maribojoc', NULL, '07', '0712', '071232', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(870, 'Marihatag', NULL, '16', '1668', '166814', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(871, 'Marilao', NULL, '03', '0314', '031411', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(872, 'Maripipi', NULL, '08', '0878', '087807', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(873, 'Mariveles', NULL, '03', '0308', '030807', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(874, 'Marogong', NULL, '15', '1536', '153631', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(875, 'Masantol', NULL, '03', '0354', '035412', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(876, 'Masinloc', NULL, '03', '0371', '037106', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(877, 'Masiu', NULL, '15', '1536', '153618', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(878, 'Maslog', NULL, '08', '0826', '082614', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(879, 'Mataasnakahoy', NULL, '04', '0410', '041018', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(880, 'Matag-Ob', NULL, '08', '0837', '083733', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(881, 'Matalam', NULL, '12', '1247', '124708', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(882, 'Matalom', NULL, '08', '0837', '083734', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(883, 'Matanao', NULL, '11', '1124', '112410', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(884, 'Matanog', NULL, '15', '1538', '153809', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(885, 'Matnog', NULL, '05', '0562', '056212', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(886, 'Matuguinao', NULL, '08', '0860', '086011', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` (`id`, `name`, `description`, `region_code`, `province_code`, `city_code`, `country_code`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(887, 'Matungao', NULL, '10', '1035', '103513', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(888, 'Mauban', NULL, '04', '0456', '045627', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(889, 'Mawab', NULL, '11', '1182', '118206', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(890, 'Mayantoc', NULL, '03', '0369', '036908', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(891, 'Maydolong', NULL, '08', '0826', '082615', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(892, 'Mayorga', NULL, '08', '0837', '083735', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(893, 'Mayoyao', NULL, '14', '1427', '142706', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(894, 'Medellin', NULL, '07', '0722', '072231', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(895, 'Medina', NULL, '10', '1043', '104319', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(896, 'Mendez (Mendez-Nuñez)', NULL, '04', '0421', '042114', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(897, 'Mercedes', NULL, '05', '0516', '051607', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(898, 'Merida', NULL, '08', '0837', '083736', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(899, 'Mexico', NULL, '03', '0354', '035413', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(900, 'Miagao', NULL, '06', '0630', '063030', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(901, 'Midsalip', NULL, '09', '0973', '097318', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(902, 'Midsayap', NULL, '12', '1247', '124709', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(903, 'Milagros', NULL, '05', '0541', '054112', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(904, 'Milaor', NULL, '05', '0517', '051721', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(905, 'Mina', NULL, '06', '0630', '063031', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(906, 'Minalabac', NULL, '05', '0517', '051722', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(907, 'Minalin', NULL, '03', '0354', '035414', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(908, 'Minglanilla', NULL, '07', '0722', '072232', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(909, 'M\'Lang', NULL, '12', '1247', '124710', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(910, 'Moalboal', NULL, '07', '0722', '072233', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(911, 'Mobo', NULL, '05', '0541', '054113', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(912, 'Mogpog', NULL, '17', '1740', '174004', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(913, 'Moises Padilla (Magallon)', NULL, '06', '0645', '064519', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(914, 'Molave', NULL, '09', '0973', '097319', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(915, 'Moncada', NULL, '03', '0369', '036909', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(916, 'Mondragon', NULL, '08', '0848', '084813', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(917, 'Monkayo', NULL, '11', '1182', '118207', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(918, 'Monreal', NULL, '05', '0541', '054114', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(919, 'Montevista', NULL, '11', '1182', '118208', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(920, 'Morong', NULL, '03', '0308', '030808', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(921, 'Motiong', NULL, '08', '0860', '086012', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(922, 'Mulanay', NULL, '04', '0456', '045628', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(923, 'Mulondo', NULL, '15', '1536', '153619', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(924, 'Munai', NULL, '10', '1035', '103514', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(925, 'Murcia', NULL, '06', '0645', '064520', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(926, 'Mutia', NULL, '09', '0972', '097208', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(927, 'Naawan', NULL, '10', '1043', '104320', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(928, 'Nabas', NULL, '06', '0604', '060414', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(929, 'Nabua', NULL, '05', '0517', '051723', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(930, 'Nabunturan (Capital)', NULL, '11', '1182', '118209', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(931, 'Naga', NULL, '09', '0983', '098309', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(932, 'Naga City', NULL, '05', '0517', '051724', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(933, 'Nagbukel', NULL, '01', '0129', '012913', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(934, 'Nagcarlan', NULL, '04', '0434', '043417', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(935, 'Nagtipunan', NULL, '02', '0257', '025706', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(936, 'Naguilian', NULL, '01', '0133', '013311', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(937, 'Naic', NULL, '04', '0421', '042115', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(938, 'Nampicuan', NULL, '03', '0349', '034918', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(939, 'Narra', NULL, '17', '1753', '175315', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(940, 'Narvacan', NULL, '01', '0129', '012914', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(941, 'Nasipit', NULL, '16', '1602', '160209', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(942, 'Nasugbu', NULL, '04', '0410', '041019', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(943, 'Natividad', NULL, '01', '0155', '015529', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(944, 'Natonin', NULL, '14', '1444', '144405', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(945, 'Naujan', NULL, '17', '1752', '175208', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(946, 'Naval (Capital)', NULL, '08', '0878', '087808', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(947, 'New Bataan', NULL, '11', '1182', '118210', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(948, 'New Corella', NULL, '11', '1123', '112314', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(949, 'New Lucena', NULL, '06', '0630', '063032', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(950, 'New Washington', NULL, '06', '0604', '060415', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(951, 'Norala', NULL, '12', '1263', '126311', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(952, 'Northern Kabuntalan', NULL, '15', '1538', '153834', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(953, 'Norzagaray', NULL, '03', '0314', '031413', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(954, 'Noveleta', NULL, '04', '0421', '042116', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(955, 'Nueva Era', NULL, '01', '0128', '012814', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(956, 'Nueva Valencia', NULL, '06', '0679', '067903', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(957, 'Numancia', NULL, '06', '0604', '060416', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(958, 'Nunungan', NULL, '10', '1035', '103515', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(959, 'Oas', NULL, '05', '0505', '050512', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(960, 'Obando', NULL, '03', '0314', '031414', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(961, 'Ocampo', NULL, '05', '0517', '051725', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(962, 'Odiongan', NULL, '17', '1759', '175909', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(963, 'Old Panamao', NULL, '15', '1566', '156607', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(964, 'Olongapo City', NULL, '03', '0371', '037107', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(965, 'Olutanga', NULL, '09', '0983', '098310', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(966, 'Omar', NULL, '15', '1566', '156619', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(967, 'Opol', NULL, '10', '1043', '104321', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(968, 'Orani', NULL, '03', '0308', '030809', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(969, 'Oras', NULL, '08', '0826', '082617', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(970, 'Orion', NULL, '03', '0308', '030810', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(971, 'Ormoc City', NULL, '08', '0837', '083738', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(972, 'Oroquieta City (Capital)', NULL, '10', '1042', '104209', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(973, 'Oslob', NULL, '07', '0722', '072235', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(974, 'Oton', NULL, '06', '0630', '063034', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(975, 'Ozamis City', NULL, '10', '1042', '104210', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(976, 'Paco', NULL, '13', '1339', '133911', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(977, 'Padada', NULL, '11', '1124', '112411', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(978, 'Padre Burgos', NULL, '04', '0456', '045629', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(979, 'Padre Garcia', NULL, '04', '0410', '041020', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(980, 'Paete', NULL, '04', '0434', '043418', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(981, 'Pagadian City (Capital)', NULL, '09', '0973', '097322', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(982, 'Pagagawan', NULL, '15', '1538', '153822', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(983, 'Pagalungan', NULL, '15', '1538', '153810', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(984, 'Pagayawan (Tatarikan)', NULL, '15', '1536', '153620', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(985, 'Pagbilao', NULL, '04', '0456', '045630', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(986, 'Paglat', NULL, '15', '1538', '153823', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(987, 'Pagsanghan', NULL, '08', '0860', '086026', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(988, 'Pagsanjan', NULL, '04', '0434', '043419', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(989, 'Pagudpud', NULL, '01', '0128', '012815', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(990, 'Pakil', NULL, '04', '0434', '043420', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(991, 'Palanan', NULL, '02', '0231', '023121', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(992, 'Palanas', NULL, '05', '0541', '054115', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(993, 'Palapag', NULL, '08', '0848', '084814', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(994, 'Palauig', NULL, '03', '0371', '037108', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(995, 'Palayan City (Capital)', NULL, '03', '0349', '034919', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(996, 'Palimbang', NULL, '12', '1265', '126509', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(997, 'Palo', NULL, '08', '0837', '083739', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(998, 'Palompon', NULL, '08', '0837', '083740', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(999, 'Paluan', NULL, '17', '1751', '175107', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1000, 'Pambujan', NULL, '08', '0848', '084815', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1001, 'Pamplona', NULL, '02', '0215', '021518', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1002, 'Panaon', NULL, '10', '1042', '104211', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1003, 'Panay', NULL, '06', '0619', '061909', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1004, 'Pandacan', NULL, '13', '1339', '133912', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1005, 'Pandag', NULL, '15', '1538', '153833', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1006, 'Pandami', NULL, '15', '1566', '156618', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1007, 'Pandan', NULL, '05', '0520', '052006', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1008, 'Pandi', NULL, '03', '0314', '031415', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1009, 'Panganiban (Payo)', NULL, '05', '0520', '052007', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1010, 'Pangantucan', NULL, '10', '1013', '101316', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1011, 'Pangil', NULL, '04', '0434', '043421', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1012, 'Panglao', NULL, '07', '0712', '071233', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1013, 'Panglima Estino (New Panamao)', NULL, '15', '1566', '156616', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1014, 'Panglima Sugala (Balimbing)', NULL, '15', '1570', '157001', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1015, 'Pangutaran', NULL, '15', '1566', '156608', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1016, 'Paniqui', NULL, '03', '0369', '036910', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1017, 'Panitan', NULL, '06', '0619', '061910', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1018, 'Pantabangan', NULL, '03', '0349', '034920', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1019, 'Pantao Ragat', NULL, '10', '1035', '103516', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1020, 'Pantar', NULL, '10', '1035', '103523', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1021, 'Pantukan', NULL, '11', '1182', '118211', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1022, 'Panukulan', NULL, '04', '0456', '045631', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1023, 'Paoay', NULL, '01', '0128', '012816', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1024, 'Paombong', NULL, '03', '0314', '031416', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1025, 'Paracale', NULL, '05', '0516', '051608', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1026, 'Paracelis', NULL, '14', '1444', '144406', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1027, 'Paranas (Wright)', NULL, '08', '0860', '086022', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1028, 'Parang', NULL, '15', '1538', '153811', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1029, 'Pasacao', NULL, '05', '0517', '051727', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1030, 'Pasay City', NULL, '13', '1376', '137605', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1031, 'Pasil', NULL, '14', '1432', '143208', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1032, 'Pastrana', NULL, '08', '0837', '083741', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1033, 'Pasuquin', NULL, '01', '0128', '012817', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1034, 'Pata', NULL, '15', '1566', '156610', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1035, 'Pateros', NULL, '13', '1376', '137606', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1036, 'Patikul', NULL, '15', '1566', '156611', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1037, 'Patnanungan', NULL, '04', '0456', '045632', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1038, 'Patnongon', NULL, '06', '0606', '060612', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1039, 'Pavia', NULL, '06', '0630', '063036', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1040, 'Payao', NULL, '09', '0983', '098311', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1041, 'Peñablanca', NULL, '02', '0215', '021519', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1042, 'Peñaranda', NULL, '03', '0349', '034921', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1043, 'Peñarrubia', NULL, '14', '1401', '140117', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1044, 'Perez', NULL, '04', '0456', '045633', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1045, 'Piagapo', NULL, '15', '1536', '153621', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1046, 'Piat', NULL, '02', '0215', '021520', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1047, 'Picong (Sultan Gumander)', NULL, '15', '1536', '153635', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1048, 'Piddig', NULL, '01', '0128', '012818', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1049, 'Pidigan', NULL, '14', '1401', '140118', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1050, 'Pigkawayan', NULL, '12', '1247', '124711', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1051, 'Pikit', NULL, '12', '1247', '124712', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1052, 'Pila', NULL, '04', '0434', '043422', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1053, 'Pilar', NULL, '03', '0308', '030811', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1054, 'Pili (Capital)', NULL, '05', '0517', '051728', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1055, 'Pililla', NULL, '04', '0458', '045810', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1056, 'Pinabacdao', NULL, '08', '0860', '086013', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1057, 'Pinamalayan', NULL, '17', '1752', '175209', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1058, 'Pinamungahan', NULL, '07', '0722', '072237', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1059, 'Piñan (New Piñan)', NULL, '09', '0972', '097209', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1060, 'Pinili', NULL, '01', '0128', '012819', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1061, 'Pintuyan', NULL, '08', '0864', '086411', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1062, 'Pinukpuk', NULL, '14', '1432', '143209', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1063, 'Pio Duran', NULL, '05', '0505', '050513', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1064, 'Pio V. Corpuz (Limbuhan)', NULL, '05', '0541', '054116', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1065, 'Pitogo', NULL, '04', '0456', '045634', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1066, 'Placer', NULL, '05', '0541', '054117', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1067, 'Plaridel', NULL, '03', '0314', '031417', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1068, 'Pola', NULL, '17', '1752', '175210', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1069, 'Polanco', NULL, '09', '0972', '097210', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1070, 'Polangui', NULL, '05', '0505', '050514', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1071, 'Polillo', NULL, '04', '0456', '045636', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1072, 'Polomolok', NULL, '12', '1263', '126312', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1073, 'Pontevedra', NULL, '06', '0619', '061912', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1074, 'Poona Bayabao (Gata)', NULL, '15', '1536', '153622', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1075, 'Poona Piagapo', NULL, '10', '1035', '103517', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1076, 'Porac', NULL, '03', '0354', '035415', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1077, 'Poro', NULL, '07', '0722', '072238', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1078, 'Port Area', NULL, '13', '1339', '133913', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1079, 'Pototan', NULL, '06', '0630', '063037', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1080, 'Pozorrubio', NULL, '01', '0155', '015530', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1081, 'Pres. Carlos P. Garcia (Pitogo)', NULL, '07', '0712', '071235', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1082, 'Pres. Manuel A. Roxas', NULL, '09', '0972', '097211', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1083, 'Presentacion (Parubcan)', NULL, '05', '0517', '051729', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1084, 'President Quirino', NULL, '12', '1265', '126510', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1085, 'President Roxas', NULL, '06', '0619', '061913', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1086, 'Prieto Diaz', NULL, '05', '0562', '056214', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1087, 'Prosperidad (Capital)', NULL, '16', '1603', '160306', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1088, 'Pualas', NULL, '15', '1536', '153623', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1089, 'Pudtol', NULL, '14', '1481', '148106', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1090, 'Puerto Galera', NULL, '17', '1752', '175211', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1091, 'Puerto Princesa City (Capital)', NULL, '17', '1753', '175316', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1092, 'Pugo', NULL, '01', '0133', '013312', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1093, 'Pulilan', NULL, '03', '0314', '031418', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1094, 'Pulupandan', NULL, '06', '0645', '064522', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1095, 'Pura', NULL, '03', '0369', '036911', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1096, 'Quezon', NULL, '02', '0231', '023122', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1097, 'Quezon City', NULL, '13', '1374', '137404', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1098, 'Quiapo', NULL, '13', '1339', '133903', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1099, 'Quinapondan', NULL, '08', '0826', '082618', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1100, 'Quirino', NULL, '02', '0231', '023123', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1101, 'Quirino (Angkaki)', NULL, '01', '0129', '012915', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1102, 'Ragay', NULL, '05', '0517', '051730', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1103, 'Rajah Buayan', NULL, '15', '1538', '153829', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1104, 'Ramon', NULL, '02', '0231', '023124', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1105, 'Ramon Magsaysay (Liargo)', NULL, '09', '0973', '097323', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1106, 'Ramos', NULL, '03', '0369', '036912', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1107, 'Rapu-Rapu', NULL, '05', '0505', '050515', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1108, 'Real', NULL, '04', '0456', '045638', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1109, 'Reina Mercedes', NULL, '02', '0231', '023125', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1110, 'Remedios T. Romualdez', NULL, '16', '1602', '160212', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1111, 'Rizal', NULL, '02', '0215', '021521', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1112, 'Rizal (Liwan)', NULL, '14', '1432', '143211', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1113, 'Rizal (Marcos)', NULL, '17', '1753', '175323', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1114, 'Rodriguez (Montalban)', NULL, '04', '0458', '045808', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1115, 'Romblon (Capital)', NULL, '17', '1759', '175910', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1116, 'Ronda', NULL, '07', '0722', '072239', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1117, 'Rosales', NULL, '01', '0155', '015531', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1118, 'Rosario', NULL, '01', '0133', '013313', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1119, 'Roseller Lim', NULL, '09', '0983', '098312', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1120, 'Roxas', NULL, '02', '0231', '023126', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1121, 'Roxas City (Capital)', NULL, '06', '0619', '061914', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1122, 'Sabangan', NULL, '14', '1444', '144407', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1123, 'Sablan', NULL, '14', '1411', '141112', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1124, 'Sablayan', NULL, '17', '1751', '175109', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1125, 'Sabtang', NULL, '02', '0209', '020905', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1126, 'Sadanga', NULL, '14', '1444', '144408', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1127, 'Sagada', NULL, '14', '1444', '144409', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1128, 'Sagay', NULL, '10', '1018', '101805', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1129, 'Sagay City', NULL, '06', '0645', '064523', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1130, 'Sagbayan (Borja)', NULL, '07', '0712', '071236', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1131, 'Sagñay', NULL, '05', '0517', '051731', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1132, 'Saguday', NULL, '02', '0257', '025705', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1133, 'Saguiaran', NULL, '15', '1536', '153625', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1134, 'Saint Bernard', NULL, '08', '0864', '086412', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1135, 'Salay', NULL, '10', '1043', '104322', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1136, 'Salcedo', NULL, '08', '0826', '082619', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1137, 'Salcedo (Baugen)', NULL, '01', '0129', '012916', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1138, 'Sallapadan', NULL, '14', '1401', '140120', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1139, 'Salug', NULL, '09', '0972', '097213', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1140, 'Salvador', NULL, '10', '1035', '103518', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1141, 'Salvador Benedicto', NULL, '06', '0645', '064532', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1142, 'Samal', NULL, '03', '0308', '030812', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1143, 'Samboan', NULL, '07', '0722', '072240', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1144, 'Sampaloc', NULL, '04', '0456', '045639', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1145, 'San Agustin', NULL, '02', '0231', '023127', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1146, 'San Andres', NULL, '04', '0456', '045640', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1147, 'San Andres (Calolbon)', NULL, '05', '0520', '052008', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1148, 'San Antonio', NULL, '03', '0349', '034924', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1149, 'San Benito', NULL, '16', '1667', '166718', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1150, 'San Carlos City', NULL, '01', '0155', '015532', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1151, 'San Clemente', NULL, '03', '0369', '036913', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1152, 'San Dionisio', NULL, '06', '0630', '063038', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1153, 'San Emilio', NULL, '01', '0129', '012917', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1154, 'San Enrique', NULL, '06', '0630', '063039', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1155, 'San Esteban', NULL, '01', '0129', '012918', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1156, 'San Fabian', NULL, '01', '0155', '015533', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1157, 'San Felipe', NULL, '03', '0371', '037110', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1158, 'San Fernando', NULL, '17', '1759', '175913', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1159, 'San Francisco', NULL, '07', '0722', '072242', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1160, 'San Francisco (Anao-Aon)', NULL, '16', '1667', '166719', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1161, 'San Francisco (Aurora)', NULL, '04', '0456', '045642', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1162, 'San Gabriel', NULL, '01', '0133', '013315', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1163, 'San Guillermo', NULL, '02', '0231', '023128', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1164, 'San Ildefonso', NULL, '01', '0129', '012919', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1165, 'San Isidro', NULL, '02', '0231', '023129', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1166, 'San Jacinto', NULL, '01', '0155', '015534', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1167, 'San Joaquin', NULL, '06', '0630', '063040', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1168, 'San Jorge', NULL, '08', '0860', '086025', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1169, 'San Jose', NULL, '03', '0369', '036918', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1170, 'San Jose (Capital)', NULL, '06', '0606', '060613', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1171, 'San Jose City', NULL, '03', '0349', '034926', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1172, 'San Jose De Buan', NULL, '08', '0860', '086014', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1173, 'San Juan', NULL, '01', '0133', '013316', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1174, 'San Juan (Cabalian)', NULL, '08', '0864', '086414', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1175, 'San Juan (Lapog)', NULL, '01', '0129', '012920', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1176, 'San Julian', NULL, '08', '0826', '082620', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1177, 'San Leonardo', NULL, '03', '0349', '034927', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1178, 'San Lorenzo', NULL, '06', '0679', '067904', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1179, 'San Lorenzo Ruiz (Imelda)', NULL, '05', '0516', '051604', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1180, 'San Luis', NULL, '03', '0354', '035417', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1181, 'San Manuel', NULL, '01', '0155', '015535', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1182, 'San Marcelino', NULL, '03', '0371', '037111', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1183, 'San Mariano', NULL, '02', '0231', '023131', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1184, 'San Mateo', NULL, '02', '0231', '023132', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1185, 'San Miguel', NULL, '03', '0314', '031421', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1186, 'San Narciso', NULL, '03', '0371', '037112', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1187, 'San Nicolas', NULL, '01', '0128', '012820', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1188, 'San Pablo', NULL, '02', '0231', '023133', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1189, 'San Pablo City', NULL, '04', '0434', '043424', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1190, 'San Pascual', NULL, '04', '0410', '041026', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1191, 'San Policarpo', NULL, '08', '0826', '082621', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1192, 'San Quintin', NULL, '01', '0155', '015537', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1193, 'San Rafael', NULL, '03', '0314', '031422', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1194, 'San Remigio', NULL, '06', '0606', '060614', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1195, 'San Ricardo', NULL, '08', '0864', '086415', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1196, 'San Roque', NULL, '08', '0848', '084820', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1197, 'San Sebastian', NULL, '08', '0860', '086015', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1198, 'San Simon', NULL, '03', '0354', '035418', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1199, 'San Teodoro', NULL, '17', '1752', '175213', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1200, 'San Vicente', NULL, '01', '0129', '012921', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1201, 'Sanchez-Mira', NULL, '02', '0215', '021522', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1202, 'Santa', NULL, '01', '0129', '012922', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1203, 'Santa Ana', NULL, '02', '0215', '021523', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1204, 'Santa Barbara', NULL, '01', '0155', '015538', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1205, 'Santa Catalina', NULL, '01', '0129', '012923', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1206, 'Santa Cruz', NULL, '01', '0129', '012924', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1207, 'Santa Cruz (Capital)', NULL, '04', '0434', '043426', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1208, 'Santa Elena', NULL, '05', '0516', '051610', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1209, 'Santa Fe', NULL, '02', '0250', '025012', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1210, 'Santa Ignacia', NULL, '03', '0369', '036915', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1211, 'Santa Josefa', NULL, '16', '1603', '160310', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1212, 'Santa Lucia', NULL, '01', '0129', '012925', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1213, 'Santa Magdalena', NULL, '05', '0562', '056215', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1214, 'Santa Marcela', NULL, '14', '1481', '148107', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1215, 'Santa Margarita', NULL, '08', '0860', '086016', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1216, 'Santa Maria', NULL, '01', '0129', '012926', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1217, 'Santa Maria (Imelda)', NULL, '17', '1759', '175917', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1218, 'Santa Monica (Sapao)', NULL, '16', '1667', '166721', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1219, 'Santa Praxedes', NULL, '02', '0215', '021524', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1220, 'Santa Rita', NULL, '03', '0354', '035420', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1221, 'Santa Rosa', NULL, '03', '0349', '034928', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1222, 'Santa Teresita', NULL, '02', '0215', '021525', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1223, 'Santander', NULL, '07', '0722', '072245', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1224, 'Santiago', NULL, '01', '0129', '012927', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1225, 'Santo Domingo', NULL, '01', '0129', '012928', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1226, 'Santo Domingo (Libog)', NULL, '05', '0505', '050516', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1227, 'Santo Niño', NULL, '08', '0860', '086018', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1228, 'Santo Niño (Faire)', NULL, '02', '0215', '021526', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1229, 'Santo Tomas', NULL, '01', '0133', '013317', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1230, 'Santol', NULL, '01', '0133', '013318', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1231, 'Sapad', NULL, '10', '1035', '103519', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1232, 'Sapang Dalaga', NULL, '10', '1042', '104213', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1233, 'Sapa-Sapa', NULL, '15', '1570', '157010', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1234, 'Sapi-An', NULL, '06', '0619', '061915', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1235, 'Sara', NULL, '06', '0630', '063044', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1236, 'Sarangani', NULL, '11', '1186', '118605', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1237, 'Sariaya', NULL, '04', '0456', '045645', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1238, 'Sarrat', NULL, '01', '0128', '012821', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1239, 'Sasmuan (Sexmoan)', NULL, '03', '0354', '035422', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1240, 'Science City Of Muñoz', NULL, '03', '0349', '034917', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1241, 'Sebaste', NULL, '06', '0606', '060615', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1242, 'Sen. Ninoy Aquino', NULL, '12', '1265', '126512', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1243, 'Sergio Osmeña Sr.', NULL, '09', '0972', '097214', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1244, 'Sevilla', NULL, '07', '0712', '071239', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1245, 'Shariff Aguak (Maganoy) (Capital)', NULL, '15', '1538', '153808', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1246, 'Shariff Saydona Mustapha', NULL, '15', '1538', '153837', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1247, 'Siasi', NULL, '15', '1566', '156612', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1248, 'Siaton', NULL, '07', '0746', '074619', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1249, 'Siay', NULL, '09', '0983', '098313', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1250, 'Siayan', NULL, '09', '0972', '097215', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1251, 'Sibagat', NULL, '16', '1603', '160314', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1252, 'Sibalom', NULL, '06', '0606', '060616', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1253, 'Sibonga', NULL, '07', '0722', '072246', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1254, 'Sibuco', NULL, '09', '0972', '097216', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1255, 'Sibulan', NULL, '07', '0746', '074620', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1256, 'Sibunag', NULL, '06', '0679', '067905', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1257, 'Sibutad', NULL, '09', '0972', '097217', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1258, 'Sibutu', NULL, '15', '1570', '157011', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1259, 'Sierra Bullones', NULL, '07', '0712', '071240', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1260, 'Sigay', NULL, '01', '0129', '012929', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1261, 'Sigma', NULL, '06', '0619', '061916', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1262, 'Sikatuna', NULL, '07', '0712', '071241', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1263, 'Silago', NULL, '08', '0864', '086416', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1264, 'Silang', NULL, '04', '0421', '042118', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1265, 'Silay City', NULL, '06', '0645', '064526', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1266, 'Silvino Lobos', NULL, '08', '0848', '084822', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1267, 'Simunul', NULL, '15', '1570', '157004', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1268, 'Sinacaban', NULL, '10', '1042', '104214', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1269, 'Sinait', NULL, '01', '0129', '012930', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1270, 'Sindangan', NULL, '09', '0972', '097218', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1271, 'Siniloan', NULL, '04', '0434', '043429', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1272, 'Siocon', NULL, '09', '0972', '097219', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1273, 'Sipocot', NULL, '05', '0517', '051734', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1274, 'Siquijor (Capital)', NULL, '07', '0761', '076106', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1275, 'Sirawai', NULL, '09', '0972', '097220', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1276, 'Siruma', NULL, '05', '0517', '051735', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1277, 'Sison', NULL, '01', '0155', '015541', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1278, 'Sitangkai', NULL, '15', '1570', '157005', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1279, 'Socorro', NULL, '17', '1752', '175214', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1280, 'Sofronio Española', NULL, '17', '1753', '175324', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1281, 'Sogod', NULL, '07', '0722', '072247', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1282, 'Solana', NULL, '02', '0215', '021527', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1283, 'Solano', NULL, '02', '0250', '025013', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1284, 'Solsona', NULL, '01', '0128', '012822', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1285, 'Sominot (Don Mariano Marcos)', NULL, '09', '0973', '097340', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1286, 'South Ubian', NULL, '15', '1570', '157006', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1287, 'South Upi', NULL, '15', '1538', '153817', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1288, 'Sual', NULL, '01', '0155', '015542', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1289, 'Subic', NULL, '03', '0371', '037114', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1290, 'Sudipen', NULL, '01', '0133', '013319', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1291, 'Sugbongcogon', NULL, '10', '1043', '104323', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1292, 'Sugpon', NULL, '01', '0129', '012931', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1293, 'Sulat', NULL, '08', '0826', '082622', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1294, 'Sulop', NULL, '11', '1124', '112414', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1295, 'Sultan Dumalondong', NULL, '15', '1536', '153640', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1296, 'Sultan Kudarat (Nuling)', NULL, '15', '1538', '153812', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1297, 'Sultan Mastura', NULL, '15', '1538', '153824', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1298, 'Sultan Naga Dimaporo (Karomatan)', NULL, '10', '1035', '103506', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1299, 'Sultan Sa Barongis (Lambayong)', NULL, '15', '1538', '153813', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1300, 'Sumilao', NULL, '10', '1013', '101319', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1301, 'Sumisip', NULL, '15', '1507', '150705', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1302, 'Surallah', NULL, '12', '1263', '126313', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1303, 'Surigao City (Capital)', NULL, '16', '1667', '166724', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1304, 'Suyo', NULL, '01', '0129', '012932', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1305, 'Taal', NULL, '04', '0410', '041029', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1306, 'Tabango', NULL, '08', '0837', '083745', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1307, 'Tabina', NULL, '09', '0973', '097327', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1308, 'Tabogon', NULL, '07', '0722', '072248', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1309, 'Tabontabon', NULL, '08', '0837', '083746', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1310, 'Tabuan-Lasa', NULL, '15', '1507', '150713', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1311, 'Tabuelan', NULL, '07', '0722', '072249', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1312, 'Tacloban City (Capital)', NULL, '08', '0837', '083747', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1313, 'Tadian', NULL, '14', '1444', '144410', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1314, 'Taft', NULL, '08', '0826', '082623', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1315, 'Tagana-An', NULL, '16', '1667', '166725', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1316, 'Tagapul-An', NULL, '08', '0860', '086024', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1317, 'Tagaytay City', NULL, '04', '0421', '042119', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1318, 'Tagbilaran City (Capital)', NULL, '07', '0712', '071242', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1319, 'Tagbina', NULL, '16', '1668', '166817', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1320, 'Tagkawayan', NULL, '04', '0456', '045646', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1321, 'Tago', NULL, '16', '1668', '166818', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1322, 'Tagoloan', NULL, '10', '1035', '103520', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1323, 'Tagoloan Ii', NULL, '15', '1536', '153638', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');
INSERT INTO `city` (`id`, `name`, `description`, `region_code`, `province_code`, `city_code`, `country_code`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(1324, 'Tagudin', NULL, '01', '0129', '012933', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1325, 'Taguig City', NULL, '13', '1376', '137607', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1326, 'Talacogon', NULL, '16', '1603', '160311', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1327, 'Talaingod', NULL, '11', '1123', '112322', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1328, 'Talakag', NULL, '10', '1013', '101320', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1329, 'Talalora', NULL, '08', '0860', '086019', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1330, 'Talavera', NULL, '03', '0349', '034930', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1331, 'Talayan', NULL, '15', '1538', '153816', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1332, 'Talibon', NULL, '07', '0712', '071243', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1333, 'Talipao', NULL, '15', '1566', '156613', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1334, 'Talisay', NULL, '04', '0410', '041030', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1335, 'Talisayan', NULL, '10', '1043', '104325', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1336, 'Talitay', NULL, '15', '1538', '153821', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1337, 'Talugtug', NULL, '03', '0349', '034931', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1338, 'Talusan', NULL, '09', '0983', '098314', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1339, 'Tambulig', NULL, '09', '0973', '097328', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1340, 'Tampakan', NULL, '12', '1263', '126314', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1341, 'Tamparan', NULL, '15', '1536', '153626', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1342, 'Tampilisan', NULL, '09', '0972', '097221', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1343, 'Tanauan', NULL, '08', '0837', '083748', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1344, 'Tanay', NULL, '04', '0458', '045812', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1345, 'Tandubas', NULL, '15', '1570', '157007', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1346, 'Tangalan', NULL, '06', '0604', '060417', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1347, 'Tangcal', NULL, '10', '1035', '103521', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1348, 'Tangub City', NULL, '10', '1042', '104215', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1349, 'Tantangan', NULL, '12', '1263', '126315', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1350, 'Tanudan', NULL, '14', '1432', '143214', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1351, 'Tanza', NULL, '04', '0421', '042120', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1352, 'Tapaz', NULL, '06', '0619', '061917', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1353, 'Tapul', NULL, '15', '1566', '156614', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1354, 'Taraka', NULL, '15', '1536', '153627', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1355, 'Tarangnan', NULL, '08', '0860', '086020', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1356, 'Tarragona', NULL, '11', '1125', '112511', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1357, 'Tayasan', NULL, '07', '0746', '074622', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1358, 'Taysan', NULL, '04', '0410', '041032', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1359, 'Taytay', NULL, '04', '0458', '045813', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1360, 'Tayug', NULL, '01', '0155', '015543', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1361, 'Tayum', NULL, '14', '1401', '140124', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1362, 'T\'Boli', NULL, '12', '1263', '126316', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1363, 'Teresa', NULL, '04', '0458', '045814', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1364, 'Ternate', NULL, '04', '0421', '042121', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1365, 'Tiaong', NULL, '04', '0456', '045648', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1366, 'Tibiao', NULL, '06', '0606', '060617', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1367, 'Tigaon', NULL, '05', '0517', '051736', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1368, 'Tigbao', NULL, '09', '0973', '097344', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1369, 'Tigbauan', NULL, '06', '0630', '063045', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1370, 'Tinambac', NULL, '05', '0517', '051737', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1371, 'Tineg', NULL, '14', '1401', '140125', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1372, 'Tinglayan', NULL, '14', '1432', '143215', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1373, 'Tingloy', NULL, '04', '0410', '041033', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1374, 'Tinoc', NULL, '14', '1427', '142710', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1375, 'Tipo-Tipo', NULL, '15', '1507', '150706', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1376, 'Titay', NULL, '09', '0983', '098315', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1377, 'Tiwi', NULL, '05', '0505', '050518', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1378, 'Tobias Fornier (Dao)', NULL, '06', '0606', '060607', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1379, 'Toboso', NULL, '06', '0645', '064529', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1380, 'Toledo City', NULL, '07', '0722', '072251', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1381, 'Tolosa', NULL, '08', '0837', '083749', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1382, 'Tomas Oppus', NULL, '08', '0864', '086418', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1383, 'Tondo I / Ii', NULL, '13', '1339', '133901', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1384, 'Tongkil', NULL, '15', '1566', '156615', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1385, 'Torrijos', NULL, '17', '1740', '174006', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1386, 'Trece Martires City (Capital)', NULL, '04', '0421', '042122', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1387, 'Trento', NULL, '16', '1603', '160312', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1388, 'Trinidad', NULL, '07', '0712', '071244', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1389, 'Tuao', NULL, '02', '0215', '021528', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1390, 'Tuba', NULL, '14', '1411', '141113', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1391, 'Tubajon', NULL, '16', '1685', '168507', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1392, 'Tubao', NULL, '01', '0133', '013320', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1393, 'Tubaran', NULL, '15', '1536', '153628', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1394, 'Tubay', NULL, '16', '1602', '160211', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1395, 'Tubigon', NULL, '07', '0712', '071245', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1396, 'Tublay', NULL, '14', '1411', '141114', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1397, 'Tubo', NULL, '14', '1401', '140126', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1398, 'Tubod', NULL, '16', '1667', '166727', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1399, 'Tubod (Capital)', NULL, '10', '1035', '103522', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1400, 'Tubungan', NULL, '06', '0630', '063046', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1401, 'Tuburan', NULL, '07', '0722', '072252', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1402, 'Tudela', NULL, '07', '0722', '072253', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1403, 'Tugaya', NULL, '15', '1536', '153629', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1404, 'Tuguegarao City (Capital)', NULL, '02', '0215', '021529', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1405, 'Tukuran', NULL, '09', '0973', '097330', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1406, 'Tulunan', NULL, '12', '1247', '124714', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1407, 'Tumauini', NULL, '02', '0231', '023137', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1408, 'Tunga', NULL, '08', '0837', '083750', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1409, 'Tungawan', NULL, '09', '0983', '098316', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1410, 'Tupi', NULL, '12', '1263', '126317', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1411, 'Turtle Islands', NULL, '15', '1570', '157008', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1412, 'Tuy', NULL, '04', '0410', '041034', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1413, 'Ubay', NULL, '07', '0712', '071246', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1414, 'Umingan', NULL, '01', '0155', '015544', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1415, 'Ungkaya Pukan', NULL, '15', '1507', '150711', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1416, 'Unisan', NULL, '04', '0456', '045649', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1417, 'Upi', NULL, '15', '1538', '153815', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1418, 'Urbiztondo', NULL, '01', '0155', '015545', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1419, 'Uson', NULL, '05', '0541', '054121', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1420, 'Uyugan', NULL, '02', '0209', '020906', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1421, 'Valderrama', NULL, '06', '0606', '060618', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1422, 'Valencia', NULL, '07', '0712', '071247', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1423, 'Valencia (Luzurriaga)', NULL, '07', '0746', '074623', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1424, 'Valladolid', NULL, '06', '0645', '064530', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1425, 'Vallehermoso', NULL, '07', '0746', '074624', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1426, 'Veruela', NULL, '16', '1603', '160313', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1427, 'Victoria', NULL, '03', '0369', '036917', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1428, 'Viga', NULL, '05', '0520', '052010', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1429, 'Villaba', NULL, '08', '0837', '083751', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1430, 'Villanueva', NULL, '10', '1043', '104326', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1431, 'Villareal', NULL, '08', '0860', '086021', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1432, 'Villasis', NULL, '01', '0155', '015547', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1433, 'Villaverde', NULL, '02', '0250', '025014', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1434, 'Villaviciosa', NULL, '14', '1401', '140127', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1435, 'Vincenzo A. Sagun', NULL, '09', '0973', '097341', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1436, 'Vintar', NULL, '01', '0128', '012823', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1437, 'Vinzons', NULL, '05', '0516', '051612', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1438, 'Virac (Capital)', NULL, '05', '0520', '052011', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1439, 'Wao', NULL, '15', '1536', '153630', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1440, 'Zamboanga City', NULL, '09', '0973', '097332', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1441, 'Zamboanguita', NULL, '07', '0746', '074625', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1442, 'Zaragoza', NULL, '03', '0349', '034932', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1443, 'Zarraga', NULL, '06', '0630', '063047', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0'),
(1444, 'Zumarraga', NULL, '08', '0860', '086023', '01', 1, '2019-07-23 14:41:48', 1, '2019-07-23 14:41:48', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(11) DEFAULT NULL,
  `province` varchar(11) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `mailing_address` varchar(255) NOT NULL,
  `landline` varchar(255) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `office_hours` varchar(255) DEFAULT NULL,
  `visiting_hours` varchar(2000) DEFAULT NULL,
  `social_media_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `branch_id`, `name`, `description`, `address1`, `address2`, `city`, `province`, `country`, `mailing_address`, `landline`, `mobile`, `email`, `office_hours`, `visiting_hours`, `social_media_id`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(1, 1, 'Minor Basilica of the National Shrine of Our Lady of Mount Carmel', 'Minor Basilica of the National Shrine of Our Lady of Mount Carmel', '90 4th Street, New Manila', '', '137404', '1339', 1, '', '(632) 724 5938<br/>\r\n(632) 701 5867<br/>\r\n(632) 701 5868<br/>\r\n(632) 701 5869', '(63918) 407 7760<br/>\r\n(63956) 658 3660', 'basilica@mountcarmel.ph', '', '', NULL, 1, '2019-06-19 16:45:18', 1, '2019-09-20 18:59:45', b'0'),
(2, 2, 'St. Joseph the Worker Parish', 'St. Joseph the Worker Parish', 'Lopez Jaena St., Brgy. San Isidro, Jaro,', '5000', '063022', '0630', 1, '', '(6333) 329 0081<br/>\r\n(6333) 320 4859<br/>\r\n(6333) 509 4323<br/>\r\n(6333) 329 5787', '(63999)  995 9203', '', 'Monday No office<br/>\r\nTuesday to Saturday<br/>\r\n8:00 am - 12:00 nn<br/>\r\n1:00 pm - 5:00 pm<br/>', '', NULL, 1, '2019-09-16 13:05:06', 1, '2019-09-26 12:34:11', b'0'),
(3, 3, 'Our Lady of Mt. Carmel and St. Therese of the Child Jesus', 'Our Lady of Mt. Carmel and St. Therese of the Child Jesus', 'Carmelite Monastery, Sambag, Jaro,', '5000 P.O. Box 160 ', '063022', '0630', 1, '', '(6333) 329 0070', '', 'jarodiscarmsrs@yahoo.com', '', 'Saturday - Thursday:<br/> \r\n8:00 A.M. - 10:30 A.M.<br/> \r\n3:30 P.M. - 5:15 P.M.<br/> \r\n(No visitors on Fridays and Lent)  \r\n', NULL, 1, '2019-09-16 13:34:20', 1, '2019-09-26 12:38:57', b'0'),
(4, 4, 'Our Lady of Mount Carmel, Mary, Queen of Peace Community', 'Our Lady of Mount Carmel, Mary, Queen of Peace Community', 'Jaro', '', '063022', '0630', 1, '', '', '', '', '', '', NULL, 1, '2019-09-16 13:36:22', NULL, NULL, b'0'),
(5, 5, 'Our Lady\'s Hill Center of Spirituality', 'Our Lady\'s Hill Center of Spirituality', 'Sitio Sta. Rita, Dulao', '', '064502', '0645', 1, 'Our Lady’s Hill Carmelite Center of Spirituality  c/o Carmelite Monastery, Lacson St., Mandalagan, Bacolod City 6100 ', '(6334) 703 8834<br/>\r\n(6334) 710 0002', '(63912) 920 2552<br/> (63917) 308 0984', 'carmelites.ourladyshill@gmail.com', '', '', NULL, 1, '2019-09-16 13:42:42', 1, '2019-09-21 17:48:23', b'0'),
(6, 6, 'Our Lady of the Smile Community', 'Our Lady of the Smile Community', 'Mandalagan', '', '064501', '0645', 1, '', '', '', '', '', '', NULL, 1, '2019-09-16 13:48:05', NULL, NULL, b'0'),
(7, 7, 'Carmel of The Child Jesus and Mary Mediatrix of All Graces', 'Carmel of The Child Jesus and Mary Mediatrix of All Graces', 'Pope John Paul II Ave., Mabolo', '', '072217', '0722', 1, '', '(6332) 231 5931', '', '', '', '', NULL, 1, '2019-09-16 13:55:17', NULL, NULL, b'0'),
(8, 8, 'Sto. Niño de Cebu Community', 'Sto. Niño de Cebu Community', 'Duruelo de Sugbo, Nasipit, Talamban, Cebu City c/o Kapper Philippines, Borromeo Bldg. F. Ramos St.,', '', '051724', '0517', 1, '', '', '', '', '', '', NULL, 1, '2019-09-21 16:00:19', NULL, NULL, b'0'),
(9, 9, 'Carmel of the Immaculate Heart of Mary', 'Carmel of the Immaculate Heart of Mary', 'Monastery Road, Concepcion Pequeña', '', '051724', '0517', 1, '', '(6354) 473 0411<br/>\r\n(6354) 473 9366', '', 'nagacarmel1010@yahoo.com', '', '', NULL, 1, '2019-09-16 13:53:16', NULL, NULL, b'0'),
(10, 10, 'Carmelite Monastery of St. John of The Cross', 'Carmelite Monastery of St. John of The Cross', 'Carmelite Monastery, Malaubang', '7200', '104210', '1042', 1, '', '(6388) 521 3151', '(63930) 115 2548 (TNT)     ', 'ozamizcarmel@yahoo.com', '', '10am<br/>\r\n2pm                                         \r\n', NULL, 1, '2019-09-21 16:08:31', 1, '2019-09-26 12:43:14', b'0'),
(11, 11, 'Saint John of the Cross Community', 'Saint John of the Cross Community', '', '', '104210', '1042', 1, '', '', '', '', '', '', NULL, 1, '2019-09-21 16:09:34', NULL, NULL, b'0'),
(12, 12, 'Carmel of  Mary, Mother of The Church and of Saint Joseph', 'Carmel of  Mary, Mother of The Church and of Saint Joseph', 'Seminary Hill, Barangay Camaman-an', '9000', '104305', '1043', 1, '', '', '', '', '', '', NULL, 1, '2019-09-21 16:13:03', NULL, NULL, b'0'),
(13, 13, 'Our Lady of Mount Carmel of Holy Mother Teresa of Jesus Community', 'Our Lady of Mount Carmel of Holy Mother Teresa of Jesus Community', '', '', '104305', '1043', 1, '', '', '', '', '', '', NULL, 1, '2019-09-21 16:14:41', NULL, NULL, b'0'),
(14, 14, 'Saint Joseph and Saint John of the Cross', 'Saint Joseph and Saint John of the Cross', '', '', '104305', '1043', 1, '', '', '', '', '', '', NULL, 1, '2019-09-21 16:15:22', NULL, NULL, b'0'),
(15, 15, 'Carmel of the Sacred Heart of Jesus and The Immaculate Heart of Mary', 'Carmel of the Sacred Heart of Jesus and The Immaculate Heart of Mary', 'JP Laurel St., Lanang', '8000', '112402', '1124', 1, '', '', '', '', '', '', NULL, 1, '2019-09-21 16:16:39', NULL, NULL, b'0'),
(16, 16, 'Saint Joseph Community', 'Saint Joseph Community', '', '', '112402', '1124', 1, '', '', '', '', '', '', NULL, 1, '2019-09-21 16:17:30', NULL, NULL, b'0'),
(17, 17, 'Saint Therese of the Child Jesus Community', 'Saint Therese of the Child Jesus Community', '', '', '112402', '1124', 1, '', '', '', '', '', '', NULL, 1, '2019-09-21 16:18:18', NULL, NULL, b'0'),
(18, 18, 'Saint Teresa of Jesus Community', 'Saint Teresa of Jesus Community', '', '', '112402', '1124', 1, '', '', '', '', '', '', NULL, 1, '2019-09-21 16:18:56', NULL, NULL, b'0'),
(19, 19, 'Carmel of Saint Teresa of Jesus', 'Carmel of Saint Teresa of Jesus', 'Mount Carmel, Tua Tua Road, Barangay Matiao ', '8200', '112509', '1125', 1, '', '(6387) 338 3452', '(63917) 702 4095<br/> (63933) 869 3065', 'carmelgiftofgod@yahoo.com', '', '08:30 am - 05:30 pm', NULL, 1, '2019-09-21 16:20:56', 1, '2019-09-26 12:45:16', b'0'),
(20, 20, 'St. Teresa of Jesus', 'St. Teresa of Jesus', '', '', '112509', '1125', 1, '', '', '', '', '', '', NULL, 1, '2019-09-21 16:21:41', NULL, NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `landline_format` varchar(30) DEFAULT NULL,
  `mobile_format` varchar(30) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `description`, `code`, `country_code`, `landline_format`, `mobile_format`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(1, 'Philippines', NULL, 'ph', '01', 'xxxxx-xxxxxxx', '+63 (9yy) xxx-xxxx', 1, '2019-07-23 14:45:34', NULL, NULL, b'0'),
(2, 'Andorra', NULL, 'ad', '02', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(3, 'United Arab Emirates', NULL, 'ae', '03', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(4, 'Afghanistan', NULL, 'af', '04', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(5, 'Antigua and Barbuda', NULL, 'ag', '05', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(6, 'Anguilla', NULL, 'ai', '06', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(7, 'Albania', NULL, 'al', '07', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(8, 'Armenia', NULL, 'am', '08', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(9, 'Netherlands Antilles', NULL, 'an', '09', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(10, 'Angola', NULL, 'ao', '10', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(11, 'Argentina', NULL, 'ar', '11', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(12, 'Austria', NULL, 'at', '12', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(13, 'Australia', NULL, 'au', '13', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(14, 'Aruba', NULL, 'aw', '14', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(15, 'Azerbaijan', NULL, 'az', '15', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(16, 'Bosnia and Herzegovina', NULL, 'ba', '16', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(17, 'Barbados', NULL, 'bb', '17', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(18, 'Bangladesh', NULL, 'bd', '18', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(19, 'Belgium', NULL, 'be', '19', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(20, 'Burkina Faso', NULL, 'bf', '20', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(21, 'Bulgaria', NULL, 'bg', '21', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(22, 'Bahrain', NULL, 'bh', '22', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(23, 'Burundi', NULL, 'bi', '23', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(24, 'Benin', NULL, 'bj', '24', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(25, 'Bermuda', NULL, 'bm', '25', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(26, 'Brunei Darussalam', NULL, 'bn', '26', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(27, 'Bolivia', NULL, 'bo', '27', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(28, 'Brazil', NULL, 'br', '28', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(29, 'Bahamas', NULL, 'bs', '29', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(30, 'Bhutan', NULL, 'bt', '30', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(31, 'Botswana', NULL, 'bw', '31', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(32, 'Belarus', NULL, 'by', '32', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(33, 'Belize', NULL, 'bz', '33', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(34, 'Canada', NULL, 'ca', '34', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(35, 'Cocos (Keeling) Islands', NULL, 'cc', '35', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(36, 'Democratic Republic of the Congo', NULL, 'cd', '36', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(37, 'Central African Republic', NULL, 'cf', '37', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(38, 'Congo', NULL, 'cg', '38', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(39, 'Switzerland', NULL, 'ch', '39', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(40, 'Cote D\'Ivoire Ivory Coast', NULL, 'ci', '40', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(41, 'Cook Islands', NULL, 'ck', '41', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(42, 'Chile', NULL, 'cl', '42', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(43, 'Cameroon', NULL, 'cm', '43', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(44, 'China', NULL, 'cn', '44', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(45, 'Colombia', NULL, 'co', '45', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(46, 'Costa Rica', NULL, 'cr', '46', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(47, 'Cuba', NULL, 'cu', '47', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(48, 'Cape Verde', NULL, 'cv', '48', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(49, 'Christmas Island', NULL, 'cx', '49', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(50, 'Cyprus', NULL, 'cy', '50', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(51, 'Czech Republic', NULL, 'cz', '51', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(52, 'Germany', NULL, 'de', '52', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(53, 'Djibouti', NULL, 'dj', '53', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(54, 'Denmark', NULL, 'dk', '55', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(55, 'Dominica', NULL, 'dm', '55', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(56, 'Dominican Republic', NULL, 'do', '56', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(57, 'Algeria', NULL, 'dz', '57', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(58, 'Ecuador', NULL, 'ec', '58', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(59, 'Estonia', NULL, 'ee', '59', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(60, 'Egypt', NULL, 'eg', '60', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(61, 'Western Sahara', NULL, 'eh', '61', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(62, 'Eritrea', NULL, 'er', '62', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(63, 'Spain', NULL, 'es', '63', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(64, 'Ethiopia', NULL, 'et', '64', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(65, 'Finland', NULL, 'fi', '65', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(66, 'Fiji', NULL, 'fj', '66', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(67, 'Falkland Islands (Malvinas)', NULL, 'fk', '67', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(68, 'Federated States of Micronesia', NULL, 'fm', '68', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(69, 'Faroe Islands', NULL, 'fo', '69', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(70, 'France', NULL, 'fr', '70', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(71, 'Gabon', NULL, 'ga', '71', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(72, 'Great Britain (UK)', NULL, 'gb', '72', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(73, 'Grenada', NULL, 'gd', '73', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(74, 'Georgia', NULL, 'ge', '74', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(75, 'French Guiana', NULL, 'gf', '75', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(76, 'Guernsey', NULL, 'gg', '76', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(77, 'Ghana', NULL, 'gh', '77', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(78, 'Gibraltar', NULL, 'gi', '78', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(79, 'Greenland', NULL, 'gl', '79', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(80, 'Gambia', NULL, 'gm', '80', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(81, 'Guinea', NULL, 'gn', '81', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(82, 'Guadeloupe', NULL, 'gp', '82', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(83, 'Equatorial Guinea', NULL, 'gq', '83', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(84, 'Greece', NULL, 'gr', '84', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(85, 'S. Georgia and S. Sandwich Islands', NULL, 'gs', '85', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(86, 'Guatemala', NULL, 'gt', '86', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(87, 'Guinea-Bissau', NULL, 'gw', '87', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(88, 'Guyana', NULL, 'gy', '88', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(89, 'Hong Kong', NULL, 'hk', '89', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(90, 'Honduras', NULL, 'hn', '90', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(91, 'Croatia (Hrvatska)', NULL, 'hr', '91', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(92, 'Haiti', NULL, 'ht', '92', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(93, 'Hungary', NULL, 'hu', '93', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(94, 'Indonesia', NULL, 'id', '94', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(95, 'Ireland', NULL, 'ie', '95', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(96, 'Israel', NULL, 'il', '96', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(97, 'India', NULL, 'in', '97', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(98, 'Iraq', NULL, 'iq', '98', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(99, 'Iran', NULL, 'ir', '99', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(100, 'Iceland', NULL, 'is', '100', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(101, 'Italy', NULL, 'it', '101', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(102, 'Jamaica', NULL, 'jm', '102', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(103, 'Jordan', NULL, 'jo', '103', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(104, 'Japan', NULL, 'jp', '104', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(105, 'Kenya', NULL, 'ke', '105', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(106, 'Kyrgyzstan', NULL, 'kg', '106', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(107, 'Cambodia', NULL, 'kh', '107', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(108, 'Kiribati', NULL, 'ki', '108', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(109, 'Comoros', NULL, 'km', '109', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(110, 'Saint Kitts and Nevis', NULL, 'kn', '110', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(111, 'Korea (North)', NULL, 'kp', '111', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(112, 'Korea (South)', NULL, 'kr', '112', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(113, 'Kuwait', NULL, 'kw', '113', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(114, 'Cayman Islands', NULL, 'ky', '114', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(115, 'Kazakhstan', NULL, 'kz', '115', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(116, 'Laos', NULL, 'la', '116', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(117, 'Lebanon', NULL, 'lb', '117', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(118, 'Saint Lucia', NULL, 'lc', '118', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(119, 'Liechtenstein', NULL, 'li', '119', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(120, 'Sri Lanka', NULL, 'lk', '120', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(121, 'Liberia', NULL, 'lr', '121', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(122, 'Lesotho', NULL, 'ls', '122', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(123, 'Lithuania', NULL, 'lt', '123', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(124, 'Luxembourg', NULL, 'lu', '124', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(125, 'Latvia', NULL, 'lv', '125', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(126, 'Libya', NULL, 'ly', '126', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(127, 'Morocco', NULL, 'ma', '127', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(128, 'Monaco', NULL, 'mc', '128', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(129, 'Moldova', NULL, 'md', '129', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(130, 'Madagascar', NULL, 'mg', '130', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(131, 'Marshall Islands', NULL, 'mh', '131', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(132, 'Macedonia', NULL, 'mk', '132', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(133, 'Mali', NULL, 'ml', '133', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(134, 'Myanmar', NULL, 'mm', '134', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(135, 'Mongolia', NULL, 'mn', '135', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(136, 'Macao', NULL, 'mo', '136', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(137, 'Northern Mariana Islands', NULL, 'mp', '137', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(138, 'Martinique', NULL, 'mq', '138', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(139, 'Mauritania', NULL, 'mr', '139', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(140, 'Montserrat', NULL, 'ms', '140', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(141, 'Malta', NULL, 'mt', '141', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(142, 'Mauritius', NULL, 'mu', '142', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(143, 'Maldives', NULL, 'mv', '143', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(144, 'Malawi', NULL, 'mw', '144', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(145, 'Mexico', NULL, 'mx', '145', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(146, 'Malaysia', NULL, 'my', '146', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(147, 'Mozambique', NULL, 'mz', '147', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(148, 'Namibia', NULL, 'na', '148', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(149, 'New Caledonia', NULL, 'nc', '149', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(150, 'Niger', NULL, 'ne', '150', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(151, 'Norfolk Island', NULL, 'nf', '151', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(152, 'Nigeria', NULL, 'ng', '152', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(153, 'Nicaragua', NULL, 'ni', '153', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(154, 'Netherlands', NULL, 'nl', '154', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(155, 'Norway', NULL, 'no', '155', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(156, 'Nepal', NULL, 'np', '156', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(157, 'Nauru', NULL, 'nr', '157', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(158, 'Niue', NULL, 'nu', '158', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(159, 'New Zealand (Aotearoa)', NULL, 'nz', '159', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(160, 'Oman', NULL, 'om', '160', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(161, 'Panama', NULL, 'pa', '161', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(162, 'Peru', NULL, 'pe', '162', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(163, 'French Polynesia', NULL, 'pf', '163', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(164, 'Papua New Guinea', NULL, 'pg', '164', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(165, 'Philippines', NULL, 'ph', '165', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'1'),
(166, 'Pakistan', NULL, 'pk', '166', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(167, 'Poland', NULL, 'pl', '167', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(168, 'Saint Pierre and Miquelon', NULL, 'pm', '168', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(169, 'Pitcairn', NULL, 'pn', '169', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(170, 'Palestinian Territory', NULL, 'ps', '170', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(171, 'Portugal', NULL, 'pt', '171', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(172, 'Palau', NULL, 'pw', '172', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(173, 'Paraguay', NULL, 'py', '173', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(174, 'Qatar', NULL, 'qa', '174', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(175, 'Reunion', NULL, 're', '175', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(176, 'Romania', NULL, 'ro', '176', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(177, 'Russian Federation', NULL, 'ru', '177', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(178, 'Rwanda', NULL, 'rw', '178', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(179, 'Saudi Arabia', NULL, 'sa', '179', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(180, 'Solomon Islands', NULL, 'sb', '180', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(181, 'Seychelles', NULL, 'sc', '181', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(182, 'Sudan', NULL, 'sd', '182', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(183, 'Sweden', NULL, 'se', '183', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(184, 'Singapore', NULL, 'sg', '184', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(185, 'Saint Helena', NULL, 'sh', '185', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(186, 'Slovenia', NULL, 'si', '186', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(187, 'Svalbard and Jan Mayen', NULL, 'sj', '187', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(188, 'Slovakia', NULL, 'sk', '188', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(189, 'Sierra Leone', NULL, 'sl', '189', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(190, 'San Marino', NULL, 'sm', '190', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(191, 'Senegal', NULL, 'sn', '191', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(192, 'Somalia', NULL, 'so', '192', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(193, 'Suriname', NULL, 'sr', '193', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(194, 'Sao Tome and Principe', NULL, 'st', '194', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(195, 'El Salvador', NULL, 'sv', '195', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(196, 'Syria', NULL, 'sy', '196', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(197, 'Swaziland', NULL, 'sz', '197', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(198, 'Turks and Caicos Islands', NULL, 'tc', '198', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(199, 'Chad', NULL, 'td', '199', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(200, 'French Southern Territories', NULL, 'tf', '200', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(201, 'Togo', NULL, 'tg', '201', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(202, 'Thailand', NULL, 'th', '202', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(203, 'Tajikistan', NULL, 'tj', '203', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(204, 'Tokelau', NULL, 'tk', '204', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(205, 'Turkmenistan', NULL, 'tm', '205', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(206, 'Tunisia', NULL, 'tn', '206', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(207, 'Tonga', NULL, 'to', '207', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(208, 'Turkey', NULL, 'tr', '208', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(209, 'Trinidad and Tobago', NULL, 'tt', '209', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(210, 'Tuvalu', NULL, 'tv', '210', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(211, 'Taiwan', NULL, 'tw', '211', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(212, 'Tanzania', NULL, 'tz', '212', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(213, 'Ukraine', NULL, 'ua', '213', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(214, 'Uganda', NULL, 'ug', '214', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(215, 'Uruguay', NULL, 'uy', '215', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(216, 'Uzbekistan', NULL, 'uz', '216', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(217, 'Saint Vincent and the Grenadines', NULL, 'vc', '217', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(218, 'Venezuela', NULL, 've', '218', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(219, 'Virgin Islands (British)', NULL, 'vg', '219', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(220, 'Virgin Islands (U.S.)', NULL, 'vi', '220', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(221, 'Viet Nam', NULL, 'vn', '221', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(222, 'Vanuatu', NULL, 'vu', '222', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(223, 'Wallis and Futuna', NULL, 'wf', '223', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(224, 'Samoa', NULL, 'ws', '224', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(225, 'Yemen', NULL, 'ye', '225', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(226, 'Mayotte', NULL, 'yt', '226', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(227, 'South Africa', NULL, 'za', '227', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(228, 'Zambia', NULL, 'zm', '228', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(229, 'Zaire (former)', NULL, 'zr', '229', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(230, 'Zimbabwe', NULL, 'zw', '230', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0'),
(231, 'United States of America', NULL, 'us', '231', NULL, NULL, 1, '2019-08-07 13:36:25', NULL, NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `couple`
--

CREATE TABLE `couple` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `sub_module_id` int(11) NOT NULL,
  `service_transaction` int(11) DEFAULT NULL,
  `name_groom` varchar(255) NOT NULL,
  `nickname_groom` varchar(50) DEFAULT NULL,
  `dt_birth_groom` datetime DEFAULT NULL,
  `birth_place_groom` varchar(255) DEFAULT NULL,
  `religion_groom` int(11) DEFAULT NULL,
  `occupation_groom` varchar(100) DEFAULT NULL,
  `work_place_groom` varchar(255) DEFAULT NULL,
  `nationality_groom` int(11) DEFAULT NULL,
  `mobile_groom` varchar(15) DEFAULT NULL,
  `landline_groom` varchar(15) DEFAULT NULL,
  `email_groom` varchar(100) DEFAULT NULL,
  `address_1_groom` varchar(255) DEFAULT NULL,
  `address_2_groom` varchar(255) DEFAULT NULL,
  `barangay_groom` int(11) DEFAULT NULL,
  `city_groom` int(11) DEFAULT NULL,
  `province_groom` int(11) DEFAULT NULL,
  `country_groom` int(11) DEFAULT NULL,
  `name_parish_groom` varchar(255) DEFAULT NULL,
  `address_parish_groom` mediumtext,
  `address_provincial_groom` mediumtext,
  `name_father_groom` varchar(255) DEFAULT NULL,
  `nationality_father_groom` int(11) DEFAULT NULL,
  `name_mother_groom` varchar(255) DEFAULT NULL,
  `nationality_mother_groom` int(11) DEFAULT NULL,
  `name_bride` varchar(255) DEFAULT NULL,
  `nickname_bride` varchar(50) DEFAULT NULL,
  `dt_birth_bride` datetime DEFAULT NULL,
  `birth_place_bride` varchar(255) DEFAULT NULL,
  `religion_bride` int(11) DEFAULT NULL,
  `occupation_bride` varchar(100) DEFAULT NULL,
  `work_place_bride` varchar(255) DEFAULT NULL,
  `nationality_bride` int(11) DEFAULT NULL,
  `mobile_bride` varchar(15) DEFAULT NULL,
  `landline_bride` varchar(15) DEFAULT NULL,
  `email_bride` varchar(100) DEFAULT NULL,
  `address_1_bride` varchar(255) DEFAULT NULL,
  `address_2_bride` varchar(255) DEFAULT NULL,
  `barangay_bride` int(11) DEFAULT NULL,
  `city_bride` int(11) DEFAULT NULL,
  `province_bride` int(11) DEFAULT NULL,
  `country_bride` int(11) DEFAULT NULL,
  `name_parish_bride` varchar(255) DEFAULT NULL,
  `address_parish_bride` mediumtext,
  `address_provincial_bride` mediumtext,
  `name_father_bride` varchar(255) DEFAULT NULL,
  `nationality_father_bride` int(11) DEFAULT NULL,
  `name_mother_bride` varchar(255) DEFAULT NULL,
  `nationality_mother_bride` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `donation_type_id` int(11) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `ar_receipt` varchar(50) DEFAULT NULL,
  `or_receipt` varchar(50) DEFAULT NULL,
  `anonymous` bit(1) NOT NULL DEFAULT b'0',
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`id`, `branch_id`, `donation_type_id`, `amount`, `remarks`, `ar_receipt`, `or_receipt`, `anonymous`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(1, 1, 113, '120', NULL, NULL, NULL, b'0', 2, '2019-06-21 12:42:57', NULL, NULL, b'0'),
(2, 1, 113, '120', NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0'),
(3, 1, 113, '120', NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0'),
(4, 1, 113, '120', NULL, NULL, NULL, b'0', 4, '2019-06-21 12:43:26', NULL, NULL, b'0'),
(5, 1, 113, '120', NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0'),
(6, 1, 113, '120', NULL, NULL, NULL, b'0', 3, '2019-06-21 12:43:26', NULL, NULL, b'0'),
(7, 1, 113, '120', NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0'),
(8, 1, 113, '120', NULL, NULL, NULL, b'0', 3, '2019-06-21 12:43:26', NULL, NULL, b'0'),
(9, 1, 113, '120', NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0'),
(10, 1, 113, '120', NULL, NULL, NULL, b'0', 4, '2019-06-21 12:43:26', NULL, NULL, b'0'),
(11, 1, 113, '120', NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0'),
(12, 1, 113, '120', NULL, NULL, NULL, b'0', 3, '2019-06-21 12:43:26', NULL, NULL, b'0'),
(13, 1, 113, '120', NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0'),
(14, 1, 113, '120', NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0'),
(15, 1, 113, '120', NULL, NULL, NULL, b'0', 3, '2019-06-21 12:43:26', NULL, NULL, b'0'),
(16, 1, 113, '120', NULL, NULL, NULL, b'0', 4, '2019-06-21 12:43:26', NULL, NULL, b'0'),
(17, 1, 113, '120', NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0'),
(18, 1, 113, '120', NULL, NULL, NULL, b'0', 4, '2019-06-21 12:43:26', NULL, NULL, b'0'),
(19, 1, 113, '120', NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0'),
(20, 1, 113, '120', NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0'),
(21, 1, 113, '120', NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0'),
(22, 1, 113, '120', NULL, NULL, NULL, b'0', 4, '2019-06-21 12:43:26', NULL, NULL, b'0'),
(23, 1, 113, '120', NULL, NULL, NULL, b'0', 3, '2019-06-21 12:43:26', NULL, NULL, b'0'),
(24, 1, 113, '120', NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0'),
(25, 1, 113, '120', NULL, NULL, NULL, b'0', 3, '2019-06-21 12:43:26', NULL, NULL, b'0'),
(26, 1, 113, '120', NULL, NULL, NULL, b'0', 4, '2019-06-21 12:43:26', NULL, NULL, b'0'),
(27, 1, 113, '120', NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0'),
(28, 1, 113, '120', NULL, NULL, NULL, b'0', 3, '2019-06-21 12:43:26', NULL, NULL, b'0'),
(29, 1, 113, '120', NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0'),
(30, 1, 113, '120', NULL, NULL, NULL, b'0', 2, '2019-06-21 12:43:26', NULL, NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `global_reference_group`
--

CREATE TABLE `global_reference_group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `global_reference_group`
--

INSERT INTO `global_reference_group` (`id`, `name`, `description`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(1, 'Status', 'Status - for whole Service Transaction', 1, '2019-08-22 18:27:44', NULL, NULL, b'0'),
(2, 'Status Admin', 'Status Admin - for approval by admin/office', 1, '2019-08-22 18:27:44', NULL, NULL, b'0'),
(3, 'Status Ministers', 'Status Ministers - for approval by priest/extraordinary minister/choir', 1, '2019-08-22 18:27:44', NULL, NULL, b'0'),
(4, 'Certificate Type', 'Certificate Type', 1, '2019-08-22 18:27:44', NULL, NULL, b'0'),
(5, 'Civil Status', 'Civil Status', 1, '2019-08-22 18:27:44', NULL, NULL, b'0'),
(6, 'Donation Schedule Type', 'Donation Schedule Type', 1, '2019-08-22 18:27:44', NULL, NULL, b'0'),
(7, 'Event Type', 'Event Type', 1, '2019-08-22 18:27:44', NULL, NULL, b'0'),
(8, 'Language', 'Language', 1, '2019-08-22 18:27:44', NULL, NULL, b'0'),
(9, 'Marriage Type', 'Marriage Type', 1, '2019-08-22 18:27:44', NULL, NULL, b'0'),
(10, 'Nationality', 'Nationality', 1, '2019-08-22 18:27:44', NULL, NULL, b'0'),
(11, 'Occasion', 'Occasion', 1, '2019-08-22 18:27:44', NULL, NULL, b'0'),
(12, 'Posts Type', 'Posts Type', 1, '2019-08-22 18:27:44', NULL, NULL, b'0'),
(13, 'Program', 'Program', 1, '2019-08-22 18:27:44', NULL, NULL, b'0'),
(14, 'Purpose Type', 'Purpose Type', 1, '2019-08-22 18:27:44', NULL, NULL, b'0'),
(15, 'Religion', 'Religion', 1, '2019-08-22 18:27:44', NULL, NULL, b'0'),
(16, 'Schedule Type', 'Schedule Type', 1, '2019-08-22 18:27:44', NULL, NULL, b'0'),
(17, 'Service Type', 'Service Type', 1, '2019-08-22 18:27:44', NULL, NULL, b'0'),
(18, 'Gender', 'Gender', 1, '2019-08-22 20:13:30', NULL, NULL, b'0'),
(19, 'Clergy Type', 'Clergy Type', 1, '2019-08-25 15:21:04', NULL, NULL, b'0'),
(20, 'Ad Type', 'Ad Type', 1, '2019-08-25 19:27:58', NULL, NULL, b'0'),
(21, 'Donation Type', 'Donation Type', 1, '2019-08-27 19:18:57', NULL, NULL, b'0'),
(22, 'Product / Service Type', 'Product / Service Type', 1, '2019-09-24 16:19:48', NULL, NULL, b'0'),
(23, 'Ad Status', 'Ad Status', 1, '2019-09-24 23:04:18', NULL, NULL, b'0'),
(24, 'Church Order', 'Church Order', 1, '2019-09-13 15:01:37', NULL, NULL, b'0'),
(25, 'Church Features', 'Church Features', 1, '2019-09-27 15:25:02', NULL, NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `global_reference_value`
--

CREATE TABLE `global_reference_value` (
  `id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `sub_module_id` int(11) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `global_reference_value`
--

INSERT INTO `global_reference_value` (`id`, `group_id`, `module_id`, `sub_module_id`, `sequence`, `name`, `description`, `action`, `project_id`, `media_id`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(1, 1, NULL, NULL, 1, 'On-going', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0'),
(2, 1, NULL, NULL, 2, 'Done', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0'),
(3, 1, NULL, NULL, 3, 'Denied', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0'),
(4, 1, NULL, NULL, 4, 'Expired', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0'),
(5, 1, NULL, NULL, 5, 'Other', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'1'),
(6, 2, NULL, NULL, NULL, 'Waiting', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0'),
(7, 2, NULL, NULL, NULL, 'Reviewed', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0'),
(8, 2, NULL, NULL, NULL, 'Approved', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0'),
(9, 2, NULL, NULL, NULL, 'Denied', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0'),
(10, 2, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'1'),
(11, 3, NULL, NULL, NULL, 'Waiting', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0'),
(12, 3, NULL, NULL, NULL, 'Approved', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0'),
(13, 3, NULL, NULL, NULL, 'Rechoose', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0'),
(14, 3, NULL, NULL, NULL, 'Denied', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'1'),
(15, 3, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'1'),
(16, 4, NULL, NULL, NULL, 'Baptismal', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:44', NULL, NULL, b'0'),
(17, 4, NULL, NULL, NULL, 'Marriage', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:15:56', NULL, NULL, b'0'),
(18, 4, NULL, NULL, NULL, 'Confirmation', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:16:11', NULL, NULL, b'0'),
(19, 4, NULL, NULL, NULL, 'Communion', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:16:11', NULL, NULL, b'0'),
(20, 4, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:16:11', NULL, NULL, b'0'),
(21, 5, NULL, NULL, NULL, 'Single', 'A person who has never been married', NULL, NULL, NULL, 1, '2019-06-20 14:46:42', NULL, NULL, b'0'),
(22, 5, NULL, NULL, NULL, 'Married', 'A couple living together as husband and wife, legally or consensually;', NULL, NULL, NULL, 1, '2019-06-20 14:47:02', NULL, NULL, b'0'),
(23, 5, NULL, NULL, NULL, 'Widowed', 'A person whose bond of matrimony has been dissolved by death of his/her spouse', NULL, NULL, NULL, 1, '2019-06-20 14:47:14', NULL, NULL, b'0'),
(24, 5, NULL, NULL, NULL, 'Divorced', 'A person whose bond of matrimony has been dissolved legally and who therefore can remarry; ', NULL, NULL, NULL, 1, '2019-06-20 14:47:24', NULL, NULL, b'0'),
(25, 5, NULL, NULL, NULL, 'Separated ', 'A person separated legally or not from his/her spouse because of marital discord or misunderstanding;', NULL, NULL, NULL, 1, '2019-06-20 14:47:41', NULL, NULL, b'0'),
(26, 5, NULL, NULL, NULL, 'Registered Partnership', NULL, NULL, NULL, NULL, 1, '2019-06-20 14:47:58', NULL, NULL, b'0'),
(27, 5, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 1, '2019-06-20 14:47:58', NULL, NULL, b'0'),
(28, 6, NULL, NULL, NULL, 'Always', NULL, NULL, NULL, NULL, 1, '2019-07-18 17:01:23', NULL, NULL, b'0'),
(29, 6, NULL, NULL, NULL, 'December', NULL, NULL, NULL, NULL, 1, '2019-07-18 17:02:21', NULL, NULL, b'0'),
(30, 6, NULL, NULL, NULL, 'July', NULL, NULL, NULL, NULL, 1, '2019-07-18 17:03:20', NULL, NULL, b'0'),
(31, 6, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 1, '2019-07-18 17:03:20', NULL, NULL, b'1'),
(32, 7, NULL, NULL, NULL, 'Wedding Reception', NULL, NULL, NULL, NULL, 1, '2019-06-20 14:26:37', NULL, NULL, b'0'),
(33, 7, NULL, NULL, NULL, 'Baptismal Celebration', NULL, NULL, NULL, NULL, 1, '2019-06-20 14:27:33', NULL, NULL, b'0'),
(34, 7, NULL, NULL, NULL, 'Birthday Celebration', NULL, NULL, NULL, NULL, 1, '2019-06-20 14:27:49', NULL, NULL, b'0'),
(35, 7, NULL, NULL, NULL, 'Anniversary Celebration', NULL, NULL, NULL, NULL, 1, '2019-06-20 14:28:07', NULL, NULL, b'0'),
(36, 7, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 1, '2019-06-20 14:28:07', NULL, NULL, b'0'),
(37, 8, NULL, NULL, NULL, 'Filipino', 'Filipino', NULL, NULL, NULL, 1, '2019-06-19 16:09:38', NULL, NULL, b'0'),
(38, 8, NULL, NULL, NULL, 'English', 'English', NULL, NULL, NULL, 1, '2019-06-19 16:09:57', NULL, NULL, b'0'),
(39, 8, NULL, NULL, NULL, 'Other', 'Other', NULL, NULL, NULL, 1, '2019-06-19 16:09:57', NULL, NULL, b'0'),
(40, 9, NULL, NULL, NULL, 'Catholic', NULL, NULL, NULL, NULL, 1, '2019-06-20 16:08:29', NULL, NULL, b'0'),
(41, 9, NULL, NULL, NULL, 'Protestant', NULL, NULL, NULL, NULL, 1, '2019-06-20 16:08:43', NULL, NULL, b'0'),
(42, 9, NULL, NULL, NULL, 'Civil', NULL, NULL, NULL, NULL, 1, '2019-06-20 16:08:54', NULL, NULL, b'0'),
(43, 9, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 1, '2019-06-20 16:09:07', NULL, NULL, b'0'),
(44, 10, NULL, NULL, NULL, 'Filipino', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:40:59', NULL, NULL, b'0'),
(45, 10, NULL, NULL, NULL, 'American', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:41:06', NULL, NULL, b'0'),
(46, 10, NULL, NULL, NULL, 'Canadian', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:41:14', NULL, NULL, b'0'),
(47, 10, NULL, NULL, NULL, 'Chinese', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:45:56', NULL, NULL, b'0'),
(48, 10, NULL, NULL, NULL, 'Australian', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:46:29', NULL, NULL, b'0'),
(49, 10, NULL, NULL, NULL, 'French', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:46:59', NULL, NULL, b'0'),
(50, 10, NULL, NULL, NULL, 'Japanese', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:47:25', NULL, NULL, b'0'),
(51, 10, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:47:25', NULL, NULL, b'0'),
(52, 11, NULL, NULL, NULL, 'Blessing of the house', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:08:38', NULL, NULL, b'0'),
(53, 11, NULL, NULL, NULL, 'Blessing of the businesses', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:11:15', NULL, NULL, b'0'),
(54, 11, NULL, NULL, NULL, 'Blessing of the cars', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:11:38', NULL, NULL, b'0'),
(55, 11, NULL, NULL, NULL, 'Annointing of the sick', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:11:55', NULL, NULL, b'0'),
(56, 11, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:11:55', NULL, NULL, b'0'),
(57, 12, NULL, NULL, NULL, 'News', 'News', NULL, NULL, NULL, 1, '2019-06-18 15:50:27', 1, '2019-06-18 15:50:27', b'0'),
(58, 12, NULL, NULL, NULL, 'Updates', 'Updates', NULL, NULL, NULL, 1, '2019-06-18 15:50:35', 1, '2019-06-18 15:50:35', b'0'),
(59, 12, NULL, NULL, NULL, 'Projects', 'Projects', NULL, NULL, NULL, 1, '2019-06-18 15:51:14', 1, '2019-06-18 15:51:14', b'0'),
(60, 12, NULL, NULL, NULL, 'Schedules', 'Schedules', NULL, NULL, NULL, 1, '2019-06-18 15:52:29', 1, '2019-06-18 15:52:29', b'0'),
(61, 12, NULL, NULL, NULL, 'Announcements', 'Announcements', NULL, NULL, NULL, 1, '2019-06-18 15:53:22', 1, '2019-06-18 15:53:22', b'0'),
(62, 12, NULL, NULL, NULL, 'Advertisements ', 'Advertisements ', NULL, NULL, NULL, 1, '2019-06-18 15:54:31', NULL, NULL, b'0'),
(63, 12, NULL, NULL, NULL, 'Icons', 'Icons', NULL, NULL, NULL, 1, '2019-06-18 17:09:09', NULL, NULL, b'0'),
(64, 13, NULL, NULL, NULL, 'Home', 'Home', NULL, NULL, NULL, 1, '2019-06-19 17:55:55', NULL, NULL, b'0'),
(65, 13, NULL, NULL, NULL, 'Send Help', 'Send Help', NULL, NULL, NULL, 1, '2019-06-19 17:57:27', NULL, NULL, b'0'),
(66, 13, NULL, NULL, NULL, 'Services', 'Services', NULL, NULL, NULL, 1, '2019-06-19 17:57:44', NULL, NULL, b'0'),
(67, 13, NULL, NULL, NULL, 'Transparency', 'Transparency', NULL, NULL, NULL, 1, '2019-06-19 17:58:30', NULL, NULL, b'0'),
(68, 14, 5, 3, NULL, 'Thanksgiving', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:48:41', NULL, NULL, b'0'),
(69, 14, 5, 3, NULL, 'Anniversary (Wedding)', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:49:08', NULL, NULL, b'0'),
(70, 14, 5, 3, NULL, 'Anniversary (Death)', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:49:33', NULL, NULL, b'0'),
(71, 14, 5, 3, NULL, 'Birthday', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:49:47', NULL, NULL, b'0'),
(72, 14, 5, 3, NULL, 'Healing', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:59:31', NULL, NULL, b'0'),
(73, 14, 5, 3, NULL, 'Employment', NULL, NULL, NULL, NULL, 1, '2019-06-20 15:59:59', NULL, NULL, b'0'),
(74, 14, 5, 3, NULL, 'Board exam ', NULL, NULL, NULL, NULL, 1, '2019-06-20 16:02:45', NULL, NULL, b'0'),
(75, 14, 5, 3, NULL, 'Other', NULL, NULL, NULL, NULL, 1, '2019-06-20 16:03:07', NULL, NULL, b'0'),
(76, 14, 5, 5, NULL, 'Personal file ', NULL, NULL, NULL, NULL, 1, '2019-06-20 16:03:48', NULL, NULL, b'0'),
(77, 14, 5, 5, NULL, 'School', NULL, NULL, NULL, NULL, 1, '2019-06-20 16:04:04', NULL, NULL, b'0'),
(78, 14, 5, 5, NULL, 'Confimation', NULL, NULL, NULL, NULL, 1, '2019-06-20 16:04:19', NULL, NULL, b'0'),
(79, 14, 5, 5, NULL, 'First communion', NULL, NULL, NULL, NULL, 1, '2019-06-20 16:04:35', NULL, NULL, b'0'),
(80, 14, 5, 5, NULL, 'Legal documents', NULL, NULL, NULL, NULL, 1, '2019-06-20 16:04:50', NULL, NULL, b'0'),
(81, 14, 5, 5, NULL, 'Issuance of Birth certificate', NULL, NULL, NULL, NULL, 1, '2019-06-20 16:05:11', NULL, NULL, b'0'),
(82, 14, 5, 5, NULL, 'Marriage', NULL, NULL, NULL, NULL, 1, '2019-06-20 16:05:28', NULL, NULL, b'0'),
(83, 14, 5, 5, NULL, 'Other', NULL, NULL, NULL, NULL, 1, '2019-06-20 16:05:28', NULL, NULL, b'0'),
(84, 15, NULL, NULL, NULL, 'Christianity', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:15:24', NULL, NULL, b'0'),
(85, 15, NULL, NULL, NULL, 'Protestant', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:23:38', NULL, NULL, b'0'),
(86, 15, NULL, NULL, NULL, 'Orthodox', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:24:41', NULL, NULL, b'0'),
(87, 15, NULL, NULL, NULL, 'Iglesia ni Cristo', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:25:00', NULL, NULL, b'0'),
(88, 15, NULL, NULL, NULL, 'Seventh-day Adventist Church', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:25:20', NULL, NULL, b'0'),
(89, 15, NULL, NULL, NULL, 'United Church of Christ in the Philippines', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:25:51', NULL, NULL, b'0'),
(90, 15, NULL, NULL, NULL, 'Evangelicals', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:26:04', NULL, NULL, b'0'),
(91, 15, NULL, NULL, NULL, 'Muslim', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:26:24', NULL, NULL, b'0'),
(92, 15, NULL, NULL, NULL, 'Anitism', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:26:54', NULL, NULL, b'0'),
(93, 15, NULL, NULL, NULL, 'Buddhism', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:27:20', NULL, NULL, b'0'),
(94, 15, NULL, NULL, NULL, 'Sikhs', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:27:49', NULL, NULL, b'0'),
(95, 15, NULL, NULL, NULL, 'Hinduism', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:27:58', NULL, NULL, b'0'),
(96, 15, NULL, NULL, NULL, 'Judaism', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:28:10', NULL, NULL, b'0'),
(97, 15, NULL, NULL, NULL, 'Baha\'i', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:28:38', NULL, NULL, b'0'),
(98, 15, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:28:38', NULL, NULL, b'0'),
(99, 16, NULL, NULL, NULL, 'Holy Mass', 'Holy Mass', NULL, NULL, NULL, 1, '2019-06-19 16:04:15', NULL, NULL, b'0'),
(100, 16, NULL, NULL, NULL, 'Confessions', 'Confessions', NULL, NULL, NULL, 1, '2019-06-19 16:04:33', NULL, NULL, b'0'),
(101, 16, NULL, NULL, NULL, 'Blessings', 'Blessings of cars and religious items', NULL, NULL, NULL, 1, '2019-06-19 16:05:05', NULL, NULL, b'0'),
(102, 16, NULL, NULL, NULL, 'Live Mass', 'Live Mass', NULL, NULL, NULL, 1, '2019-06-19 16:05:16', NULL, NULL, b'0'),
(103, 17, NULL, NULL, NULL, 'Mass', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:11:39', NULL, NULL, b'0'),
(104, 17, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, 1, '2019-06-20 18:11:39', NULL, NULL, b'0'),
(105, 18, NULL, NULL, NULL, 'Male', 'Male', NULL, NULL, NULL, 1, '2019-08-22 20:14:47', NULL, NULL, b'0'),
(106, 18, NULL, NULL, NULL, 'Female', 'Female', NULL, NULL, NULL, 1, '2019-08-22 20:15:00', NULL, NULL, b'0'),
(107, 19, NULL, NULL, NULL, 'Priest', 'Priest', NULL, NULL, NULL, 1, '2019-08-25 15:19:27', NULL, NULL, b'0'),
(108, 19, NULL, NULL, NULL, 'Pastor', 'Pastor', NULL, NULL, NULL, 1, '2019-08-25 15:19:29', NULL, NULL, b'0'),
(109, 19, NULL, NULL, NULL, 'Nun', 'Nun', NULL, NULL, NULL, 1, '2019-08-25 15:19:53', NULL, NULL, b'0'),
(110, 19, NULL, NULL, NULL, 'Brother', 'Brother', NULL, NULL, NULL, 1, '2019-08-25 15:19:57', NULL, NULL, b'0'),
(111, 20, NULL, NULL, NULL, 'Widget', 'This is for widget type of ads', NULL, NULL, NULL, 1, '2019-08-25 19:30:35', NULL, NULL, b'0'),
(112, 20, NULL, NULL, NULL, 'Splash', 'This is for splash screen type of ads', NULL, NULL, NULL, 1, '2019-08-25 19:30:39', NULL, NULL, b'0'),
(113, 21, NULL, NULL, 1, 'Mt. Carmel Shrine', 'Our Lady of Mount Carmel Shrine', NULL, 0, 24, 1, '2019-07-21 12:30:40', NULL, NULL, b'0'),
(114, 21, NULL, NULL, 2, 'Scholastics', 'Carmelite Foundation for Carmelite Scholastics, Inc.\r\nFor recruitment, postulant, novice, deacon, presbyter and seminary for philosophy and theology.', NULL, 0, 28, 1, '2019-06-21 12:30:54', NULL, NULL, b'0'),
(115, 21, NULL, NULL, 3, 'Carefund', 'For elderly priests, sick priests, medication and hospitalization', NULL, 0, 25, 1, '2019-06-21 12:30:54', NULL, NULL, b'0'),
(116, 21, NULL, NULL, 4, 'Feeding Program', 'for National Children’s Hospital ', NULL, 0, 26, 1, '2019-06-21 12:30:54', NULL, NULL, b'0'),
(117, 21, NULL, NULL, 6, 'Noche Buena', 'Handog Noche Buena sa Pamilya', NULL, 0, 27, 1, '2019-06-21 12:30:54', NULL, NULL, b'0'),
(118, 21, NULL, NULL, 7, 'Christmas Gift', 'My Christmas Gift to Infant Jesus ', NULL, 0, 29, 1, '2019-06-21 12:30:54', NULL, NULL, b'0'),
(119, 21, NULL, NULL, 5, 'Fiesta', 'Feast of Our Lady of Mount Carmel', NULL, 0, 55, 1, '2019-07-01 18:38:05', NULL, NULL, b'0'),
(120, 22, NULL, NULL, 1, 'Apparel', 'Apparel', NULL, NULL, NULL, 1, '2019-09-24 16:20:45', NULL, NULL, b'0'),
(121, 22, NULL, NULL, 2, 'Arts & Entertainment', 'Arts & Entertainment', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0'),
(122, 22, NULL, NULL, 3, 'Autos & Vehicles', 'Autos & Vehicles', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0'),
(123, 22, NULL, NULL, 4, 'Beauty & Personal Care', 'Beauty & Personal Care', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0'),
(124, 22, NULL, NULL, 5, 'Business & Industrial', 'Business & Industrial', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0'),
(125, 22, NULL, NULL, 6, 'Computers & Consumer Electronics', 'Computers & Consumer Electronics', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0'),
(126, 22, NULL, NULL, 7, 'Dining & Nightlife', 'Dining & Nightlife', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0'),
(127, 22, NULL, NULL, 8, 'Family & Community', 'Family & Community', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0'),
(128, 22, NULL, NULL, 9, 'Finance', 'Finance', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0'),
(129, 22, NULL, NULL, 10, 'Food & Groceries', 'Food & Groceries', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0'),
(130, 22, NULL, NULL, 11, 'Health', 'Health', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0'),
(131, 22, NULL, NULL, 12, 'Hobbies, Games & Leisure', 'Hobbies, Games & Leisure', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0'),
(132, 22, NULL, NULL, 13, 'Home & Garden', 'Home & Garden', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0'),
(133, 22, NULL, NULL, 14, 'Internet & Telecom', 'Internet & Telecom', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0'),
(134, 22, NULL, NULL, 15, 'Jobs & Education', 'Jobs & Education', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0'),
(135, 22, NULL, NULL, 16, 'Law & Government', 'Law & Government', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0'),
(136, 22, NULL, NULL, 17, 'Mobile App Utilities', 'Mobile App Utilities', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0'),
(137, 22, NULL, NULL, 18, 'News, Books & Publications', 'News, Books & Publications', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0'),
(138, 22, NULL, NULL, 19, 'Occasions & Gifts', 'Occasions & Gifts', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0'),
(139, 22, NULL, NULL, 20, 'Real State', 'Real State', NULL, NULL, NULL, 1, '2019-09-24 16:20:46', NULL, NULL, b'0'),
(140, 22, NULL, NULL, 21, 'Sports & Fitness', 'Sports & Fitness', NULL, NULL, NULL, 1, '2019-09-24 16:20:47', NULL, NULL, b'0'),
(141, 22, NULL, NULL, 22, 'Travel & Tourism', 'Travel & Tourism', NULL, NULL, NULL, 1, '2019-09-24 16:20:47', NULL, NULL, b'0'),
(142, 23, NULL, NULL, 1, 'Approved', 'Approved', NULL, NULL, NULL, 1, '2019-09-24 23:04:34', NULL, NULL, b'0'),
(143, 23, NULL, NULL, 2, 'Declined', 'Declined', NULL, NULL, NULL, 1, '2019-09-24 23:04:36', NULL, NULL, b'0'),
(144, 24, NULL, NULL, NULL, 'Friars', 'Friars', NULL, NULL, NULL, 1, '2019-09-13 15:07:50', NULL, NULL, b'0'),
(145, 24, NULL, NULL, NULL, 'Nuns', 'Nuns', NULL, NULL, NULL, 1, '2019-09-13 15:07:50', NULL, NULL, b'0'),
(146, 24, NULL, NULL, NULL, 'OCDS', 'Ordo Carmelitarum Discalceatorum\r\nSaecularis - OCDS', NULL, NULL, NULL, 1, '2019-09-13 15:09:36', NULL, NULL, b'0'),
(147, 25, NULL, NULL, NULL, 'Parish Church', 'Parish Church', NULL, NULL, NULL, 1, '2019-09-13 15:09:36', 1, '2019-09-27 15:31:23', b'0'),
(148, 25, NULL, NULL, NULL, 'Retreat House', 'Retreat House', NULL, NULL, NULL, 1, '2019-09-19 13:38:54', 1, '2019-09-27 15:32:17', b'0'),
(149, 21, NULL, NULL, 8, 'Donation', '', NULL, 0, 24, 1, '2019-09-25 13:05:54', NULL, NULL, b'0'),
(150, 21, NULL, NULL, 9, 'Purchase', '', NULL, 0, 24, 1, '2019-09-25 13:06:37', NULL, NULL, b'0'),
(151, 21, NULL, NULL, 10, 'Renovation', '', NULL, 0, 24, 1, '2019-09-25 13:08:47', NULL, NULL, b'0'),
(152, 21, NULL, NULL, 11, 'Raising Up', '', NULL, 0, 24, 1, '2019-09-25 13:10:54', NULL, NULL, b'0'),
(153, 21, NULL, NULL, 12, 'Re-painting', '', NULL, 0, 24, 1, '2019-09-25 13:11:17', NULL, NULL, b'0'),
(154, 21, NULL, NULL, 13, 'LCD Screens', '', NULL, 0, 24, 1, '2019-09-25 13:12:40', NULL, NULL, b'0'),
(155, 8, NULL, NULL, NULL, 'Hiligaynon', 'Hiligaynon', NULL, NULL, NULL, 1, '2019-09-26 12:02:35', NULL, NULL, b'0'),
(156, 25, NULL, NULL, NULL, 'Novice House', 'Novice House', NULL, NULL, NULL, 1, '2019-09-27 15:32:57', NULL, NULL, b'0'),
(157, 25, NULL, NULL, NULL, 'Carmelite Monastery', 'Carmelite Monastery', NULL, NULL, NULL, 1, '2019-09-27 15:33:58', NULL, NULL, b'0'),
(158, 25, NULL, NULL, NULL, 'Community', 'Community', NULL, NULL, NULL, 1, '2019-09-27 15:34:36', NULL, NULL, b'0'),
(159, 24, NULL, NULL, NULL, 'Confraternity', 'Confraternity', NULL, NULL, NULL, 1, '2019-09-27 17:27:48', NULL, NULL, b'0'),
(160, 24, NULL, NULL, NULL, 'Fraternity', 'Fraternity', NULL, NULL, NULL, 1, '2019-09-27 17:28:18', NULL, NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `date_of_establishment` varchar(255) DEFAULT NULL,
  `feast_day` varchar(255) DEFAULT NULL,
  `titular` varchar(100) DEFAULT NULL,
  `diocese` varchar(100) DEFAULT NULL,
  `content` longtext,
  `media_id` int(11) DEFAULT NULL COMMENT 'photo',
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `branch_id`, `date_of_establishment`, `feast_day`, `titular`, `diocese`, `content`, `media_id`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(1, 1, '17 February 1975', '16 July', 'Our Lady of Mt. Carmel', 'Cubao', '<p style=\"text-align: justify\">The Quezon City district of New Manila is a haven for various Catholic orders, with many chapels and convents scattered around the area; from the American colonial period (1898-1946) Convent of Carmel of Thérèse of Lisieux, the Sisters of St. Paul of Chartres Novitiate and Provincial House (established 1931), Franciscan St. Joseph’s Academy and Convent (established 1932), and the Society of the Divine Word’s Christ the King Mission Seminary (established 1933), to the post-war Congregation of the Religious of the Virgin Mary Compound (established 1950), the Pink Sister’s St. Joseph Convent of Perpetual Adoration (established 1965), the Congregatio Immaculati Cordis Mariae’s Maryhill School Of The Theology (1979),the Local Superior of The Society of Monfort Missionaries(established 1984), and the Foundation for Carmelite Scholastics(established 1987). However, the center of most Catholic activities is the Minor Basilica of the National Shrine of Our Lady of Mount Carmel, located on Broadway Avenue, taking most of the block between 4th and 5th street.</p><p>\r\n</p><p style=\"text-align: justify\">The Mount Carmel Parish is part of the third wave of Discalced Carmelites missions to the Philippines, which started in 1923, with the arrival of four French nuns from Hue, Vietnam, to the shores of Jaro, Iloilo. In this first wave, the Convent Carmel of Thérèse of Lisieux was founded in 1926, along Gilmore Avenue, in New Manila. The second wave also began in Infanta, Quezon Province, in 1946; and this time the Discalced Carmelite friars were now leading the wave. Part of the third wave that started in Jaro, Iloilo, the Anglo-Irish Carmelite friars established a foundation in 1954, in New Manila, Quezon City, and on December 30 of the same year, the cornerstone was laid for the new church.</p><p>\r\n</p><p style=\"text-align: justify\">The new church was dedicated as a shrine to Our Lady of Mount Carmel, a title of the Blessed Virgin Mary, which the first Carmelites named in the construction of their first monastery on Mount Karmel (Har HaKarmel) in the northern territories of Israel, during the 12th Century. The order of Carmelite started with Christian hermits living in Har HaKarmel, during the Crusades, who chose the mountain where the prophet Elijah had lived and challenged the priests of the god Baal, as a reflection of their faith against the Muslims who have taken over the holy city of Jerusalem.</p>', NULL, 1, '2019-06-19 14:27:04', 1, '2019-09-21 19:55:36', b'0'),
(2, 2, '20 April 1969', '16 July', 'Our Lady of Mt. Carmel', 'Cubao', '<p style=\"text-align: justify\">The Anglo-Irish Carmelites came to the Philippines primarily to work with the Carmelite Nuns and the Secular Order of Carmel. Yet, pastoral needs had not turned deaf ear to the cry “cry of the people”. It was during the 1952 Bishop’s Conference held in Manila that Archbishop Jose Ma. Cuenco of Jaro, Iloilo City, approached the Discalced Carmelites and invited them to his Archdiocese, immediately offering them a church and a convent. It was only in 1953, that the Carmelites actually accepted the invitation and agreed to make a foundation in Jaro itself.</p><p>\r\n</p><p style=\"text-align: justify\">There was no luck in personnel in St. Joseph the Worker Parish. Father John Mary Chin in Jaro as the community’s new bursar. In January 5, 1954, Father Mark informed the Jaro community that the “Magi had arrived!” This good news announced the arrival of Father Vincent Rogers, Father Gregory Maloney and Father Celsus Wren, later reassigned to Ireland. Brother Kieran Deely took his place. Several other Carmelites arrived and were immediately assigned at one time or another in Jaro. There were Father Joseph Glynn, Father John Venard Smith, Father Sean Walsh(later assigned to the Novitiate in Tugbok, Davao City), Father Michael Fritzgerald and Father Frank Considine.</p><p>\r\n</p><p style=\"text-align: justify\">In 1964, the Carmelites were able to build St. Joseph the Worker Church, a simple two-storey wooden structure, which served as a chapel on the first floor and a Monastery on the second floor. In 1969, the little chapel, seating merely 120 persons, was raised to the status of “Parish Church” and officially became the St. Joseph the Worker Parish. The decree of erection on April 20, 1969 states:</p><p>\r\n</p><p style=\"text-align: justify\">“Since the spiritual needs of the people of the Cathedral Parish of Jaro, Iloilo City, cannot be properly attended to because of the large territory of the Parish and because of the distance of some barrios of Mandurriao, Iloilo City and Pavia, Iloilo, from their respective Parish churches, I by the race of God and the Apostolic See, Archbishop of Jaro, After mature consideration and for the sake of the salvation of souls, hereby erect the new Parish of St. Joseph the Worker, in the Barrio of San Isidro, Jaro, Iloilo City.</p><p>\r\n</p><p style=\"text-align: justify\">At the same time, I hereby decree that the new Parish comprises the following barrios of Jaro, namely, SAN ISIDRO, SAMBAG, UNGCA, AND DUNGON: barrios of MANDURRIAO, DUNGON, STA. ROSA, AND TAFT; whose inhabitants will constitute the members of the new Parish St. Joseph the Worker.”</p><p>\r\n</p><p style=\"text-align: justify\">Aside from the barangays, the Parish also ministers to the three public schools in Barangay Dungon B, Sambag and Ungca II. the pupils in Luis Mirasol Memorial Elementary School, Sambag Elementary School, and Ungca II Elementary School were taught catechism in their regular religion classes and were appropriately prepared to receive the Holy Sacraments in the Parish Church. Children are also tap to participate in the parochial activities through membership in the various mandated organizations</p><p>\r\n</p><p style=\"text-align: justify\">Realizing their role in the parish, the people responded to the call in participating in the muti-faceted ministries of the Church. One after another groups were formed and the workload was lighter than before.</p><p>\r\n</p><p style=\"text-align: justify\">After servicing the parish for more than twenty-five years and with the advent of an increasing parish population, the two-storey St. Joseph Parish Church was demolished in the mid 1994 to give way for a bigger and more permanent Church. On May 1, 1994, the groundbreaking ceremony took place with the late Archbishop Alberto Piamonte officiating. The “new” St. Joseph the Worker Parish Church , which seats 1,000 was blessed on October 15, 1995.</p><p>\r\n</p><p style=\"text-align: justify\">Three years, six months and sixteen days have since the “new” St. Joseph Church has been blessed and now it has become more than just a “new building”. It stands as a new “monument” of renewed, faith, hope and life in the entire parish. Over the last thirty years, St. Joseph the Worker has developed into a true parish. One that is a “community of disciples”, a people who strive to live out the priestly, prophetic and kingly mission of Christ, with equal respect and complementing each other’s particular talents. To move from “theory” to “life”, the parish of St. Joseph the Worker organized its Parish Congress in April 12, 1996 with participants coming from every barangay and the mandated organizations in the Parish. \r\n</p><p>\r\n</p><p style=\"text-align: justify\">The result of this was the erection of the Parish Pastoral Council (PPC) which sets off the goals laid out in the parish pastoral plan; Parish Apostolic Council (PAC) is the implementing arm of the Parish and is made of several ministries, such as worship, education, services, temporalities, and youth; and the Parish Finance Council (PFC) whose duty is to find the money to finance the parish projects. Each of theseCouncils has its own norms and by-laws to guide and regulate their way of proceeding in accordance with the needs and aspirations of the “people of God” in St. Joseph the Worker Parish.</p><p>\r\n</p><p style=\"text-align: justify\">The Parish Councils of St. Joseph the Worker Parish are in place. The “hard works” of moving from theory to implementation got off to a good start, THANK GOD! The members of the six ministries which makes up the Parish Apostolic Council, together with the other two Parish Councils are clear on where they are going and very much aware of what their functions are. Their direction is to establish a Church, a people of God who are “Christian, community and united”. This tells us that they intend to establish a Church that “ serves and shares its time, talent and treasures” with everybody, no matter who he or she may be. This Christian sense of evangelical service is evident in all mandated organizations, which functions to establish the parish of St. Joseph the Worker Parish, we can see that they are positive and constructive “outreach” in action, we can see this in the “bond” that exists between the barangay within the parish and the parish leadership. The Carmelites and the parish personnel have offered the parish facilities for various civil activities sponsored by the Barnagay surrounding the parish. It’s also seen in the mentality of parish leaders who have always valued “education”. It is evident that the parish has high esteem for the teachers and administrators of the three Elementary Schools who with great sacrifice have served faithfully and contributed enormously to the growth of St. Joseph the Worker Parish, and especially to the well being of the Nation. The parish has responded by providing religious education projects for three barangay elementary schools throughout the year. The few pastoral and evangelical services offered by the parish priest and the parish catechists are successful because of the cooperation and collaboration of the teachers and their administrators in those three barangay elementary schools within the parish. The parish benefit greatly for this simple attitude and spirit and it is most grateful.</p><p>\r\n</p><p style=\"text-align: justify\">Over and over this accomplishments and success, the parish of St. Joseph the Worker is most grateful and forever be indebted to the different parish priests who have willfully offered their talents and full service for the betterment of this humble place in Jaro, Iloilo City. in its thirtieth year, the parish has found new “ kura paroko” in the person of Father Danilo D. Fauste, OCD, who has installed last March 19, 1999, taking over Father Arnold Boehme, OCD (1996-1999). Father Dan, as he is fondly called by the parishioners, hails from Southern Leyte and is the tenth parish priest who was assigned her at St. Joseph. The other parish priests who have spent some years here in Jaro were: Father Vincent Rogers, OCD (1969-1972), Father John Paul Kelley, OCD (1972-1975), Father Michael Fritzgerald, OCD (1975-1978), Father Anselm Ca ñonero, OCD (1978-1982), Father Herman Esselman, OCD (1982-1985), Father Tom Shanahan, OCD (1985-1987), Father Salvador de la Cruz, OCD (1987-1989), Father Alex T. Collera, OCD (1989-1996), Father Arnold Boehme, OCD (1996-1999).</p>', NULL, 1, '2019-09-16 14:46:01', NULL, NULL, b'0'),
(3, 3, '9 November 1923', '16 July', 'Our Lady of Mt. Carmel', 'Cubao', '<p style=\"text-align: justify\">Jaro Carmel, the first Discalced Carmelite Monastery in the Philippines was founded from the Carmel of Hue, Vietnam because of the earnest request of Bishop James McCloskey, then Bishop of Jaro, Iloilo City, Philippines.</p><p>\r\n</p><p style=\"text-align: justify\">The Carmel of Lisieux where St. Therese of the Child Jesus entered, founded the Carmel of Saigon, Vietnam in 1861. Saigon Carmel founded the Carmel of Hanoi in 1895, Hanoi Carmel founded the Carmel of Hue in 1909 and Hue Carmel founded the Carmel of Jaro in 1923. St. Therese wrote to her spiritual brother, Fr. Roulland about six months before her death (March 19,1897); \"...I can assure you that if Jesus does not soon come looking for me from the Carmel of Heaven, I shall one day leave for that of Hanoi; for now there is a Carmel in that city, the Saigon Carmel recently founded it.\"\" Her desire to go to Hanoi Carmel was not realized because of her illness. She said: \"After my death I will go very quickly to the Carmel of Hanoi.\"</p><p>\r\n</p><p style=\"text-align: justify\">Most Reverend James P. McCloskey had a great love for and devotion to Our Lady of Mount Carmel and St. Therese of the Child Jesus. Because of this he desired to have a Carmelite Monastery in his diocese. He dreamt that there would be someone who, by day and by night, would be praying for the needs of his diocese; its bishop and priests in particular, and for the Philippines, in general.</p><p>\r\n</p><p style=\"text-align: justify\">The dream became a reality on November 9, 1923. This day marked the foundation of Carmel in the Philippines. The first Mass was celebrated in Molo, Iloilo City, where the four foundresses were temporarily housed.</p><p>\r\n</p><p style=\"text-align: justify\">In the book entitled, St. Therese of Lisieux, the Little Flower, written by Fr. Thomas Taylor, he wrote of an incident that Cardinal Dougherty, then Archbishop of Manila shared with him; \"\"Replying to a further question His Eminence told the story of what had occurred to Bishop McCloskey of the Philippines. The narrative is from the Bishop\'s own lips. Visiting the Carmel of Lisieux he passed through the sacristy where, behind a beautiful wrought-iron screen, are kept the most precious souvenirs of the Saint, such as the long tresses of her hair, her habit and First Communion dress, her instruments of penance, the miraculous palm which was buried with her and which was found to be still fresh and green, thirteen years after her death; as well as other articles of interest. A Carmelite nun standing before the grille explained to him the various objects. It was pleasant to listen to her account, but he went away puzzled at the presence of a Carmelite outside of her enclosure. Later in the day he referred to the matter when speaking to the Prioress, Mother Agnes of Jesus (Pauline; the blood sister of St. Therese). The Prioress assured him that not one of her community left the enclosure that day. The Bishop firmly insisted that he had seen a Carmelite nun in the sacristy.</p><p>\r\n</p><p style=\"text-align: justify\">\"\"Would Your Lordship kindly describe the person you saw?\" said Mother Agnes. The Bishop gave a full description of the nun, \"My Lord,\" she replied, \"the one who did you the honour of explaining the souvenirs in the sacristy was none other than Saint Therese of the Child Jesus herself.\"</p><p>\r\n</p><p style=\"text-align: justify\">Bishop McCloskey was the first member of the Discalced Carmelite Third Order in the Philippines. He donated all his inheritance from the estate of his parents in Philadelphia for the building of Jaro Carmel. He died a saintly death on April 9, 1945. Fourteen years after his death, his brown scapular and his wooden rosary beads were found intact, while his priestly vestments were reduced to dust. These souvenirs are kept in Jaro Carmel.</p><p>\r\n</p><p style=\"text-align: justify\">Source: https://www.jarocarmel.com/</p>\r\n', NULL, 1, '2019-09-16 14:59:23', 1, '2019-09-21 17:52:26', b'0'),
(4, 4, '17 February 1975', '16 July', 'Our Lady of Mt. Carmel', 'Cubao', '<p style=\"text-align: justify\"></p><p>\r\n</p><p style=\"text-align: justify\"></p><p>\r\n</p><p style=\"text-align: justify\"></p>', NULL, 1, '2019-09-16 15:01:46', NULL, NULL, b'0'),
(5, 5, '15 May 1965', '16 July', 'Our Lady of Mt. Carmel', 'Cubao', '<p style=\"text-align: justify\">The first Discalced Carmelite Friars in the Philippines arrived in 1947. After ten years, in 1957, they decide to “established a retreat house for the purpose of practice in prayer and spiritual life (Carmelite Constitutio, 55).”</p><p>\r\n</p><p style=\"text-align: justify\">In the mid 50’s Father Gabriel Gates, OCD was asked to set up a retreat house in the Diocese of Bacolod, Negros Occidental. Having received the ecclesial permission, the cornerstone of Our Lady’s Hill Retreat House was laid on May 15, 1965. On July 17, 1966, the Retreat House was inaugurated and blessed by Bishop Manuel Yap, Bishop Ordinary of Bacolod City. the Director of the Center for 20 years was Fr. Bernard Ybiernas-Mapa, OCD.</p><p>\r\n</p><p style=\"text-align: justify\">Over the years, Our Lady’s Hill became known as a place of prayer and silence. Its solitude has been helping retreatants discover the mystical space at the center of their lives. They found nourishment to satisfy their hunger and thirst for God.</p><p>\r\n</p><p style=\"text-align: justify\">Due to social-political situation, the Retreat House was closed in the late 80’s anre-opened in early 90’s. From 2001-2006 it was renamed as the Postulants’ House of Formation due to the increase of vocation.</p><p>\r\n</p><p style=\"text-align: justify\">The Provincial Chapter of OCD in March 2005 decided to establish the Center of Spirituality, entirely directed to prayer and contemplation at the service of the Church. For the past 40 years, Our Lady’s Hill never lost its spirit of prayer, silence and solitude.</p>', NULL, 1, '2019-09-16 15:02:09', NULL, NULL, b'0'),
(6, 6, '17 February 1975', '16 July', 'Our Lady of Mt. Carmel', 'Cubao', '<p style=\"text-align: justify\"></p><p>\r\n</p><p style=\"text-align: justify\"></p><p>\r\n</p><p style=\"text-align: justify\"></p>', NULL, 1, '2019-09-16 15:02:42', NULL, NULL, b'0'),
(7, 7, '17 February 1975', '16 July', 'Our Lady of Mt. Carmel', 'Cubao', '<p style=\"text-align: justify\"></p><p>\r\n</p><p style=\"text-align: justify\"></p><p>\r\n</p><p style=\"text-align: justify\"></p>', NULL, 1, '2019-09-16 15:03:05', NULL, NULL, b'0'),
(8, 8, '17 February 1975', '16 July', 'Our Lady of Mt. Carmel', 'Cubao', '<p style=\"text-align: justify\"></p><p>\r\n</p><p style=\"text-align: justify\"></p><p>\r\n</p><p style=\"text-align: justify\"></p>', NULL, 1, '2019-09-16 15:02:42', NULL, NULL, b'0'),
(9, 9, '17 February 1975', '16 July', 'Our Lady of Mt. Carmel', 'Cubao', '<p style=\"text-align: justify\"></p><p>\r\n</p><p style=\"text-align: justify\"></p><p>\r\n</p><p style=\"text-align: justify\"></p>', NULL, 1, '2019-09-21 16:25:01', NULL, NULL, b'0'),
(10, 10, '17 February 1975', '16 July', 'Our Lady of Mt. Carmel', 'Cubao', '<p style=\"text-align: justify\"> Like a bud of a flower on an arid ground of summer is the birth of Ozamis Carmel. In the midst of seeming impossibility, God in all his goodness showed Himself a LIVING GOD, since this Carmel is the Carmel of the living GOD. He made all things possible in the emptiness and nothingness of the place and people. The scenario revealed the nada, nada of St. John of the Cross since he is the patron saint of this new community.</p><p>\r\n</p><p style=\"text-align: justify\">When Bishop Patrick Cronin SSC (realizing the value of the presence of contemplative community devoted to prayer as a dynamo of the Church in his area of responsibility) invited the Carmel of Bacolod to have foundation in his prelature in 1950, Bacolod Carmel was only 4 years old, newly devastated by the recent war and surely not yet ready for a foundation. At that moment, Mother Mary Louise requested Rev. Fr. Marie- Eugene, then first Definitor of our order, to choose two Carmelites to strengthen her own Carmel of Bacolod in view of the future foundation. In May 1954, two French nuns arrived in the Philippines, Sister Catherine Teresa Trits and Sister Frances Therese Delmas, to become chapter nuns of Bacolod Carmel. It was only in 1961 that Mother Mary Louise judged that her community was ready for a foundation of which she was the moving Spirit.</p><p>\r\n</p><p style=\"text-align: justify\">It was in August 1962 that Bishop Cronin gave the signal to start the foundation. However, despite his fervent desire, he was not in a financial condition to help build Carmel. He wrote to Mo. Frances, “My prelature is poor and my income is small.” When Mo. Mary Louise received this news, she consulted her community and the generous friends and benefactors of Bacolod Carmel. Mr and Mrs. Edgardo Ledesma, Sr., Mr and Mrs. Fernando Arguelles, Sr. donated the amount for the acquisition of the land. The land chosen was partly from the properties of Dr. Jesus Sanciangco Sr., and Mr. Cenon Carcueva and also Ana Fernandez. It was on March 14, 1962 that Mother Frances Therese of the Child Jesus and Sr. Mary Therese of the Sacred Heart And Sr. Marie Madeleine of the Redemption left Bacolod for Ozamis to have a look and to choose the place where Carmel be built. They had chosen this place because the scenery is beautiful it is on top of a hill overlooking the sea and the panoramic view of the mountains across the sea is really marvelous.</p><p>\r\n</p><p style=\"text-align: justify\">In August 1962 (4th centenary of the foundation of St. Joseph of Avila), Mo. Frances Therese with Sr. Marie Stella with two extern sisters, Sr. Marie Pia and Sr. Josefa left for Ozamis. They had only Php300 cash with one maleta for the needs of the sacristy and another with some cloth to be sown for religious habit. Since the airplane cannot take off because of the storm, they had to take the boat from Cebu and God in His providence had given them IndaySoling Lomanta. They bonded with one another instantly. Upon arriving in Ozamis the Columban sisters offered them shelter but later on they decided to stay in Malaubang and their acquaintance with Inday Soling Lomanta gave them enough courage to ask their bungalow house to be lent to them while the construction was going on which she and her husband ArceLomanta agreed wholeheartedly. During their stay for 3 months they didn’t have sufficient water. Felipe and Anie Tio (young lad then) fetched water for their needs. Bishop Cronin being active member of the Council in Rome, delegated Fr. Micheal Breen, Fr. Robert Stack and Fr. Patrick Crowe to help them in their difficulties they would be encountering in the foundations. On first day Mayor Hilarion Ramiro, Sr. sent them a guard for the night. But thanking him, they said they did not need guard since people had adopted them. What they were not aware of was that Malaubang was a haven for criminals and outlaws where many bad incidents occur at night. Also the vicinity was full of Aglipayans and Monkadistas. The latter warned the people not to harm them for God is with them which is the reason why they were not afraid. </p><p>\r\n</p><p style=\"text-align: justify\">With the help of the people of Bacolod who promised to support them and they also made a loan of Php 15,000.00. They were able to build the Monastery made of Nipa and Bamboo. God in his infinite goodness and mercy cared for them out of the poverty of the people around even students brought eggs, bananas, vegetables, fruits, which some of them just placed by the door without leaving their names. Since they were all strangers in this place, God sent them Salvador Salvador, Elizabeth Tongco and Miss Esperanza Daomilas to help them in their needs. The first gave them service in offering them ride through his kalesa, the second serve them as portress and selling their products in the city riding the kalesa and the third was all around in contacting people who helped were needed badly.\r\n</p><p>\r\n</p><p style=\"text-align: justify\">On October 3, 1962 their acting Superior, Fr. Michael Breen, who came early in the morning to say mass it was surprised that the small receiving room which became their chapel for 3 months became full in less than 15 minutes. It was the feast of St. Therese at that time. It was the mass of thanksgiving since they knew that our Holy Mother St. Teresa considered a foundation made when the first mass was celebrated. It was in this Holy Sacrifice of the Mass that they learned that their humble answer to the call from God and the Bishop of Ozamis was accepted and ratified. Truly at that moment their little monastery was born in the great order of Carmel. By December 27, 1962, Mo. Frances Therese and Sr. Mary Stella transferred to the place of the Monastery. Their Chapel was open to the public.</p><p>\r\n</p><p style=\"text-align: justify\">On February 1963, Sr.Mary Therese arrived as part of the core group of the foundation brought by her parents and her sister, Miss Cecilia C. Arguelles. Sr.Joseph Teresa, professed nun from Cebu Carmel arrived and later Gilmore Carmel sent Sr. Paule Teresa, a novice professed to join the two other extern sisters from Bacolod and Gilmore Carmel and Sr. Mary Helen from Bacolod, a professed nun also came.</p><p>\r\n</p><p style=\"text-align: justify\">Finally on April 28, 1963 the Solemn Inauguration of our Monastery took place. It was also the declaration and closing of the Papal enclosure for nuns. The solemn High Mass was celebrated by Bishop Patrick Cronin with other Columban Priests. Fr. Bernard Ybiernas, OCD preached the homily while the group of late Engr. George Abinales sung the choir. While enclosed in the Monastery the nuns felt all the support of their devoted friends daily remaining with them despite the fact of being hidden in the enclosure. Aside from all these friends from locality, there was one young lad, Antonio Encia that Mother Frances brought along from Bacolod Carmel. He became an errand boy for the young community and until these days still in service. Later on the late Elias Estremadura together with his whole family came and remains in the vicinity until now. Third was the late Luis Escaba who helped a lot in the construction of the buildings of which his children still with us. Thanks to them all.</p><p>\r\n</p><p style=\"text-align: justify\">Until the day of the Inauguration, the needs of the foundation were sufficient with the help of its benefactors, the people of Ozamis and the Columban priests. Being so few and so new in the place, God gifted them with the local vocation. On June 21, 1964, Miss Esperanza N. Daomilas finally entered. Her presence in the community was a real great help. With no capital and meager market the community had to find means to support itself since in the order of Carmel each community is autonomous. So then they ventured in making home made jams and jellies which they sold and later Sr. Lucy Ancilla together with Mrs. Lomanta solicited money so that they can build a native oven for the community to be able to bake and supply simple goodies to school canteens in the city and neighboring towns. They baked cassava, banana cakes and fruit cakes (during Christmas Only – made by Sr.MaryTherese) that were sold by Teddy and Luisa Rebutazo. Then they started cottage industry. Hand made cards made by the nuns with the little mimeographing machine which they sold in the bigger cities like Cebu and Manila. In 1968, they started the weaving industry a cottage industry helped by Ernesto Maceda. They brought some young girls from Iloilo to do the work and the extern sisters did the marketing all over the place including Cebu, Manila, Leyte, Davao and other places. The proceeds help for the sustenance of the growing community and for the improvement of the building. For five years they suffered from insufficient water supply. The fire department with the late Divino Daomilas as its head brought water regularly for their laundry needs. The late Arce Lumanta and sometimes Antonio Encia fetch water for their drinking needs. Finally, with the help of the city government they were able to build an artesian well and the late Andres Rebutazo help them build a concrete water tank. There were lots of people that contributed to help them in their daily life like the Catingub family of Talisay, Mama Campilfrom the city to give them some material for the flooring- tiles. At the end of the 60\'s Sr. Ancilla decided to make reclamation project across the street with the help from the city Engineers office to borrow their machineries to carry stones, soil from inside the enclosure. That parcel of land was sold to individual residence and the proceeds were used for the renovation of the chapel and partly for the interior of the building. In 1970s Sr. Ancilla started to put up fishing with two fishing boats handled by few responsible men. However, it did not last long. The community decided to close down. In 1973, the community decided to start printing business with only Christmas cards with one Minerva machine with one printer. Later on the machine doubled that they got two workers. As the years went by, it grew into commercial printing with more workers and more jobs. However, as the computer becomes very in demand the business competition increased that it could not cope up with the salaries of the workers that eventually led to its closure. \r\n</p><p>\r\n</p><p style=\"text-align: justify\">In 1964, a young instructor from U.P. Diliman Q.C. fell in love with Jesus. She tried to inquire in Gilmore Carmel, New Manila. When she opened her heart to her spiritual director - Fr. James Reuter, S.J. the latter told her... ”If you want to be poor, go to Ozamis Carmel” her aunt also told her to go to Ozamis Carmel as it was a new foundation. Off she went and on January 15, 1965 she arrived in Ozamis with Sr. Mary Benigna of St. Joseph, a novice professed from Gilmore Carmel. This young lady became Sister Marie Yvonne of the living God who became the first Prioress to replace Mo. Frances Therese, the youngest Prioress throughout the Philippines at that time. From then on the meager meals was a bit alleviated and the scarcity of the things needed daily for the growing number of sisters were very much relieved because the sisters had an additional and more places to go to sell their products. They could go to Manila and stayed in the residence of Mr.and Mrs.Edmund Kaimo, cousin of Sr. Mary Stella, and later on with the family of Mother Yvonne whose parents, Dr. and Mrs. Barker Brown, were one among our very first monthly benefactors which was followed by their son Dr. and Mrs. Walter Brown who are still donating regularly until this days. Thanks to them.</p><p>\r\n</p><p style=\"text-align: justify\">Our simple lifestyle attracted many young ladies full of life who freely choose to give up a promising future to follow the call of Jesus, to embrace His life of poverty and complete gift of self and become a Carmelite nun. With the growing number of vocations, soon the place was too small. Again, with the help of some generous benefactors and friends like: the late Mr. and Mrs. Luis Jalandoni, Mrs. Puring Ledesma, Miss Juliet Ledesma, Mr. and Mrs. Ramon de La Rama, Mrs. Consuelo Valderama, Dr. and Mrs. Elias Dacudao gave substantial amount were given by them towards the building of permanent buildings made of cement wood and asbestos roofing, upstairs dormitory, bakery, offices and kitchen downstairs.</p><p>\r\n</p><p style=\"text-align: justify\">The whole miniature monastery was enclosed only with bamboo slits and its height was too short. Later on, with the help of some generous friends from the city and other places they were able to buy empty asphalt drums to replace the bamboo slits. This went on only for 15 years. In 1975, Sister L. Ancilla worked hard to replace these walls to cement walls, as maintaining that temporary wall was expensive. They have to replace the posts often and intruders can easily enter at night to steal the fruits, vegetables, piglets and other produce. Some close friends noticed their miserable and dilapidated walls and the dangers they were exposed to, so they started a fund drive during the Christmas season. The Sisters appealed to friends both local and abroad. They received regularly donation from Miss. Fe Legaspi who is residing in U.S. and from another couple who wanted to remain anonymous. They also received a big help from Iligan City through Engr. Bernabe Yañez who was the manager of Mindanao Portland Cement. Then they appealed to some organizations both local and abroad which Belgium responded and Kolping Munich West Germany too. The Charismatic group through Sister Violeta Navarro also was Cooperative, giving according to their means. Finally, thanks to the favors given by Chuan Seng and Grace Hardware by allowing them to get materials needed payable in God’s own time they were able to finish the walls.</p><p>\r\n</p><p style=\"text-align: justify\">The Carmelites are called “Sister of the Blessed Virgin Mary, their lives like hers is hidden based on prayer, humility and simplicity doing manual work balanced with solitude, study and cheerful recreation and community meetings and all blossoming from the love of God and for His people. Blessed Elizabeth of the Trinity says that “the life of a Carmelite is a perpetual advent that prepares the incarnation of Christ in souls”, the life attuned to the needs of our people, of their local church of their priests, their prayer life is nourished by these intentions. Pere Jacques of Jesus said, “That person who entered Carmel is not to escape from weariness, nor to know tranquility, nor to live a \r\nmediocre life, nor to flee the cares of keeping a home and family, nor to have a more comfortable existence. One comes here because she is athirst for God, because she desires to find God and to reveal to the whole world. We are vowed to prayer; it is the hallmark of our order. We did not come to Carmel to engage in intellectual studies, to have this particular activity. We have come for one single reason: TO PRAY, TO BE SOULS OF PRAYER; that is to say`, SOULS OF LOVE, who spends their lives loving God. All the rest have no importance”. Our dear Archbishop Cronin understood very much our lives as cloistered Carmelites. His eyes and heart were watching over us. He desired so much to help us. Thus his mediation in Rome obtained a hundred thousand pesos donation to pay our debts and a wing was built for the extern sisters, so that the Nipa and bamboo were demolished from their area. In 1972, Archbishop Cronin was transferred to Cagayan De Oro. He left us the savings he had at hand. He was replaced by Bishop Jesus Varela whom we received with love and remained our superior and father for10 yrs. Our financial situation remained the same until 1977 when the Apostolic Nuncio Monsignor Bruno Torpigliani came and visited us. He saw the poor building of bamboo and Nipa, sheltering a vibrant community and he understood the necessity of a permanent building. He saw that their support could only help partially. He suggested making an appeal to Rome and to Germany, an appeal that he himself followed up with his own recommendation and that of our own Bishop. After nearly 20 years of hoping and praying and apparent “silence” the good God answered our prayers. We received generous donations. In 1982, we could offer the public a larger and descent chapel and some months later the monastery was completed. It was by this time that the community accepted the meeting of the whole Federation of Carmel in the Philippines. \r\n</p><p>\r\n</p><p style=\"text-align: justify\">The extern sisters had transferred to their living quarters downstairs. Their former place in the attic became a little place for priest, seminarians, and religious and even lay people who needed few days retreat and recollection. Those who desired to be one with the Lord in silence and solitude were accommodated. They have their own oratory and little kitchen, bathroom and comfort room. As the number of retreatants increased we cannot accommodate them as there are only 8 rooms. The idea of a real retreat house with conference room dawned in the heart and mind of Mother Frances Therese as well as the DOPIM Bishops , our priest and our people. The late bishop Ben Tudtud wished that it will be in the sea with stones formed DOPIM. We found it unaffordable so Mother Frances Therese visualized it on the land small building in Nipa or Cogon. This dream kept coming back and we prayed and waited for God’s sign. That if God willed it, He would let us know. The sign came, it was a gift from a dear Sister Maria NapolitaAng (angging in short) a Carmelite by desire. After her return to God her mother (the late Mama Titang) and family were inspired to donate to Carmel all that belongs to her. Thus it was the beginning to finance the retreat house of which the date of the blessings of the cornerstone was set on October 15, 1987, the feast day of our Holy Mother St. Teresa and also the birthday of Angging. What a better memorial we could offer for her. As the construction started the demand for retreats and seminars were growing. More people came for booking from different schools from neighboring towns and cities and even business establishment like the Iligan National Steel Corporation came to book. Soon the place was not enough. The idea to build an additional building like a dormitory that can accommodate 80 to 120 people as well as a bigger chapel and bigger dining hall came to our minds. Then we realized that funds were not enough. Even with the fundraising and donations from German Catholic Bishops Conference (another sign of God’s approval) it was still a long way to go. Then, on our Silver Jubilee on Oct. 03, 1987, Sr. Lucy Ancilla with the spirit of faith and determination thought to include this project by organizing committees (composed of our good friends of Ozamis). They had different raffle draws and the funds raised were intended for the said project. In Nov. 12, 1988, Fr. James Reuter, S.J, came with a group of young people from Manila for fund raising in presenting the drama about Lorenzo Ruiz and the Christianity in the Philippines. The proceeds were given all for the retreat house. In 1989, Sr. Lucy Ancilla went to US for the death of her sister at the same time went around several churches with the consent of our Archbishop to make appeal (during mass) for the retreat house. She also went to Iligan City to negotiate for the color roof roofing and received the donations from our benefactors and many anonymous donors who had made great contributions for the completion of this project. God be praised! As the buildings were ready to accommodate retreatants, it became self sufficient in providing what was still needed to furnish the whole place. In the beginning, Sr. Lucy Ancilla managed the retreat house later on God gave us divine providence in the person of Sister Decdec Brobo to manage on our behalf which she continues to perform until now. She became an OCDS and the current President of Ozamiz chapter. As we celebrate our 50 yrs. We will also celebrate the silver jubilee year of our retreat house.</p><p>\r\n</p><p style=\"text-align: justify\">Meanwhile we also acknowledged the gift of the late Dona Josefa Capistrano, the house and lot near our property in Malaubang. As well as the lot near the retreat house donated by Mrs. Custodia Sanchiangco Parker. We are also grateful to Dr.and Mrs. Walter Brown who had helped us purchased the house and lot in front of our chapel and Victor Consunji who provided money and workers for the completion of the building.</p><p>\r\n</p><p style=\"text-align: justify\">In 1998, we noticed the deterioration of our chapel. The bamboo ceiling by the sanctuary was sagging. The workmen had to support it with wood while the engineer inspected the materials above. Some of the walls were also eaten by the termites. Moved with great love, Mother Frances Therese decided to earn money in order to repair the chapel by her piano skills. This is where her motto came true “TO LOVE HIM SO MUCH UNTIL YOU LOSE EVERYTHING FOR HIM WITH HUMILITY, WITH GENEROSITY IN THE WAY HE HAS CHOSEN UNTIL THE END. Despite of her sickness and weakness, she practiced intently to be able to produce tapes and CDs for sale. It was entitled, “CONCERT at 90”. She labored and given herself till the end for not long after, she got stoke, hospitalized, could not speak, brought to Manila and got complications of Pneumonia. Sr. Mary Liesse made a mission appeal with the permission of the Bishop and at the same time sold the tapes and CD’s. Mother Yvonne and other sisters also sold some in Manila as well as in our city and other cities too. Some friends and families also help. Thus we were about to gather some amount to begin the complete renovation of our chapel. Architect Marie Canezares made the beautiful plan for free and he sent a very good constructor in the person of Engr.Celestino Condor who was willing to start the work even the funding was not sufficient enough. He used his own money and we pay him as we can. Mr. Fred Ramos was the first donor of one million for the posts and roofing. We asked some friends and benefactors both local and abroad but then it was not yet enough. Then Sr. John was inspired to write to the late Pope John Paul II for donations. The response was immediate without passing through the normal procedures. It arrived on the death anniversary of Mo.Frances Therese. We were able to finish the Chapel and the renovation of the roof of the extern sister’s quarter too. However, the problem does not end there.</p><p>\r\n</p><p style=\"text-align: justify\">After Mother Frances died on April 4, 2002, the community was concerned about the dilapidating condition of the cocolumber and Nipa in the hermitages and the pulverizing condition of the asbestos roof of the community building causing sickness among the sisters. They had prayed and storm heaven for help, for we have no means to repair them.</p><p>\r\n</p><p style=\"text-align: justify\">One day an angel of the Lord came in the person of Mr. Antonio Sy, (brother of Sr.Clare). He suggested writing a letter of appeal to Mr. Victor Consunji for he knew him as a generous benefactor of Mati Carmel. Without hesitation one sister wrote to him. They waited for a while but no answer. The letter got wrong address and came back. Another letter was sent to Mr. Victor Consunji and he responded immediately. He sent two engineers to see the place and later he came and seeing the condition of the sisters, he took pity for he felt extremely warm in the quarter of the sisters and the materials were really in bad shaped. Before leaving he gave a one million check to the community. Mr. Victor Consunji with his parents Mr. and Mrs. David Consunji and the whole family agreed to undergo those big donations. God be praised for he took pity on us not because of our goodness and worthiness but out of his infinite mercy and love. He blesses these people and sent them to us in His time caring for us in His behalf. They gave us not only the beautiful buildings but furnished them with all the necessary things needed even the complete gadgets for the sick and the infirmary units. Everything we received was beyond our expectations and these immense blessings we got before our golden Jubilee are an affirmation of God’s abiding presence with us all these years after so many years of hardships and sufferings to be able to survive from our humble beginnings. Now, He bestows \r\nHis tremendous love and mercy. God alone can repay you for all the gifts you have lavished on us. As we continue to journey beyond this golden year... we keep you all in our hearts, in our prayers and also those people who will come after us. We will remember you for your names cannot be erased in the heart of our loving God.</p>', NULL, 1, '2019-09-21 16:25:01', NULL, NULL, b'0'),
(11, 11, '17 February 1975', '16 July', 'Our Lady of Mt. Carmel', 'Cubao', '<p style=\"text-align: justify\"></p><p>\r\n</p><p style=\"text-align: justify\"></p><p>\r\n</p><p style=\"text-align: justify\"></p>', NULL, 1, '2019-09-21 16:25:01', NULL, NULL, b'0'),
(12, 12, '17 February 1975', '16 July', 'Our Lady of Mt. Carmel', 'Cubao', '<p style=\"text-align: justify\"></p><p>\r\n</p><p style=\"text-align: justify\"></p><p>\r\n</p><p style=\"text-align: justify\"></p>', NULL, 1, '2019-09-21 16:26:09', NULL, NULL, b'0'),
(13, 13, '17 February 1975', '16 July', 'Our Lady of Mt. Carmel', 'Cubao', '<p style=\"text-align: justify\"></p><p>\r\n</p><p style=\"text-align: justify\"></p><p>\r\n</p><p style=\"text-align: justify\"></p>', NULL, 1, '2019-09-21 16:26:26', NULL, NULL, b'0'),
(14, 14, '17 February 1975', '16 July', 'Our Lady of Mt. Carmel', 'Cubao', '<p style=\"text-align: justify\"></p><p>\r\n</p><p style=\"text-align: justify\"></p><p>\r\n</p><p style=\"text-align: justify\"></p>', NULL, 1, '2019-09-21 16:26:45', NULL, NULL, b'0'),
(15, 15, '17 February 1975', '16 July', 'Our Lady of Mt. Carmel', 'Cubao', '<p style=\"text-align: justify\"></p><p>\r\n</p><p style=\"text-align: justify\"></p><p>\r\n</p><p style=\"text-align: justify\"></p>', NULL, 1, '2019-09-21 16:27:00', NULL, NULL, b'0'),
(16, 16, '17 February 1975', '16 July', 'Our Lady of Mt. Carmel', 'Cubao', '<p style=\"text-align: justify\"></p><p>\r\n</p><p style=\"text-align: justify\"></p><p>\r\n</p><p style=\"text-align: justify\"></p>', NULL, 1, '2019-09-21 16:27:18', NULL, NULL, b'0'),
(17, 17, '17 February 1975', '16 July', 'Our Lady of Mt. Carmel', 'Cubao', '<p style=\"text-align: justify\"></p><p>\r\n</p><p style=\"text-align: justify\"></p><p>\r\n</p><p style=\"text-align: justify\"></p>', NULL, 1, '2019-09-21 16:27:35', NULL, NULL, b'0'),
(18, 18, '17 February 1975', '16 July', 'Our Lady of Mt. Carmel', 'Cubao', '<p style=\"text-align: justify\"></p><p>\r\n</p><p style=\"text-align: justify\"></p><p>\r\n</p><p style=\"text-align: justify\"></p>', NULL, 1, '2019-09-21 16:27:54', NULL, NULL, b'0');
INSERT INTO `history` (`id`, `branch_id`, `date_of_establishment`, `feast_day`, `titular`, `diocese`, `content`, `media_id`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(19, 19, '17 February 1975', '16 July', 'Our Lady of Mt. Carmel', 'Cubao', '<p style=\"text-align: justify\">At the closing of the Eucharistic and Marian Year, on November 21, 2005, the Carmel of St. Teresa of Jesus marked its 18th Anniversary of Foundation. A debut, they call it. But its history can be traced as early as the sixties -- and it started with a call. It was in the 1960’s when the nuns of Davao Carmel got an invitation for a foundation. It came from their former chaplain, the late Bishop Joseph Regan, MM, DD, of happy memory, a Maryknoll Missionary, who was then recently consecrated first Bishop of Tagum, Davao del Norte -- the first call.</p><p>\r\n</p><p style=\"text-align: justify\">In 1984, Rome divided the Diocese of Tagum. The late Holy Father Pope John Paul II, of venerable memory, appointed Msgr. Patricio H. Alo, DD, who was then Auxiliary Bishop of Davao, as first Bishop of the Diocese of Mati. in November that year, Msgr. Alo asked the Carmelites of Davao to have a foundation in his diocese. A Carmelite Tertiary since his seminary days, the newly installed bishop believed in the efficacy of prayer, hence the need of contemplative nuns -- the second call.</p><p>\r\n</p><p style=\"text-align: justify\">The nuns received the invitation with open minds and hearts. After all Davao Carmel was nearly 40 years old, the number of nuns in the community is steadily increasing - almost reaching the maximum of twenty-one sisters and many good aspirants were knocking at Carmel’s door seeking entrance. These factors contributed to the favorable consideration of the Mati Foundation.</p><p>\r\n</p><p style=\"text-align: justify\">So, before the Ruby Jubilee of Davao Carmel came around (March 10, 1987), the Nuns decided in joyful thanksgiving to the Almighty Father for the bountiful graces and blessings received all these forty years of their existence, to make their first foundation of Mati, Davao Oriental.</p><p>\r\n</p><p style=\"text-align: justify\">The application of foundation was made with the Sacred Congregation for Religious and Secular Institutes and the Generalate of the Order of Discalced Carmelites in Rome.</p><p>\r\n</p><p style=\"text-align: justify\">Its probation was dated May 16,1987, Feast of Saint Simon Stock, to whom Our Lady of Mount Carmel gave the Brown Scapular. Davao Carmel received the happy news of it from the Apostolic Nuncio’s office in Manila by long distance call on June 1, 1987.</p><p>\r\n</p><p style=\"text-align: justify\">As tribute to Our Lady on the Marian Year 1987, the Laying of the Cornerstone of the new monastery was held on August 15, 1987, Feast of the Assumption of the Virgin Mary.</p><p>\r\n</p><p style=\"text-align: justify\">A big gathering of friends, benefactors and religious filled the whole expanse of the bull-dozed area on the hill of Tua-Tua, the land graciously donated by Mr. and Mrs. Senador “Max” Zamora. Bishop Patricio Alo presided the Mass with Rev. Fr. Alan Rieger and Rev. Fr. Apolinario Abing, DCM, as concele-brants. In his homily, Fr. Alan, OCD said that the monastery is God’s gift to Mati.</p><p>\r\n</p><p style=\"text-align: justify\">Three years after that second call, on November 21, 1987 - Feast of Our Lady’s Presentation, ten Carmelite Nuns from Davao Carmel led by Rev. Mother Marie Susan of Jesus, OCD, of happy memory, and Rev. Mother Mary of Sacred Heart, OCD left for the Foundation of Mati Carmel. Their ever reliable and dear Sr. Angeline of the Blessed Sacrament went ahead of them as advanced party.</p><p>\r\n</p><p style=\"text-align: justify\">Prior to their leave-taking, the Nuns destined for Mati had Holy Mass together with their Sister in Davao Carmel. They had His Excellency, the late Msgr. Antonio Mabutas, of happy memory, for main celebrant and homilist. In his homily, he said, “ the Sisters of Mati unite with Mary as She leaves her parents Joachim and Anne for the temple of God...” they sang the Solemn Salve in honor of Our Lady after the Mass. this was followed by a brief repast together, then the “Marys” bade their “Beloved Joachims and Annes” Goodbye.</p><p>\r\n</p><p style=\"text-align: justify\">After this, the caravans of relatives, friends, benefactors and religious accompanying them started their journey to Mati. their first stop was in Tagum Cathedral where the late and dear Rev. Msgr. Joseph Regan, and Rev. Fr. Valle were awaiting with a liturgical welcome.</p><p>\r\n</p><p style=\"text-align: justify\">They made their second stop in Banaybanay, first town of the Diocese of Mati, where a delegation from the Mati Diocese was also waiting to welcome them. Finally they reached San Nicolas de Tolentino in Mati, Davao Oriental. Their Excellencies Archbishop Antonio Mabutas and Bishop Patricio Alo awaited them; the former to hand them over, the latter to officially welcome them.</p><p>\r\n</p><p style=\"text-align: justify\">At 3:30 PM that same day, the Foundation Mass was held with Msgr. Antonio Mabutas as main celebrant at the residence of Mr. and Mrs. Herminigildo Junio who graciously lent their place as temporary housing for the Nuns. He was joined by Bishop Patricio Alo, Rev. Fr. Edito Ba o, DCM, their first chaplain, Rev. Fr. Jose Maria Lopez, OCD and Rev. Fr. Danilo Fuentes, DCM as concelebrants. Henceforth, November 21, 1987 is the Foundation Day of the Carmel of St. Teresa of Jesus.</p><p>\r\n</p><p style=\"text-align: justify\">Their stay in Tindalo was short, yet it was filled with joyful celebrations which proclaimed the mercies of the Lord particularly the grace of His fidelity. To name a few, there was the Ruby Jubilee of Rev. Mother Susan of Jesus, barely three weeks after their arrival in Mati; the Diamond and Silver Jubilee of Sacerdotal Ordination of Bishop Regan and Bishop Alo, respectively; and the Jubilees of the Nuns on their Profession Anniversaries.</p><p>\r\n</p><p style=\"text-align: justify\">In December 1987, Architect Renato Basa presented the architectural design of the new monastery. By the first working day after Christmas 1987, workmen for the construction, headed by Mr. Ben Deligero came in full force. During the period of its construction, Mother Susan and Mother Mary would regularly go up to the hills of TuaTua to supervise and monitor the progress of the edifice. Boy and Susan Zamora, their ever faithful benefactors, generously provided trucks for transport construction materials from Davao City to Mati.</p><p>\r\n</p><p style=\"text-align: justify\">The Nuns of Carmel fondly recall with gratitude all the help which the Friends of Carmel have lovingly extended to them all these years but especially during the early stages of the foundation. To mention a few, they organized projects like “ Dinner and Bingo for a Cause” to raise funds. There were concerts and retreats of Rev. Fr. Sonny Ramirez, OP and the other means in order for the construction to go on.</p><p>\r\n</p><p style=\"text-align: justify\">All these efforts came into fruition as it paved the way for the Nuns’ transfer to their new monastery. On March 28, 1989, Easter Tuesday and Birth Anniversary of St. Teresa of Jesus -- the titular patroness of their Carmel, they left their temporary abode which they have learned to love and move up to Carmel’s Heights.</p><p>\r\n</p><p style=\"text-align: justify\">On July 16, 1989, Solemnity of Our Lady of Mt. Carmel, Archbishop Antonio Mabutas, and Msgr. Patricio Alo officiated the Blessing and Inauguration of the Monastery. There was an open-house for three days from July 14-16, in which the people were allowed to enter the monastery.</p><p>\r\n</p><p style=\"text-align: justify\">The Nuns had the chance to express their gratitude to the people, especially their friends and benefactors who made possible this work of the Lord.</p><p>\r\n</p><p style=\"text-align: justify\">By the time of their transfer one one-third of the monastery was completed and they had to make do with it while the construction was on going. There were no enclosure walls and they patiently waited for God’s providence... and their dire need it came. God sent an instrument, the profoundly cheerful giver, Mr. Victor A. Consunji, a long time friend of Carmel and an immensely generous man whose love of giving is the very essence of his person, a philanthropist who finds true joy in sharing what he has. He shouldered the construction of enclosure walls around the monastery. Handled and supervised by Engr. Arnel Coton and assisted by Engr. Alberto Gahuman, this property was completed by 1995.</p><p>\r\n</p><p style=\"text-align: justify\">Shortly after, God took Himself their dear Foundress, Mother Marie Susan of Jesus on June 17, 1995. Though physically gone, she remained truly a mother of this Carmel she has founded. With St. Joseph’s intercession, another help came from their equally benevolent friends Mr. and Mrs. Emil and Vivian Sison, who offered to finance the building of a portion of the monastery. With structural design by Arch. Cesar Gamalong, this constructed area was blessed on July 13, 1997.</p><p>\r\n</p><p style=\"text-align: justify\">The Lord lavishly showered His gifts one after the other as barely two years have passed and Victor Consunji again in his kindness took charge of constructing another portion of the enclosure of the monastery. Arch. Illuminado Quinto, jr. made the structural design. Engr. Arnel Coton headed the construction of this project which was blessed on December 7, 1999.</p><p>\r\n</p><p style=\"text-align: justify\">Indeed the Lord is extremely gracious. By this time, the entire monastery building as substantially complete, save for the permanent Chapel and Infirmaries. Yet as St. Paul said: “ I am certain that the one who has begun the good work in you will see that it is finished.” God is faithful. The Nuns are confident that graces will come in due time.</p><p>\r\n</p><p style=\"text-align: justify\">The Year 2000 opened with its unique store of gifts. The Great Jubilee saw their Carmel as a Pilgrimage Site -- what a signal grace! There were also visits of Our Blessed Mother -- the statue of the Pilgrim Virgin of Fatima, the relics of their very own Camelite, St. Therese of the Child Jesus, which brought them rich spiritual blessings.</p><p>\r\n</p><p style=\"text-align: justify\">Two priestly ordinations were held in their chapel. First was of Rev. Fr. Shaji Thomas Punnatu, a Vocationist from India on May 14, 2000. This was followed by the ordination on December 8, 2001 of Rev. Fr. Edmundo Escobal -- the first fruits of the Vocationist Mission in the Philippines. Such events befitting the ideals of St. Teresa of Jesus who reformed Carmel where prayers and sacrifices are offered for the Church, for Priests and the salvation of souls.</p><p>\r\n</p><p style=\"text-align: justify\">On December 15, 2001 they were graced by the presence of the Apostolic Nuncio to the Philippines, His Excellency, Most Rev. Antonio Franco, DD, who came to the Diocese of Mati on the occasion of its Foundation Anniversary. He paid a visit to the Nuns, celebrated Mass with them and blessed the five Joyful Mysteries of the “ Regina Decor Carmeli Prayer Garden”.</p><p>\r\n</p><p style=\"text-align: justify\">The New Millenium commenced with renewed hope for the mercies of the Lord. As they made their presence felt in the diocese, Mass-goers flock to Carmel’s heights especially when there are feasts and solemnities. Their little chapel can hardly accommodate them that people would have to stay outside the church.</p><p>\r\n</p><p style=\"text-align: justify\">On such occasions, the longing for a bigger place of worship usually comes to the fore. If only they have means to build a larger one...a permanent monastery chapel.</p><p>\r\n</p><p style=\"text-align: justify\">Yet they trust fully that God is ever faithful and will do great things in His own time. Believing the percept that if a man does his best, God will do the rest, the Nuns, with the ever steadfast support of the Friends of Carmel, continued to initiate fundraising campaigns, this time the “ piggy bank” drive.</p><p>\r\n</p><p style=\"text-align: justify\">“Piggy Banks” were given to walk-in visitors in the monastery, to benefactors and relatives. These were distributed to friends who in turn placed them in strategic counters at department stores, malls, gasoline stations, hospitals, schools, private establishments, government offices, etc. In the spirit of giving, people from different walks of life respond positively. And how kind were the school children who, in their tender age, already had the sense of sharing, finding joy in putting their contribution in the piggy bank.</p><p>\r\n</p><p style=\"text-align: justify\">On the other hand, the Friend of Carmel led by its President, Mrs. Ampy Icasas, with Mrs. Violy Santiago, launched the Special Advance Screening of “The Passion of the Christ” in April 2004. This project was a real success and help greatly. The Nuns remained ever thankful to the Friends of Carmel for this venture and those who benevolently pledged sponsorship.</p><p>\r\n</p><p style=\"text-align: justify\">With this awe-inspiring development, they joyfully hope for the outpouring of more graces; for after their fund drives, the proceeds would not suffice to finance the building of a chapel. It does not matter should it take several years before their dream will be realized; as long as it will come, they can wait. Like the woman in the time of the Prophet Elijah, they have faith that their jar and jug will be constantly filled until “all is finished”. They leave everything in God’s hands.</p><p>\r\n</p><p style=\"text-align: justify\">And how truly God fulfills His promise... for consequently, the ever magnanimous and big-hearted Mr. Victor Consunji once again visited the Nuns bringing the one grand news: he and his family pledging to build the Monastery Church and infirmaries. A splendid news indeed!!!... at last this would bring to completion the construction of the entire monastery. The Nuns raised their sighs of thanksgiving to heaven in praise to God.</p><p>\r\n</p><p style=\"text-align: justify\">The groundbreaking ceremony took place on October 1, 2004, the Feast of St. Therese of the Child Jesus. Famous Arch. Manuel Chiew made the architectural and structural plans of the building while Arch. Susan Castillo was responsible for the structures and artworks of the interiors of the chapel. Engr. Antonio Francisco, Jr. was the man behind the entire construction of the wonderful edifice. He was assisted by Engr. Alberto Gahuman. As the project progressed, Mr. Bert Noma came to assist in the supervision of the workforce as a Foreman. Engr. Teddy Hilado employed his creative skills in carefully designing the lightning effects of the church.</p><p>\r\n</p><p style=\"text-align: justify\">The Laying of the Cornerstone was held on November 21, 2004 on the occasion of Mati Carmel’s 17th Foundation Anniversary. Magr. Patricio H. Alo presided the Mass with Fr. Dan Fauste, \r\nOCD, Fr. Dennis Alingalan, DCM and Fr. Thaddeus Aririele, SDV as concelebrants. Friends and benefactors came to witness this event. Their Sisters in Davao Carmel were in attendance joining them as the choir during the ceremonies.</p><p>\r\n</p><p style=\"text-align: justify\">As the construction progressed, friends and benefactors from the near and far also got involved in helping the nuns in anyway they could. Their dear Sonny and Ampy Icasas generously made available their trucks to bring the construction materials from Davao.</p><p>\r\n</p><p style=\"text-align: justify\">The people of Mati had their share and got involved in their own way: from school children to grey-haired individuals. They gave from what they have to live on. As the saying goes, “ No one is too poor that he has nothing to share”, their aspirations, their desires, their hopes, their encouragement -- their smiles and most of all their fervent prayers to God for its accomplishments are precious support worth more than silver or gold before the throne of the Lord. He will in turn reward them abundantly.</p><p>\r\n</p><p style=\"text-align: justify\">On November 21, 2005, 18th anniversary of their foundation, the Infirmaries, priest’s quarter and the choir were blessed.</p><p>\r\n</p><p style=\"text-align: justify\">And finally, on December 10, 2005 was held the Solemn Blessing and Consecration of the Monastery Church under the patronage of Our Lady of Mt. Carmel and Saint Joseph. Msgr. Patricio Alo, bishop of Mati, was the main celebrant. Joining him were Msgr. Guillermo Afable, bishop of Digos, and a number of priests and religious concelebrants. The Consunji family, headed by Engr. and Mrs. David and Fredesvinda Consunji, graced the occasion with their presence. The Friends of Carmel were in attendance. Benefactors and friends from Mati, Davao and other parts of the country came to witness this grand event in joyful praise and thanksgiving to the Most Holy Trinity.</p><p>\r\n</p><p style=\"text-align: justify\">Eighteen years have come and gone and through these time came an avalanche of blessings. The Carmelite Nuns of Mati marvel in a spirit of deep gratitude at the graciousness of God. Their hearts are overflowing with thanksgiving for the bountiful years that brought them so much grace They wanted to count their blessings one by one but they come as though in torrent. They will be forever indebted to all those who have always been there to support them. They wish to find ways to make some returns for the kindness of these people -- the gems of great price: Mr. Victor Consunji and his family for building such a magnificent dwelling place of the Lord; the ever-faithful Friends of Carmel -- for the unswerving concern and solitude for their needs all these years; all benefactors; sponsors; patrons and the people who have helped in one way or another. But aware of their poverty and unworthiness, they leave the repaying to the ALL-Knowing Father to dispense the graces as fit reward for their acts of charity in this life and in the next.</p><p>\r\n</p><p style=\"text-align: justify\">From the Carmelite Nuns of Carmel of St. Teresa of Jesus, this souvenir is a tribute of gratitude for a plentiful 18 years. The hands of God be all the glory and honor and praise.</p><p>\r\n</p><p style=\"text-align: justify\">The chronicle doesn’t end here. This year marks the beginning of another milestone of their journey in the service to the people of God of this diocese and the whole Church by their dedication to the life of prayer, contemplation, solitude and sacrifice.</p>', NULL, 1, '2019-09-21 16:28:10', NULL, NULL, b'0'),
(20, 20, '17 February 1975', '16 July', 'Our Lady of Mt. Carmel', 'Cubao', '<p style=\"text-align: justify\"></p><p>\r\n</p><p style=\"text-align: justify\"></p><p>\r\n</p><p style=\"text-align: justify\"></p>', NULL, 1, '2019-09-21 16:28:26', NULL, NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `household`
--

CREATE TABLE `household` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `sub_module_id` int(11) NOT NULL,
  `sub_module_info_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` int(2) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `landline` varchar(20) DEFAULT NULL,
  `address_1` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `province` int(11) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 1, '365-Days', 1, 0, 0, '127.0.0.1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_info`
--

CREATE TABLE `language_info` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `branch_id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `module` int(11) NOT NULL,
  `sub_module` int(11) DEFAULT NULL,
  `lang1` mediumtext,
  `lang2` mediumtext,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `live_streams`
--

CREATE TABLE `live_streams` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `video_id` varchar(255) NOT NULL,
  `created_by` int(1) NOT NULL,
  `dt_created` datetime NOT NULL,
  `updated_by` int(1) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `live_streams`
--

INSERT INTO `live_streams` (`id`, `branch_id`, `title`, `description`, `video_id`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(1, 1, 'Mount Carmel Live Mass', 'National Shrine of Mount Carmel Minor Basilica Live Mass', 'VlUw-E_IWjs', 1, '2019-07-19 21:26:10', 1, '2019-09-25 14:49:31', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `description` varchar(20) DEFAULT NULL,
  `lat_center` varchar(255) DEFAULT NULL,
  `lng_center` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `branch_id`, `description`, `lat_center`, `lng_center`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(1, 1, NULL, '14.614253', '121.030581', 1, '2019-06-27 11:26:55', NULL, NULL, b'0'),
(2, 2, NULL, '10.735083', '122.546655', 1, '2019-09-21 17:56:00', NULL, NULL, b'0'),
(3, 3, NULL, '10.737564', '122.542979', 1, '2019-09-21 17:56:00', NULL, NULL, b'0'),
(4, 4, NULL, '10.724699', '122.558289', 1, '2019-09-21 17:56:00', NULL, NULL, b'0'),
(5, 5, NULL, '10.570017', '122.979997', 1, '2019-09-21 17:56:00', NULL, NULL, b'0'),
(6, 6, NULL, '14.614253', '121.030581', 1, '2019-09-21 17:56:00', NULL, NULL, b'0'),
(7, 7, NULL, '14.614253', '121.030581', 1, '2019-09-21 17:56:00', NULL, NULL, b'0'),
(8, 8, NULL, '14.614253', '121.030581', 1, '2019-09-21 17:56:00', NULL, NULL, b'0'),
(9, 9, NULL, '14.614253', '121.030581', 1, '2019-09-21 17:56:00', NULL, NULL, b'0'),
(10, 10, NULL, '14.614253', '121.030581', 1, '2019-09-21 17:56:00', NULL, NULL, b'0'),
(11, 11, NULL, '14.614253', '121.030581', 1, '2019-09-21 17:56:00', NULL, NULL, b'0'),
(12, 12, NULL, '14.614253', '121.030581', 1, '2019-09-21 17:56:00', NULL, NULL, b'0'),
(13, 13, NULL, '14.614253', '121.030581', 1, '2019-09-21 17:56:00', NULL, NULL, b'0'),
(14, 14, NULL, '14.614253', '121.030581', 1, '2019-09-21 17:56:00', NULL, NULL, b'0'),
(15, 15, NULL, '14.614253', '121.030581', 1, '2019-09-21 17:56:00', NULL, NULL, b'0'),
(16, 16, NULL, '14.614253', '121.030581', 1, '2019-09-21 17:56:00', NULL, NULL, b'0'),
(17, 17, NULL, '14.614253', '121.030581', 1, '2019-09-21 17:56:00', NULL, NULL, b'0'),
(18, 18, NULL, '14.614253', '121.030581', 1, '2019-09-21 17:56:00', NULL, NULL, b'0'),
(19, 19, NULL, '14.614253', '121.030581', 1, '2019-09-21 17:56:00', NULL, NULL, b'0'),
(20, 20, NULL, '14.614253', '121.030581', 1, '2019-09-21 17:56:00', NULL, NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `maps`
--

CREATE TABLE `maps` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `description` varchar(20) DEFAULT NULL,
  `lat` decimal(10,8) DEFAULT NULL,
  `lng` decimal(11,8) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `maps`
--

INSERT INTO `maps` (`id`, `branch_id`, `description`, `lat`, `lng`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(1, 1, NULL, '14.61930380', '-238.98361360', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(2, 1, NULL, '14.61918450', '-238.98362160', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(3, 1, NULL, '14.61899760', '-238.98352240', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(4, 1, NULL, '14.61876400', '-238.98317900', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(5, 1, NULL, '14.61877700', '-238.98279280', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(6, 1, NULL, '14.61900540', '-238.98143290', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(7, 1, NULL, '14.61905990', '-238.98089380', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(8, 1, NULL, '14.61894050', '-238.98056390', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(9, 1, NULL, '14.61871730', '-238.98035470', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(10, 1, NULL, '14.61658390', '-238.97934350', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(11, 1, NULL, '14.61560020', '-238.97912620', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(12, 1, NULL, '14.61524980', '-238.97917450', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(13, 1, NULL, '14.61490460', '-238.97924150', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(14, 1, NULL, '14.61421950', '-238.97938640', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(15, 1, NULL, '14.61380160', '-238.97945340', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(16, 1, NULL, '14.61290620', '-238.97970830', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(17, 1, NULL, '14.61202370', '-238.97999790', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(18, 1, NULL, '14.61153320', '-238.98001130', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(19, 1, NULL, '14.61121650', '-238.97996570', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(20, 1, NULL, '14.61081940', '-238.97981020', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(21, 1, NULL, '14.60951650', '-238.97870240', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(22, 1, NULL, '14.61006670', '-238.97841540', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(23, 1, NULL, '14.61142160', '-238.97741500', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(24, 1, NULL, '14.61215610', '-238.97697780', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(25, 1, NULL, '14.61285170', '-238.97688660', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(26, 1, NULL, '14.61354200', '-238.97677390', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(27, 1, NULL, '14.61376270', '-238.97665860', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(28, 1, NULL, '14.61387950', '-238.97639840', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(29, 1, NULL, '14.61391580', '-238.97621600', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(30, 1, NULL, '14.61377300', '-238.97566350', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(31, 1, NULL, '14.61351610', '-238.97503050', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(32, 1, NULL, '14.61311120', '-238.97487760', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(33, 1, NULL, '14.61270890', '-238.97474080', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(34, 1, NULL, '14.61254800', '-238.97462820', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(35, 1, NULL, '14.61240780', '-238.97441890', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(36, 1, NULL, '14.61235590', '-238.97401660', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(37, 1, NULL, '14.61237930', '-238.97277470', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(38, 1, NULL, '14.61233260', '-238.97191640', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(39, 1, NULL, '14.61208080', '-238.97135050', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(40, 1, NULL, '14.61217420', '-238.97107150', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(41, 1, NULL, '14.61244420', '-238.97083550', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(42, 1, NULL, '14.61288280', '-238.97083280', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(43, 1, NULL, '14.61311380', '-238.97053240', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(44, 1, NULL, '14.61320980', '-238.97016500', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(45, 1, NULL, '14.61318130', '-238.96990210', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(46, 1, NULL, '14.61303330', '-238.96957220', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(47, 1, NULL, '14.61295810', '-238.96908400', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(48, 1, NULL, '14.61236630', '-238.96874340', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(49, 1, NULL, '14.61215350', '-238.96854490', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(50, 1, NULL, '14.61196140', '-238.96841620', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(51, 1, NULL, '14.61169150', '-238.96819080', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(52, 1, NULL, '14.61147350', '-238.96781800', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(53, 1, NULL, '14.61080120', '-238.96710990', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(54, 1, NULL, '14.61000960', '-238.96653060', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(55, 1, NULL, '14.60970340', '-238.96624890', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(56, 1, NULL, '14.60959180', '-238.96604780', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(57, 1, NULL, '14.60950350', '-238.96558640', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(58, 1, NULL, '14.60946980', '-238.96514390', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(59, 1, NULL, '14.60921280', '-238.96491050', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(60, 1, NULL, '14.60890910', '-238.96468790', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(61, 1, NULL, '14.60875860', '-238.96448400', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(62, 1, NULL, '14.60875600', '-238.96433650', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(63, 1, NULL, '14.60896620', '-238.96418090', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(64, 1, NULL, '14.60908560', '-238.96358550', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(65, 1, NULL, '14.60919980', '-238.96336820', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(66, 1, NULL, '14.60931920', '-238.96322070', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(67, 1, NULL, '14.60942050', '-238.96308120', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(68, 1, NULL, '14.60945680', '-238.96292570', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(69, 1, NULL, '14.60948530', '-238.96264400', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(70, 1, NULL, '14.60939450', '-238.96233560', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(71, 1, NULL, '14.60941530', '-238.96213440', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(72, 1, NULL, '14.60968000', '-238.96163280', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(73, 1, NULL, '14.60971630', '-238.96143440', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(74, 1, NULL, '14.60961770', '-238.96120370', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(75, 1, NULL, '14.60962030', '-238.96108300', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(76, 1, NULL, '14.60969820', '-238.96097300', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(77, 1, NULL, '14.61005370', '-238.96077720', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(78, 1, NULL, '14.61023800', '-238.96060820', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(79, 1, NULL, '14.61027440', '-238.96031860', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(80, 1, NULL, '14.61021730', '-238.95987330', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(81, 1, NULL, '14.61024060', '-238.95969900', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(82, 1, NULL, '14.61009010', '-238.95926180', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(83, 1, NULL, '14.61009790', '-238.95903380', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(84, 1, NULL, '14.61038340', '-238.95866360', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(85, 1, NULL, '14.61064030', '-238.95830420', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(86, 1, NULL, '14.61066110', '-238.95821030', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(87, 1, NULL, '14.61074410', '-238.95836320', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(88, 1, NULL, '14.61118540', '-238.95851340', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(89, 1, NULL, '14.61136970', '-238.95860200', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(90, 1, NULL, '14.61142420', '-238.95868780', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(91, 1, NULL, '14.61147610', '-238.95880580', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(92, 1, NULL, '14.61160320', '-238.95925100', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(93, 1, NULL, '14.61231180', '-238.96064580', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(94, 1, NULL, '14.61267260', '-238.96103200', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(95, 1, NULL, '14.61272450', '-238.96114200', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(96, 1, NULL, '14.61274520', '-238.96126810', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(97, 1, NULL, '14.61278940', '-238.96157380', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(98, 1, NULL, '14.61329030', '-238.96095420', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(99, 1, NULL, '14.61366400', '-238.96061900', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(100, 1, NULL, '14.61393140', '-238.96046880', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(101, 1, NULL, '14.61439850', '-238.96028640', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(102, 1, NULL, '14.61465030', '-238.96005300', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(103, 1, NULL, '14.61520310', '-238.95939050', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(104, 1, NULL, '14.62425060', '-238.96487830', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(105, 1, NULL, '14.62397030', '-238.96851540', 1, '2019-06-24 19:40:31', NULL, NULL, b'0'),
(106, 1, NULL, '14.61930380', '-238.98361360', 1, '2019-06-24 19:40:31', NULL, NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `full_path` varchar(255) DEFAULT NULL,
  `raw_name` varchar(255) DEFAULT NULL,
  `orig_name` varchar(255) DEFAULT NULL,
  `client_name` varchar(255) DEFAULT NULL,
  `file_ext` varchar(10) DEFAULT NULL,
  `file_size` varchar(10) DEFAULT NULL,
  `is_image` int(1) DEFAULT NULL,
  `image_width` int(10) DEFAULT NULL,
  `image_height` int(10) DEFAULT NULL,
  `image_type` varchar(10) DEFAULT NULL,
  `image_size_str` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `branch_id`, `name`, `description`, `file_name`, `file_type`, `file_path`, `full_path`, `raw_name`, `orig_name`, `client_name`, `file_ext`, `file_size`, `is_image`, `image_width`, `image_height`, `image_type`, `image_size_str`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(1, 1, 'Default Profile', 'Default Profile', 'profile.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/profile.png', NULL, NULL, NULL, '.png', '66.14', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 06:45:26', 1, '2019-08-08 22:53:02', b'0'),
(2, 1, 'Fr. Alan Rieger', 'Fr. Alan Rieger', 'Fr_Alan_Rieger.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/Fr_Alan_Rieger.png', NULL, NULL, NULL, '.png', '45.86', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 06:53:07', 1, '2019-08-08 22:53:06', b'0'),
(3, 1, 'Fr. Joey Mabborang', 'Fr. Joey Mabborang', 'Fr_Joey_Mabborang.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/Fr_Joey_Mabborang.jpg', NULL, NULL, NULL, '.jpg', '38.87', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 06:55:02', 1, '2019-08-08 22:53:09', b'0'),
(4, 1, 'Fr. Alex Collera', 'Fr. Alex Collera', 'Fr_Alex_Collera.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/Fr_Alex_Collera.jpg', NULL, NULL, NULL, '.jpg', '26.83', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 06:55:39', 1, '2019-08-08 22:53:12', b'0'),
(5, 1, 'Fr. Benedick Piangco', 'Fr. Benedick Piangco', 'Fr_Benedick_Piangco.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/Fr_Benedick_Piangco.jpg', NULL, NULL, NULL, '.jpg', '38.18', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 06:56:10', 1, '2019-08-08 22:53:16', b'0'),
(6, 1, 'Fr. Bing Madelo', 'Fr. Bing Madelo', 'Fr_Bing_Madelo.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/Fr_Bing_Madelo.jpg', NULL, NULL, NULL, '.jpg', '30.67', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 06:57:00', 1, '2019-08-08 22:53:28', b'0'),
(7, 1, 'Fr. Chito Reyes', 'Fr. Chito Reyes', 'Fr_Chito_Reyes.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/Fr_Chito_Reyes.png', NULL, NULL, NULL, '.png', '45.34', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 06:57:18', 1, '2019-08-08 22:53:33', b'0'),
(8, 1, 'Fr. Hernani Anis', 'Fr. Hernani Anis', 'Fr_Hernani_Anis.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/Fr_Hernani_Anis.jpg', NULL, NULL, NULL, '.jpg', '38.15', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 06:57:42', 1, '2019-08-08 22:52:22', b'0'),
(9, 1, 'Fr. Ransom Rapirap', 'Fr. Ransom Rapirap', 'Fr_Ransom_Rapirap.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/Fr_Ransom_Rapirap.png', NULL, NULL, NULL, '.png', '44.45', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 06:58:09', 1, '2019-08-08 22:52:26', b'0'),
(10, 1, 'Rev. Nguyen Cong', 'Rev. Nguyen Cong', 'Rev_Nguyen_Cong.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/Rev_Nguyen_Cong.jpg', NULL, NULL, NULL, '.jpg', '37.09', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 06:58:46', 1, '2019-08-08 22:52:29', b'0'),
(11, 1, 'Bro. Porferio Nalzado', 'Bro. Porferio Nalzado', 'Bro_Porferio_Nalzaro.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/Bro_Porferio_Nalzaro.jpg', NULL, NULL, NULL, '.jpg', '36.18', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 06:59:09', 1, '2019-08-08 22:52:33', b'0'),
(12, 1, 'Filler 0', 'Filler 0', '0.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/0.jpg', NULL, NULL, NULL, '.jpg', '218.51', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 07:21:44', 1, '2019-08-08 22:52:36', b'0'),
(13, 1, 'Filler 1', 'Filler 1', '1.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/1.jpg', NULL, NULL, NULL, '.jpg', '364.75', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 07:22:03', 1, '2019-08-08 22:52:39', b'0'),
(14, 1, 'Filler 2', 'Filler 2', '2.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/2.jpg', NULL, NULL, NULL, '.jpg', '675.66', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 07:22:27', 1, '2019-08-08 22:52:44', b'0'),
(15, 1, 'Filler 3', 'Filler 3', '3.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/3.jpg', NULL, NULL, NULL, '.jpg', '404.65', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 07:22:41', 1, '2019-08-08 22:52:48', b'0'),
(18, 1, 'Ads 1', 'Ads 1', 'ads1.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/ads1.png', NULL, NULL, NULL, '.png', '169.63', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 07:32:45', 1, '2019-08-08 22:52:53', b'0'),
(19, 1, 'Ads 2', 'Ads 2', 'ads2.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/ads2.png', NULL, NULL, NULL, '.png', '48.72', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:30:13', 1, '2019-08-08 22:52:57', b'0'),
(20, 1, 'Ads 3', 'Ads 3', 'ads3.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/ads3.png', NULL, NULL, NULL, '.png', '58.56', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:30:29', 1, '2019-08-08 22:51:46', b'0'),
(21, 1, 'Ads 4', 'Ads 4', 'ads4.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/ads4.png', NULL, NULL, NULL, '.png', '34.67', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:30:44', 1, '2019-08-08 22:51:50', b'0'),
(22, 1, 'Cat', 'Cat', 'cat.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/cat.png', NULL, NULL, NULL, '.png', '58.36', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:31:03', 1, '2019-08-08 22:51:52', b'0'),
(23, 1, 'Default Ads Logo', 'Default Ads Logo', 'companylogo.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/companylogo.jpg', NULL, NULL, NULL, '.jpg', '29.1', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:31:26', 1, '2019-08-08 22:51:55', b'0'),
(24, 1, 'Mount Carmel Front', 'Mount Carmel Front', 'mtcarmel-front.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/mtcarmel-front.jpg', NULL, NULL, NULL, '.jpg', '494.55', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:32:05', 1, '2019-08-08 22:51:58', b'0'),
(25, 1, 'Care Fund', 'Care Fund', 'care-fund.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/care-fund.jpg', NULL, NULL, NULL, '.jpg', '134.26', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:35:42', 1, '2019-08-08 22:52:02', b'0'),
(26, 1, 'Feeding Program', 'Feeding Program', 'feeding-program.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/feeding-program.jpg', NULL, NULL, NULL, '.jpg', '319.6', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:35:58', 1, '2019-08-08 22:52:07', b'0'),
(27, 1, 'Noche Buena', 'Noche Buena', 'noche-buena.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/noche-buena.png', NULL, NULL, NULL, '.png', '390.83', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:36:18', 1, '2019-08-08 22:52:10', b'0'),
(28, 1, 'Scholastics', 'Scholastics', 'scholastic.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/scholastic.jpg', NULL, NULL, NULL, '.jpg', '90.64', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:37:43', 1, '2019-08-08 22:52:14', b'0'),
(29, 1, 'Christmas Gift', 'Christmas Gift', 'xmas-gift.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/xmas-gift.jpg', NULL, NULL, NULL, '.jpg', '250.78', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:38:29', 1, '2019-08-08 22:52:17', b'0'),
(30, 1, 'Calendar', 'Calendar', 'calendar.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/calendar.png', NULL, NULL, NULL, '.png', '43.41', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:39:58', 1, '2019-08-08 22:51:41', b'0'),
(31, 1, 'Christening', 'Christening', 'christening.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/christening.png', NULL, NULL, NULL, '.png', '85.12', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:40:11', 1, '2019-08-08 22:51:36', b'0'),
(32, 1, 'Communion', 'Communion', 'communion.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/communion.png', NULL, NULL, NULL, '.png', '73.66', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:40:24', 1, '2019-08-08 22:51:32', b'0'),
(33, 1, 'Confirmation', 'Confirmation', 'confirmation.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/confirmation.png', NULL, NULL, NULL, '.png', '74.78', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:40:39', 1, '2019-08-08 22:51:27', b'0'),
(34, 1, 'Confraternity', 'Confraternity', 'confraternity.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/confraternity.png', NULL, NULL, NULL, '.png', '73.14', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:40:54', 1, '2019-08-08 22:51:22', b'0'),
(35, 1, 'Events', 'Events', 'events.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/events.png', NULL, NULL, NULL, '.png', '75.71', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:41:04', 1, '2019-08-08 22:51:17', b'0'),
(36, 1, 'Mount Carmel Old Logo', 'Mount Carmel Old Logo', 'logo.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/logo.png', NULL, NULL, NULL, '.png', '55.13', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:41:29', 1, '2019-08-08 22:51:13', b'0'),
(37, 1, 'Mass', 'Mass', 'mass.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/mass.png', NULL, NULL, NULL, '.png', '74.78', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:41:45', 1, '2019-08-08 22:51:09', b'0'),
(38, 1, 'News Feed', 'News Feed', 'news_update.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/news_update.png', NULL, NULL, NULL, '.png', '42.49', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:42:11', 1, '2019-08-08 22:50:48', b'0'),
(39, 1, 'Passing', 'Passing', 'passing.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/passing.png', NULL, NULL, NULL, '.png', '78.4', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:42:24', 1, '2019-08-08 22:50:45', b'0'),
(40, 1, 'Prayer', 'Prayer', 'prayer.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/prayer.png', NULL, NULL, NULL, '.png', '82.11', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:42:39', 1, '2019-08-08 22:50:35', b'0'),
(41, 1, 'Refresh', 'Refresh', 'refresh.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/refresh.png', NULL, NULL, NULL, '.png', '30.43', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:43:21', 1, '2019-08-08 22:50:31', b'0'),
(42, 1, 'Send Help', 'Send Help', 'send_help.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/send_help.png', NULL, NULL, NULL, '.png', '45.61', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:43:42', 1, '2019-08-08 22:50:26', b'0'),
(43, 1, 'Services', 'Services', 'services.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/services.png', NULL, NULL, NULL, '.png', '68.39', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:43:54', 1, '2019-08-08 22:50:21', b'0'),
(44, 1, 'Settings', 'Settings', 'settings.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/settings.png', NULL, NULL, NULL, '.png', '29', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:44:10', 1, '2019-08-08 22:50:16', b'0'),
(45, 1, 'Thank You', 'Thank You', 'thank_you.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/thank_you.png', NULL, NULL, NULL, '.png', '52.31', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:44:50', 1, '2019-08-08 22:50:11', b'0'),
(46, 1, 'Transparency', 'Transparency', 'transparency.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/transparency.png', NULL, NULL, NULL, '.png', '48.22', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:45:07', 1, '2019-08-08 22:50:07', b'0'),
(47, 1, 'Wedding', 'Wedding', 'wedding.png', 'image/png', 'public/assets/uploads/', 'public/assets/uploads/wedding.png', NULL, NULL, NULL, '.png', '84.2', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 08:45:24', 1, '2019-08-05 23:38:49', b'0'),
(48, 1, 'Coca Cola', 'Coca Cola', '4.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/4.jpg', NULL, NULL, NULL, '.jpg', '593.24', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 09:00:43', 1, '2019-07-25 12:47:16', b'0'),
(49, 1, 'Pepsi', 'Pepsi', '5.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/5.jpg', NULL, NULL, NULL, '.jpg', '636.1', NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 09:09:13', 1, '2019-08-23 09:10:19', b'0'),
(50, 1, 'YTS', 'YTS', 'WWW_YTS_RE.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/WWW_YTS_RE.jpg', NULL, NULL, NULL, '.jpg', '107.92', NULL, NULL, NULL, NULL, NULL, 1, '2019-08-06 02:03:14', 1, '2019-08-08 22:48:58', b'1'),
(51, 1, 'Cabalen', 'Cabalen Naga City', 'Cabalen_Naga_City.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/Cabalen_Naga_City.jpg', NULL, NULL, NULL, '.jpg', '272.66', NULL, NULL, NULL, NULL, NULL, 1, '2019-09-04 04:09:44', NULL, NULL, b'0'),
(52, 1, 'BDO', 'BDO', 'BDO.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/BDO.jpg', NULL, NULL, NULL, '.jpg', '120.52', NULL, NULL, NULL, NULL, NULL, 1, '2019-09-04 04:16:07', NULL, NULL, b'0'),
(53, 1, 'Apostleship of Prayer', 'Apostleship of Prayer', 'Apostleship_of_Prayer.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/Apostleship_of_Prayer.jpg', NULL, NULL, NULL, '.jpg', '185.09', NULL, NULL, NULL, NULL, NULL, 1, '2019-09-04 04:16:25', NULL, NULL, b'0'),
(54, 1, 'Pepsi', 'Pepsi', 'Pepsi.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/Pepsi.jpg', NULL, NULL, NULL, '.jpg', '127.78', NULL, NULL, NULL, NULL, NULL, 1, '2019-09-04 04:22:16', NULL, NULL, b'0'),
(55, 1, 'Fiesta', 'Fiesta', 'Fiesta.jpg', 'image/jpeg', 'public/assets/uploads/', 'public/assets/uploads/Fiesta.jpg', NULL, NULL, NULL, '.jpg', '79.30', NULL, NULL, NULL, NULL, NULL, 1, '2019-09-19 15:23:04', 1, '2019-09-19 15:23:04', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `ministers`
--

CREATE TABLE `ministers` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL DEFAULT '1' COMMENT 'type of ministers i.e. 1=Priest, 2=Pastors, 3=Sisters etc',
  `name` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `congregation` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL COMMENT 'photo',
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ministers`
--

INSERT INTO `ministers` (`id`, `branch_id`, `type_id`, `name`, `position`, `congregation`, `sequence`, `media_id`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(1, 1, 107, 'Fr. Alan Rieger', 'Superior', 'OCD', 1, 2, 1, '2019-06-19 12:59:16', 1, '2019-09-03 02:57:19', b'0'),
(2, 1, 107, 'Fr. Joey D. Mabborang', 'Parish Priest / Shrine Rector', 'OCD', 1, 3, 1, '2019-06-19 13:02:24', 1, '2019-08-26 15:26:41', b'0'),
(3, 1, 107, 'Fr. Hernani Añis', 'Parochial Vicar for the Parish', 'OCD', 2, 8, 1, '2019-06-19 13:03:59', 1, '2019-08-26 15:26:15', b'0'),
(4, 1, 107, 'Fr. Ransom Rapirap', 'Parochial Vicar for the National Shrine', 'OCD', 2, 9, 1, '2019-06-19 13:04:28', 1, '2019-08-26 15:17:53', b'0'),
(5, 1, 107, 'Fr. Narciso \"Chito\" Reyes', '', 'OCD', 3, 7, 1, '2019-06-19 13:04:50', 1, '2019-08-26 15:17:29', b'0'),
(6, 1, 107, 'Fr. Alex Collera', '', 'OCD', 3, 4, 1, '2019-06-19 13:05:14', 1, '2019-08-26 15:17:04', b'0'),
(7, 1, 107, 'Fr. Angelo \"Bing\" Madelo', '', 'OCD', 3, 6, 1, '2019-06-19 13:05:56', 1, '2019-08-26 15:16:40', b'0'),
(8, 1, 107, 'Fr. Benedick Piangco', '', 'OCD', 3, 5, 1, '2019-06-19 13:06:11', 1, '2019-08-25 14:07:07', b'0'),
(9, 1, 107, 'Rev. Nguyen Cong Vinh (Rev. Paul)', '', 'OCD', 4, 10, 1, '2019-06-19 14:10:16', 1, '2019-08-23 12:24:05', b'0'),
(10, 1, 107, 'Bro. Porferio Nalzaro', '', 'OCD', 4, 11, 1, '2019-06-19 14:10:35', 1, '2019-08-23 10:51:11', b'0'),
(11, 1, 108, 'Fr. Paul O\'Sullivan', NULL, 'OCD (1975-1978)', 15, 1, 1, '2019-06-19 14:11:47', 1, '2019-08-23 10:37:13', b'0'),
(12, 1, 108, 'Fr. Tom Shanahan', NULL, 'OCD (1978-1981)', 14, 1, 1, '2019-06-19 14:12:12', 1, '2019-08-23 10:37:11', b'0'),
(13, 1, 108, 'Fr. Rolando Tria-Tirona', NULL, 'D.D. (1981-1984)', 13, 1, 1, '2019-06-19 14:13:34', 1, '2019-08-23 10:37:08', b'0'),
(14, 1, 108, 'Fr. Paul Sullivan', NULL, 'OCD (1984-1987)', 12, 1, 1, '2019-06-19 14:14:05', 1, '2019-08-23 10:37:05', b'0'),
(15, 1, 108, 'Fr. Michael Fitzgerald', NULL, 'CD  (1987-1988)', 11, 1, 1, '2019-06-19 14:15:56', 1, '2019-08-23 10:37:01', b'0'),
(16, 1, 108, 'Fr. Paul O\'Sullivan', NULL, 'OCD (1988-1990)', 10, 1, 1, '2019-06-19 14:16:25', 1, '2019-08-23 10:36:53', b'0'),
(17, 1, 108, 'Fr. Rolando Tria-Tirona', NULL, 'DD (1990-1993)', 9, 1, 1, '2019-06-19 14:16:56', 1, '2019-08-23 10:36:50', b'0'),
(18, 1, 108, 'Fr. Angelo Madelo', NULL, 'OCD (1993-1996)', 8, 1, 1, '2019-06-19 14:17:26', 1, '2019-08-23 10:36:45', b'0'),
(19, 1, 108, 'Fr. Alex Collera', NULL, 'OCD (1996 -1999)', 7, 1, 1, '2019-06-19 14:18:00', 1, '2019-08-23 10:36:41', b'0'),
(20, 1, 108, 'Fr. Mariano Agruda', NULL, 'OCD (1999-2005)', 6, 1, 1, '2019-06-19 14:18:33', 1, '2019-08-23 10:36:37', b'0'),
(21, 1, 108, 'Fr. Paulo Gamboa', NULL, 'OCD (2005-2006)', 5, 1, 1, '2019-06-19 14:19:13', 1, '2019-08-23 10:36:34', b'0'),
(22, 1, 108, 'Fr. Arnie Boehme', '', 'OCD (2006-2008)', 4, 1, 1, '2019-06-19 14:21:05', 1, '2019-08-26 16:36:16', b'0'),
(23, 1, 108, 'Fr. Alex Collera', NULL, 'OCD (2008-2011)', 3, 1, 1, '2019-06-19 14:21:31', 1, '2019-08-23 10:36:27', b'0'),
(24, 1, 108, 'Fr. Dan Lim', '', 'OCD (2011-2014)', 2, 1, 1, '2019-06-19 14:22:09', 1, '2019-08-26 16:23:41', b'0'),
(25, 1, 108, 'Fr. Joey Maborrang', '', 'OCD (2014-present)', 1, 1, 1, '2019-06-19 14:22:31', 1, '2019-09-06 21:00:55', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL COMMENT 'icons',
  `sub_module_url` mediumtext,
  `sub_module_ids` varchar(20) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `branch_id`, `program_id`, `name`, `description`, `action`, `media_id`, `sub_module_url`, `sub_module_ids`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(1, 1, 1, 'News & Updates', 'News & Updates', NULL, 38, NULL, NULL, 1, '2019-06-19 18:00:13', NULL, NULL, b'0'),
(2, 1, 1, 'Calendar', 'Calendar', NULL, 30, NULL, NULL, 1, '2019-06-19 18:00:30', NULL, NULL, b'0'),
(3, 1, 1, 'Live Mass', 'Live Mass', NULL, 37, NULL, NULL, 1, '2019-06-19 18:00:47', NULL, NULL, b'0'),
(4, 1, 3, 'Join Us!', 'Be an active part of the mission and service of the Carmelite Church', NULL, 34, 'https://api.mountcarmel.ph/service_confraternity', '1', 1, '2019-06-19 18:01:28', 1, '2019-09-25 15:02:37', b'1'),
(5, 1, 3, 'Make a Request', 'Be closer to God with the help of the church through prayers, holy masses and liturgy', NULL, 40, 'https://api.mountcarmel.ph/service_prayer_request,https://api.mountcarmel.ph/service_mass_request,https://api.mountcarmel.ph/service_liturgical,https://api.mountcarmel.ph/service_certification', '2,3,4,5', 1, '2019-06-19 18:01:56', NULL, NULL, b'0'),
(6, 1, 3, 'Baptism', 'Be part of the christian community and follow the word of the Lord', NULL, 31, 'https://api.mountcarmel.ph/service_individual_baptism,https://api.mountcarmel.ph/service_community_baptism,https://api.mountcarmel.ph/service_adult_baptism', '6,7,8', 1, '2019-06-19 18:02:17', NULL, NULL, b'0'),
(7, 1, 3, 'Communion', 'Be united with our God through the christian rite of communion', NULL, 32, 'https://api.mountcarmel.ph/service_first_communion,https://api.mountcarmel.ph/service_communion_of_the_sick', '9,10', 1, '2019-06-19 18:02:37', NULL, NULL, b'0'),
(8, 1, 3, 'Confirmation', 'Duis accumsan nibh justo, eu eleifend nisi mattis ut. Nullam congue iaculis auctor.', NULL, 33, 'https://api.mountcarmel.ph/service_confirmation', '11', 1, '2019-06-19 18:02:55', NULL, NULL, b'0'),
(9, 1, 3, 'Marriage', 'Duis accumsan nibh justo, eu eleifend nisi mattis ut. Nullam congue iaculis auctor.', NULL, 47, 'https://api.mountcarmel.ph/service_marriage', '12', 1, '2019-06-19 18:03:15', NULL, NULL, b'0'),
(10, 1, 3, 'Passing', 'Passing', NULL, 39, 'https://api.mountcarmel.ph/service_funeral_service,https://api.mountcarmel.ph/service_funeral_chapel,https://api.mountcarmel.ph/service_crypt_lobby,https://api.mountcarmel.ph/service_november_mass', '13,14,15,16', 1, '2019-06-19 18:03:32', NULL, NULL, b'0'),
(11, 1, 3, 'Events', 'Celebrate marriage or events in the delightful premises of the church', NULL, 35, 'https://api.mountcarmel.ph/service_events_FMHH_venue', '17', 1, '2019-06-19 18:03:47', NULL, NULL, b'0'),
(12, 1, 4, 'Mass Schedule', 'Mass Schedule', NULL, 37, NULL, NULL, 1, '2019-09-23 17:11:57', NULL, NULL, b'0'),
(13, 1, 4, 'Location Map', 'Location Map', NULL, NULL, NULL, NULL, 1, '2019-09-23 17:12:41', NULL, NULL, b'0'),
(14, 1, 4, 'Carmelite', 'Carmelite', NULL, NULL, NULL, NULL, 1, '2019-09-23 17:13:10', NULL, NULL, b'0'),
(15, 1, 4, 'Contact Details', 'Contact Details', NULL, NULL, NULL, NULL, 1, '2019-09-23 17:13:41', NULL, NULL, b'0'),
(16, 1, 4, 'History', 'History', NULL, NULL, NULL, NULL, 1, '2019-09-23 17:14:08', NULL, NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(20) DEFAULT NULL,
  `amenities` varchar(255) NOT NULL,
  `additional_amenities` mediumtext,
  `amount` decimal(10,0) NOT NULL,
  `amt_per` varchar(20) NOT NULL,
  `other_charges` decimal(10,0) DEFAULT NULL,
  `other_charges_per` varchar(20) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `branch_id`, `name`, `description`, `amenities`, `additional_amenities`, `amount`, `amt_per`, `other_charges`, `other_charges_per`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(1, 1, 'Whole area package 1', NULL, '300 tiffany chairs\r\n30 tables', '<p>All areas include the use of air conditioner, built-in sound system, ample parking space, clean toilet, LCD projector, and electricity for photo booth and maximum of 2 food carts.</p>', '30000', 'day', '2000', 'excess hour', 1, '2019-06-20 14:15:22', NULL, NULL, b'0'),
(2, 1, 'Whole area package 2', NULL, '300 monoblock chairs\r\n30 tables', '<p>All areas include the use of air conditioner, built-in sound system, ample parking space, clean toilet, LCD projector, and electricity for photo booth and maximum of 2 food carts.</p>', '27500', 'day', '2000', 'excess hour', 1, '2019-06-20 14:16:41', NULL, NULL, b'0'),
(3, 1, 'Half area package 1', NULL, '120 tiffany chairs\r\n12 tables', '<p>All areas include the use of air conditioner, built-in sound system, ample parking space, clean toilet, LCD projector, and electricity for photo booth and maximum of 2 food carts.</p>', '23000', 'day', '1000', 'excess hour', 1, '2019-06-20 14:17:38', NULL, NULL, b'0'),
(4, 1, 'Half area package 2', NULL, '120 monoblock chairs\r\n12 tables', '<p>All areas include the use of air conditioner, built-in sound system, ample parking space, clean toilet, LCD projector, and electricity for photo booth and maximum of 2 food carts.</p>', '20000', 'day', '1000', 'excess hour', 1, '2019-06-20 14:18:35', NULL, NULL, b'0'),
(5, 1, 'Quarter area package 1', NULL, '80 tiffany chairs\r\n8 tables', '<p>All areas include the use of air conditioner, built-in sound system, ample parking space, clean toilet, LCD projector, and electricity for photo booth and maximum of 2 food carts.</p>', '15000', 'day', '500', 'excess hour', 1, '2019-06-20 14:19:25', NULL, NULL, b'0'),
(6, 1, 'Quarter area package 2', NULL, '80 monoblock chairs\r\n8 tables', '<p>All areas include the use of air conditioner, built-in sound system, ample parking space, clean toilet, LCD projector, and electricity for photo booth and maximum of 2 food carts.</p>', '10000', 'day', '500', 'excess hour', 1, '2019-06-20 14:19:25', NULL, NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `module_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `content` mediumtext NOT NULL,
  `post_type_id` int(11) NOT NULL,
  `expiration` datetime DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `branch_id`, `title`, `content`, `post_type_id`, `expiration`, `media_id`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(1, 1, 'Solemn Declaration of The National Shrine of Our Lady of Mt. Carmel as Minor BasilicaOfficial Web and Mobile App', '<p style=\"text-align: justify\">Solemn Declaration of The National Shrine of Our Lady of Mt. Carmel as Minor Basilica. Let us be at the service of others and bring Christ to them. So that the presence of a Basilica is a strong confirmation that we are never alone. God is with us!</p>', 57, NULL, 24, 1, '2019-06-18 14:49:12', 1, '2019-09-08 23:54:01', b'0'),
(2, 1, 'Official Web and Mobile App', '<p style=\"text-align: justify\">We have released the new official web and mobile applications of Minor Basilica of the National Shrine of Our Lady of Mount Carmel, located at 90 4th Street, New Manila, Quezon City, Philippines.</p><p>\r\n</p><p style=\"text-align: justify\">Our vision for the new system will help the church improve its security, sustainability, and efficiency.</p><p>\r\n</p><p style=\"text-align: justify\">We have seen massive loopholes in the old system, that is undoubtedly been exploited by countless people.</p><p>\r\n</p><p style=\"text-align: justify\">We have automated the old system to remove the presence of human resources as middlemen in every transaction, such as donations and services. In result, it ceases theft and temptations from employees and other people. Despite the innumerable security measures that we have installed, the system can also identify thieves and unscrupulous transactions, should there be any.</p><p>\r\n</p><p style=\"text-align: justify\">The Pope demands the church to loosen up from asking donations from people. We have designed a plan called the Progressive Leap Strategy that requires zero donations.</p><p>\r\n</p><p style=\"text-align: justify\">To achieve a self-sustaining technology, we have monetized the platform to build and expand the system. We have placed a number of ad placements in the applications, aiming to produce a platform without asking for any donations. Eventually, the system will lessen the monetary help needed by the church.</p><p>\r\n</p><p style=\"text-align: justify\">This approach will aggressively expand the system throughout Mount Carmel Churches in the Philippines, in parallel with the improvement of the system by adding more features and upgrading the overall performance of the application.</p><p>\r\n</p><p style=\"text-align: justify\">The Catholic Church ought to focus on the next generation of Christians, the survival of Catholicism is highly dependent on the new generation than of the previous. Adapting to the information age is a great way of reaching out to the young ones, being available to anyone, anytime and anywhere.</p><p>\r\n</p><p style=\"text-align: justify\">This platform will serve as a tool to secure transactions, promote efficiency and preserve Christianity.</p>', 57, NULL, 14, 1, '2019-06-19 17:38:33', 1, '2019-09-08 23:53:38', b'0'),
(3, 1, 'Sample Ads - Coca-Cola Awarded for Advertising Innovations', '<p style=\"text-align: justify\">When Coca-Cola was named \"Marketer of the Year\" by AdAge in 2011, the flagship brand was 125 years old. But even today, the company is not too old to learn and does not rest on its laurels. Coke\'s marketing strategies have produced some volatility over the long-haul, but part of that is due to the willingness of The Coca-Cola Company to innovate. Apparently, the marketing overhaul has worked.</p><p>\r\n</p><p style=\"text-align: justify\">According to Natalie Zmuda of AdAge, Coca-Cola\'s marketing focus changed in 2007 when Mr. Tripodi came on board from Allstate. AdAge described the following marketing challenges:</p><p>\r\n</p><p style=\"text-align: justify\">Coca-Cola was too dependent on its flagship drink - Coke® Coca-Cola\'s advertising and use of advertising agencies was inconsistent Coca-Cola was seen as a \"sluggish, hidebound marketer.\" Mr. Tripodi told Zamuda he believes that the culture at Coca-Cola has a lot to do with its success. The team is said to share both the successes and the learnings from failures, which is a must given the size and scale of The Coca-Cola Company. Mr. Tripodi said, \"We\'ve got a team of people around the world that is less concerned with getting credit and more concerned with getting behind a great idea.\" The Coca-Cola Company could be classified as a learning organization as it has demonstrated adaptability and creativity over many decades.</p>', 62, NULL, 48, 1, '2019-06-20 17:52:40', 1, '2019-09-26 11:12:18', b'1'),
(4, 1, 'Apostleship of Prayer', '<p>Apostleship of Prayer</p>', 0, NULL, 53, 1, '2019-09-04 20:01:20', 1, '2019-09-04 20:44:17', b'1'),
(5, 1, 'We Find Ways', '<p>We Find Ways</p>', 0, NULL, 52, 1, '2019-09-04 20:04:45', 1, '2019-09-04 20:44:13', b'1'),
(6, 1, 'Edited Sample posts', 'Edited Sample posts', 0, NULL, 14, 1, '2019-09-09 17:37:26', 1, '2019-09-09 17:53:24', b'1'),
(7, 1, 'Sample posts', 'Sample posts', 0, NULL, 14, 1, '2019-09-09 19:00:33', 1, '2019-09-10 00:26:39', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL COMMENT 'icons',
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `name`, `description`, `action`, `media_id`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(1, 'Home', 'Home', NULL, NULL, 1, '2019-09-27 16:25:27', NULL, NULL, b'0'),
(2, 'Send Help', 'Send Help', NULL, NULL, 1, '2019-09-27 16:25:27', NULL, NULL, b'0'),
(3, 'Services', 'Services', NULL, NULL, 1, '2019-09-27 16:25:27', NULL, NULL, b'0'),
(4, 'Basilica', 'Basilica', NULL, NULL, 1, '2019-09-27 16:25:27', NULL, NULL, b'0'),
(5, 'Holy Bible', 'Holy Bible', NULL, NULL, 1, '2019-09-27 16:25:27', NULL, NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `program_features`
--

CREATE TABLE `program_features` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL COMMENT 'icons',
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `program_features`
--

INSERT INTO `program_features` (`id`, `branch_id`, `name`, `description`, `action`, `media_id`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(1, 1, 'Home', 'Home', NULL, NULL, 1, '2019-09-23 16:43:31', NULL, NULL, b'0'),
(2, 1, 'Send Help', 'Send Help', NULL, NULL, 1, '2019-09-23 16:46:26', NULL, NULL, b'0'),
(3, 1, 'Services', 'Services', NULL, NULL, 1, '2019-09-23 16:47:18', NULL, NULL, b'0'),
(4, 1, 'Basilica', 'Basilica', NULL, NULL, 1, '2019-09-23 16:49:00', NULL, NULL, b'0'),
(5, 1, 'Holy Bible', 'Holy Bible', NULL, NULL, 1, '2019-09-23 16:49:33', NULL, NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `content` mediumtext NOT NULL,
  `post_type_id` int(11) NOT NULL,
  `expiration` datetime DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `region_code` varchar(255) DEFAULT NULL,
  `province_code` varchar(255) DEFAULT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `name`, `description`, `region_code`, `province_code`, `country_code`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(2, 'Agusan Del Norte', NULL, '16', '1602', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(3, 'Agusan Del Sur', NULL, '16', '1603', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(4, 'Aklan', NULL, '06', '0604', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(5, 'Albay', NULL, '05', '0505', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(6, 'Antique', NULL, '06', '0606', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(7, 'Apayao', NULL, '14', '1481', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(8, 'Aurora', NULL, '03', '0377', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(9, 'Basilan', NULL, '15', '1507', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(10, 'Bataan', NULL, '03', '0308', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(11, 'Batanes', NULL, '02', '0209', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(12, 'Batangas', NULL, '04', '0410', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(13, 'Benguet', NULL, '14', '1411', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(14, 'Biliran', NULL, '08', '0878', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(15, 'Bohol', NULL, '07', '0712', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(16, 'Bukidnon', NULL, '10', '1013', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(17, 'Bulacan', NULL, '03', '0314', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(18, 'Cagayan', NULL, '02', '0215', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(19, 'Camarines Norte', NULL, '05', '0516', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(20, 'Camarines Sur', NULL, '05', '0517', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(21, 'Camiguin', NULL, '10', '1018', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(22, 'Capiz', NULL, '06', '0619', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(23, 'Catanduanes', NULL, '05', '0520', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(24, 'Cavite', NULL, '04', '0421', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(25, 'Cebu', NULL, '07', '0722', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(26, 'Isabela', NULL, '09', '0997', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(27, 'Metro Manila', NULL, '13', '1339', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(28, 'Compostela Valley', NULL, '11', '1182', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(29, 'Cotabato (North Cotabato)', NULL, '12', '1247', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(30, 'Cotabato', NULL, '12', '1298', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(31, 'Davao Del Norte', NULL, '11', '1123', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(32, 'Davao Del Sur', NULL, '11', '1124', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(33, 'Davao Occidental', NULL, '11', '1186', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(34, 'Davao Oriental', NULL, '11', '1125', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(35, 'Dinagat Islands', NULL, '16', '1685', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(36, 'Eastern Samar', NULL, '08', '0826', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(37, 'Guimaras', NULL, '06', '0679', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(38, 'Ifugao', NULL, '14', '1427', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(39, 'Ilocos Norte', NULL, '01', '0128', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(40, 'Ilocos Sur', NULL, '01', '0129', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(41, 'Iloilo', NULL, '06', '0630', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(42, 'Isabela', NULL, '02', '0231', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(43, 'Kalinga', NULL, '14', '1432', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(44, 'La Union', NULL, '01', '0133', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(45, 'Laguna', NULL, '04', '0434', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(46, 'Lanao Del Norte', NULL, '10', '1035', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(47, 'Lanao Del Sur', NULL, '15', '1536', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(48, 'Leyte', NULL, '08', '0837', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(49, 'Maguindanao', NULL, '15', '1538', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(50, 'Marinduque', NULL, '17', '1740', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(51, 'Masbate', NULL, '05', '0541', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(52, 'Misamis Occidental', NULL, '10', '1042', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(53, 'Misamis Oriental', NULL, '10', '1043', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(54, 'Mountain Province', NULL, '14', '1444', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(55, 'NCR, First District', NULL, '13', '1339', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(56, 'NCR, Fourth District', NULL, '13', '1376', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(57, 'NCR, Second District', NULL, '13', '1374', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(58, 'NCR, Third District', NULL, '13', '1375', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(59, 'Negros Occidental', NULL, '06', '0645', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(60, 'Negros Oriental', NULL, '07', '0746', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(61, 'Northern Samar', NULL, '08', '0848', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(62, 'Nueva Ecija', NULL, '03', '0349', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(63, 'Nueva Vizcaya', NULL, '02', '0250', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(64, 'Occidental Mindoro', NULL, '17', '1751', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(65, 'Oriental Mindoro', NULL, '17', '1752', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(66, 'Palawan', NULL, '17', '1753', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(67, 'Pampanga', NULL, '03', '0354', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(68, 'Pangasinan', NULL, '01', '0155', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(69, 'Quezon', NULL, '04', '0456', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(70, 'Quirino', NULL, '02', '0257', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(71, 'Rizal', NULL, '04', '0458', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(72, 'Romblon', NULL, '17', '1759', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(73, 'Samar (Western Samar)', NULL, '08', '0860', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(74, 'Sarangani', NULL, '12', '1280', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(75, 'Siquijor', NULL, '07', '0761', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(76, 'Sorsogon', NULL, '05', '0562', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(77, 'South Cotabato', NULL, '12', '1263', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(78, 'Southern Leyte', NULL, '08', '0864', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(79, 'Sultan Kudarat', NULL, '12', '1265', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(80, 'Sulu', NULL, '15', '1566', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(81, 'Surigao Del Norte', NULL, '16', '1667', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(82, 'Surigao Del Sur', NULL, '16', '1668', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(83, 'Tarlac', NULL, '03', '0369', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(84, 'Tawi-Tawi', NULL, '15', '1570', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(85, 'Zambales', NULL, '03', '0371', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(86, 'Zamboanga Del Norte', NULL, '09', '0972', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(87, 'Zamboanga Del Sur', NULL, '09', '0973', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0'),
(88, 'Zamboanga Sibugay', NULL, '09', '0983', '01', 1, '2019-07-23 14:58:41', NULL, NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `region_code` varchar(255) DEFAULT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`id`, `name`, `description`, `region_code`, `country_code`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(1, 'REGION I (ILOCOS REGION)', NULL, '01', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0'),
(2, 'REGION II (CAGAYAN VALLEY)', NULL, '02', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0'),
(3, 'REGION III (CENTRAL LUZON)', NULL, '03', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0'),
(4, 'REGION IV-A (CALABARZON)', NULL, '04', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0'),
(5, 'REGION IV-B (MIMAROPA)', NULL, '17', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0'),
(6, 'REGION V (BICOL REGION)', NULL, '05', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0'),
(7, 'REGION VI (WESTERN VISAYAS)', NULL, '06', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0'),
(8, 'REGION VII (CENTRAL VISAYAS)', NULL, '07', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0'),
(9, 'REGION VIII (EASTERN VISAYAS)', NULL, '08', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0'),
(10, 'REGION IX (ZAMBOANGA PENINSULA)', NULL, '09', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0'),
(11, 'REGION X (NORTHERN MINDANAO)', NULL, '10', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0'),
(12, 'REGION XI (DAVAO REGION)', NULL, '11', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0'),
(13, 'REGION XII (SOCCSKSARGEN)', NULL, '12', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0'),
(14, 'NATIONAL CAPITAL REGION (NCR)', NULL, '13', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0'),
(15, 'CORDILLERA ADMINISTRATIVE REGION (CAR)', NULL, '14', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0'),
(16, 'AUTONOMOUS REGION IN MUSLIM MINDANAO (ARMM)', NULL, '15', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0'),
(17, 'REGION XIII (Caraga)', NULL, '16', '01', 1, '2019-07-23 14:14:47', NULL, NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `requirements`
--

CREATE TABLE `requirements` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `sub_module_id` int(11) NOT NULL,
  `sub_module_info_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `branch_id`, `name`, `description`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(1, 1, 'Admin', NULL, 1, '2019-06-27 16:34:00', NULL, NULL, b'0'),
(2, 1, 'User', NULL, 1, '2019-06-27 16:35:13', NULL, NULL, b'0'),
(3, 1, 'Priest', NULL, 1, '2019-06-27 16:35:13', NULL, NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `others` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `branch_id`, `name`, `description`, `time_from`, `time_to`, `day`, `type_id`, `language_id`, `others`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(1, 1, 'Holy Mass', 'Holy Mass', '06:00:00', '07:00:00', 'Sundays', 99, 37, NULL, 1, '2019-06-19 16:09:20', NULL, NULL, b'0'),
(2, 1, 'Holy Mass', 'Holy Mass', '07:15:00', '08:15:00', 'Sundays', 99, 38, NULL, 1, '2019-06-19 16:11:17', NULL, NULL, b'0'),
(3, 1, 'Holy Mass', 'Holy Mass', '08:30:00', '09:30:00', 'Sundays', 99, 38, NULL, 1, '2019-06-19 16:12:05', NULL, NULL, b'0'),
(4, 1, 'Holy Mass', 'Holy Mass', '09:45:00', '10:45:00', 'Sundays', 99, 38, NULL, 1, '2019-06-19 16:12:38', NULL, NULL, b'0'),
(5, 1, 'Holy Mass', 'Holy Mass', '11:00:00', '12:00:00', 'Sundays', 99, 38, NULL, 1, '2019-06-19 16:13:41', NULL, NULL, b'0'),
(6, 1, 'Holy Mass', 'Holy Mass', '12:15:00', '13:15:00', 'Sundays', 99, 38, NULL, 1, '2019-06-19 16:14:26', NULL, NULL, b'0'),
(7, 1, 'Holy Mass', 'Holy Mass', '15:45:00', '16:45:00', 'Sundays', 99, 37, NULL, 1, '2019-06-19 16:15:16', NULL, NULL, b'0'),
(8, 1, 'Holy Mass', 'Holy Mass', '17:00:00', '18:00:00', 'Sundays', 99, 38, NULL, 1, '2019-06-19 16:16:12', NULL, NULL, b'0'),
(9, 1, 'Holy Mass', 'Holy Mass', '18:15:00', '19:15:00', 'Sundays', 99, 38, NULL, 1, '2019-06-19 16:17:01', NULL, NULL, b'0'),
(10, 1, 'Holy Mass', 'Holy Mass', '19:30:00', '20:30:00', 'Sundays', 99, 38, NULL, 1, '2019-06-19 16:17:44', NULL, NULL, b'0'),
(11, 1, 'Holy Mass', 'Holy Mass', '06:00:00', '07:00:00', 'Weekdays', 99, 38, NULL, 1, '2019-06-19 16:18:36', NULL, NULL, b'0'),
(12, 1, 'Holy Mass', 'Holy Mass', '07:00:00', '08:00:00', 'Weekdays', 99, 38, NULL, 1, '2019-06-19 16:19:14', NULL, NULL, b'0'),
(13, 1, 'Holy Mass', 'Holy Mass', '12:15:00', '13:15:00', 'Weekdays', 99, 37, NULL, 1, '2019-06-19 16:19:56', NULL, NULL, b'0'),
(14, 1, 'Holy Mass', 'Holy Mass', '18:00:00', '19:00:00', 'Weekdays', 99, 38, NULL, 1, '2019-06-19 16:20:45', NULL, NULL, b'0'),
(15, 1, 'Confession', 'Confession', '14:00:00', '16:00:00', 'Sundays', 100, NULL, NULL, 1, '2019-06-19 16:21:53', NULL, NULL, b'0'),
(16, 1, 'Confession', 'Confession', '06:30:00', '07:00:00', 'Saturdays', 100, NULL, NULL, 1, '2019-06-19 16:22:56', NULL, NULL, b'0'),
(17, 1, 'Confession', 'Confession', '17:00:00', '17:00:00', 'Saturdays', 100, NULL, NULL, 1, '2019-06-19 16:23:56', NULL, NULL, b'0'),
(18, 1, 'Confession', 'Confession', '06:30:00', '07:30:00', 'Weekdays', 100, NULL, NULL, 1, '2019-06-19 16:26:03', NULL, NULL, b'0'),
(19, 1, 'Confession', 'Confession', '18:30:00', '19:30:00', 'Weekdays', 100, NULL, NULL, 1, '2019-06-19 16:26:45', NULL, NULL, b'0'),
(20, 1, 'Blessings', 'Blessings', '09:00:00', '11:00:00', 'Everyday', 101, NULL, NULL, 1, '2019-06-19 16:27:41', NULL, NULL, b'0'),
(21, 1, 'Blessings', 'Blessings', '15:00:00', '16:00:00', 'Everyday', 101, NULL, NULL, 1, '2019-06-19 16:28:21', NULL, NULL, b'0'),
(22, 1, 'Live Mass', 'Live Mass', '06:00:00', '07:00:00', 'Sundays', 102, 37, NULL, 1, '2019-06-19 16:29:28', NULL, NULL, b'0'),
(23, 1, 'Live Mass', 'Live Mass', '07:00:00', '08:00:00', 'Sundays', 102, 38, NULL, 1, '2019-06-19 16:30:10', NULL, NULL, b'0'),
(24, 1, 'Live Mass', 'Live Mass', '18:00:00', '19:00:00', 'Sundays', 102, 38, NULL, 1, '2019-06-19 16:30:44', NULL, NULL, b'0'),
(25, 1, 'Live Mass', 'Live Mass', '19:00:00', '20:00:00', 'Sundays', 102, 38, NULL, 1, '2019-06-19 16:31:24', NULL, NULL, b'0'),
(26, 1, 'Live Mass', 'Live Mass', '06:00:00', '07:00:00', 'Saturdays', 102, 38, NULL, 1, '2019-06-19 16:29:28', NULL, NULL, b'0'),
(27, 1, 'Live Mass', 'Live Mass', '07:00:00', '08:00:00', 'Saturdays', 102, 38, NULL, 1, '2019-06-19 16:29:28', NULL, NULL, b'0'),
(28, 1, 'Live Mass', 'Live Mass', '18:00:00', '19:00:00', 'Saturdays', 102, 38, NULL, 1, '2019-06-19 16:30:44', 1, '2019-09-06 18:22:10', b'0'),
(29, 1, 'Live Mass', 'Live Mass', '19:00:00', '20:00:00', 'Saturdays', 102, 38, NULL, 1, '2019-06-19 16:31:24', 1, '2019-09-06 18:22:06', b'0'),
(30, 2, 'Holy Mass', 'Holy Mass', '06:00:00', '07:00:00', 'Monday - Saturday', 99, 155, NULL, 1, '2019-09-26 12:03:10', NULL, NULL, b'0'),
(31, 2, 'Holy Mass', 'Holy Mass', '18:00:00', '19:00:00', 'Monday - Saturday', 99, 38, NULL, 1, '2019-09-26 12:04:07', NULL, NULL, b'0'),
(32, 2, 'Holy Mass', 'Holy Mass', '06:00:00', '07:00:00', 'Sundays', 99, 155, NULL, 1, '2019-09-26 12:04:59', NULL, NULL, b'0'),
(33, 2, 'Holy Mass', 'Holy Mass', '07:30:00', '08:30:00', 'Sundays', 99, 38, NULL, 1, '2019-09-26 12:05:47', NULL, NULL, b'0'),
(34, 2, 'Holy Mass', 'Holy Mass', '09:00:00', '10:00:00', 'Sundays', 99, 38, NULL, 1, '2019-09-26 12:06:20', NULL, NULL, b'0'),
(35, 2, 'Holy Mass', 'Holy Mass', '10:30:00', '11:30:00', 'Sundays', 99, 38, NULL, 1, '2019-09-26 12:06:53', NULL, NULL, b'0'),
(36, 2, 'Holy Mass', 'Holy Mass', '17:00:00', '18:00:00', 'Sundays', 99, 155, NULL, 1, '2019-09-26 12:07:33', NULL, NULL, b'0'),
(37, 2, 'Holy Mass', 'Holy Mass', '18:30:00', '19:30:00', 'Sundays', 99, 38, NULL, 1, '2019-09-26 12:09:03', NULL, NULL, b'0'),
(38, 2, 'Confession', 'Confession', '17:00:00', '17:45:00', 'Weekdays', 100, NULL, NULL, 1, '2019-09-26 12:10:53', NULL, NULL, b'0'),
(39, 3, 'Holy Mass', 'Holy Mass', '06:30:00', '07:30:00', 'Monday - Sunday', 99, 38, NULL, 1, '2019-09-26 12:13:06', NULL, NULL, b'0'),
(40, 10, 'Holy Mass', 'Holy Mass', '06:00:00', '07:00:00', 'Weekdays', 99, 38, NULL, 1, '2019-09-26 12:15:11', NULL, NULL, b'0'),
(41, 10, 'Holy Mass', 'Holy Mass', '07:00:00', '08:00:00', 'Sundays', 99, 38, NULL, 1, '2019-09-26 12:15:47', NULL, NULL, b'0'),
(42, 19, 'Holy Mass', 'Holy Mass', '06:00:00', '07:00:00', 'Weekdays', 99, 38, NULL, 1, '2019-09-26 12:17:01', NULL, NULL, b'0'),
(43, 19, 'Holy Mass', 'Holy Mass', '07:00:00', '08:00:00', 'Sundays', 99, 38, NULL, 1, '2019-09-26 12:17:26', NULL, NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `service_references`
--

CREATE TABLE `service_references` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `sub_module_id` int(11) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL COMMENT 'table name',
  `attribute` varchar(255) DEFAULT NULL COMMENT 'field name',
  `text_field_type` varchar(255) DEFAULT NULL COMMENT 'app text field type',
  `rank` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL COMMENT 'data value',
  `hint` varchar(255) DEFAULT NULL COMMENT 'field hint',
  `label_text` varchar(255) DEFAULT NULL COMMENT 'field label text',
  `validator_is_required` varchar(255) DEFAULT NULL COMMENT 'validator if required',
  `validator_is_numeric` varchar(255) DEFAULT NULL COMMENT 'validator if numeric',
  `validator_min_value` varchar(255) DEFAULT NULL COMMENT 'validator if min value',
  `validator_max_value` varchar(255) DEFAULT NULL COMMENT 'validator if max value',
  `error_text` varchar(255) DEFAULT NULL COMMENT 'error text',
  `selections` varchar(255) DEFAULT NULL COMMENT 'for dropdown fields',
  `max_lines` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_active` bit(1) DEFAULT b'0',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `service_references`
--

INSERT INTO `service_references` (`id`, `branch_id`, `program_id`, `module_id`, `sub_module_id`, `table_name`, `attribute`, `text_field_type`, `rank`, `value`, `hint`, `label_text`, `validator_is_required`, `validator_is_numeric`, `validator_min_value`, `validator_max_value`, `error_text`, `selections`, `max_lines`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_active`, `is_deleted`) VALUES
(1, 1, 3, 4, 1, '', 'name', 'plain_text', 1, NULL, NULL, 'Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(2, 1, 3, 4, 1, '', 'address_1', 'plain_text', 2, NULL, NULL, 'Home Address ', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(3, 1, 3, 4, 1, '', 'address_2', 'plain_text', 3, NULL, NULL, 'Home Address 2', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(4, 1, 3, 4, 1, '', 'barangay', 'selection', 4, NULL, NULL, 'Barangay', NULL, NULL, NULL, NULL, NULL, 'barangay', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(5, 1, 3, 4, 1, '', 'city', 'selection', 5, NULL, NULL, 'City', NULL, NULL, NULL, NULL, NULL, 'city', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(6, 1, 3, 4, 1, '', 'province', 'selection', 6, NULL, NULL, 'Province', NULL, NULL, NULL, NULL, NULL, 'province', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(7, 1, 3, 4, 1, '', 'country', 'selection', 7, NULL, NULL, 'Country', NULL, NULL, NULL, NULL, NULL, 'country', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(8, 1, 3, 4, 1, '', 'dt_birth', 'date', 8, NULL, NULL, 'Birthday', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(9, 1, 3, 4, 1, '', 'landline', 'plain_text', 9, NULL, NULL, 'Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(10, 1, 3, 4, 1, '', 'mobile', 'plain_text', 10, NULL, NULL, 'Contact Number - Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(11, 1, 3, 4, 1, '', 'email', 'plain_text', 11, NULL, NULL, 'Email Address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(12, 1, 3, 5, 2, '', 'prayer', 'multiline', 1, NULL, NULL, 'Write here...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(13, 1, 3, 5, 3, '', 'name', 'multiline', 1, NULL, 'Write names here...', 'Prayer Intension for', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(14, 1, 3, 5, 3, '', 'purpose_mass', 'selection', 2, NULL, '', 'Purpose', NULL, NULL, NULL, NULL, NULL, 'purpose_mass', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(15, 1, 3, 5, 3, '', 'dt_offered', 'date', 3, NULL, NULL, 'Date to be offered', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(16, 1, 3, 5, 3, '', 'time_offered', 'time', 4, NULL, NULL, 'Time of Mass', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(17, 1, 3, 5, 4, '', 'dt_of_service', 'date', 1, NULL, NULL, 'Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(18, 1, 3, 5, 4, '', 'time_of_service', 'time', 2, NULL, NULL, 'Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(19, 1, 3, 5, 4, '', 'address_venue', 'plain_text', 3, NULL, '', 'Venue Address', NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(20, 1, 3, 5, 4, '', 'occasion', 'selection', 4, NULL, '', 'Occasion', NULL, NULL, NULL, NULL, NULL, 'get api of occasion', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(21, 1, 3, 5, 4, '', 'name_contact_person', 'plain_text', 5, NULL, NULL, 'Contact Person', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(22, 1, 3, 5, 4, '', 'landline_contact_person', 'plain_text', 6, NULL, NULL, 'Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(23, 1, 3, 5, 4, '', 'mobile_contact_person', 'plain_text', 7, NULL, NULL, 'Contact Number - Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(24, 1, 3, 5, 5, '', 'name', 'plain_text', 1, NULL, NULL, 'Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(25, 1, 3, 5, 5, '', 'certificate', 'selection', 2, NULL, '', 'Certificate', NULL, NULL, NULL, NULL, NULL, 'certificate', NULL, 1, '2019-07-25 17:02:08', NULL, '2019-08-16 11:50:01', b'0', b'0'),
(26, 1, 3, 5, 5, '', 'purpose_certificate', 'selection', 3, NULL, '', 'Purpose', NULL, NULL, NULL, NULL, NULL, 'purpose_certificate', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(27, 1, 3, 5, 5, '', 'name_contact_person', 'plain_text', 4, NULL, NULL, 'Contact Person', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(28, 1, 3, 5, 5, '', 'landline_contact_person', 'plain_text', 5, NULL, NULL, 'Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(29, 1, 3, 5, 5, '', 'mobile_contact_person', 'plain_text', 6, NULL, NULL, 'Contact Number - Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(30, 1, 3, 6, 6, '', 'name', 'plain_text', 1, NULL, NULL, 'Name of child', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(31, 1, 3, 6, 6, '', 'dt_birth', 'date', 2, NULL, NULL, 'Child\'s Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(32, 1, 3, 6, 6, '', 'birth_place', 'plain_text', 3, NULL, NULL, 'Child\'s Place of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(33, 1, 3, 6, 6, '', 'name_father', 'plain_text', 4, NULL, NULL, 'Name of Child\'s Father', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(34, 1, 3, 6, 6, '', 'religion_father', 'selection', 5, NULL, NULL, 'Religion of Child\'s Father', NULL, NULL, NULL, NULL, NULL, 'religion', NULL, 1, '2019-07-25 17:02:08', NULL, '2019-08-16 11:52:42', b'0', b'0'),
(35, 1, 3, 6, 6, '', 'dt_birth_father', 'date', 6, NULL, NULL, 'Father\'s Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(36, 1, 3, 6, 6, '', 'birth_place_father', 'plain_text', 7, NULL, NULL, 'Father\'s Place of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(37, 1, 3, 6, 6, '', 'name_mother', 'plain_text', 8, NULL, NULL, 'Name of Child\'s Mother', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(38, 1, 3, 6, 6, '', 'religion_mother', 'selection', 9, NULL, NULL, 'Religion of Child\'s Mother', NULL, NULL, NULL, NULL, NULL, 'religion', NULL, 1, '2019-07-25 17:02:08', NULL, '2019-08-16 11:53:12', b'0', b'0'),
(39, 1, 3, 6, 6, '', 'dt_birth_mother', 'date', 10, NULL, NULL, 'Mother\'s Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(40, 1, 3, 6, 6, '', 'birth_place_mother', 'plain_text', 11, NULL, NULL, 'Mother\'s Place of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(41, 1, 3, 6, 6, '', 'address_1', 'plain_text', 12, NULL, NULL, 'Present Address of Child', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(42, 1, 3, 6, 6, '', 'address_2', 'plain_text', 13, NULL, NULL, 'Home Address 2', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(43, 1, 3, 6, 6, '', 'barangay', 'plain_text', 14, NULL, NULL, 'Barangay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(44, 1, 3, 6, 6, '', 'city', 'plain_text', 15, NULL, NULL, 'City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(45, 1, 3, 6, 6, '', 'province', 'plain_text', 16, NULL, NULL, 'Province', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(46, 1, 3, 6, 6, '', 'country', 'plain_text', 17, NULL, NULL, 'Country', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(47, 1, 3, 6, 6, '', 'marriage', 'selection', 18, NULL, 'Choose a type', 'Marriage of Parents', NULL, NULL, NULL, NULL, NULL, 'marriage_type', NULL, 1, '2019-07-25 17:02:08', NULL, '2019-08-16 12:07:40', b'0', b'0'),
(48, 1, 3, 6, 6, '', 'place_of_marriage', 'plain_text', 19, NULL, NULL, 'Place of Marriage', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(49, 1, 3, 6, 6, '', 'name_contact_person', 'plain_text', 20, NULL, NULL, 'Contact Person', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(50, 1, 3, 6, 6, '', 'landline_contact_person', 'plain_text', 21, NULL, NULL, 'Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(51, 1, 3, 6, 6, '', 'mobile_contact_person', 'plain_text', 22, NULL, NULL, 'Contact Number - Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(52, 1, 3, 6, 7, '', 'name', 'plain_text', 1, NULL, NULL, 'Name of child', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(53, 1, 3, 6, 7, '', 'dt_birth', 'date', 2, NULL, NULL, 'Child\'s Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(54, 1, 3, 6, 7, '', 'birth_place', 'plain_text', 3, NULL, NULL, 'Child\'s Place of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(55, 1, 3, 6, 7, '', 'name_father', 'plain_text', 4, NULL, NULL, 'Name of Child\'s Father', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(56, 1, 3, 6, 7, '', 'religion_father', 'selection', 5, NULL, NULL, 'Religion of Child\'s Father', NULL, NULL, NULL, NULL, NULL, 'religion', NULL, 1, '2019-07-25 17:02:08', NULL, '2019-08-16 12:12:22', b'0', b'0'),
(57, 1, 3, 6, 7, '', 'dt_birth_father', 'date', 6, NULL, NULL, 'Father\'s Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(58, 1, 3, 6, 7, '', 'birth_place_father', 'plain_text', 7, NULL, NULL, 'Father\'s Place of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(59, 1, 3, 6, 7, '', 'name_mother', 'plain_text', 8, NULL, NULL, 'Name of Child\'s Mother', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(60, 1, 3, 6, 7, '', 'religion_mother', 'selection', 9, NULL, NULL, 'Religion of Child\'s Mother', NULL, NULL, NULL, NULL, NULL, 'religion', NULL, 1, '2019-07-25 17:02:08', NULL, '2019-08-16 12:12:48', b'0', b'0'),
(61, 1, 3, 6, 7, '', 'dt_birth_mother', 'date', 10, NULL, NULL, 'Mother\'s Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(62, 1, 3, 6, 7, '', 'birth_place_mother', 'plain_text', 11, NULL, NULL, 'Mother\'s Place of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(63, 1, 3, 6, 7, '', 'address_1', 'plain_text', 12, NULL, NULL, 'Present Address of Child', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(64, 1, 3, 6, 7, '', 'address_2', 'plain_text', 13, NULL, NULL, 'Home Address 2', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(65, 1, 3, 6, 7, '', 'barangay', 'plain_text', 14, NULL, NULL, 'Barangay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(66, 1, 3, 6, 7, '', 'city', 'plain_text', 15, NULL, NULL, 'City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(67, 1, 3, 6, 7, '', 'province', 'plain_text', 16, NULL, NULL, 'Province', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(68, 1, 3, 6, 7, '', 'country', 'plain_text', 17, NULL, NULL, 'Country', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(69, 1, 3, 6, 7, '', 'marriage', 'selection', 18, NULL, 'Choose a type', 'Marriage of Parents', NULL, NULL, NULL, NULL, NULL, 'marriage_type', NULL, 1, '2019-07-25 17:02:08', 1, '2019-08-16 12:13:34', b'0', b'0'),
(70, 1, 3, 6, 7, '', 'place_of_marriage', 'plain_text', 19, NULL, NULL, 'Place of Marriage', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(71, 1, 3, 6, 7, '', 'name_contact_person', 'plain_text', 20, NULL, NULL, 'Contact Person', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(72, 1, 3, 6, 7, '', 'landline_contact_person', 'plain_text', 21, NULL, NULL, 'Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(73, 1, 3, 6, 7, '', 'mobile_contact_person', 'plain_text', 22, NULL, NULL, 'Contact Number - Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(74, 1, 3, 6, 8, '', 'name', 'plain_text', 1, NULL, NULL, 'Name of child', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(75, 1, 3, 6, 8, '', 'dt_birth', 'date', 2, NULL, NULL, 'Child\'s Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(76, 1, 3, 6, 8, '', 'birth_place', 'plain_text', 3, NULL, NULL, 'Child\'s Place of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(77, 1, 3, 6, 8, '', 'name_father', 'plain_text', 4, NULL, NULL, 'Name of Child\'s Father', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(78, 1, 3, 6, 8, '', 'religion_father', 'selection', 5, NULL, NULL, 'Religion of Child\'s Father', NULL, NULL, NULL, NULL, NULL, 'religion', NULL, 1, '2019-07-25 17:02:08', NULL, '2019-08-16 13:35:47', b'0', b'0'),
(79, 1, 3, 6, 8, '', 'dt_birth_father', 'date', 6, NULL, NULL, 'Father\'s Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(80, 1, 3, 6, 8, '', 'birth_place_father', 'plain_text', 7, NULL, NULL, 'Father\'s Place of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(81, 1, 3, 6, 8, '', 'name_mother', 'plain_text', 8, NULL, NULL, 'Name of Child\'s Mother', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(82, 1, 3, 6, 8, '', 'religion_mother', 'selection', 9, NULL, NULL, 'Religion of Child\'s Mother', NULL, NULL, NULL, NULL, NULL, 'religion', NULL, 1, '2019-07-25 17:02:08', NULL, '2019-08-16 13:36:35', b'0', b'0'),
(83, 1, 3, 6, 8, '', 'dt_birth_mother', 'date', 10, NULL, NULL, 'Mother\'s Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(84, 1, 3, 6, 8, '', 'birth_place_mother', 'plain_text', 11, NULL, NULL, 'Mother\'s Place of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(85, 1, 3, 6, 8, '', 'address_1', 'plain_text', 12, NULL, NULL, 'Present Address of Child', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(86, 1, 3, 6, 8, '', 'address_2', 'plain_text', 13, NULL, NULL, 'Home Address 2', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(87, 1, 3, 6, 8, '', 'barangay', 'plain_text', 14, NULL, NULL, 'Barangay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(88, 1, 3, 6, 8, '', 'city', 'plain_text', 15, NULL, NULL, 'City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(89, 1, 3, 6, 8, '', 'province', 'plain_text', 16, NULL, NULL, 'Province', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(90, 1, 3, 6, 8, '', 'country', 'plain_text', 17, NULL, NULL, 'Country', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(91, 1, 3, 6, 8, '', 'marriage', 'selection', 18, NULL, 'Choose a type', 'Marriage of Parents', NULL, NULL, NULL, NULL, NULL, 'marriage_type', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(92, 1, 3, 6, 8, '', 'place_of_marriage', 'plain_text', 19, NULL, NULL, 'Place of Marriage', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(93, 1, 3, 6, 8, '', 'name_contact_person', 'plain_text', 20, NULL, NULL, 'Contact Person', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(94, 1, 3, 6, 8, '', 'landline_contact_person', 'plain_text', 21, NULL, NULL, 'Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(95, 1, 3, 6, 8, '', 'mobile_contact_person', 'plain_text', 22, NULL, NULL, 'Contact Number - Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(96, 1, 3, 7, 9, '', 'name', 'plain_text', 1, NULL, NULL, 'Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(97, 1, 3, 7, 9, '', 'dt_birth', 'date', 2, NULL, NULL, 'Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(98, 1, 3, 7, 9, '', 'address_1', 'plain_text', 3, NULL, NULL, 'Home Address', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(99, 1, 3, 7, 9, '', 'address_2', 'plain_text', 4, NULL, NULL, 'Home Address 2', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(100, 1, 3, 7, 9, '', 'barangay', 'plain_text', 5, NULL, NULL, 'Barangay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(101, 1, 3, 7, 9, '', 'city', 'plain_text', 6, NULL, NULL, 'City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(102, 1, 3, 7, 9, '', 'province', 'plain_text', 7, NULL, NULL, 'Province', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(103, 1, 3, 7, 9, '', 'country', 'plain_text', 8, NULL, NULL, 'Country', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(104, 1, 3, 7, 9, '', 'dt_basptism', 'date', 9, NULL, NULL, 'Date of Baptism', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(105, 1, 3, 7, 9, '', 'church_of_baptism', 'plain_text', 10, NULL, NULL, 'Church of Baptism', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(106, 1, 3, 7, 9, '', 'name_father', 'plain_text', 11, NULL, NULL, 'Name of Father', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(107, 1, 3, 7, 9, '', 'name_mother', 'plain_text', 12, NULL, NULL, 'Name of Mother', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(108, 1, 3, 7, 9, '', 'name_contact_person', 'plain_text', 13, NULL, NULL, 'Contact Person', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(109, 1, 3, 7, 9, '', 'landline_contact_person', 'plain_text', 14, NULL, NULL, 'Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(110, 1, 3, 7, 9, '', 'mobile_contact_person', 'plain_text', 15, NULL, NULL, 'Contact Number - Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(111, 1, 3, 7, 10, '', 'name', 'plain_text', 1, NULL, NULL, 'Name of Communicant', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(112, 1, 3, 7, 10, '', 'dt_birth', 'date', 2, NULL, NULL, 'Communicant\'s Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(113, 1, 3, 7, 10, '', 'name_spouse', 'plain_text', 3, NULL, NULL, 'Spouse of Communicant', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(114, 1, 3, 7, 10, '', 'dt_birth_spouse', 'date', 4, NULL, NULL, 'Spouse Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(115, 1, 3, 7, 10, '', 'address_1', 'plain_text', 5, NULL, NULL, 'Home Address of Communicant', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(116, 1, 3, 7, 10, '', 'address_2', 'plain_text', 6, NULL, NULL, 'Home Address 2', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(117, 1, 3, 7, 10, '', 'barangay', 'plain_text', 7, NULL, NULL, 'Barangay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(118, 1, 3, 7, 10, '', 'city', 'plain_text', 8, NULL, NULL, 'City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(119, 1, 3, 7, 10, '', 'province', 'plain_text', 9, NULL, NULL, 'Province', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(120, 1, 3, 7, 10, '', 'country', 'plain_text', 10, NULL, NULL, 'Country', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(121, 1, 3, 7, 10, '', 'landline', 'plain_text', 11, NULL, NULL, 'Communicant Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(122, 1, 3, 7, 10, '', 'mobile', 'plain_text', 12, NULL, NULL, 'Communicant Contact Number - Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(123, 1, 3, 7, 10, '', 'dt_marriage', 'date', 13, NULL, NULL, 'Date of Church Marriage', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, '2019-08-16 13:43:49', b'0', b'0'),
(124, 1, 3, 7, 10, '', 'dt_last_confession', 'date', 14, NULL, NULL, 'Date of Last Confession', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(125, 1, 3, 7, 10, '', 'time_preferred_visit', 'time', 15, NULL, NULL, 'Preferred Time of Visit', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, '2019-08-16 13:44:49', b'0', b'0'),
(126, 1, 3, 7, 10, '', 'day_preferred_visit', 'day', 16, NULL, NULL, 'Preferred Day of Visit', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, '2019-08-16 13:45:24', b'0', b'0'),
(127, 1, 3, 7, 10, '', 'name_contact_person', 'plain_text', 17, NULL, NULL, 'Contact Person', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(128, 1, 3, 7, 10, '', 'landline_contact_person', 'plain_text', 18, NULL, NULL, 'Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(129, 1, 3, 7, 10, '', 'mobile_contact_person', 'plain_text', 19, NULL, NULL, 'Contact Number - Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(130, 1, 3, 8, 11, '', 'name', 'plain_text', 1, NULL, NULL, 'Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(131, 1, 3, 8, 11, '', 'dt_birth', 'date', 2, NULL, NULL, 'Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(132, 1, 3, 8, 11, '', 'address_1', 'plain_text', 3, NULL, NULL, 'Home Address', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(133, 1, 3, 8, 11, '', 'address_2', 'plain_text', 4, NULL, NULL, 'Home Address 2', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(134, 1, 3, 8, 11, '', 'barangay', 'plain_text', 5, NULL, NULL, 'Barangay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(135, 1, 3, 8, 11, '', 'city', 'plain_text', 6, NULL, NULL, 'City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(136, 1, 3, 8, 11, '', 'province', 'plain_text', 7, NULL, NULL, 'Province', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(137, 1, 3, 8, 11, '', 'country', 'plain_text', 8, NULL, NULL, 'Country', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(138, 1, 3, 8, 11, '', 'dt_basptism', 'date', 9, NULL, NULL, 'Date of Baptism', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(139, 1, 3, 8, 11, '', 'church_of_baptism', 'plain_text', 10, NULL, NULL, 'Church of Baptism', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(140, 1, 3, 8, 11, '', 'name_father', 'plain_text', 11, NULL, NULL, 'Name of Father', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(141, 1, 3, 8, 11, '', 'name_mother', 'plain_text', 12, NULL, NULL, 'Name of Mother', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(142, 1, 3, 8, 11, '', 'name_contact_person', 'plain_text', 13, NULL, NULL, 'Contact Person', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(143, 1, 3, 8, 11, '', 'landline_contact_person', 'plain_text', 14, NULL, NULL, 'Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(144, 1, 3, 8, 11, '', 'mobile_contact_person', 'plain_text', 15, NULL, NULL, 'Contact Number - Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(145, 1, 3, 9, 12, '', 'are_civilly_married', 'yes_no', 1, NULL, NULL, 'Are both of you civil married?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(146, 1, 3, 9, 12, '', 'with_previous_marriage', 'yes_no', 2, NULL, NULL, 'Or with any previous marriage?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(147, 1, 3, 9, 12, '', 'is_anyone_an_ofw', 'yes_no', 3, NULL, NULL, 'Is anyone of you an OFW?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(148, 1, 3, 9, 12, '', 'living_abroad', 'yes_no', 4, NULL, NULL, 'Or living abroad for 3 years?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(149, 1, 3, 9, 12, '', 'is_widower', 'yes_no', 5, NULL, NULL, 'Is anyone of you a widower?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(150, 1, 3, 9, 12, '', 'name_groom', 'plain_text', 6, NULL, NULL, 'Name of Groom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(151, 1, 3, 9, 12, '', 'nickname_groom', 'plain_text', 7, NULL, NULL, 'Nickname of Groom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(152, 1, 3, 9, 12, '', 'dt_birth_groom', 'date', 8, NULL, NULL, 'Groom\'s Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(153, 1, 3, 9, 12, '', 'birth_place_groom', 'plain_text', 9, NULL, NULL, 'Groom\'s Birth of Place', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(154, 1, 3, 9, 12, '', 'religion_groom', 'selection', 10, NULL, '', 'Religion of Groom', NULL, NULL, NULL, NULL, NULL, 'get api of religion', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(155, 1, 3, 9, 12, '', 'occupation_groom', 'plain_text', 11, NULL, NULL, 'Occupation of Groom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(156, 1, 3, 9, 12, '', 'work_place_groom', 'plain_text', 12, NULL, NULL, 'Groom\'s Place of Work', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(157, 1, 3, 9, 12, '', 'nationality_groom', 'selection', 13, NULL, '', 'Nationality of Groom', NULL, NULL, NULL, NULL, NULL, 'get api of nationality', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(158, 1, 3, 9, 12, '', 'landline_groom', 'plain_text', 14, NULL, NULL, 'Groom\'s Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(159, 1, 3, 9, 12, '', 'mobile_groom', 'plain_text', 15, NULL, NULL, 'Groom\'s Contact Number - Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(160, 1, 3, 9, 12, '', 'email_groom', 'plain_text', 16, NULL, NULL, 'Email Address of Groom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(161, 1, 3, 9, 12, '', 'address_1_groom', 'plain_text', 17, NULL, NULL, 'Home Address of Groom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(162, 1, 3, 9, 12, '', 'address_2_groom', 'plain_text', 18, NULL, NULL, 'Home Address 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(163, 1, 3, 9, 12, '', 'barangay_groom', 'plain_text', 19, NULL, NULL, 'Barangay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(164, 1, 3, 9, 12, '', 'city_groom', 'plain_text', 20, NULL, NULL, 'City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(165, 1, 3, 9, 12, '', 'province_groom', 'plain_text', 21, NULL, NULL, 'Province', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(166, 1, 3, 9, 12, '', 'country_groom', 'plain_text', 22, NULL, NULL, 'Country', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(167, 1, 3, 9, 12, '', 'name_parish_groom', 'plain_text', 23, NULL, NULL, 'Name of Groom\'s Parish', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(168, 1, 3, 9, 12, '', 'address_parish_groom', 'plain_text', 24, NULL, NULL, 'Address of Groom\'s Parish', NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(169, 1, 3, 9, 12, '', 'address_provincial_groom', 'plain_text', 25, NULL, NULL, 'Provincial Address of Groom', NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(170, 1, 3, 9, 12, '', 'name_father_groom', 'plain_text', 26, NULL, NULL, 'Name of Groom\'s Father', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(171, 1, 3, 9, 12, '', 'nationality_father_groom', 'selection', 27, NULL, NULL, 'Nationality of Groom\'s Father', NULL, NULL, NULL, NULL, NULL, 'get from api nationality', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(172, 1, 3, 9, 12, '', 'name_mother_groom', 'plain_text', 28, NULL, NULL, 'Name of Groom\'s Mother', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(173, 1, 3, 9, 12, '', 'nationality_mother_groom', 'selection', 29, NULL, NULL, 'Nationality of Groom\'s Mother', NULL, NULL, NULL, NULL, NULL, 'get from api nationality', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(174, 1, 3, 9, 12, '', 'name_bride', 'plain_text', 30, NULL, NULL, 'Name of Bride', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(175, 1, 3, 9, 12, '', 'nickname_bride', 'plain_text', 31, NULL, NULL, 'Nickname of Bride', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(176, 1, 3, 9, 12, '', 'dt_birth_bride', 'date', 32, NULL, NULL, 'Bride\'s Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(177, 1, 3, 9, 12, '', 'birth_place_bride', 'plain_text', 33, NULL, NULL, 'Bride\'s Birth of Place', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(178, 1, 3, 9, 12, '', 'religion_bride', 'selection', 34, NULL, '', 'Religion of Bride', NULL, NULL, NULL, NULL, NULL, 'get api of religion', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(179, 1, 3, 9, 12, '', 'occupation_bride', 'plain_text', 35, NULL, NULL, 'Occupation of Bride', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(180, 1, 3, 9, 12, '', 'work_place_bride', 'plain_text', 36, NULL, NULL, 'Bride\'s Place of Work', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(181, 1, 3, 9, 12, '', 'nationality_bride', 'selection', 37, NULL, '', 'Nationality of Bride', NULL, NULL, NULL, NULL, NULL, 'get api of nationality', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(182, 1, 3, 9, 12, '', 'landline_bride', 'plain_text', 38, NULL, NULL, 'Bride\'s Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(183, 1, 3, 9, 12, '', 'mobile_bride', 'plain_text', 39, NULL, NULL, 'Bride\'s Contact Number - Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(184, 1, 3, 9, 12, '', 'email_bride', 'plain_text', 40, NULL, NULL, 'Email Address of Bride', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(185, 1, 3, 9, 12, '', 'address_1_bride', 'plain_text', 41, NULL, NULL, 'Home Address of Bride', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(186, 1, 3, 9, 12, '', 'address_2_bride', 'plain_text', 42, NULL, NULL, 'Home Address 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(187, 1, 3, 9, 12, '', 'barangay_bride', 'plain_text', 43, NULL, NULL, 'Barangay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(188, 1, 3, 9, 12, '', 'city_bride', 'plain_text', 44, NULL, NULL, 'City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(189, 1, 3, 9, 12, '', 'province_bride', 'plain_text', 45, NULL, NULL, 'Province', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(190, 1, 3, 9, 12, '', 'country_bride', 'plain_text', 46, NULL, NULL, 'Country', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(191, 1, 3, 9, 12, '', 'name_parish_bride', 'plain_text', 47, NULL, NULL, 'Name of Bride\'s Parish', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(192, 1, 3, 9, 12, '', 'address_parish_bride', 'plain_text', 48, NULL, NULL, 'Address of Bride\'s Parish', NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(193, 1, 3, 9, 12, '', 'address_provincial_bride', 'plain_text', 49, NULL, NULL, 'Provincial Address of Bride', NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(194, 1, 3, 9, 12, '', 'name_father_bride', 'plain_text', 50, NULL, NULL, 'Name of Bride\'s Father', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(195, 1, 3, 9, 12, '', 'nationality_father_bride', 'selection', 51, NULL, NULL, 'Nationality of Bride\'s Father', NULL, NULL, NULL, NULL, NULL, 'get from api nationality', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(196, 1, 3, 9, 12, '', 'name_mother_bride', 'plain_text', 52, NULL, NULL, 'Name of Bride\'s Mother', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(197, 1, 3, 9, 12, '', 'nationality_mother_bride', 'selection', 53, NULL, NULL, 'Nationality of Bride\'s Mother', NULL, NULL, NULL, NULL, NULL, 'get from api nationality', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(198, 1, 3, 9, 12, '', 'name_contact_person', 'plain_text', 54, NULL, NULL, 'Contact Person', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(199, 1, 3, 9, 12, '', 'landline_contact_person', 'plain_text', 55, NULL, NULL, 'Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(200, 1, 3, 9, 12, '', 'mobile_contact_person', 'plain_text', 56, NULL, NULL, 'mobile_contact_person', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(201, 1, 3, 10, 13, '', 'name', 'plain_text', 1, NULL, NULL, 'Name of Deceased', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(202, 1, 3, 10, 13, '', 'civil_status', 'selection', 2, NULL, 'Select status', 'Civil Status', NULL, NULL, NULL, NULL, NULL, 'get from api nationality', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(203, 1, 3, 10, 13, '', 'dt_birth', 'date', 3, NULL, NULL, 'Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(204, 1, 3, 10, 13, '', 'dt_death', 'date', 4, NULL, NULL, 'Date of Death', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(205, 1, 3, 10, 13, '', 'cause_of_death', 'plain_text', 5, NULL, NULL, 'Cause of Death', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(206, 1, 3, 10, 13, '', 'place_of_funeral', 'selection', 6, NULL, 'Choose location', 'Place of Funeral service', NULL, NULL, NULL, NULL, NULL, 'get form api funeral_location', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(207, 1, 3, 10, 13, '', 'service_type', 'selection', 7, NULL, 'Select Type of Service', 'Type of Service', NULL, NULL, NULL, NULL, NULL, 'get from api service', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(208, 1, 3, 10, 13, '', 'dt_of_service', 'date', 8, NULL, NULL, 'Date of Service', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(209, 1, 3, 10, 13, '', 'time_of_service', 'time', 9, NULL, NULL, 'Time of Service', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(210, 1, 3, 10, 13, '', 'dt_internment', 'date', 10, NULL, NULL, 'Date of Internment or Inurment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(211, 1, 3, 10, 13, '', 'time_of_internment', 'time', 11, NULL, NULL, 'Time of Internment or Inurment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(212, 1, 3, 10, 13, '', 'place_internment', 'plain_text', 12, NULL, NULL, 'Place of Internment or Inurment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(213, 1, 3, 10, 13, '', 'name_contact_person', 'plain_text', 13, NULL, NULL, 'Contact Person', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(214, 1, 3, 10, 13, '', 'landline_contact_person', 'plain_text', 14, NULL, NULL, 'Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(215, 1, 3, 10, 13, '', 'mobile_contact_person', 'plain_text', 15, NULL, NULL, 'Contact Number - Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(216, 1, 3, 10, 14, '', 'name', 'plain_text', 1, NULL, NULL, 'Name of Deceased', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(217, 1, 3, 10, 14, '', 'age', 'plain_text', 2, NULL, NULL, 'Age', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(218, 1, 3, 10, 14, '', 'civil_status', 'selection', 3, NULL, 'Select marital status', 'Marital Status', NULL, NULL, NULL, NULL, NULL, 'get from api civil_status', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(219, 1, 3, 10, 14, '', 'address_1', 'plain_text', 4, NULL, NULL, 'Home Address', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(220, 1, 3, 10, 14, '', 'address_2', 'plain_text', 5, NULL, NULL, 'Home Address 2', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(221, 1, 3, 10, 14, '', 'barangay', 'plain_text', 6, NULL, NULL, 'Barangay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(222, 1, 3, 10, 14, '', 'city', 'plain_text', 7, NULL, NULL, 'City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(223, 1, 3, 10, 14, '', 'province', 'plain_text', 8, NULL, NULL, 'Province', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(224, 1, 3, 10, 14, '', 'country', 'plain_text', 9, NULL, NULL, 'Country', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(225, 1, 3, 10, 14, '', 'dt_birth', 'date', 10, NULL, NULL, 'Date of Birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(226, 1, 3, 10, 14, '', 'dt_death', 'date', 11, NULL, NULL, 'Date of Death', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(227, 1, 3, 10, 14, '', 'cause_of_death', 'plain_text', 12, NULL, NULL, 'Cause of Death', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(228, 1, 3, 10, 14, '', 'dt_burial', 'date', 13, NULL, NULL, 'Date of Burial', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(229, 1, 3, 10, 14, '', 'place_of_burial', 'plain_text', 14, NULL, '', 'Place of Burial', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(230, 1, 3, 10, 14, '', 'name_contact_person', 'plain_text', 15, NULL, NULL, 'Contact Person', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(231, 1, 3, 10, 14, '', 'relationship_with_the_deceased', 'plain_text', 16, NULL, NULL, 'Relationship with the Deceased', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(232, 1, 3, 10, 14, '', 'landline_contact_person', 'plain_text', 17, NULL, NULL, 'Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(233, 1, 3, 10, 14, '', 'mobile_contact_person', 'plain_text', 18, NULL, NULL, 'Contact Number - Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(234, 1, 3, 10, 14, '', 'email_add', 'plain_text', 19, NULL, NULL, 'Email Address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(235, 1, 3, 10, 15, '', 'name', 'plain_text', 1, NULL, NULL, 'Name of Deceased', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(236, 1, 3, 10, 15, '', 'name_contact_person', 'plain_text', 2, NULL, NULL, 'Contact Person', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(237, 1, 3, 10, 15, '', 'landline_contact_person', 'plain_text', 3, NULL, NULL, 'Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(238, 1, 3, 10, 15, '', 'mobile_contact_person', 'plain_text', 4, NULL, NULL, 'Contact Number - Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(239, 1, 3, 10, 16, '', 'name', 'plain_text', 1, NULL, NULL, 'Name of Deceased', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(240, 1, 3, 10, 16, '', 'name_contact_person', 'plain_text', 2, NULL, NULL, 'Contact Person', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(241, 1, 3, 10, 16, '', 'address_1', 'plain_text', 3, NULL, NULL, 'Home Address', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(242, 1, 3, 10, 16, '', 'address_2', 'plain_text', 4, NULL, NULL, 'Home Address 2', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(243, 1, 3, 10, 16, '', 'barangay', 'plain_text', 5, NULL, NULL, 'Barangay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(244, 1, 3, 10, 16, '', 'city', 'plain_text', 6, NULL, NULL, 'City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(245, 1, 3, 10, 16, '', 'province', 'plain_text', 7, NULL, NULL, 'Province', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(246, 1, 3, 10, 16, '', 'country', 'plain_text', 8, NULL, NULL, 'Country', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(247, 1, 3, 11, 17, '', 'name', 'plain_text', 1, NULL, NULL, 'Name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(248, 1, 3, 11, 17, '', 'address_1', 'plain_text', 2, NULL, NULL, 'Home Address', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(249, 1, 3, 11, 17, '', 'address_2', 'plain_text', 3, NULL, NULL, 'Home Address 2', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(250, 1, 3, 11, 17, '', 'barangay', 'plain_text', 4, NULL, NULL, 'Barangay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(251, 1, 3, 11, 17, '', 'city', 'plain_text', 5, NULL, NULL, 'City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(252, 1, 3, 11, 17, '', 'province', 'plain_text', 6, NULL, NULL, 'Province', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(253, 1, 3, 11, 17, '', 'country', 'plain_text', 7, NULL, NULL, 'Country', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'1', b'0'),
(254, 1, 3, 11, 17, '', 'event_type', 'selection', 8, NULL, '', 'Event Type', NULL, NULL, NULL, NULL, NULL, 'get from api event_type', NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(255, 1, 3, 11, 17, '', 'name_contact_person', 'plain_text', 9, NULL, NULL, 'Contact Person', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(256, 1, 3, 11, 17, '', 'landline_contact_person', 'plain_text', 10, NULL, NULL, 'Contact Number - Landline', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(257, 1, 3, 11, 17, '', 'mobile_contact_person', 'plain_text', 11, NULL, NULL, 'Contact Number - Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(258, 1, 3, 4, 1, '', 'country_province_city_barangay', 'country_province_city_barangay', 4, NULL, NULL, 'Home Address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(259, 1, 3, 6, 6, '', 'country_province_city_barangay', 'country_province_city_barangay', 14, NULL, NULL, 'Present Address of Child', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(260, 1, 3, 6, 7, '', 'country_province_city_barangay', 'country_province_city_barangay', 14, NULL, NULL, 'Present Address of Child', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(261, 1, 3, 6, 8, '', 'country_province_city_barangay', 'country_province_city_barangay', 14, NULL, NULL, 'Present Address of Child', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(262, 1, 3, 7, 9, '', 'country_province_city_barangay', 'country_province_city_barangay', 5, NULL, NULL, 'Home Address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(263, 1, 3, 7, 10, '', 'country_province_city_barangay', 'country_province_city_barangay', 7, NULL, NULL, 'Home Address of Communicant', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(264, 1, 3, 8, 11, '', 'country_province_city_barangay', 'country_province_city_barangay', 5, NULL, NULL, 'Home Address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(265, 1, 3, 9, 12, '', 'country_province_city_barangay_groom', 'country_province_city_barangay', 19, NULL, NULL, 'Home Address of Groom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(266, 1, 3, 9, 12, '', 'country_province_city_barangay_bride', 'country_province_city_barangay', 43, NULL, NULL, 'Home Address of Bride', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(267, 1, 3, 10, 14, '', 'country_province_city_barangay', 'country_province_city_barangay', 6, NULL, NULL, 'Home Address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(268, 1, 3, 10, 16, '', 'country_province_city_barangay', 'country_province_city_barangay', 5, NULL, NULL, 'Home Address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0'),
(269, 1, 3, 11, 17, '', 'country_province_city_barangay', 'country_province_city_barangay', 4, NULL, NULL, 'Home Address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-25 17:02:08', NULL, NULL, b'0', b'0');
INSERT INTO `service_references` (`id`, `branch_id`, `program_id`, `module_id`, `sub_module_id`, `table_name`, `attribute`, `text_field_type`, `rank`, `value`, `hint`, `label_text`, `validator_is_required`, `validator_is_numeric`, `validator_min_value`, `validator_max_value`, `error_text`, `selections`, `max_lines`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_active`, `is_deleted`) VALUES
(270, 1, 3, 5, 5, '', 'dt_marriage', 'date', 7, NULL, NULL, 'Date of Marriage', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-08-15 17:10:10', NULL, NULL, b'0', b'0'),
(271, 1, 3, 6, 6, '', 'dt_baptism', 'date', 23, NULL, NULL, 'Date of Baptism', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-08-15 17:10:10', NULL, NULL, b'0', b'0'),
(272, 1, 3, 6, 6, '', 'time_baptism', 'time', 24, NULL, NULL, 'Time of Baptism', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-08-15 17:10:10', NULL, NULL, b'0', b'0'),
(273, 1, 3, 5, 4, '', 'officiating_priest', 'selection', 8, NULL, NULL, 'Officiating Priest', NULL, NULL, NULL, NULL, NULL, 'officiating_priest', NULL, 1, '2019-08-16 11:46:53', NULL, NULL, b'1', b'0'),
(274, 1, 3, 6, 6, '', 'officiating_priest', 'selection', 25, NULL, NULL, 'Officiating Priest', NULL, NULL, NULL, NULL, NULL, 'officiating_priest', NULL, 1, '2019-08-15 17:10:10', NULL, '2019-08-16 12:10:40', b'1', b'0'),
(275, 1, 3, 6, 7, '', 'dt_baptism', 'date', 23, NULL, NULL, 'Date of Baptism', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-08-16 12:15:34', NULL, NULL, b'0', b'0'),
(276, 1, 3, 6, 7, '', 'time_baptism', 'time', 24, NULL, NULL, 'Time of Baptism', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-08-16 12:15:34', NULL, NULL, b'0', b'0'),
(277, 1, 3, 6, 7, '', 'officiating_priest', 'selection', 25, NULL, NULL, 'Officiating Priest', NULL, NULL, NULL, NULL, NULL, 'officiating_priest', NULL, 1, '2019-08-16 12:15:34', NULL, NULL, b'1', b'0'),
(278, 1, 3, 6, 8, '', 'dt_baptism', 'date', 23, NULL, NULL, 'Date of Baptism', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-08-15 17:10:10', NULL, NULL, b'0', b'0'),
(279, 1, 3, 6, 8, '', 'time_baptism', 'time', 24, NULL, NULL, 'Time of Baptism', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-08-15 17:10:10', NULL, NULL, b'0', b'0'),
(280, 1, 3, 7, 9, '', 'schedule_date', 'date', 16, NULL, NULL, 'Choose schedule - Date', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-08-16 13:40:40', NULL, NULL, b'0', b'0'),
(281, 1, 3, 7, 9, '', 'schedule_time', 'time', 17, NULL, NULL, 'Choose schedule - Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-08-16 13:40:40', NULL, NULL, b'0', b'0'),
(282, 1, 3, 7, 10, '', 'remarks', 'plain_text', 19, NULL, NULL, 'Remarks', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-08-16 13:46:34', NULL, NULL, b'0', b'0'),
(283, 1, 3, 8, 11, '', 'remarks', 'plain_text', 16, NULL, NULL, 'Remarks', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-08-16 21:07:45', NULL, NULL, b'0', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `service_transactions`
--

CREATE TABLE `service_transactions` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `sub_module_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `address_1` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `city` varchar(11) DEFAULT NULL,
  `province` varchar(11) DEFAULT NULL,
  `country` varchar(11) DEFAULT NULL,
  `landline` varchar(15) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `name_contact_person` varchar(255) DEFAULT NULL,
  `landline_contact_person` varchar(15) DEFAULT NULL,
  `mobile_contact_person` varchar(15) DEFAULT NULL,
  `email_contact_person` varchar(15) DEFAULT NULL,
  `is_freebies_received` bit(1) NOT NULL DEFAULT b'0',
  `dt_freebies_received` datetime DEFAULT NULL,
  `prayer` mediumtext,
  `purpose_id` int(11) DEFAULT NULL,
  `dt_offered` datetime DEFAULT NULL,
  `dt_of_service` datetime DEFAULT NULL,
  `time_of_service` varchar(20) DEFAULT NULL,
  `address_venue` mediumtext,
  `occasion_id` int(11) DEFAULT NULL,
  `certificate` int(11) DEFAULT NULL,
  `purpose_certificate` int(11) DEFAULT NULL,
  `dt_marriage` datetime DEFAULT NULL,
  `birth_place` varchar(255) DEFAULT NULL,
  `name_father` varchar(255) DEFAULT NULL,
  `religion_father` int(11) DEFAULT NULL,
  `dt_birth_father` datetime DEFAULT NULL,
  `birth_place_father` varchar(255) DEFAULT NULL,
  `name_mother` varchar(255) DEFAULT NULL,
  `religion_mother` int(11) DEFAULT NULL,
  `dt_birth_mother` datetime DEFAULT NULL,
  `birth_place_mother` varchar(255) DEFAULT NULL,
  `marriage` int(11) DEFAULT NULL,
  `place_marriage` mediumtext,
  `dt_baptism` datetime DEFAULT NULL,
  `time_baptism` varchar(20) DEFAULT NULL,
  `church_of_baptism` varchar(255) DEFAULT NULL,
  `schedule_date` datetime DEFAULT NULL,
  `schedule_time` varchar(20) DEFAULT NULL,
  `name_spouse` varchar(255) DEFAULT NULL,
  `dt_birth_spouse` datetime DEFAULT NULL,
  `dt_church_marriage` datetime DEFAULT NULL,
  `dt_last_confession` datetime DEFAULT NULL,
  `time_preferred_visit` varchar(20) DEFAULT NULL,
  `day_preferred_visit` varchar(20) DEFAULT NULL,
  `household` int(11) DEFAULT NULL,
  `sponsor` int(11) DEFAULT NULL,
  `requirements` int(11) DEFAULT NULL,
  `are_civilly_married` bit(1) NOT NULL DEFAULT b'0',
  `with_previous_marriage` bit(1) NOT NULL DEFAULT b'0',
  `is_anyone_an_ofw` bit(1) NOT NULL DEFAULT b'0',
  `living_abroad` bit(1) NOT NULL DEFAULT b'0',
  `is_widower` bit(1) NOT NULL DEFAULT b'0',
  `couple` int(11) DEFAULT NULL,
  `choir` int(11) DEFAULT NULL,
  `flowers` int(11) DEFAULT NULL,
  `civil_status` int(11) DEFAULT NULL,
  `dt_death` datetime DEFAULT NULL,
  `cause_of_death` varchar(255) DEFAULT NULL,
  `funeral_location` int(11) DEFAULT NULL,
  `service` int(11) DEFAULT NULL,
  `dt_internment` datetime DEFAULT NULL,
  `time_internment` varchar(255) DEFAULT NULL,
  `place_internment` varchar(255) DEFAULT NULL,
  `chapel` int(11) DEFAULT NULL,
  `dt_checkin` datetime DEFAULT NULL,
  `dt_checkout` datetime DEFAULT NULL,
  `duration` varchar(20) DEFAULT NULL,
  `event` int(11) DEFAULT NULL,
  `package` int(11) DEFAULT NULL,
  `remarks` mediumtext,
  `others` varchar(255) DEFAULT NULL,
  `officiating_ministers` int(11) DEFAULT NULL,
  `payment` int(11) DEFAULT NULL,
  `donation` int(11) DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `status_remarks` varchar(255) DEFAULT NULL,
  `status_admin` int(11) DEFAULT NULL,
  `remarks_admin` varchar(255) DEFAULT NULL,
  `status_ministers` int(11) DEFAULT NULL,
  `remarks_ministers` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `service_transactions`
--

INSERT INTO `service_transactions` (`id`, `branch_id`, `module_id`, `sub_module_id`, `name`, `birthdate`, `address_1`, `address_2`, `city`, `province`, `country`, `landline`, `mobile`, `email`, `name_contact_person`, `landline_contact_person`, `mobile_contact_person`, `email_contact_person`, `is_freebies_received`, `dt_freebies_received`, `prayer`, `purpose_id`, `dt_offered`, `dt_of_service`, `time_of_service`, `address_venue`, `occasion_id`, `certificate`, `purpose_certificate`, `dt_marriage`, `birth_place`, `name_father`, `religion_father`, `dt_birth_father`, `birth_place_father`, `name_mother`, `religion_mother`, `dt_birth_mother`, `birth_place_mother`, `marriage`, `place_marriage`, `dt_baptism`, `time_baptism`, `church_of_baptism`, `schedule_date`, `schedule_time`, `name_spouse`, `dt_birth_spouse`, `dt_church_marriage`, `dt_last_confession`, `time_preferred_visit`, `day_preferred_visit`, `household`, `sponsor`, `requirements`, `are_civilly_married`, `with_previous_marriage`, `is_anyone_an_ofw`, `living_abroad`, `is_widower`, `couple`, `choir`, `flowers`, `civil_status`, `dt_death`, `cause_of_death`, `funeral_location`, `service`, `dt_internment`, `time_internment`, `place_internment`, `chapel`, `dt_checkin`, `dt_checkout`, `duration`, `event`, `package`, `remarks`, `others`, `officiating_ministers`, `payment`, `donation`, `status_id`, `status_remarks`, `status_admin`, `remarks_admin`, `status_ministers`, `remarks_ministers`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(1, 1, 4, 1, 'Raymond Baguio', '1983-10-19', 'Block 53 Lot 36 Phase 2', 'Manalo St., Upper Bicutan', '137607', '1376', '01', '028374119', '09672871190', 'rpbaguio@gmail.com', NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, '2019-09-02 01:59:46', 1, '2019-09-02 02:20:59', b'0'),
(2, 1, 4, 1, 'Adrian', '1977-10-25', 'Somewhere', 'Down the Road', '137602', '1375', '01', '(12) 345-6789', '(234) 567-890', 'asd@gfs.ph', NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 1, '2019-09-02 02:00:30', 1, '2019-09-03 02:39:23', b'0'),
(3, 1, 4, 1, 'Jane Doe', '2019-09-26', 'Somewhere', 'Near', '137404', '1376', '01', '(23) 456-7890', '(567) 956-7890', 'janedoe@yahoo.com', NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 2, '2019-09-02 02:18:02', 2, '2019-09-03 02:38:34', b'0'),
(4, 1, 4, 1, 'John Doe', '2019-09-26', 'Somewhere', 'Down the road', '137602', '1339', '01', '(12) 345-6789', '(234) 567-890', 'johndoe@gmail.com', NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, '2019-09-02 02:18:29', 1, '2019-09-03 02:36:33', b'0'),
(5, 1, 4, 1, 'Adrian', '2019-09-24', 'Somewhere', 'Down the Road', '137607', '1339', '01', '(02) 123-4567', '(927) 123-4567', 'asd@gfs.ph', NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 1, '2019-09-02 02:18:52', 1, '2019-09-03 04:02:52', b'0'),
(6, 1, 5, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, 'Please pray for my salary increase! :)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, '2019-09-03 04:53:47', 1, '2019-09-04 02:41:05', b'0'),
(7, 1, 5, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean molestie massa a turpis convallis dictum. Etiam at vehicula arcu. Mauris vel aliquet ipsum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eu ante in dui vulputate tincidunt. Aliquam at risus ultrices, molestie lacus eget, iaculis purus. Aliquam sodales, mi ac tincidunt efficitur, enim ipsum ullamcorper ligula, semper egestas felis ante vitae justo. Fusce finibus at lectus ut vulputate. Pellentesque ac viverra nisl. Mauris id dapibus diam, sit amet pellentesque velit. Phasellus consectetur, arcu non sagittis feugiat, ligula libero tristique nibh, ut malesuada libero metus ac odio. Nullam iaculis mi quis ipsum rutrum, eu vehicula dolor tempus. Fusce id neque vestibulum mi blandit efficitur. In quis risus consequat, placerat elit eu, gravida elit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 1, '2019-09-03 05:07:48', 1, '2019-09-04 02:40:59', b'0'),
(9, 1, 5, 3, 'John Doe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, 68, '2019-09-03 12:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 1, '2019-09-03 21:39:15', 1, '2019-09-07 02:04:52', b'0'),
(10, 1, 5, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test contact person', '02-827-9999', '0917-8789999', NULL, b'0', NULL, NULL, NULL, NULL, '2019-12-12 00:00:00', '10:00AM', 'test address venue', 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', b'0', b'0', b'0', b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, '2019-09-12 10:02:58', NULL, NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `contacts` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `sponsors`
--

CREATE TABLE `sponsors` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `sub_module_id` int(11) NOT NULL,
  `sub_module_info_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` int(2) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `landline` varchar(20) DEFAULT NULL,
  `address_1` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `province` int(11) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `sub_modules`
--

CREATE TABLE `sub_modules` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `acceptance_content` mediumtext NOT NULL,
  `thank_you_content` mediumtext NOT NULL,
  `create_url` varchar(255) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL COMMENT 'icons',
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `sub_modules`
--

INSERT INTO `sub_modules` (`id`, `branch_id`, `program_id`, `module_id`, `name`, `description`, `action`, `acceptance_content`, `thank_you_content`, `create_url`, `media_id`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(1, 1, 3, 4, 'Confraternity of Our Lady of Mount Carmel', 'A Carmelite brotherhood in pursuit of the mission, and in service of the Lord', NULL, '<p>Fees:</p>\r\n<p>Application Fee</p>                                        <p>Scapular</p>                                        <p>Confraternity Manual</p>                                        <p>Certificate of Confraternity</p>\r\n<p>200 php</p>\r\n<p>You may settle your bill using your debit card, credit card or cash.</p>', '<p>Thank you for joining the Confraternity. Your application is subject for review, upon approval please settle the application fee.</p>\r\n<p>Please visit Mount Carmel Shrine head office to receive your Scapular, Confraternity Manual and Certificate of Confraternity.</p>\r\n<p>We will be reaching you through your provided contact details.</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/confraternities/create', NULL, 1, '2019-06-19 18:29:13', 1, '2019-09-25 14:32:27', b'1'),
(2, 1, 3, 5, 'Prayer Request', 'Send your prayer request with the help of our Carmelite priests in offering your petitions', NULL, '<p>Prayer Request is free of charge.</p>', '<p>Thank you for sending your prayer request. We will be offering your requests and petitions.</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/prayer_requests/create', NULL, 1, '2019-06-19 18:30:35', 1, '2019-07-25 14:41:09', b'0'),
(3, 1, 3, 5, 'Mass Request', 'Send your mass request with the help of our Carmelite priests in offering your intentions', NULL, '<p>After submission, you may donate any amount as an offering for your requested mass in your mailbox.</p>', '<p>Thank you for for sending your mass request. We will be offering your prayer intentions after completing the process in your mailbox.</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/mass_requests/create', NULL, 1, '2019-06-19 18:31:05', 1, '2019-07-25 14:44:43', b'0'),
(4, 1, 3, 5, 'Liturgical Service', NULL, NULL, '<p>Liturgical Service for blessing of houses, businesses and cars, as well as annointing of the sick or for other purposes.</p>\r\n\r\n<p>Parishioner may give the officiating priest a donation after the service.</p>\r\n\r\n<p>Exclusive for parishioners of Our Lady of Mount Carmel.</p>', '<p>Thank you for requesting a liturgical service. Choose your officiating priest in your mailbox and wait for an approval.</p>\r\n<p>Upon approval, please pick up the officiating priest 30 minutes before the time of event or earlier.</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/liturgical/create', NULL, 1, '2019-06-19 18:32:13', 1, '2019-07-25 14:46:30', b'0'),
(5, 1, 3, 5, 'Certification', NULL, NULL, '<p>We furnish baptismal certificate and confirmation certificate for parishioners.</p>\r\n<p>For Purposes such as for Personal file, School, Confirmation, First Communion, Legal documents, SSS requirement, Travel documents, Issuance of Birth Certificate and Marriage.</p>\r\n<p>Fees:</p>\r\n<p>Printing Service</p>\r\n<p>50 php</p>\r\n<p>You may settle your bill using your debit card, credit card or cash.</p>', '<p>Thank you for your application for Certification. Your application is subject for review, upon approval please settle the application fee.</p>\r\n<p>Please visit Mount Carmel Shrine Head Office to receive your Certificate.</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/certification/create', NULL, 1, '2019-06-19 18:32:40', 1, '2019-07-25 14:48:05', b'0'),
(6, 1, 3, 6, 'Individual Baptism', NULL, NULL, '<p>Schedule:</p>\r\n<p>Tuesday - Saturdays</p>\r\n<p>09:00 AM</p>\r\n<p>10:00 AM</p>\r\n<p>11:00 AM</p>\r\n<p>03:00 PM</p>\r\n<p>04:00 PM</p><br>\r\n<p>Sundays</p>\r\n<p>09:00 AM</p>\r\n<p>10:00 AM</p>\r\n<p>11:00 AM</p>\r\n<p>Additional Requirements:</p>\r\n<p>Child\'s Birth Certificate</p>\r\n<p>Parent\'s Marriage Contract</p>\r\n<p>Permission Letter (if needed)</p>\r\n<p>Fees:</p>\r\n<p>Venue</p>\r\n<p>1,000 php</p>\r\n<p>Stipend for the Priest</p>\r\n<p>1,000 php</p>\r\n<p>For every Sponsor</p>\r\n<p>100 php</p>\r\n<p>Panyal, Certificate, Candle for the Parents, 2 Candles in glass for the Sponsors (candles for additional sponsors are not included)</p>\r\n<p>300 php</p>\r\n<p>Reservation Fee (deductible)</p>\r\n<p>2,000 php</p>\r\n<p>Baptism will be held in Pilgrim Chapel, St. Joseph Bldg.</p>\r\n<p>For non-parishioners, permission letter from your parish must be submitted in Mt. Carmel office.</p>\r\n<p>All sponsors must be catholic and 18 years old or above.</p>\r\n<p>Requirements and fees must be accomplished a week before the baptism.</p>\r\n<p>You may settle your bill using your debit card, credit card or cash.</p>\r\n<p>Be punctual, only an hour is alloted for the whole baptism.</p>', '<p>Thank you for your application for individual baptism.</p>\r\n<p>Individual Baptism is subject for review and approval by the office and the chosen officiating priest.</p>\r\n<p>Finish transaction by rendering all necessary requirements in your mailbox.</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/individual/create', NULL, 1, '2019-06-19 18:33:27', 1, '2019-07-25 14:49:57', b'0'),
(7, 1, 3, 6, 'Community Baptism', NULL, NULL, '<p>Schedule:</p>\r\n<p>Sundays</p>\r\n<p>02:00 PM</p><br>\r\n<p>Additional Requirements:</p>\r\n<p>Child\'s Birth Certificate</p>\r\n<p>Parent\'s Marriage Contract</p>\r\n<p>Permission Letter (if needed)</p><br>\r\n<p>Fees:</p>\r\n<p>  For every Sponsor</p><br>\r\n<p>   100 php</p><br>\r\n<p>  Registration, Panyal, Certificate, Candle for the Parents, 2 Candles in glass for the Sponsors (candles for additional sponsors are not included)</p>\r\n<p>  400 php</p><br>\r\n<p>For non-parishioners, permission letter from your parish must be submitted in Mt. Carmel office.</p>\r\n<p>All sponsors must be catholic and 18 years old or above.</p>\r\n<p>Requirements and fees must be accomplished a week before the baptism.</p>\r\n<p>You may settle your bill using your debit card, credit card or cash.</p>\r\n<p>Be punctual, only an hour is alloted for the whole baptism.</p>', '<p>Thank you for your application for Community baptism.</p>\r\n<p>Community Baptism is subject for review and approval by the office.</p>\r\n<p>Finish transaction by rendering all necessary requirements in your mailbox.</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/community/create', NULL, 1, '2019-06-19 18:33:49', 1, '2019-07-25 14:57:16', b'0'),
(8, 1, 3, 6, 'Adult Baptism', NULL, NULL, '<p>Schedule:</p><br>\r\n<p>Tuesday - Saturdays</p>\r\n<p>09:00 AM</p>\r\n<p>10:00 AM</p>\r\n<p>11:00 AM</p>\r\n<p>03:00 PM</p>\r\n<p>04:00 PM</p><br>\r\n<p>Sundays</p>\r\n<p>10:00 AM</p>\r\n<p>11:00 AM</p><br>\r\n<P>Additional Requirements:</P><br>\r\n<p>Adult\'s Birth Certificate</p>\r\n<p>4 Session Catechesis</p>\r\n<p>Parent Catechesis</p>\r\n<p>Certification of No Records (from 3 parishes from the Vicariate of Holy Family)</p><br>\r\n<p>Fees:</p><br>\r\n<p>Venue</p><br>\r\n<p>1,000 php</p><br>\r\n<p>Stipend for the Priest</p><br>\r\n<p>1,000 php</p><br>\r\n<p>For every Sponsor</p>\r\n<p>100 php</p><br>\r\n<p>Panyal, Certificate, Candle for the Parents</p><br>\r\n<p>150 php</p><br>\r\n<p>Candle for every Sponsor</p><br>\r\n<p>10 php</p><br>\r\n<p>Upon submission,you maycontact Catechetical Ministry office to schedule your catethesis.</p><br>\r\n<p>Call 727-94-32 local 411</p>\r\n<p>Tuesdays to Saturdays</p>\r\n<p>9am-5pm</p><br>\r\n<p>All sponsors must be catholic and 18 years old or above.</p><br>\r\n<p>Requirements and fees must be accomplished a week before the baptism.</p><br>\r\n<p>You may settle your bill using your debit card, credit card or cash.</p><br>\r\n<p>Be punctual, only an hour is alloted for the whole baptism.</p>', '<p>Thank you for your application for Adult Baptism.</p>\r\n<p>Adult Baptism is subject for review and approval by the office.</p>\r\n<p>Finish transaction by rendering all necessary requirements including attendance for catechesis in your mailbox.</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/adult/create', NULL, 1, '2019-06-19 18:34:27', 1, '2019-07-25 14:59:06', b'0'),
(9, 1, 3, 7, 'First Communion', NULL, NULL, '<p>Applicant may only have 1 or 2 sponsors during first communion.</p><br>\r\n<p>Fees:</p><br>\r\n<p>  Application Fee</p>\r\n<p>    500 php</p><br>\r\n<p>Upon submission, you may contact Catechetical Ministry office to schedule your catechesis.</p><br>\r\n<p>Call 727-94-32 local 411</p>\r\n<p>Tuesday to Saturdays</p>\r\n<p>9am-5pm</p><br>\r\n<p>You may settle your bill using your debit card, credit card or cash.</p>', '<p>Thank you for your application for First Communion.</p>\r\n<p>First Communion is subject for review and approval by the office.</p>\r\n<p>Finish transaction by rendering all necessary requirements including attendance for catechesis in your mailbox.</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/first_communion/create', NULL, 1, '2019-06-19 18:35:00', 1, '2019-07-25 15:01:09', b'0'),
(10, 1, 3, 7, 'Communion of the Sick', NULL, NULL, '<p>Preferred time of visit will only serve as guide and may not always be accurate.</p><br>\r\n<p>Communion of the Sick is free of charge</p><br>\r\n<p>Exclusive for parishioners of Our Lady of Mount Carmel</p>', '<p>Thank you for requesting a communion for the sick. We will review your request, please wait for the approval of the office and the Extraordinary Ministers of the Holy Communion.</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/communion_of_the_sick/create', NULL, 1, '2019-06-19 18:35:17', 1, '2019-07-25 15:03:15', b'0'),
(11, 1, 3, 8, 'Confirmation', NULL, NULL, '<p>Applicant may only have 1 or 2 sponsors during confirmation.</p><br>\r\n<p>Fees:</p><br>\r\n<p>  Application Fee</p>\r\n<p>    500 php</p>\r\n<p>Upon submission, you may contact Catechetical Ministry office to schedule your catechesis.</p><br>\r\n<p>Call 727-94-32 local 411</p>\r\n<p>Tuesday to Saturdays</p>\r\n<p>9am-5pm</p><br>\r\n<p>You may settle your bill using your debit card, credit card or cash.</p>', '<p>Thank you for your application for Confirmation.</p>\r\n<p>Confirmation is subject for review and approval by the office.</p>\r\n<p>Finish transaction by rendering all necessary requirements including attendance for catechesis in your mailbox.</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/confirmation/create', NULL, 1, '2019-06-19 18:36:00', 1, '2019-07-25 15:05:04', b'0'),
(12, 1, 3, 9, 'Marriage', NULL, NULL, '<p>Wedding Rules and Regulations Agreement</p><br>\r\n    <p>Version 1</p><br>\r\n    <p>1. Reservation Fee and Full Payment</p><br>\r\n    <p>a. Wedding should be arranged and scheduled at least 6 months before the wedding date.</p>\r\n    <p>b. Reserved date is non-movable and non-transferrable.</p>\r\n    <p>c. Reservation fee of 10,000 php will be accepted upon agreement of contract and National Shrine of Our Lady of Mount Carmel Rules and Regulations. Reservation fee is non-refundable but deductible on remaining balance.</p>\r\n    <p>d. All fees should be settled 2 months before the wedding date.</p><br>\r\n    <p>Wedding package includes use of the church, officiating priest, flowers with tulle, wedding candles or candles for secondary sponsors, wedding usherette, wedding commentator, altar server, red carpet, use of electricity for videos, pre-cana seminar and air conditioned holding area for the bride and choir.</p><br>\r\n    <p>Wedding package rates:</p><br>\r\n    <p>January to November rate</p>\r\n    <p>    29,000 php</p><br>\r\n    <p>December rate</p>\r\n    <p>34,000  php</p><br>\r\n    <p>2. Wedding Requirements</p><br>\r\n    <p>a. All requirements must be completed or accomplished at least 1 month before the wedding date exempting bride and groom under special cases which requires a permit from the Chancery Office of the Diocese of Cubao.</p><br>\r\n    <p>Wedding cases the need to secure a permit:</p><br>\r\n    <p>i. Mixed marriage (marriage between a Catholic and a non-Catholic or marriage between a Filipino or a foreigner)</p><br>\r\n    <p>ii. Overseas Filipino working or living abroad for more than 2 years</p><br>\r\n    <p>iii. With previous marriage (civilly or in the Roman Catholic church)</p><br>\r\n    <p>b. We reserve the right to cancel a wedding if the requirements were not completed.</p><br>\r\n    <p>c. Authorized representatives designated by the bride and groom are duty-bound to comply with the National Shrine of Our Lady of Mount Carmel Rules and Regulations Agreement and will be held responsible for the cancellation of the event for failure to submit all the needed requirements.</p><br>\r\n    <p>d. National Shrine of Our Lady of Mount Carmel will not be responsible for any correction, fines and penalties that may be required on the marriage certificate already filed with the Quezon City Hall, Civil Registry after its entries were verified by the couple. Likewise, the Shrine is not liable if the couple fail to check their marriage contract as required.</p><br>\r\n    <p>3. Cancellation</p><br>\r\n    <p>a. In case of cancellation, a written advice must be submitted, otherwise the couple will have to pay the balance due.</p><br>\r\n    <p>b. Reservation fee, full-payment, and additional fees made will be forfeited.</p><br>\r\n    <p>c. Unclaimed documents will be disposed by the National Shrine of Our Lady of Mount Carmel within 2 months from the day of notice or from the wedding date.</p><br>\r\n    <p>4. Punctuality</p><br>\r\n    <p>a. The bride and groom, and the whole entourage including the soloist, singers and organist must be at the church premises 30 minutes before their wedding schedule.</p><br>\r\n    <p>b. The allotted time for the wedding ceremony is 1 hour and 30 minutes only. Wedding ceremony are as follows, 15 minutes for the entrance procession of the wedding entourage; 45 minutes for the wedding liturgy; 15 minutes for pictorial, 15 minutes for the recessional of the wedding entourage. The wedding entourage should be exiting 15 minutes before the end of their time slot.</p><br>\r\n    <p>c. If the bride, groom or the members of the entourage are late for 15 minutes, there will be no Prayers of the Faithful and Offertory Procession; if they are late for 30 minutes, there will be no Homily, Prayers of the Faithful and Offertory Procession; if they are late for 45 minutes, only the Wedding Rite outside the Mass will be celebrated.</p><br>\r\n    <p>5. Wedding Entourage</p><br>\r\n    <p>a. Bearers and flower girls should be 5 years old and above since they will not need the assistance of parents or guardian when marching down the aisle, which is usually the reason behind the delay of the ceremony.</p><br>\r\n    <p>b. Only 5 pairs of principal sponsors are normally allowed. An additional fee of 500 php per person will be charged in excess of the 5 pairs of sponsors.</p><br>\r\n    <p>c. The bride and groom must assign persons for the First and Second Reading, Responsorial Psalm and Prayers of the Faithful. Commentator will be provided by the church.</p><br>\r\n    <p>6. Officiating Priest</p><br>\r\n    <p>a. The bride and groom should inform the parish office 2 months before their wedding if they have their own officiating priest. If no advice was given, the invited priest will only be allowed to concelebrate with the assigned priest.</p><br>\r\n    <p>b. For own priest, a photocopy of the priest Celebret ID, Certificate of Registration of Authority to Solemnize Marriage (CRASM) and appointment or endorsement letter from the Bishop is required.</p><br>\r\n    <p>c. The Rector/Parish Priest has the right to approve or disapprove permission of the invited priest presider.</p><br>\r\n    <p>d. In case of mixed marriages, the Shrine will not allow any form of rite, ceremony, or speeches to be conducted by other sects or religions.</p><br>\r\n    <p>7. Solemnity and Wedding Dress Etiquette</p><br>\r\n    <p>a. To preserve the solemnity of the wedding ceremony, all electronic gadgets are requested to be turned off or set to silent mode. Bride and groom should advice their respective entourages to refrain from unnecessary conversations and movements.</p><br>\r\n    <p>b. The attire of the entire marriage entourage should be proper for church decorum. Provocative dresses like strapless, backless, spaghetti strap, bare midriff and off-the-shoulder dresses must be covered by a shawl jacket. We discourage above-the-knee length or miniskirt dresses.</p><br>\r\n    <p>c. The National Shrine of Our Lady of Mount Carmel has the right to refuse any member of the entourage who are not properly dressed to join the entrance entourage.</p><br>\r\n    <p>8. Offertory</p><br>\r\n    <p>a. Recommended list of items to be offered during the wedding are basket of fruits, mass wine and pack of hosts only.</p><br>\r\n    <p>b. The bride and groom should assign two persons for the cruets and ciborium which will be provided by the shrine.</p><br>\r\n    <p>c. Offertory procession may be cancelled if time constraints to give priority to the more essential parts of the mass.</p><br>\r\n    <p>9. Church Decoration</p><br>\r\n    <p>a. A simple yet elegant flower decoration in the aisle complete with tulle shall be provided by the shrine. All flower arrangement will be handled by the shrine’s in-house florist.</p><br>\r\n    <p>b. For an additional floral arrangement, the bride and groom should submit a design arrangement for approval of the Rector/Parish Priest. Arrangement shall be done accordingly by the shrine’s in-house florist.</p><br>\r\n    <p>c. During Lent, no flower decoration is allowed in the altar. The bride and groom are to be reminded that wedding events should respect the special nature of this liturgical season; they should refrain from much pomp or display.</p><br>\r\n    <p>d. There will be no deduction in the wedding package rate for the flower arrangement if the bride and groom booked their wedding on Lenten season.</p><br>\r\n    <p>10. Wedding Music</p><br>\r\n    <p>a. Music for the whole ceremony is included in the package.</p><br>\r\n    <p>b. During mass, singing may be done only during entrance, offertory, our Father, communion, recessional and photo sessions.</p><br>\r\n    <p>c. The invited singer or musician should only render songs and music approved by the Rector/Parish Priest.</p><br>\r\n    <p>11. Photographers and Videographers</p><br>\r\n    <p>a. The bride and groom must properly endorse the photographers and videographers that will cover the whole wedding ceremony. The 2 photographers and 2 video personnel must be advised that they are required to attend the orientation seminar before their wedding coverage.</p><br>\r\n    <p>b. Photographers and videographers not following the shrine’s instructions will be blacklisted.</p><br>\r\n    <p>c. Guests of the couples who likewise want to take pictures or videos are allowed but they must remain in their seats.</p><br>\r\n    <p>12. Church Assistance</p><br>\r\n    <p>a. The shrine coordinator shall assist during the wedding for further instructions for the entourage.</p><br>\r\n    <p>b. The bride and groom may assign their wedding coordinators provided that they were properly endorsed and they have attended the shrine’s orientation for coordinators before the wedding.</p><br>\r\n    <p>c. Wedding coordinators not following the shrine’s rules and regulations will be blacklisted.</p><br>\r\n    <p>13. Wedding Missalette</p><br>\r\n    <p>a. The bride and groom my request a standard copy of wedding missalette in the parish office. Digital file or soft copy may be sent through email.</p><br>\r\n    <p>b. No alterations or any addition to the approved liturgy should be made. Personal vows are not allowed.</p><br>\r\n    <p>c. Draft of printed copy of the bride and groom’s wedding missalette must be submitted to the office for checking before making the final copies. Only checked and approved missalettes will be allowed for distribution during the wedding.</p><br>\r\n    <p>14. Respect and Solemnity of the Holy Grounds</p><br>\r\n    <p>a. Pets are not allowed to join the wedding procession.</p><br>\r\n    <p>b. Cleanliness must be strictly observed inside and outside the shrine. Releasing of doves may be done outside the shrine’s doors.</p><br>\r\n    <p>c. Only flower petals are allowed as extended greetings; permitted to be showered outside the shrine’s main entrance. Other extended greetings like party poppers, confetti and rice throwing are not permitted.</p><br>\r\n    <p>d. Fogging and bubbles effect are not allowed inside and outside the shrine.</p><br>\r\n    <p>e. Closed doors are not allowed.</p><br>\r\n    <p>15. General Provision</p><br>\r\n    <p>a. Any damage incurred during the wedding by the wedding entourage or guests, the reasonable cost shall be accounted for by the bride and groom.</p><br>\r\n    <p>b. We have read and signify our agreement on the above terms and conditions of the National Shrine of Our Lady of Mount Carmel Rules and Regulations concerning wedding events and that the National Shrine of Our Lady of Mount Carmel and its personnel will not be held liable to any damages as a result of the enforcement of the said rules and regulations.</p><br>', '<p>Thank you for your application for marriage.</p>\r\n<p>Marriage is subject for review and approval by the office and the chosen officiating priest.</p>\r\n<p>Finish transaction by rendering all necessary requirements in your mailbox.</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/marriage/create', NULL, 1, '2019-06-19 18:36:19', 1, '2019-07-25 15:07:28', b'0'),
(13, 1, 3, 10, 'Funeral Service', NULL, NULL, '<p>Funeral Service for blessing or conducting mass during the funeral.</p><br>\r\n<p>Parishioner may give the officiating priest a donation after the service.</p><br>\r\n<p>Exclusive for funerals conducted inside Our Lady of Mount Carmel premises.</p>', '<p>Thank you for requesting a funeral service. Choose your officiating priest in your mailbox and wait for an approval.</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/funeral_service/create', NULL, 1, '2019-06-19 18:36:56', 1, '2019-07-25 15:08:49', b'0'),
(14, 1, 3, 10, 'Funeral Chapel', NULL, NULL, '<p>Terms and Conditions for the Use of the Chapel</p><br>\r\n<p>1. Person using the Mount Carmel Chapel (hereinafter referred to as the User) shall reimburse the OCD Community any and all expenses to be incurred in the use thereof. Such expenses are inclusive of but not limited to the following:</p><br>\r\n<p>a.) Use of the hall its own family room and comfort room</p>\r\n<p>b.) Air-conditioners</p>\r\n<p>c.) Refrigerator</p>\r\n<p>d.) Water dispenser</p>\r\n<p>e.) Microwave oven</p>\r\n<p>f.) Furniture</p>\r\n<p>g.) Security</p>\r\n<p>h.) maintenance</p><br>\r\n<p>User agrees to deposit an amount equivalent to at least one day of their projected stay in the chapel. The balance thereof shall be due and payable by the user a day before the Funeral Mass of the deceased. In case of cancellation of the use of chapel, the said deposit is not refundable.</p><br>\r\n<p>2. Overnight vigil or wakes, except for the first and last night is discouraged. We encourage the family of the deceased to rest, for which reason; the room shall be closed at 1:00AM and re-opened at 7:00AM. The air-conditioners shall be turned off from 1:00AM to 7:00AM. If, for unavoidable circumstances, the room is required to remain open, the cost for the use of the air-conditioner shall be reimbursed at the separate rate of FIVE HUNDRED PESOS (500.00 Php) per hour.</p><br>\r\n<p>3. While security and maintenance are provided, additional security may be provided for the service of the user. The cost thereof shall be reimbursed at the separate rate of FOUR HUNDRED PESOS (400.00 Php) per 8-hour shift.</p><br>\r\n<p>4. The entire hall is strictly a NON-SMOKING AREA. Those who wish to smoke can only do so at the Crucified Christ Courtyard which is located outside the hall.</p><br>\r\n<p>5. GAMBLING of any nature, LIQUOR of any kind, PARKING IN COURTYARD is strictly prohibited.</p><br>\r\n<p>6. No cooking shall be allowed in the rooms. However, heating with the microwave oven is allowed. In case a caterer shall be employed by the family of the deceased to provide food in the premises, the office shall be informed prior to mobilization by the caterer.</p><br>\r\n<p>7. While food and drinks are allowed to be brought in and consumed in the hall, the user is responsible for keeping the premises clean.</p><br>\r\n<p>8. The number of flower arrangement inside the hall should be limited to maintain the desired coolness of the installed air-conditioners. Excess flower arrangements may be placed in the Crucified Christ Courtyard or in the hallway. We encourage the bereaved family members to advise their relatives and friends to the use of Mass Cards or contribution to their favorite charity as a means of expressing their love.</p><br>\r\n<p>9. Should the user schedule masses during the wake, said schedule must first be coordinated with the office. For this purpose, an altar table and mass kit is available for use. Priest of the parish, however, are available subject to their availability.</p><br>\r\n<p>10. The funeral mass may be celebrated at the hall anytime. Should the user desire to celebrate the funeral mass at the main altar of the church, they should make arrangements with the parish office beforehand, to ensure that the proposed schedule does not conflict with any other church activity. If the funeral mass is celebrated in the church, we encourage only two flower arrangements be placed near the casket so as not block the view of the priest and the congregation.</p><br>\r\n<p>11. In case of power failure, the office shall provide to power the lights, fans and some outlets, but not the air-conditioner.</p><br>\r\n<p>12. The water from the faucets in the facility has not been tested for human consumption. Drinking water in 5-Gallon bottles is available in the office for the use of the water dispenser at a reasonable price.</p><br>\r\n<p>13. Should there result in any damage to property within the hall, the cost thereof, or reasonable replacement cost shall be for the account of the user.</p><br>\r\n<p>14. The user shall hold the office free from any liability whatsoever for the use of the hall.</p><br>\r\n<p>15. Lighting of candles during wake is strictly prohibited except when having masses.</p><br>\r\n<p>There are three available chapels for conducting funeral rites and services.</p><br>\r\n<p>Chapels:</p><br>\r\n<p>Mt. Carmel Chapel</p><br>\r\n<p>    150 sitting capacity</p>\r\n<p>    15,000 php/day</p>\r\n<p>    650 php/excess hour</p><br>\r\n<p>St. Joseph Chapel</p><br>\r\n<p>    40 sitting capacity</p>\r\n<p>    8,000 php/day</p>\r\n<p>    350 php/excess hour</p><br>\r\n<p>Holy Family Chapel</p><br>\r\n<p>    40 sitting capacity</p>\r\n<p>    8,000 php/day</p>\r\n<p>    350 php/excess hour</p><br>\r\n<p>Chapel Amenities:</p><br>\r\n<p>Daily Mass</p><br>\r\n<p>Fully air-conditioned</p>\r\n<p>Refrigerator</p>\r\n<p>Hot and cold water dispenser</p>\r\n<p>Microwave oven</p>\r\n<p>Kitchen sink</p>\r\n<p>Single bed</p>\r\n<p>Family room</p>\r\n<p>Restroom</p>\r\n<p>24 hour security services</p>\r\n<p>Ample parking space</p><br>\r\n<p>You may settle your bill using your debit card, credit card or cash.</p>', '<p>Thank you for requesting a funeral chapel. Schedule your rental and settle your rental fee in your mailbox.</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/funeral_chapel/create', NULL, 1, '2019-06-19 18:37:23', 1, '2019-07-25 15:10:16', b'0'),
(15, 1, 3, 10, 'Crypt Lobby - Mass for the Dead', NULL, NULL, '<p>Crypt Lobby is available for conducting mass for the dead.</p><br>\r\n<p>Fees:</p><br>\r\n<p>Crypt Lobby</p><br>\r\n<p>    20 sitting capacity</p>\r\n<p>    500 php/hour</p><br>\r\n<p>You may settle your bill using your debit card, credit card or cash.</p>', '<p>Thank you for requesting a mass for the dead at the crypt lobby. Schedule your rental and settle your rental fee in your mailbox</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/crypt_lobby/create', NULL, 1, '2019-06-19 18:37:42', 1, '2019-07-25 15:18:19', b'0'),
(16, 1, 3, 10, 'November Mass for the Dead', NULL, NULL, '<p>Mass for the Dead will be offered every 06:00 AM of November.</p><br>\r\n<p>After submission, you may donate any amount as an offering for your requested mass in your mailbox.</p>', '<p>Thank you for  sending your mass request. We will be offering your masses for the dead on November after completing the process in your mailbox.</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/november_mass/create', NULL, 1, '2019-06-19 18:37:57', 1, '2019-07-25 15:19:50', b'0'),
(17, 1, 3, 11, 'Father Mark Horan Hall - Venue', NULL, NULL, '<p>Father Mark Horan Hall Service Agreement</p><br>\r\n<p>Version 1</p><br>\r\n<p>1. Event and Duration</p><br>\r\n<p>a. Father Mark Horan Hall is available for wedding reception, baptismal, birthday celebration and anniversary celebration.</p>\r\n<p>b. Client are given a maximum of 3 hours for the use of the Father Mark Horan Hall. Set up time is only 2 hours before the actual time of event.</p><br>\r\n<p>2. Reservation Fee and Full Payment</p><br>\r\n<p>a. Reservation fee of 50% will be accepted upon agreement of terms and conditions. Reservation fee is non-refundable but deductible on remaining balance.</p>\r\n<p>b. All fees should be settled 2 weeks before the event. Booking 1 week prior to the event, payment must be in full.</p><br>\r\n<p>Service package rates:</p><br>\r\n<p>Whole area package 1</p>\r\n<p>    300 tiffany chairs</p>\r\n<p>    30 tables</p>\r\n<p>    30,000 php</p>\r\n<p>    2,000 php/excess hour</p><br>\r\n<p>Whole area package 2</p>\r\n<p>    300 monoblock chairs</p>\r\n<p>    30 tables</p>\r\n<p>    27,500 php</p>\r\n<p>    2,000 php/excess hour</p><br>\r\n<p>Half area package 1</p>\r\n<p>    120 tiffany chairs</p>\r\n<p>    12 tables</p>\r\n<p>    23,000 php</p>\r\n<p>    1,000 php/excess hour</p><br>\r\n<p>Half area package 2</p>\r\n<p>    120 monoblock chairs</p>\r\n<p>    12 tables</p>\r\n<p>    20,000 php</p>\r\n<p>    1,000 php/excess hour</p><br>\r\n<p>Quarter area package 1</p>\r\n<p>    80 tiffany chairs</p>\r\n<p>    8 tables</p>\r\n<p>    15,000 php</p>\r\n<p>    500 php/excess hour</p><br>\r\n<p>Quarter area package 2</p>\r\n<p>    80 monoblock chairs</p>\r\n<p>    8 tables</p>\r\n<p>    10,000 php</p>\r\n<p>    500 php/excess hour</p><br>\r\n<p>All areas include the use of air conditioner, built-in sound system, ample parking space, clean toilet, LCD projector, and electricity for photo booth and maximum of 2 food carts.</p><br>\r\n<p>3. Reserved Date</p><br>\r\n<p>  a. Reserved date is non-movable</p>\r\n<p>  b. In the event wherein the client requests for a transfer of his/her reservation to another date or transfer his/her reservation to a member of his/her family, the client is requested to submit a letter of intent addressed to the superior of the shrine. If the superior allows the trasfer, the client will be charged for an additional 50% of the down payment made on his/her previous reservation as penalty.</p><br>\r\n<p>5. Safety and Security</p><br>\r\n<p>  a. The client has the full responsibility toward the safety and security of their guests.</p>\r\n<p>  b. The client and their guests are reminded to secure their valuables at all times. Management shall be free from any liability arising from any unforeseen events such as theft, robbery, accident, and any natural or man-made calamities that may cause harm to the client, their guests and their belongings before, during and after their function at the Father Mark Horan Hall.</p><br>\r\n<p>6. Damages</p><br>\r\n<p>  a. Should there result in any damage to property incurred by the client or guests within the Father Mark Horan Hall, the cost thereof, or reasonable replacement cost shall be accounted for by the client.</p><br>\r\n<p>7. Power Outage</p>\r\n<p>  a. In the event of power outage or brownout, there will be a stand-by generator which will provide power for lights, fans and some outlets but not the air conditioning units.</p><br>\r\n<p>There will be no refund if the Father Mark Horan Hall was booked with air conditioning.</p><br>\r\n<p>8. Catering Service</p><br>\r\n<p>  a. The client may bring in catering service provider of their choice, all accredited and unaccredited catering service providers must abide with the regulations and policies regarding the use of Father Mark Horan Hall.</p>\r\n<p>  b. The management shall be free from any legal suit and liability with regards to the services rendered by the catering service provider, including issues such as food poisoning and sanitation.</p><br>\r\n<p>9. Ground Rules</p><br>\r\n<p>  a. Doves and butterflies are not allowed inside the Father Mark Horan Hall.</p>\r\n<p>  b. Use of kerosene or gas torch is strictly prohibited inside Father Mark Horan Hall.</p>\r\n<p>  c. Swag and drape clothing are strictly prohibited.</p>\r\n<p>  d. Party poppers are not allowed inside the Father Mark Horan Hall.</p>\r\n<p>  e. Clients are allowed to bring a maximum of 6 cases of liquor such as Pale Pilsen, Red Horse, San Mig Light,or the same kind only.</p><br>\r\n<p>10. General Provision</p><br>\r\n<p>  a. The client shall hold the management free from any liability whatsoever for the use of the Father Mark Horan Hall.</p>\r\n<p>  b. The client\'s event coordinator must abide with all the rules and regulations. They shall inform the mamagement for any requests 2 weeks prior to the event. Any such requests may be declined without necessity of explanation.</p>', '<p>Thank you for requesting a venue. Scheudule your rental and settle your rental fee in your mailbox.</p>\r\n<p>You may view the status of your request in your mailbox.</p>', 'https://api.mountcarmel.ph/events_fmhh_venue/create', NULL, 1, '2019-06-19 18:39:03', 1, '2019-07-25 15:23:00', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(128) NOT NULL,
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `branch_id`, `role_id`, `username`, `password`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(1, 1, 1, 'admin@mountcarmel.ph', '933e52712f2663bad0322db2e74fa2af8411c55a2611e193cb1076327c014f20fcea5e37355c92be7a43c89409dce639b207e2ea0ab3739e740283bde8479754', 1, '2019-06-21 12:36:40', 1, '2019-09-27 16:29:30', b'0'),
(2, 1, 2, 'john@appleseed.com', '933e52712f2663bad0322db2e74fa2af8411c55a2611e193cb1076327c014f20fcea5e37355c92be7a43c89409dce639b207e2ea0ab3739e740283bde8479754', 1, '2019-06-21 12:37:34', 2, '2019-08-22 09:33:14', b'0'),
(3, 1, 2, 'jane@doe.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 1, '2019-07-16 12:48:05', 3, '2019-07-18 19:18:55', b'0'),
(4, 1, 2, 'john@doe.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 1, '2019-07-17 22:46:53', 4, '2019-10-15 13:08:25', b'0'),
(5, 1, 2, 'adriane.macer@gmail.com', 'b109f3bbbc244eb82441917ed06d618b9008dd09b3befd1b5e07394c706a8bb980b1d7785e5976ec049b46df5f1326af5a2ea6d103fd07c95385ffab0cacbc86', 1, '2019-07-18 21:16:07', NULL, NULL, b'0'),
(6, 1, 2, 'adrianevangelista.bicolresearch@gmail.com', '933e52712f2663bad0322db2e74fa2af8411c55a2611e193cb1076327c014f20fcea5e37355c92be7a43c89409dce639b207e2ea0ab3739e740283bde8479754', 2, '2019-07-18 21:20:05', NULL, NULL, b'0'),
(7, 1, 2, 'macer_0001@yahoo.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 2, '2019-07-19 14:32:36', NULL, NULL, b'0'),
(8, 1, 2, 'adrianthegreat@email.com', 'b109f3bbbc244eb82441917ed06d618b9008dd09b3befd1b5e07394c706a8bb980b1d7785e5976ec049b46df5f1326af5a2ea6d103fd07c95385ffab0cacbc86', 2, '2019-07-23 13:49:38', NULL, NULL, b'0'),
(9, 1, 3, 'priest@mountcarmel.com', '933e52712f2663bad0322db2e74fa2af8411c55a2611e193cb1076327c014f20fcea5e37355c92be7a43c89409dce639b207e2ea0ab3739e740283bde8479754', 1, '2019-06-21 12:37:34', 1, '2019-07-25 16:17:24', b'0'),
(10, 1, 2, 'rpbaguio@gmail.com', '6877bd313d43e612c7f0bd227784066f3b536300b7714e611da1271aad5d6b5d58397e3934f7434fa2c2aa3a79f3db0b6dfbaaaa60a660af3afc7f162b3379ae', 1, '2019-09-03 19:02:55', 10, '2019-09-03 19:05:25', b'0'),
(11, 1, 3, 'priest2@mountcarmel.com', '933e52712f2663bad0322db2e74fa2af8411c55a2611e193cb1076327c014f20fcea5e37355c92be7a43c89409dce639b207e2ea0ab3739e740283bde8479754', 1, '2019-06-21 12:37:34', 1, '2019-07-25 16:17:24', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address_1` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `province` int(11) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `landline` varchar(30) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL COMMENT 'photo',
  `created_by` int(11) NOT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `user_id`, `first_name`, `middle_name`, `last_name`, `email`, `address_1`, `address_2`, `city`, `province`, `country`, `mobile`, `landline`, `media_id`, `created_by`, `dt_created`, `updated_by`, `dt_updated`, `is_deleted`) VALUES
(1, 1, 'System', NULL, 'Admin', 'admin@mountcarmel.ph', '90 4th Street', 'New Manila', 137404, 1339, 1, '(910) 123-4567', '(02) 123-4567', 3, 1, '2019-06-21 12:38:50', 1, '2019-09-25 21:12:56', b'0'),
(2, 2, 'John', NULL, 'Appleseed', 'john@appleseed.com', 'St. Mary Street', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-06-21 12:38:50', NULL, NULL, b'0'),
(3, 3, 'Jane', NULL, 'Doe', 'jane@doe.com', 'St. Mary Street', NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, '2019-07-16 12:48:05', NULL, NULL, b'0'),
(4, 4, 'John', NULL, 'Doe', 'john@doe.com', '78 St. Mary Street', 'Cubao', 137404, 1339, 1, '(123) 456-7890', '(12) 345-6789', 5, 1, '2019-07-17 22:46:53', 4, '2019-09-21 22:26:24', b'0'),
(5, 5, 'Adrian', NULL, 'Evangelista', 'adriane.macer@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 1, '2019-07-18 21:16:07', NULL, NULL, b'0'),
(6, 6, 'Adrian', NULL, 'Evangelista', 'adrianevangelista.bicolresearch@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 2, '2019-07-18 21:20:05', NULL, NULL, b'0'),
(7, 7, 'Adrian', NULL, 'Evangelista', 'macer_0001@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 2, '2019-07-19 14:32:36', NULL, NULL, b'0'),
(8, 8, 'adrian', NULL, 'the Great', 'adrianthegreat@email.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 2, '2019-07-23 13:49:38', NULL, NULL, b'0'),
(9, 9, 'Priest', NULL, 'Appleseed', 'priest@mountcarmel.com', 'St. Mary Street', NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, '2019-06-21 12:38:50', NULL, NULL, b'0'),
(10, 10, 'Raymond', NULL, 'Baguio', 'rpbaguio@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-09-03 19:02:55', NULL, NULL, b'0'),
(11, 9, 'Priest2', NULL, 'Appleseed2', 'priest2@mountcarmel.com', 'St. Mary Street', NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, '2019-06-21 12:38:50', NULL, NULL, b'0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acceptance`
--
ALTER TABLE `acceptance`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `acceptance_logs`
--
ALTER TABLE `acceptance_logs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `audit_trail`
--
ALTER TABLE `audit_trail`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `boundaries`
--
ALTER TABLE `boundaries`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `branch_donations`
--
ALTER TABLE `branch_donations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `branch_locations`
--
ALTER TABLE `branch_locations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `chapel`
--
ALTER TABLE `chapel`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `couple`
--
ALTER TABLE `couple`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `global_reference_group`
--
ALTER TABLE `global_reference_group`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `global_reference_value`
--
ALTER TABLE `global_reference_value`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `household`
--
ALTER TABLE `household`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `language_info`
--
ALTER TABLE `language_info`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `live_streams`
--
ALTER TABLE `live_streams`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `maps`
--
ALTER TABLE `maps`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ministers`
--
ALTER TABLE `ministers`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `program_features`
--
ALTER TABLE `program_features`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `requirements`
--
ALTER TABLE `requirements`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `service_references`
--
ALTER TABLE `service_references`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `service_transactions`
--
ALTER TABLE `service_transactions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sponsors`
--
ALTER TABLE `sponsors`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sub_modules`
--
ALTER TABLE `sub_modules`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acceptance`
--
ALTER TABLE `acceptance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `acceptance_logs`
--
ALTER TABLE `acceptance_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `access`
--
ALTER TABLE `access`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `audit_trail`
--
ALTER TABLE `audit_trail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `boundaries`
--
ALTER TABLE `boundaries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `branch_donations`
--
ALTER TABLE `branch_donations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `branch_locations`
--
ALTER TABLE `branch_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chapel`
--
ALTER TABLE `chapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1445;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `couple`
--
ALTER TABLE `couple`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `global_reference_group`
--
ALTER TABLE `global_reference_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `global_reference_value`
--
ALTER TABLE `global_reference_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `household`
--
ALTER TABLE `household`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `language_info`
--
ALTER TABLE `language_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live_streams`
--
ALTER TABLE `live_streams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `maps`
--
ALTER TABLE `maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `ministers`
--
ALTER TABLE `ministers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `program_features`
--
ALTER TABLE `program_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `requirements`
--
ALTER TABLE `requirements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `service_references`
--
ALTER TABLE `service_references`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT for table `service_transactions`
--
ALTER TABLE `service_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_modules`
--
ALTER TABLE `sub_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
