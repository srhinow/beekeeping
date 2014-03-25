<?php

/**
 *
 * PHP version 5
 * @copyright  sr-tag.de 2013
 * @author     Sven Rhinow
 * @package    beekeeping
 * @license    LGPL
 * @filesource
 */

/**
*Table tl_bk_bee_pasture
*/
$GLOBALS['TL_DCA']['tl_bk_bee_pasture'] = array
(
	//Config
	'config' => array
	(
		'dataContainer' => 'Table',
		'ctable'                      => array('tl_bk_hivemap'),
		'enableVersioning'            => true,
	),
	// List
	'list' => array
	(
		'sorting' => array
		(
			'mode'                    => 2,
			'fields'                  => array('date DESC', 'hive_number', 'main_site'),
			'panelLayout'             => 'filter;sort,search,limit'
		),
		'label' => array
		(
			'fields'                  => array('date','hive_number', 'hive_notice', 'main_site','death'),
			'format'                  => '%s - <span style="font-weight: bold;">%s (%s)</span> - <span>%s</span>, %s',
// 			'label_callback'          => array('tl_bk_bee_pasture', 'lookup_pid')
		),
		'global_operations' => array
		(
			'all' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['MSC']['all'],
					'href'                => 'act=select',
					'class'               => 'header_edit_all',
					'attributes'          => 'onclick="Backend.getScrollOffset();"'
			)
		),
		'operations' => array
		(
			'hivemap' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['tl_bk_bee_pasture']['hivemap'],
				'href'                => 'table=tl_bk_hivemap',
				'icon'                => 'system/modules/beekeeping_colonies/html/icons/table_18.png',
				'button_callback'     => array('tl_bk_bee_pasture', 'hivemapLink')
			),
			'edit' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['tl_bk_bee_pasture']['edit'],
				'href'                => 'act=edit',
				'icon'                => 'edit.gif'
			),
			'copy' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['tl_bk_bee_pasture']['copy'],
				'href'                => 'act=copy',
				'icon'                => 'copy.gif'
			),
			'delete' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['tl_bk_bee_pasture']['delete'],
				'href'                => 'act=delete',
				'icon'                => 'delete.gif',
				'attributes'          => 'onclick="if (!confirm(\'' . $GLOBALS['TL_LANG']['MSC']['deleteConfirm'] . '\')) return false; Backend.getScrollOffset();"'
			),
			'show' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['tl_bk_bee_pasture']['show'],
				'href'                => 'act=show',
				'icon'                => 'show.gif'
			)
		)
	),
	// Palettes
	'palettes' => array
	(
		'__selector__'                => array(''),
		'default'                     => 'date,hive_number,hive_notice,breed,main_site,nativity_id,nativity,notice;death'
	),
	// Subpalettes
	'subpalettes' => array
	(
		''                            => ''
	),
	// Fields
	'fields' => array
	(
		'date' => array
		(
			'label'                   => &$GLOBALS['TL_LANG']['tl_bk_bee_pasture']['date'],
			'inputType'               => 'text',
			'search'                  => true,
			'sorting'                 => true,
			'flag'                    => 6,
			'eval'                    => array('mandatory'=>true, 'datepicker'=>$this->getDatePickerString(), 'tl_class'=>'wizard', 'minlength' => 1, 'maxlength'=>10, 'rgxp' => 'date')
		),
		'hive_number' => array
		(
			'label'                   => &$GLOBALS['TL_LANG']['tl_bk_bee_pasture']['hive_number'],
			'search'                  => true,
			'sorting'                 => true,
			'flag'                    => 1,
			'inputType'               => 'text',
			'eval'                    => array('mandatory'=>true, 'maxlength'=>255, 'tl_class'=>'w50')
		),
		'hive_notice' => array
		(
			'label'                   => &$GLOBALS['TL_LANG']['tl_bk_bee_pasture']['hive_notice'],
			'search'                  => true,
			'sorting'                 => true,
			'flag'                    => 1,
			'inputType'               => 'text',
			'eval'                    => array('mandatory'=>false, 'maxlength'=>255, 'tl_class'=>'w50')
		),
		'breed' => array
		(
			'label'                   => &$GLOBALS['TL_LANG']['tl_bk_bee_pasture']['breed'],
			'search'                  => true,
			'sorting'                 => true,
			'flag'                    => 1,
			'inputType'               => 'text',
			'eval'                    => array('mandatory'=>false, 'maxlength'=>255, 'tl_class'=>'w50')
		),
		'main_site' => array
		(
			'label'                   => &$GLOBALS['TL_LANG']['tl_bk_bee_pasture']['main_site'],
			'search'                  => true,
			'sorting'                 => true,
			'flag'                    => 12,
			'inputType'               => 'text',
			'eval'                    => array('mandatory'=>true, 'maxlength'=>255, 'tl_class'=>'clr long')
		),
		'nativity_id' => array
		(
			'label'                   => &$GLOBALS['TL_LANG']['tl_bk_bee_pasture']['nativity_id'],
			'filter'                  => true,
			'sorting'                 => true,
			'flag'                    => 11,
			'inputType'               => 'select',
			'options_callback'        => array('tl_bk_bee_pasture', 'getNativityOptions'),
			'eval'                    => array('includeBlankOption'=>true, 'chosen'=>true),
		),
		'nativity' => array
		(
			'label'                   => &$GLOBALS['TL_LANG']['tl_bk_bee_pasture']['nativity'],
			'search'                  => true,
			'sorting'                 => true,
			'flag'                    => 1,
			'inputType'               => 'text',
			'eval'                    => array('mandatory'=>false, 'maxlength'=>255, 'tl_class'=>'long')
		),
		'notice' => array
		(
			'label'                   => &$GLOBALS['TL_LANG']['tl_bk_bee_pasture']['notice'],
			'exclude'                 => true,
			'search'				  => true,
			'filter'                  => false,
			'inputType'               => 'textarea',
			'eval'                    => array('mandatory'=>false, 'cols'=>'10','rows'=>'10','style'=>'height:100px','rte'=>false)
		),
		'death' => array
		(
			'label'                   => &$GLOBALS['TL_LANG']['tl_bk_bee_pasture']['death'],
			'exclude'                 => true,
			'filter'                  => true,
			'sorting'                 => true,
			'inputType'               => 'checkbox',
			'flag'                    => 11,
			'eval'                    => array('doNotCopy'=>true)
		),
	)
);

/**
 * Class tl_bk_bee_pasture
 *
 * Provide miscellaneous methods that are used by the data configuration array.
 */
class tl_bk_bee_pasture extends Backend
{
	/**
	 * Return the edit Hieve button
	 * @param array
	 * @param string
	 * @param string
	 * @param string
	 * @param string
	 * @param string
	 * @return string
	 */
	public function hivemapLink($row, $href, $label, $title, $icon, $attributes)
	{
	    return '<a href="'.$this->addToUrl($href.'&amp;id='.$row['id']).'" title="'.specialchars($title).'"'.$attributes.'>'.$this->generateImage($icon, $label).'</a> ';
	}

	/**
	 * get custom view from library-item-options
	 * @param object
	 * @throws Exception
	 */
	public function getNativityOptions(DataContainer $dc)
	{
		$varValue= array();

		$all = $this->Database->prepare('SELECT * FROM `tl_bk_bee_pasture` WHERE `id` !=? ORDER BY `hive_number` ASC')
				  ->execute($dc->id);
		while($all->next())
		{
			$varValue[$all->id] = $all->hive_number.' ('.$all->hive_notice.')';
		}
		return $varValue;
	}

}
