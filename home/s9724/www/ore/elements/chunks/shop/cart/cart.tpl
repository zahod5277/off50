{if !count($products)}
    {'ms2_cart_is_empty' | lexicon}
{else}
    <div class="card-col-7">
        <div id="msCart">
            {foreach $products as $product}
                <!-- card -->
                <div class="card card_basket" id="{$product.key}">
                    <a href="{$product.id|url}" class="card-image">
                        <img src="{$product.card}" alt="{$pagetitle}">
                    </a>
                    <a href="{$product.id|url}" class="card__title">{$product.pagetitle}</a>
                    <p class="card__text">{$product.introtext}</p>
                    <!-- price -->
                    <div class="card-footer">
                        <div class="card-price">
                            <span class="card-price__new">{$product.price|number:0:'.':' '}</span>
                            {if $product.old_price?}
                                <span class="card-price__old">{$product.old_price|number:0:'.':' '}</span>
                            {/if}
                            <form method="post" class="ms2_form form-inline" role="form">
                                <input type="hidden" name="key" value="{$product.key}"/>
                                <input type="hidden" name="count" value="1"/>                                   
                            </form>
                        </div>
                    </div>
                    <!-- articul -->
                    <form method="post" class="ms2_form">
                        <input type="hidden" name="key" value="{$product.key}">
                        <div class="card-articul">
                            <span class="card-articul__number">{'lw.product_article'|lexicon} {$product.article}</span>
                            <button type="submit" name="ms2_action" value="cart/remove" class="card-articul__delete">{'lw.product-delete' | lexicon}</button>
                        </div>
                    </form>
                </div>
            {/foreach}
        </div>
    </div>
{/if}