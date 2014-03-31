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
 * Table tl_bk_hivemaps
 */
$GLOBALS['TL_DCA']['tl_bk_hivemap'] = array
(

	// Config
	'config' => array
	(
		'dataContainer'             => 'Table',
		'ptable'                    => 'tl_bk_colonies',
		'switchToEdit'                => true,
		'enableVersioning'            => true,
		'custom_headline'			=> &$GLOBALS['TL_LANG']['tl_bk_hivemap']['cust_headline'],
		'headline_callback'         => array('tl_bk_hivemap', 'custHeadline'),
		'oncreate_callback' => array
		(
		),
		'onsubmit_callback' => array
		(
		)

	),

	// List
	'list' => array
	(
		'sorting' => array
		(
			'mode'                    => 4,
			// 'flag'					=> 7,
			'fields'                  => array('date DESC'),
			'headerFields'            => array('hive_number', 'hive_notice', 'main_site'),
			'panelLayout'             => 'filter;sort,limit;search',
			'child_record_callback'   => array('tl_bk_hivemap', 'listNewsArticles'),
			'child_record_class'      => 'no_padding'
		),
		'label' => array
		(
			'fields'                  => array('date', 'description'),
			'format'                  => '%s: %s',
// 			'label_callback'          => array('tl_bk_hivemap', 'listEntries'),
		),
		'global_operations' => array
		(
			'pdfExport' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['tl_bk_hivemap']['pdfExport'],
				'href'                => 'key=pdfExport',
				'class'               => 'pdf_export',
				'attributes'          => 'onclick="Backend.getScrollOffset();"'
			),
			'csvExport' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['tl_bk_hivemap']['csvExport'],
				'href'                => 'key=csvExport',
				'class'               => 'csv_export',
				'attributes'          => 'onclick="Backend.getScrollOffset();"'
			),
			'all' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['MSC']['all'],
				'href'                => 'act=select',
				'class'               => 'header_edit_all',
				'attributes'          => 'onclick="Backend.getScrollOffset()" accesskey="e"'
			)
		),
		'operations' => array
		(
			'edit' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['tl_bk_hivemap']['edit'],
				'href'                => 'act=edit',
				'icon'                => 'edit.gif'
			),
			'copy' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['tl_bk_hivemap']['copy'],
				'href'                => 'act=copy',
				'icon'                => 'copy.gif'
			),
			'delete' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['tl_bk_hivemap']['delete'],
				'href'                => 'act=delete',
				'icon'                => 'delete.gif',
				'attributes'          => 'onclick="if(!confirm(\'' . $GLOBALS['TL_LANG']['MSC']['deleteConfirm'] . '\'))return false;Backend.getScrollOffset()"'
			),
			'show' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['tl_bk_hivemap']['show'],
				'href'                => 'act=show',
				'icon'                => 'show.gif'
			)
		)
	),

	// Palettes
	'palettes' => array
	(
		'default'                     => 'date,description',
	),

	// Fields
	'fields' => array
	(
		'date' => array
		(
			'label'                   => &$GLOBALS['TL_LANG']['tl_bk_hivemap']['date'],
			'inputType'               => 'text',
			'exclude'                 => true,
			'filter'                  => true,
			'sorting'                 => true,
			'flag'                    => 8,
			'eval'                    => array('mandatory'=>true, 'datepicker'=>$this->getDatePickerString(), 'tl_class'=>'wizard', 'minlength' => 1, 'maxlength'=>10, 'rgxp' => 'date')
		),
		'description' => array
		(
			'label'                   => &$GLOBALS['TL_LANG']['tl_bk_hivemap']['description'],
			'exclude'                 => true,
			'search'				  => true,
			'filter'                  => false,
			'inputType'               => 'textarea',
			'eval'                    => array('mandatory'=>false, 'cols'=>'10','rows'=>'10','style'=>'height:100px','rte'=>false, 'helpwizard'=>true),
			'explanation'             => 'shortCuts'
		),
	)
);

/**
 * Class tl_bk_hivemap
 *
 * Provide miscellaneous methods that are used by the data configuration array.
 */
class tl_bk_hivemap extends Backend
{
	/**
	 * get custom view from library-item-options
	 * @param object
	 * @throws Exception
	 */
	public function custHeadline($headline)
	{

		if($headline != '' && $this->Input->get('id'))
        {
			$resObj = $this->Database->prepare('SELECT * FROM `tl_bk_colonies` WHERE `id` =?')
					  ->execute($this->Input->get('id'));

			if($resObj->numRows > 0)  $headline = sprintf($headline, $resObj->hive_number, $resObj->hive_notice);

		}
		return $headline;
	}

	/**
	 * Add the type of input field
	 * @param array
	 * @return string
	 */
	public function listNewsArticles($arrRow)
	{
		return '<div class="tl_content_left"><div style="float:left;color:#b3b3b3;padding-right:10px">[' . Date::parse($GLOBALS['TL_CONFIG']['dateFormat'], $arrRow['date']) . ']</div> <div style="float:left;">' . nl2br($arrRow['description']) . '</div><div style="clear:both;"><br></div></div>';
	}

}
