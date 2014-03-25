<?php

/**
 * Contao Open Source CMS
 *
 * Copyright (c) 2005-2014 Leo Feyer
 *
 * @package Beekeeping_colonies
 * @link    https://contao.org
 * @license http://www.gnu.org/licenses/lgpl-3.0.html LGPL
 */


/**
 * Register the classes
 */
ClassLoader::addClasses(array
(
	'beBeekeepingExport' => 'system/modules/beekeeping_colonies/beBeekeepingExport.php',
));


/**
 * Register the templates
 */
TemplateLoader::addFiles(array
(
	'pdf_hivemap' => 'system/modules/beekeeping_colonies/templates',
));
