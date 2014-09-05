{define_derivative name='derivative_params' width=260 height=180 crop=true}
{foreach from=$category_thumbnails item=cat name=cat_loop}
{assign var=derivative value=$pwg->derivative($derivative_params, $cat.representative.src_image)}
<div class="col-xs-6 col-sm-4 col-md-3 col-equal-height">
    <div class="thumbnail">
        <a href="{$cat.URL}">
            <img {if $derivative->is_cached()}src="{$derivative->get_url()}"{else}src="{$ROOT_URL}{$themeconf.icon_dir}/img_small.png" data-src="{$derivative->get_url()}"{/if} alt="{$cat.TN_ALT}" title="{$cat.NAME|@replace:'"':' '|@strip_tags:false} - {'display this album'|@translate}">
        </a>
        <div class="caption">
            <h3>
                <a href="{$cat.URL}">{$cat.NAME}</a>
{if !empty($cat.icon_ts)}
                <img title="{$cat.icon_ts.TITLE}" src="{$ROOT_URL}{$themeconf.icon_dir}/recent{if $cat.icon_ts.IS_CHILD_DATE}_by_child{/if}.png" alt="(!)">
{/if}
            </h3>
{if isset($cat.INFO_DATES) }
            <p class="dates">{$cat.INFO_DATES}</p>
{/if}
            <p class="Nb_images">{$cat.CAPTION_NB_IMAGES}</p>
{if not empty($cat.DESCRIPTION)}
            <p>{$cat.DESCRIPTION}</p>
{/if}
        </div>
    </div>
</div>
{/foreach}

