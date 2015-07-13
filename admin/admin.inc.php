<?php
// Check whether we are indeed included by Piwigo.
if (!defined('PHPWG_ROOT_PATH')) die('Hacking attempt!');

// Includes
include_once(PHPWG_ROOT_PATH . 'admin/include/tabsheet.class.php');

// Constants
define('THEME_ID', basename(dirname(dirname(__FILE__))));
define('ADMIN_PATH',   get_root_url() . 'admin.php?page=theme&theme=' . THEME_ID);

// Get current tab
$page['tab'] = isset($_GET['tab']) ? $_GET['tab'] : $page['tab'] = 'home';

// TabSheet
$tabsheet = new tabsheet();
$tabsheet->set_id('bsd');
$tabsheet->add('settings', l10n('Settings'), ADMIN_PATH . '&tab=settings');
$tabsheet->add('changelog', l10n('Change Log'), ADMIN_PATH . '&tab=changelog');
$tabsheet->add('about', l10n('About'), ADMIN_PATH . '&tab=about');
$tabsheet->select($page['tab']);
$tabsheet->assign();

// Fetch the template.
global $template;

// Add our template to the global template
$template->set_filenames(
    array(
        'theme_admin_content' => dirname(__FILE__) . '/admin.tpl'
    )
);

// Assign the template contents to ADMIN_CONTENT
$template->assign_var_from_handle('ADMIN_CONTENT', 'theme_admin_content');