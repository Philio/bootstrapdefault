<li class="dropdown">
    <a href="#" class="dropdown-toggle" data-toggle="dropdown">{$block->get_title()}<span class="caret"></span></a>
    <ul class="dropdown-menu" role="menu">
		{foreach from=$block->data item=link}
			<li><a href="{$link.URL}" title="{$link.TITLE}"{if isset($link.REL)} {$link.REL}{/if}>{$link.NAME} [{$link.COUNT}]</a></li>
		{/foreach}
    </ul>
</li>
