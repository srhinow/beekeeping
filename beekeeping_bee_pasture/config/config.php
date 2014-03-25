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
 * @package    beekeeping
 * @license    LGPL
 * @filesource
 */

/**
 * Add back end modules
 */

if(!$GLOBALS['BE_MOD']['beekeeping']) array_insert($GLOBALS['BE_MOD'], 1, array( 'beekeeping' => array () ) );

array_insert($GLOBALS['BE_MOD']['beekeeping'], 1, array (
		'bk_bee_pasture' => array
		(
			'callback'	=> 'ModuleBPSetup',
			'tables' => array(),
			'icon'   => 'system/modules/beekeeping_bee_pasture/html/icons/flower.png',
			'stylesheet' => 'system/modules/beekeeping_bee_pasture/html/css/be.css',
		)
	)
);

/**
 * beekeeper bee pasture Modules
 */
$GLOBALS['BK_BP_MOD'] = array
(
	'bp_entries' => array
	(
		'bk_bp_categories' => array
		(
			'tables' => array('tl_bk_bp_categories'),
			'icon'   => 'system/modules/beekeeping_bee_pasture/html/icons/category.png'
		),
		'bk_bp_plants' => array
		(
			'tables' => array('tl_bk_bp_plants'),
			'icon'   => 'system/modules/beekeeping_bee_pasture/html/icons/Plant.png'
		)
	),
	'bp_properties' => array
	(
		'bk_bp_ground' => array
		(
			'tables'					=> array('tl_bk_bp_ground'),
			'icon'						=> 'system/modules/beekeeping_bee_pasture/html/icons/leaf_plant.png',
		),
		'bk_bp_moisture' => array
		(
			'tables'					=> array('tl_bk_bp_moisture'),
			'icon'						=> 'system/modules/beekeeping_bee_pasture/html/icons/weather_rain_little.png',
		),
		'bk_bp_light' => array
		(
			'tables'					=> array('tl_bk_bp_light'),
			'icon'						=> 'system/modules/beekeeping_bee_pasture/html/icons/weather_sun.png',
		),
		'bk_bp_nectar' => array
		(
			'tables'					=> array('tl_bk_bp_nectar'),
			'icon'						=> 'system/modules/beekeeping_bee_pasture/html/icons/apple.png',
		),
		'bk_bp_pollen' => array
		(
			'tables'					=> array('tl_bk_bp_pollen'),
			'icon'						=> 'system/modules/beekeeping_bee_pasture/html/icons/asterisk_orange.png',
		),
	)
);

// Enable tables in iao_setup
if ($_GET['do'] == 'bk_bee_pasture')
{
	foreach ($GLOBALS['BK_BP_MOD'] as $strGroup=>$arrModules)
	{
		foreach ($arrModules as $strModule => $arrConfig)
		{
			if (is_array($arrConfig['tables']))
			{
				$GLOBALS['BE_MOD']['beekeeping']['bk_bee_pasture']['tables'] = array_merge($GLOBALS['BE_MOD']['beekeeping']['bk_bee_pasture']['tables'], $arrConfig['tables']);
			}
		}
	}
}
/**
 * Frontend modules
 */
// $GLOBALS['FE_MOD']['beekeeping_colonies'] = array('bk_colonies' => 'ModuleColonyTable');

/**
 * HOOKS
 */
// $GLOBALS['TL_HOOKS']['replaceInsertTags'][] = array('mpMembers', 'changeIAOTags');
/**
 * Permissions are access settings for user and groups (fields in tl_user and tl_user_group)
 */
$GLOBALS['TL_PERMISSIONS'][] = 'bk_modules';

$GLOBALS['BK_WIKIMEDIA_IMAGE_DIR'] = 'tl_files/wikipedia';
$GLOBALS['BK_WIKIMEDIA_WIKI_URL'] = 'https://commons.wikimedia.org/wiki/';
