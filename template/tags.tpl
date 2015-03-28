<nav class="navbar navbar-default" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <div class="navbar-brand"><a href="{$U_HOME}">{'Home'|@translate}</a>{$LEVEL_SEPARATOR}<a href>{'Tags'|@translate}</a></div>
        </div>
        <div class="navbar-right">
            <ul class="nav navbar-nav">
{if $display_mode == 'letters'}
                <li>
                    <a href="{$U_CLOUD}" title="{'show tag cloud'|@translate}">
                        <span class="glyphicon glyphicon-cloud"></span><span class="glyphicon-text">{'Cloud'|@translate}</span>
                    </a>
                </li>
{/if}
{if $display_mode == 'cloud'}
                <li>
                    <a href="{$U_LETTERS}" title="{'group by letters'|@translate}" rel="nofollow">
                        <span class="glyphicon glyphicon-sort-by-alphabet"></span><span class="glyphicon-text">{'Letters'|@translate}</span>
                    </a>
                </li>
{/if}
            </ul>
        </div>
    </div>
</nav>

{include file='infos_errors.tpl'}

{if $display_mode == 'cloud' and isset($tags)}
<div class="container">
    <div id="tagCloud">
{foreach from=$tags item=tag}
        <span><a href="{$tag.URL}" class="tagLevel{$tag.level}" title="{$tag.counter|@translate_dec:'%d photo':'%d photos'}">{$tag.name}</a></span>
{/foreach}
    </div>
</div>
{/if}

{if $display_mode == 'letters' and isset($letters)}
<div class="container">
    <div id="tagLetters">
        <div class="menu row">
{foreach from=$letters item=letter}
            <div class="menu-category">
                <div class="menu-category-name list-group-item active">{$letter.TITLE}</div>
    {foreach from=$letter.tags item=tag}
                <a href="{$tag.URL}" class="menu-item list-group-item" title="{$tag.name}">{$tag.name}<span class="badge">{$tag.counter|@translate_dec:'%d photo':'%d photos'}</span></a>
    {/foreach}
            </div>
{/foreach}
        </div>
    </div>
</div>
{/if}

</div> <!-- content -->
