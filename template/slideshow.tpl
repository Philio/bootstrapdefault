<div id="slideshow">
    {include file='picture_nav_buttons.tpl'|@get_extent:'picture_nav_buttons'}

    <div id="theImage">
        {$ELEMENT_CONTENT}
    </div>

    <div class="container">
        <section id="important-info">
            <h3>{$current.TITLE}</h3>
{if isset($COMMENT_IMG)}
            <h4 class="imageComment">{$COMMENT_IMG}</h4>
{/if}
        </section>
    </div>
<div>
