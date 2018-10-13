<li id="bootstrapLanguageSwitch" class="dropdown">
    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
        <span class="pwg-icon langflag-{$lang_switch.Active.code}">&nbsp;</span><span class="pwg-button-text">{'Language'|@translate}</span>
    </a>
    <ul class="dropdown-menu dropdown-menu-scrollable" role="menu">
{foreach from=$lang_switch.flags item=flag name=f}
        <li{if $lang_switch.Active.code==$flag.code} class="active"{/if}>
            <a href="{$flag.url}">
{if $lang_info.direction=="ltr"}
                <span class="pwg-icon langflag-{$flag.code}">&nbsp;</span><span class="langflag-text-ltf">{$flag.title}</span>
{else}
                <span class="langflag-text-rtf">{$flag.title}</span><span class="pwg-icon langflag-{$flag.code}">&nbsp;</span>
{/if}
            </a>
        <li>
{/foreach}
    </ul>
</li>

{* <!-- common style specific for LanguageSwitch --> *}
{combine_css path=$LANGUAGE_SWITCH_PATH|@cat:"language_switch.css"}