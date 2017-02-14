{* download button for Batch Downloader plugin *}

{if isset($BATCH_DWN_SIZES)}
<a href="{$BATCH_DWN_URL}{$BATCH_DWN_SIZE}" id="batchDownloadLink" title="{'Download all pictures of this selection'|translate}" class="dropdown-toggle" data-toggle="dropdown">
  <span class="glyphicon glyphicon-download-alt"></span><span class="glyphicon-text">{'Download all pictures of this selection'|@translate}</span><span class="caret"></span>
</a>

<ul id="batchDownloadBox" class="dropdown-menu" role="menu">
  <li class="switchBoxTitle">{'Download'|translate} - {'Photo sizes'|translate}</li>
  {foreach from=$BATCH_DWN_SIZES item=size name=loop}
  <li>
    <a href="{$BATCH_DWN_URL}{$size.TYPE}" rel="nofollow">
    {$size.DISPLAY} {if $size.SIZE}<span class="downloadSizeDetails">({$size.SIZE})</span>{/if}
    </a>
  </li>
{/foreach}
</ul>
{else}
<a href="{$BATCH_DWN_URL}{$BATCH_DWN_SIZE}" id="batchDownloadLink" title="{'Download all pictures of this selection'|translate}">
  <span class="glyphicon glyphicon-download-alt"></span><span class="glyphicon-text">{'Download all pictures of this selection'|@translate}</span>
</a>
{/if}

{footer_script require='jquery'}
var batchdown_count = {$BATCH_DWN_COUNT};
var batchdown_string = "{'Confirm the download of %d pictures?'|translate}";

{if isset($BATCH_DWN_SIZES)}
  jQuery("#batchDownloadLink").closest("li").addClass("dropdown");

  jQuery("#batchDownloadBox a").click(function() {
    return confirm(batchdown_string.replace('%d', batchdown_count));
  });
{else}
  jQuery("#batchDownloadLink").click(function() {
    return confirm(batchdown_string.replace('%d', batchdown_count));
  });
{/if}
{/footer_script}
