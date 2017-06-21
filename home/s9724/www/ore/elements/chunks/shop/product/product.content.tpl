{var $rub = $_modx->runSnippet('!CRcalc',[
    'multiplier' => 'USD',
    'input' => ($price)
])}
{var $eur = $_modx->runSnippet('!CRcalc',[
    'divider' => 'EUR',
    'input' => ($rub)
])}
<main class="content">
    <div class="container">
        <h1>{$_modx->resource.pagetitle}</h1>
        <!-- product -->
        <div class="product clearfix">
            {$_modx->runSnippet('!msGallery',[
                'tpl' => '@FILE:chunks/shop/product/gallery.tpl'
            ])}
            <!-- info -->
            <div class="product-info">
                <h2 class="product-info__title">Швейцарские часы</h2>
                <ul>{($price|number:'':'':'')}
                    <li>Краткое описание товара, состояние</li>
                    <li>Эксклюзивные детали</li>
                    <li>Комплектация</li>
                </ul>
                <a href="#characteristics" class="more scroll">Подробнее</a>
                <!-- price -->
                <div class="product-price">
                    <div class="product-price__value">$ {$price|number:0:'.':' '}</div>
                    <div class="product-price__currency">
                        <span><span class="rub">г</span> {$rub}</span>
                        <span>€ {$eur|number:3:' ':' '}</span>
                    </div>
                </div>
                <div class="product-info-footer">
                     <form class="form-horizontal ms2_form" method="post">
                    <input type="hidden" name="id" value="{$_modx->resource.id}"/>
                    <button type="submit" name="ms2_action" value="cart/add"  class="btn">{'lw.buy'|lexicon}</button>
                    <a href="#" data-popup="open" data-popup-id="#cheaper">{'lw.cheaper'|lexicon}</a>
                     <input type="hidden" name="count" id="product_price" class="input-sm form-control" value="1"/>
                    </form>
                </div>
            </div>
        </div>
        <!-- characteristics -->
        <div id="characteristics" class="product-characteristics clearfix">
            <ul class="tabs">
                <li class="tab-link tab-link_active" data-tab="tab-1">{'lw.tab-description'|lexicon}</li>
                <li class="tab-link" data-tab="tab-2">{'lw.tab-payment'|lexicon}</li>
                <li class="tab-link" data-tab="tab-3">{'lw.tab-shipping'|lexicon}</li>
                <li class="tab-link" data-tab="tab-4">{'lw.tab-guarantee'|lexicon}</li>
            </ul>
            <!-- tab content -->
            <div class="tab-content">
                <div id="tab-1" class="tab-pane tab-pane_active">
                    <ul class="characteristics-list">
                        <li>Тип: <span class="value">мужские</span>
                        </li>
                        <li>Корпус: <span class="value"> розовое золото</span>
                        </li>
                        <li>Размер корпуса: <span class="value"> диаметр 38 мм</span>
                        </li>
                        <li>Стекло: <span class="value">сапфировое</span>
                        </li>
                        <li>Водонепроницаемость: <span class="value">30 м</span>
                        </li>
                        <li>Циферблат: <span class="value">белый, накладные метки и стрелки из 18-каратного золота, малый секундный счетчик в положении "6 часов"</span>
                        </li>
                    </ul>
                    <ul class="characteristics-list">
                        <li>Безель: <span class="value">гладкий, полированное розовое золото</span>
                        </li>
                        <li>Крепление: <span class="value">ремешок из крокодиловой кожи, коричневый, с коричневой прострочкой и вставкой из розового 18к</span>
                        </li>
                        <li>Механизм: <span class="value">механические с ручным заводом</span>
                        </li>
                        <li>Калибр: <span class="value">215 PS</span>
                        </li>
                        <li>Запас хода: <span class="value">44 часа</span>
                        </li>
                        <li>Задняя крышка: <span class="value">прозрачная, из сапфирового стекла</span>
                        </li>
                    </ul>
                </div>
                <div id="tab-2" class="tab-pane">
                    {if 'cultureKey'|option=='ru'}
                    [[#9.content]]
                    {else}
                        [[#9.localizator_content]]
                    {/if}
                </div>
                <div id="tab-3" class="tab-pane">
                    [[#8.content]]
                </div>
                <div id="tab-4" class="tab-pane">
                    [[#28.content]]
                </div>
            </div>
        </div>
    </div>
</main>
{'!addLooked'|snippet:[
    'templates' => 3
]}