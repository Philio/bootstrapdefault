<?php
namespace BootstrapDefault;

class ThemeController {

    private $config;

    public function __construct() {
        $this->config = new Config();
    }

    public function init() {
        add_event_handler('loc_begin_page_header', array($this, 'assignConfig'));
        $shortname = $this->config->comments_disqus_shortname;
        if ($this->config->comments_type == 'disqus' && !empty($shortname)) {
            add_event_handler('blockmanager_apply', array($this, 'hideMenus'));
        }
    }

    public function assignConfig() {
        global $template;
        $template->assign('theme_config', $this->config);
    }

    public function hideMenus($menus) {
        $menu = &$menus[0];

        $mbMenu = $menu->get_block('mbMenu');
        unset($mbMenu->data['comments']);

        $mbSpecials = $menu->get_block('mbSpecials');
        if (!is_null($mbSpecials)) {
            unset($mbSpecials->data['calendar']);
        }
    }

}