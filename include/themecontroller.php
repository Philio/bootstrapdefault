<?php
namespace BootstrapDefault;

class ThemeController {

    private $_config;

    public function __construct() {
        $this->_config = new Config();
    }

    public function init() {
        $this->_setPluginWarnings();

        add_event_handler('loc_begin_page_header', array($this, 'assignConfig'));
        $shortname = $this->_config->comments_disqus_shortname;
        if ($this->_config->comments_type == 'disqus' && !empty($shortname)) {
            add_event_handler('blockmanager_apply', array($this, 'hideCommentsFromMenu'));
        }
    }

    private function _setPluginWarnings() {
        global $pwg_loaded_plugins, $page;
        if (isset($pwg_loaded_plugins['language_switch'])) {
            $page['errors'][] = l10n('Language Switch plugin is enabled but is not compatible with the Bootstrap Default theme. Please disable it and download the <a href="http://piwigo.org/ext/extension_view.php?eid=797" target="_new">Bootstrap Default Language Switch</a> instead.');
        }
    }

    public function assignConfig() {
        global $template;
        $template->assign('theme_config', $this->_config);
    }

    public function hideCommentsFromMenu($menus) {
        $menu = &$menus[0];
        $mbMenu = $menu->get_block('mbMenu');
        unset($mbMenu->data['comments']);
    }

}