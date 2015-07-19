<div id="content" class="content">
    <div class="container">

{$HELP_CONTENT}

<p id="closeLink" style="display:none">
    <a href="#" onclick="window.close();">{'Close this window'|@translate}</a>
</p>

{footer_script require='jquery'}
if (window.opener || window.name) {
	jQuery("#closeLink").show();
	jQuery("#homeLink").hide();
}
{/footer_script}
    </div>
</div> <!-- content -->


