{combine_script id='common' load='footer' path='admin/themes/default/js/common.js'}
<div class="titrePage">
    <h2>{'Bootstrap Default'|@translate} {$TABSHEET_TITLE}</h2>
</div>
<form method="post" class="properties">
    <input type="hidden" name="boostrapdefault_settings" value="true" />
    <div id="configContent">
        <fieldset class="mainConf">
            <legend>Social integration</legend>
            <ul>
                <li>
                    <label class="font-checkbox">
                        <span class="icon-check"></span>
                        <input type="checkbox" name="social_enabled"{if $theme_config->social_enabled} checked="checked"{/if}>
                        {'Enabled'|@translate}
                    </label>
                </li>
                <li id="social_twitter">
                    <label class="font-checkbox">
                        <span class="icon-check"></span>
                        <input type="checkbox" name="social_twitter"{if $theme_config->social_twitter}  checked="checked"{/if}>
                        {'Twitter'|@translate}
                    </label>
                </li>
                <li id="social_facebook">
                    <label class="font-checkbox">
                        <span class="icon-check"></span>
                        <input type="checkbox" name="social_facebook"{if $theme_config->social_facebook}  checked="checked"{/if}>
                        {'Facebook'|@translate}
                    </label>
                </li>
                <li id="social_google_plus">
                    <label class="font-checkbox">
                        <span class="icon-check"></span>
                        <input type="checkbox" name="social_google_plus"{if $theme_config->social_google_plus}  checked="checked"{/if}>
                        {'Google+'|@translate}
                    </label>
                </li>
            </ul>
        </fieldset>
    </div>
    <div id="configContent">
        <fieldset class="mainConf">
            <legend>Comments</legend>
            <ul>
                <li>
                    <label>
                        <input type="radio" name="comments_type" value="piwigo"{if $theme_config->comments_type == 'piwigo'} checked="checked"{/if} />
                        {'Piwigo'|@translate}
                    </label>
                    <label>
                        <input id="comments_radio_disqus" type="radio" name="comments_type" value="disqus"{if $theme_config->comments_type == 'disqus'} checked="checked"{/if} />
                        {'Disqus'|@translate}
                    </label>
                </li>
                <li id="comments_type_disqus">
                    <label for="comments_disqus_shortname">{'Disqus shortname'|@translate}</label><br />
                    <input id="comments_disqus_shortname" name="comments_disqus_shortname" type="text" value="{$theme_config->comments_disqus_shortname}" size="50" />
                </li>
            </ul>
        </fieldset>
    </div>
    <p class="formButtons">
        <input type="submit" name="submit" value="Save settings">
    </p>
</form>
{footer_script require='jquery'}{strip}
    (function(){
        var targets = {
            'input[name="social_enabled"]': ['#social_twitter', '#social_facebook', '#social_google_plus'],
            '#comments_radio_disqus': ['#comments_type_disqus'],
        };

        for (selector in targets) {
            for (target of targets[selector]) {
                jQuery(target).toggle(jQuery(selector).is(':checked'));

                (function(target){
                    jQuery(selector).on('change', function() {
                        jQuery(target).toggle($(this).is(':checked'));
                    });
                })(target);
            }
        };
    }());
{/strip}{/footer_script}