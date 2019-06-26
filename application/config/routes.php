<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'welcome';
$route['404_override'] = '';
$route['translate_uri_dashes'] = TRUE;

// Home
$route['posts'] = 'home/posts/posts';
$route['posts/format/(:any)'] = 'home/posts/posts/format/$1';
$route['post/id/(:num)'] = 'home/posts/post/id/$1';
$route['post/id/(:num)/format/(:any)'] = 'home/posts/post/id/$1/format/$2';
$route['post/create'] = 'home/posts/create';
$route['post/id/(:num)/update'] = 'home/posts/update/id/$1';
$route['post/id/(:num)/soft_delete'] = 'home/posts/soft_delete/id/$1';
$route['post/id/(:num)/hard_delete'] = 'home/posts/hard_delete/id/$1';

// Home - Ads
$route['ads'] = 'home/ads/ads';
$route['ads/format/(:any)'] = 'home/ads/ads/format/$1';
$route['ads/id/(:num)'] = 'home/ads/ad/id/$1';
$route['ads/id/(:num)/format/(:any)'] = 'home/ads/ad/id/$1/format/$2';
$route['ads/create'] = 'home/ads/create';
$route['ads/id/(:num)/update'] = 'home/ads/update/id/$1';
$route['ads/id/(:num)/soft_delete'] = 'home/ads/soft_delete/id/$1';
$route['ads/id/(:num)/hard_delete'] = 'home/ads/hard_delete/id/$1';

// Basilica
$route['contacts'] = 'basilica/contacts/contacts';
$route['contacts/format/(:any)'] = 'basilica/contacts/contacts/format/$1';
$route['contact/id/(:num)'] = 'basilica/contacts/contact/id/$1';
$route['contact/id/(:num)/format/(:any)'] = 'basilica/contacts/contact/id/$1/format/$2';
$route['contact/create'] = 'basilica/contacts/create';
$route['contact/id/(:num)/update'] = 'basilica/contacts/update/id/$1';
$route['contact/id/(:num)/soft_delete'] = 'basilica/contacts/soft_delete/id/$1';
$route['contact/id/(:num)/hard_delete'] = 'basilica/contacts/hard_delete/id/$1';

// Basilica - Priests
$route['priests'] = 'basilica/priests/priests';
$route['priests/format/(:any)'] = 'basilica/priests/priests/format/$1';
$route['priest/id/(:num)'] = 'basilica/priests/priest/id/$1';
$route['priest/id/(:num)/format/(:any)'] = 'basilica/priests/priest/id/$1/format/$2';
$route['priest/create'] = 'basilica/priests/create';
$route['priest/id/(:num)/update'] = 'basilica/priests/update/id/$1';
$route['priest/id/(:num)/soft_delete'] = 'basilica/priests/soft_delete/id/$1';
$route['priest/id/(:num)/hard_delete'] = 'basilica/priests/hard_delete/id/$1';

// Basilica - Pastors
$route['pastors'] = 'basilica/pastors/pastors';
$route['pastors/format/(:any)'] = 'basilica/pastors/pastors/format/$1';
$route['pastor/id/(:num)'] = 'basilica/pastors/pastor/id/$1';
$route['pastor/id/(:num)/format/(:any)'] = 'basilica/pastors/pastor/id/$1/format/$2';
$route['pastor/create'] = 'basilica/pastors/create';
$route['pastor/id/(:num)/update'] = 'basilica/pastors/update/id/$1';
$route['pastor/id/(:num)/soft_delete'] = 'basilica/pastors/soft_delete/id/$1';
$route['pastor/id/(:num)/hard_delete'] = 'basilica/pastors/hard_delete/id/$1';

