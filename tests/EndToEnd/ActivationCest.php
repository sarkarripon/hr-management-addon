<?php

namespace Tests\EndToEnd;

use Tests\Support\EndToEndTester;

class ActivationCest
{
    public function test_it_deactivates_activates_correctly(EndToEndTester $I): void
    {
        $I->loginAsAdmin();
        $I->amOnPluginsPage();

        $I->seePluginActivated('hr-management-addon');

        $I->deactivatePlugin('hr-management-addon');

        $I->seePluginDeactivated('hr-management-addon');

        $I->activatePlugin('hr-management-addon');

        $I->seePluginActivated('hr-management-addon');
    }
}
