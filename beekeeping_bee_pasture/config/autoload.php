<?php

/**
 * Contao Open Source CMS
 *
 * Copyright (c) 2005-2014 Leo Feyer
 *
 * @package Beekeeping_bee_pasture
 * @link    https://contao.org
 * @license http://www.gnu.org/licenses/lgpl-3.0.html LGPL
 */


/**
 * Register the classes
 */
ClassLoader::addClasses(array
(
	'ModuleBPSetup' => 'system/modules/beekeeping_bee_pasture/ModuleBPSetup.php',
));


/**
 * Register the templates
 */
TemplateLoader::addFiles(array
(
	'be_bk_bp_setup' => 'system/modules/beekeeping_bee_pasture/templates',
));