// Basilica - History
$route['history'] = 'basilica/history/history';
$route['history/format/(:any)'] = 'basilica/history/history/format/$1';
$route['histories/id/(:num)'] = 'basilica/history/histories/id/$1';
$route['histories/id/(:num)/format/(:any)'] = 'basilica/history/histories/id/$1/format/$2';
$route['histories/create'] = 'basilica/history/create';
$route['histories/id/(:num)/update'] = 'basilica/history/update/id/$1';
$route['histories/id/(:num)/soft_delete'] = 'basilica/history/soft_delete/id/$1';
$route['histories/id/(:num)/hard_delete'] = 'basilica/history/hard_delete/id/$1';

// Basilica - Boundaries
$route['boundaries'] = 'basilica/boundaries/boundaries';
$route['boundaries/format/(:any)'] = 'basilica/boundaries/boundaries/format/$1';
$route['boundary/id/(:num)'] = 'basilica/boundaries/boundary/id/$1';
$route['boundary/id/(:num)/format/(:any)'] = 'basilica/boundaries/boundary/id/$1/format/$2';
$route['boundary/create'] = 'basilica/boundaries/create';
$route['boundary/id/(:num)/update'] = 'basilica/boundaries/update/id/$1';
$route['boundary/id/(:num)/soft_delete'] = 'basilica/boundaries/soft_delete/id/$1';
$route['boundary/id/(:num)/hard_delete'] = 'basilica/boundaries/hard_delete/id/$1';

// Basilica - Schedules
$route['schedules'] = 'basilica/schedules/schedules';
$route['schedules/format/(:any)'] = 'basilica/schedules/schedules/format/$1';
$route['schedule/id/(:num)'] = 'basilica/schedules/schedule/id/$1';
$route['schedule/id/(:num)/format/(:any)'] = 'basilica/schedules/schedule/id/$1/format/$2';
$route['schedule/create'] = 'basilica/schedules/create';
$route['schedule/id/(:num)/update'] = 'basilica/schedules/update/id/$1';
$route['schedule/id/(:num)/soft_delete'] = 'basilica/schedules/soft_delete/id/$1';
$route['schedule/id/(:num)/hard_delete'] = 'basilica/schedules/hard_delete/id/$1';

// Basilica - Map
$route['maps'] = 'basilica/maps/maps';
$route['maps/format/(:any)'] = 'basilica/maps/maps/format/$1';
$route['map/id/(:num)'] = 'basilica/maps/map/id/$1';
$route['map/id/(:num)/format/(:any)'] = 'basilica/maps/map/id/$1/format/$2';
$route['map/create'] = 'basilica/maps/create';
$route['map/id/(:num)/update'] = 'basilica/maps/update/id/$1';
$route['map/id/(:num)/soft_delete'] = 'basilica/maps/soft_delete/id/$1';
$route['map/id/(:num)/hard_delete'] = 'basilica/maps/hard_delete/id/$1';


// Send-Help
$route['donations'] = 'send_help/donations/donations';
$route['donations/format/(:any)'] = 'send_help/donations/donations/format/$1';
$route['donation/id/(:num)'] = 'send_help/donations/donation/id/$1';
$route['donation/id/(:num)/format/(:any)'] = 'send_help/donations/donation/id/$1/format/$2';
$route['donation/create'] = 'send_help/donations/create';
$route['donation/id/(:num)/update'] = 'send_help/donations/update/id/$1';
$route['donation/id/(:num)/soft_delete'] = 'send_help/donations/soft_delete/id/$1';
$route['donation/id/(:num)/hard_delete'] = 'send_help/donations/hard_delete/id/$1';

// Services / Modules
$route['modules'] = 'services/modules/modules';
$route['modules/format/(:any)'] = 'services/modules/modules/format/$1';
$route['module/id/(:num)'] = 'services/modules/module/id/$1';
$route['module/id/(:num)/format/(:any)'] = 'services/modules/module/id/$1/format/$2';
$route['module/create'] = 'services/modules/create';
$route['module/id/(:num)/update'] = 'services/modules/update/id/$1';
$route['module/id/(:num)/soft_delete'] = 'services/modules/soft_delete/id/$1';
$route['module/id/(:num)/hard_delete'] = 'services/modules/hard_delete/id/$1';

