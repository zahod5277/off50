<?php
if (isset($input)) {
    $pdo = $modx->getService('pdoTools');
    $localizator = $modx->getService('localizator');
    return $localizator->translator_Yandex($input, 'ru', 'en');
} else {
    return;
}
