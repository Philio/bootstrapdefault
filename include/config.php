<?php
namespace BootstrapDefault;

class Config {

    const CONF_PARAM = 'bootstrapdefault';
    const CONF_VERSION = 1;

    const TYPE_BOOL = 'bool';

    const KEY_VERSION = 'conf_version';
    const KEY_SOCIAL_ENABLED = 'social_enabled';
    const KEY_SOCIAL_TWITTER = 'social_twitter';
    const KEY_SOCIAL_FACEBOOK = 'social_facebook';
    const KEY_SOCIAL_GOOGLE_PLUS = 'social_google_plus';

    private $_defaults = array(
        self::KEY_SOCIAL_ENABLED => true,
        self::KEY_SOCIAL_TWITTER => true,
        self::KEY_SOCIAL_FACEBOOK => true,
        self::KEY_SOCIAL_GOOGLE_PLUS => true,
    );

    private $_types = array(
        self::KEY_SOCIAL_ENABLED => self::TYPE_BOOL,
        self::KEY_SOCIAL_TWITTER => self::TYPE_BOOL,
        self::KEY_SOCIAL_FACEBOOK => self::TYPE_BOOL,
        self::KEY_SOCIAL_GOOGLE_PLUS => self::TYPE_BOOL,
    );

    private $_config = array();

    public function __construct() {
        global $conf;

        // Create initial config if necessary
        if (!isset($conf[self::CONF_PARAM])) {
            $this->_createDefaultConfig();
            return;
        }

        // Load and JSON decode the config
        $loaded = json_decode($conf[self::CONF_PARAM], true);

        // Check for current version
        if (isset($loaded[self::CONF_VERSION]) && $loaded[self::KEY_VERSION] == self::CONF_VERSION) {
            $this->_config = $loaded;
            return;
        }

        // Invalid or old config, recreate
        $this->_createDefaultConfig();
        if (is_array($loaded)) {
            $this->_populateConfig($loaded);
        }
        $this->save();
    }

    public function __set($key, $value) {
        if (array_key_exists($key, $this->_defaults)) {
            $this->_config[$key] = $value;
        }
    }

    public function __get($key) {
        if (array_key_exists($key, $this->_defaults)) {
            return $this->_config[$key];
        } else {
            return null;
        }
    }

    public function fromPost(array $post) {
        foreach ($this->_defaults as $key => $value) {
            switch ($this->_types[$key]) {
                case self::TYPE_BOOL:
                    $this->_config[$key] = isset($post[$key]);
                    break;
            }
        }
    }

    public function save() {
        conf_update_param(self::CONF_PARAM, json_encode($this->_config));
    }

    private function _createDefaultConfig() {
        $this->_config = $this->_defaults;
        $this->_config[self::KEY_VERSION] = self::CONF_VERSION;
    }

    private function _populateConfig(array $config) {
        foreach ($this->_defaults as $key => $value) {
            if (isset($config[$key])) {
                $this->_config[$key] = $config[$key];
            }
        }
    }

}