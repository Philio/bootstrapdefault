<div class="text-center">
    <ul class="pagination pagination-centered">
{if isset($navbar.URL_FIRST)}
        <li><a href="{$navbar.URL_FIRST}{if $fragment}#{$fragment}{/if}" rel="first">{'First'|@translate}</a></li>
        <li><a href="{$navbar.URL_PREV}{if $fragment}#{$fragment}{/if}" rel="prev">{'Previous'|@translate}</a></li>
{else}
        <li class="disabled"><a href="#">{'First'|@translate}</a></li>
        <li class="disabled"><a href="#">{'Previous'|@translate}</a></li>
{/if}
{assign var='prev_page' value=0}
{foreach from=$navbar.pages key=page item=url}
{if $page == $navbar.CURRENT_PAGE}
        <li class="active"><a href="#">{$page}</a></li>
{else}
        <li><a href="{$url}{if $fragment}#{$fragment}{/if}">{$page}</a></li>
{/if}
{assign var='prev_page' value=$page}
{/foreach}

{if isset($navbar.URL_NEXT)}
        <li><a href="{$navbar.URL_NEXT}{if $fragment}#{$fragment}{/if}" rel="next">{'Next'|@translate}</a></li>
        <li><a href="{$navbar.URL_LAST}{if $fragment}#{$fragment}{/if}" rel="last">{'Last'|@translate}</a></li>
{else}
        <li class="disabled"><a href="#">{'Next'|@translate}</a></li>
        <li class="disabled"><a href="#">{'Last'|@translate}</a></li>
{/if}
    </ul>
</div>