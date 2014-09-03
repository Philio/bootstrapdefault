            <!-- Start of menubar.tpl -->
            <ul class="nav navbar-nav">
{foreach from=$blocks key=id item=block}
{if not empty($block->template)}
{include file=$block->template|@get_extent:$id }
{else}
{$block->raw_content}
{/if}
{/foreach}
                <!--
                <form class="navbar-form navbar-right" role="search" action="{$ROOT_URL}qsearch.php" method="get" id="quicksearch" onsubmit="return this.q.value!='' && this.q.value!=qsearch_prompt;">
                    <div class="form-group">
                        <input type="text" name="q" id="qsearchInput" class="form-control" placeholder="{'Quick search'|@translate}" />
                    </div>
                </form>
                -->
            </ul>
            <!-- End of menubar.tpl -->
