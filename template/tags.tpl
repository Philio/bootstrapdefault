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
    <div id="fullTagCloud">
{foreach from=$tags item=tag}
        <span><a href="{$tag.URL}" class="tagLevel{$tag.level}" title="{$tag.counter|@translate_dec:'%d photo':'%d photos'}">{$tag.name}</a></span>
{/foreach}
    </div>
</div>
{/if}

{if $display_mode == 'letters' and isset($letters)}
<div class="container">
    <div class="row">
{foreach from=$letters item=letter}
        <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
            <fieldset class="tagLetter">
                <legend class="tagLetterLegend">{$letter.TITLE}</legend>
                <table class="tagLetterContent">
{foreach from=$letter.tags item=tag}
                    <tr class="tagLine">
                        <td><a href="{$tag.URL}" title="{$tag.name}">{$tag.name}</a></td>
                        <td class="nbEntries">{$tag.counter|@translate_dec:'%d photo':'%d photos'}</td>
                    </tr>
{/foreach}
                </table>
            </fieldset>
        </div>
{/foreach}
    </div>
</div>
{/if}

</div> <!-- content -->
