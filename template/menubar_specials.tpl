<li class="dropdown">
    <a href="#" class="dropdown-toggle" data-toggle="dropdown">{'Specials'|@translate} <span class="caret"></span></a>
    <ul class="dropdown-menu" role="menu">
{foreach from=$block->data item=link}
		<li><a href="{$link.URL}" title="{$link.TITLE}"{if isset($link.REL)} {$link.REL}{/if}>{$link.NAME}</a></li>
{/foreach}
    </ul>
</li>
