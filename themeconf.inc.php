<?php
/*
Theme Name: Bootstrap Default
Version: 0.9.9-pr4
Description: A modern and responsive theme for Piwigo built with standard Bootstrap components and using the default Bootstrap theme. Intended for easy customisation using Bootstrap styles or as a parent theme for creating responsive themes for Piwigo.
Theme URI: http://piwigo.org/ext/extension_view.php?eid=796
Author: Phil Bayfield (philb)
Author URI: https://philio.me/
*/
$themeconf = array(
    'name' => 'bootstrapdefault',
    'parent' => 'default',
    'colorscheme' => 'clear',
    'load_parent_css' => false,
    'load_parent_local_head' => false,
    'local_head' => 'local_head.tpl',
    'img_dir' => 'themes/bootstrapdefault/img',
    'url' => 'https://philio.me/'
);

global $pwg_loaded_plugins, $page;
if (isset($pwg_loaded_plugins['language_switch'])) {
    $page['errors'][] = l10n('Language Switch plugin is enabled but is not compatible with the Bootstrap Default theme. Please disable it and download the <a href="http://piwigo.org/ext/extension_view.php?eid=797" target="_new">Bootstrap Default Language Switch</a> instead.');
}