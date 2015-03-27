<div id="slideshow">
    {include file='picture_nav_buttons.tpl'|@get_extent:'picture_nav_buttons'}

    <div id="theImage">
        {$ELEMENT_CONTENT}
    </div>

    {if isset($COMMENT_IMG)}
    <div class="container">
        <section id="important-info">
            <p class="imageComment">{$COMMENT_IMG}</p>
        </section>
    </div>
    {/if}
<div>
