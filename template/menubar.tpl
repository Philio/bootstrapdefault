            <!-- Start of menubar.tpl -->
            <ul class="nav navbar-nav">
{foreach from=$blocks key=id item=block}
{if not empty($block->template)}
{include file=$block->template|@get_extent:$id }
{else}
{$block->raw_content}
{/if}
{/foreach}
            </ul>
            <!-- End of menubar.tpl -->
