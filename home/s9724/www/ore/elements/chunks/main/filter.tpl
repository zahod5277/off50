<!-- filter -->
<section class="line-filter">
    <form action="#" id="filter" class="filter">
        <div class="select-wrapper">
            <select>
                <option disabled="disabled" selected="selected">{'lw.gender'|lexicon}</option>
                <option value="{'lw.gender-male'|lexicon}">{'lw.gender-male'|lexicon}</option>
                <option value="{'lw.gender-female'|lexicon}">{'lw.gender-female'|lexicon}</option>
            </select>
        </div>
        <div class="select-wrapper">
            <select>
                <option disabled="disabled" selected="selected">{'lw.product-status'|lexicon}</option>
                <option>{'lw.status-new'|lexicon}</option>
                <option>{'lw.status-second'|lexicon}</option>
            </select>
        </div>
        <div class="select-wrapper">
            <select>
                <option disabled="disabled" selected="selected">{'lw.brand'|lexicon}</option>
                {$_modx->runSnippet('@FILE:snippets/getVendors.php',[
                    'tpl' => '@FILE:chunks/main/vendorsList.tpl'
                ])}
            </select>
        </div>
        <a class="btn btn_secondary" href="#">{'lw.find'|lexicon}</a>
    </form>
</section>