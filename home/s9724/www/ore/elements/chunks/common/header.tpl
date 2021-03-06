<!-- header -->
<header id="header" class="header">
    <!-- top -->
    <div class="header-top clearfix">
        <div class="container">
            <!-- button -->
            <button id="button-menu" type="button" class="btn-menu"><span class="icon icon-burger">{'lw.menu'|lexicon}</span>
            </button>
            <!-- menu -->
            <nav class="menu">
                <!-- button -->
                <button id="close-menu" type="button" class="btn-close"><span class="icon icon-close">{'lw.close'|lexicon}</span>
                </button>
                {$_modx->runSnippet('!pdoMenu',[
                    'parents' => 6,
                    'level' => 1,
                    'sortby' => 'menuindex',
                    'leftJoin' => '{
                                    "localizator" : {
                                            "class" : "localizatorContent",
                                            "alias" : "localizator",
                                            "on" : "localizator.resource_id = modResource.id"
                                    }
                            }',
                    'select' => '{ "localizator" : "modResource.*, localizator.*, modResource.id" }',
                    'where' => '{ "localizator.key" : "' ~ ('localizator_key' | option) ~ '"}',
                    'tplOuter' => '@FILE:chunks/common/mainMenuOuter.tpl',
                    'tpl' => '@FILE:chunks/common/mainMenuRow.tpl'
                ])}
                <ul class="menu-contacts">
                    <li><a href="tel:89558965636">8 (955) 896-56--36</a>
                    </li>
                    <li><a href="#" data-popup="open" data-popup-id="#popup">{'lw.call-me'|lexicon}</a>
                    </li>
                </ul>
            </nav>
            <div class="swipe-panel"></div>
            <!-- lang -->
            {if ('localizator_key' | option)=='ru'}
                {var $localizLink = 'en/'}
                {var $linkTitle = 'EN'}
                {else}
                {var $localizLink = ''}    
                {var $linkTitle = 'RU'}
            {/if}
            <a href="{$localizLink ~ ($_modx->resource.uri)}" class="link-lang">{$linkTitle}</a>
            {include 'file:chunks/shop/filter/search.form.tpl'}
        </div>
    </div>
    <!-- bottom -->
    <div class="header-bottom">
        <div class="container">
            <!-- logo -->
            <a href="./" class="logo">
                <img src="assets/templates/default/images/logo.png" alt="logo">
                <span class="logo-text">

                    <span class="logo-text__title">Логотип</span>
                    <span class="logo-text__desc">{'lw.description'|lexicon}</span>
                </span>
            </a>
            <!-- info -->
            <div class="header-info">
                <!-- contacts -->
                <div class="header-info-contacts">
                    <a href="tel:89558965636" class="link-phone"><i class="icon icon-call-answer"></i> 8 (955) 896-56-36</a>
                    <a href="#" class="more" data-popup="open" data-popup-id="#popup">{'lw.call-me'|lexicon}</a>
                    <!-- value -->
                    <div class="info-value">
                        <span class="info-value__dollars">$ {$_modx->getPlaceholder('+USD')|number: 2 : '.' : ' '}</span>
                        <span class="info-value__euro">€ {$_modx->getPlaceholder('+EUR')|number: 2 : '.' : ' '}</span>
                    </div>
                </div>
                <!-- address -->
                <div class="header-info-address">
                    <span><i class="icon icon-clock"></i> 9.00 - 21.00</span>
                    <span>{'lw.header-adress'|lexicon}</span>
                </div>
            </div>
        </div>
    </div>
</header>