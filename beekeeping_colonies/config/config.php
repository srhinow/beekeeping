<?php

/**
 * This program is free software: you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation, either
 * version 3 of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this program. If not, please visit the Free
 * Software Foundation website at <http://www.gnu.org/licenses/>.
 *
 * PHP version 5
 * @copyright  sr-tag.de 2013
 * @author     Sven Rhinow
 * @package    beekeeping_bee_pasture
 * @license    LGPL
 * @filesource
 */

/**
 * Add back end modules
 */

if(!$GLOBALS['BE_MOD']['beekeeping']) array_insert($GLOBALS['BE_MOD'], 1, array( 'beekeeping' => array() ) );

array_insert($GLOBALS['BE_MOD']['beekeeping'], 0, array('tl_bk_colonies' => array
		(
			'tables' => array('tl_bk_colonies','tl_bk_hivemap'),
			'icon'   => 'system/modules/beekeeping_colonies/html/icons/hive.png',
			'stylesheet' => 'system/modules/beekeeping_colonies/html/css/be.css',
			'csvExport' => array('beBeekeepingExport', 'csvExport'),
			'pdfExport' => array('beBeekeepingExport', 'pdfExport'),
		)
	)
);


/**
 * Frontend modules
 */
// $GLOBALS['FE_MOD']['beekeeping_colonies'] = array('bk_colonies' => 'ModuleColonyTable');

/**
 * HOOKS
 */
// $GLOBALS['TL_HOOKS']['replaceInsertTags'][] = array('mpMembers', 'changeIAOTags');
