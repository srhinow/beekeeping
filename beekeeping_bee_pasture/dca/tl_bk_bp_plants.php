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
 * Table tl_bk_bp_plants
 */
$GLOBALS['TL_DCA']['tl_bk_bp_plants'] = array
(

	// Config
	'config' => array
	(
		'dataContainer'               => 'Table',
		'enableVersioning'            => true
	),
	// List
	'list' => array
	(
		'sorting' => array
		(
			'mode'                    => 2,
			'fields'                  => array('rubrik'),
			'flag'					  => 1,
			'panelLayout'             => 'filter;sort,search,limit'
		),
		'label' => array
		(
			'fields'                  => array('name_de', 'name_bot'),
			'format'                  => '%s <span style="color:#b3b3b3; padding-left:3px;">[%s]</span>',
			'label_callback'		  => array('tl_bk_bp_plants', 'listEntries')
		),
		'global_operations' => array
		(
			'back' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['MSC']['backBT'],
				'href'                => 'mod=&table=',
				'class'               => 'header_back',
				'attributes'          => 'onclick="Backend.getScrollOffset();"',
			),
			'all' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['MSC']['all'],
				'href'                => 'act=select',
				'class'               => 'header_edit_all',
				'attributes'          => 'onclick="Backend.getScrollOffset();"',
			)
		),
		'operations' => array
		(
			'edit' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['tl_bk_bp_plants']['edit'],
				'href'                => 'act=edit',
				'icon'                => 'edit.gif',
			),
			'copy' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['tl_bk_bp_plants']['copy'],
				'href'                => 'act=copy',
				'icon'                => 'copy.gif',
				// 'button_callback'     => array('tl_iso_config', 'copyConfig'),
			),
			'delete' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['tl_bk_bp_plants']['delete'],
				'href'                => 'act=delete',
				'icon'                => 'delete.gif',
				'attributes'          => 'onclick="if (!confirm(\'' . $GLOBALS['TL_LANG']['MSC']['deleteConfirm'] . '\')) return false; Backend.getScrollOffset();"',
				// 'button_callback'     => array('tl_iso_config', 'deleteConfig'),
			),
			'show' => array
			(
				'label'               => &$GLOBALS['TL_LANG']['tl_bk_bp_plants']['show'],
				'href'                => 'act=show',
				'icon'                => 'show.gif',
			)
		)
	),
	// Palettes
	'palettes' => array
	(
		'default' => 'rubrik,name_de,name_bot;{property_legend},licht,boden,feuchte,nektar,pollen,hoehe_ab,hoehe_bis,bluezeit_ab,bluezeit_bis,bluetenfarbe,wikipedia_link,image_wikimedia,image_local'
	),

	// Subpalettes
	'subpalettes' => array
	(

	),

	// Fields
	'fields' => array
	(
		'rubrik' => array
		(
			'label'                   => &$GLOBALS['TL_LANG']['tl_bk_bp_plants']['rubrik'],
			'exclude'                 => true,
			'inputType'               => 'select',
			'sorting'                  => true,
			'flag'					=> 1,
			'foreignKey'              => 'tl_bk_bp_categories.rubrik',
			'eval'                    => array('mandatory'=>true)
		),
		'name_de' => array
		(
			'label'                   => &$GLOBALS['TL_LANG']['tl_bk_bp_plants']['name_de'],
			'exclude'                 => true,
			'search'                  => true,
			'sorting'                  => true,
			'inputType'               => 'text',
			'eval'                    => array('mandatory'=>true, 'maxlength'=>255, 'tl_class'=>'w50'),
		),
		'name_bot' => array
		(
			'label'                   => &$GLOBALS['TL_LANG']['tl_bk_bp_plants']['name_bot'],
			'exclude'                 => true,
			'search'                  => true,
			'sorting'                  => true,
			'inputType'               => 'text',
			'eval'                    => array('mandatory'=>true, 'maxlength'=>255),
		),
		'licht' => array
		(
			'label'                   => &$GLOBALS['TL_LANG']['tl_bk_bp_plants']['licht'],
			'exclude'                 => true,
			'filter'                  => true,
			'sorting'                  => false,
			'inputType'               => 'checkbox',
			'foreignKey'              => 'tl_bk_bp_light.text',
			'eval'                    => array('mandatory'=>true, 'multiple'=>true)
		),
		'boden' => array
		(
			'label'                   => &$GLOBALS['TL_LANG']['tl_bk_bp_plants']['boden'],
			'exclude'                 => true,
			'filter'                  => true,
			'sorting'                  => false,
			'inputType'               => 'checkbox',
			'foreignKey'              => 'tl_bk_bp_ground.text',
			'eval'                    => array('mandatory'=>true, 'multiple'=>true)
		),
		'feuchte' => array
		(
			'label'                   => &$GLOBALS['TL_LANG']['tl_bk_bp_plants']['feuchte'],
			'exclude'                 => true,
			'filter'                  => true,
			'sorting'                  => false,
			'inputType'               => 'checkbox',
			'foreignKey'              => 'tl_bk_bp_moisture.text',
			'eval'                    => array('mandatory'=>true, 'multiple'=>true)
		),
		'nektar' => array
		(
			'label'                   => &$GLOBALS['TL_LANG']['tl_bk_bp_plants']['nektar'],
			'exclude'                 => true,
			'filter'                  => true,
			'sorting'                  => false,
			'inputType'               => 'checkbox',
			'foreignKey'              => 'tl_bk_bp_nectar.text',
			'eval'                    => array('mandatory'=>true, 'multiple'=>true)
		),
		'pollen' => array
		(
			'label'                   => &$GLOBALS['TL_LANG']['tl_bk_bp_plants']['pollen'],
			'exclude'                 => true,
			'filter'                  => true,
			'sorting'                  => false,
			'inputType'               => 'checkbox',
			'foreignKey'              => 'tl_bk_bp_moisture.text',
			'eval'                    => array('mandatory'=>true, 'multiple'=>true)
		),
		'hoehe_ab' => array
		(
			'label'                   => &$GLOBALS['TL_LANG']['tl_bk_bp_plants']['hoehe_ab'],
			'exclude'                 => true,
			'search'                  => true,
			'sorting'                  => true,
			'inputType'               => 'text',
			'eval'                    => array('mandatory'=>false, 'maxlength'=>255, 'tl_class'=>'w50'),
		),
		'hoehe_bis' => array
		(
			'label'                   => &$GLOBALS['TL_LANG']['tl_bk_bp_plants']['hoehe_bis'],
			'exclude'                 => true,
			'search'                  => true,
			'sorting'                  => true,
			'inputType'               => 'text',
			'eval'                    => array('mandatory'=>false, 'maxlength'=>255, 'tl_class'=>'w50'),
		),
		'bluezeit_ab' => array
		(
			'label'                   => &$GLOBALS['TL_LANG']['tl_bk_bp_plants']['bluezeit_ab'],
			'exclude'                 => true,
			'search'                  => true,
			'sorting'                  => true,
			'inputType'               => 'text',
			'eval'                    => array('mandatory'=>false, 'maxlength'=>255, 'tl_class'=>'w50'),
		),
		'bluezeit_bis' => array
		(
			'label'                   => &$GLOBALS['TL_LANG']['tl_bk_bp_plants']['bluezeit_bis'],
			'exclude'                 => true,
			'search'                  => true,
			'sorting'                  => true,
			'inputType'               => 'text',
			'eval'                    => array('mandatory'=>false, 'maxlength'=>255, 'tl_class'=>'w50'),
		),

		'bluetenfarbe' => array
		(
			'label'                   => &$GLOBALS['TL_LANG']['tl_bk_bp_plants']['bluetenfarbe'],
			'exclude'                 => true,
			'search'                  => true,
			'sorting'                  => true,
			'inputType'               => 'text',
			'eval'                    => array('mandatory'=>true, 'maxlength'=>255, 'tl_class'=>'w50'),
		),
		'wikipedia_link' => array
		(
			'label'                   => &$GLOBALS['TL_LANG']['tl_bk_bp_plants']['wikipedia_link'],
			'exclude'                 => true,
			'search'                  => true,
			'sorting'                  => true,
			'inputType'               => 'text',
			'eval'                    => array('mandatory'=>true, 'maxlength'=>255, 'tl_class'=>'clr long'),
		),
		'image_wikimedia' => array
		(
			'label'                   => &$GLOBALS['TL_LANG']['tl_bk_bp_plants']['image_wikimedia'],
			'exclude'                 => true,
			'search'                  => true,
			'sorting'                  => true,
			'inputType'               => 'text',
			'eval'                    => array('mandatory'=>false, 'maxlength'=>255, 'tl_class'=>'clr long'),
		),
		'image_local' => array
		(
			'label'                   => &$GLOBALS['TL_LANG']['tl_bk_bp_plants']['image_local'],
			'exclude'                 => true,
			'inputType'               => 'fileTree',
			'eval'                    => array('fieldType'=>'radio', 'files'=>true, 'filesOnly'=>true, 'mandatory'=>false)
		),
	)
);


/**
 * Class tl_bk_bp_plants
 */
class tl_bk_bp_plants extends Backend
{
	/**
	 * Return the link picker wizard
	 * @param object
	 * @return string
	 */
	public function pagePicker(DataContainer $dc)
	{
		$strField = 'ctrl_' . $dc->field . (($this->Input->get('act') == 'editAll') ? '_' . $dc->id : '');
		return ' ' . $this->generateImage('pickpage.gif', $GLOBALS['TL_LANG']['MSC']['pagepicker'], 'style="vertical-align:top; cursor:pointer;" onclick="Backend.pickPage(\'' . $strField . '\')"');
	}

    /**
     * List a particular record
     * @param array
     * @return string
     */
    public function listEntries($arrRow)
    {
    	if(strlen($arrRow['image_local']))
		{
			$img =$this->getImage($arrRow['image_local'], 800, 800,'proportional',$newImageName);
		}
		elseif(strlen($arrRow['image_wikimedia']))
		{

			$path_parts = pathinfo($arrRow['image_wikimedia']);
			$basename = str_replace('File:','',$path_parts['basename']);
			$srcName = $GLOBALS['BK_WIKIMEDIA_IMAGE_DIR'].'/'.$basename;
			$newImageName = $GLOBALS['BK_WIKIMEDIA_IMAGE_DIR'].'/'.$arrRow['id'].'-'.standardize($arrRow['name_de']).'.'.$path_parts['extension'];

			if(!file_exists(TL_ROOT.'/'.$newImageName))
			{
				// print $GLOBALS['BK_WIKIMEDIA_IMAGE_DIR'].'/'.$basename;
				$folder = new Folder($GLOBALS['BK_WIKIMEDIA_IMAGE_DIR']);

				if(!file_exists(TL_ROOT.'/'.$srcName))
				{
					$handle = fopen($arrRow['image_wikimedia'], "rb");
					$imgContent = stream_get_contents($handle);
					fclose($handle);

					$localImg = new File($srcName);
					$localImg->write($imgContent);
					$localImg->close();
				}
				$this->getImage($srcName, 800, 800,'proportional',$newImageName);

				//delete src-File
				if(file_exists(TL_ROOT.'/'.$srcName))
				{
					$srcImg = new File($srcName);
					$srcImg->delete();
				}
			}

			if(!file_exists(TL_ROOT.'/'.$newImageName)) $this->getImage($srcName, 800, 800,'proportional',$newImageName);

			$img = $newImageName;
		}else
		{
			$img = '';
		}

	    $return = '<div class="comment_wrap">';
		if(strlen($img))
		{
			$return .= '<div class="img" style="float:left; width: 120px;"><a href="'.$img.'" title="' . $arrRow['name_de'] . '" data-lightbox="'.$this->Input->get('table').'">'.$this->generateImage($this->getImage($img, 100, 100,'box'),'' . $arrRow['name_de'] . ' ('.$arrRow['name_bot'].')').'</a></div>';
		}
		$return .= '<div class=""><strong>' . $arrRow['name_de'] . '</strong> ('.$arrRow['name_bot'].')</div>
		<div><strong>'.$GLOBALS['TL_LANG']['tl_bk_bp_plants']['hoehe'][0] . ':</strong> '.$arrRow['hoehe_ab'].($arrRow['hoehe_ab']?' - ':'').$arrRow['hoehe_bis'].' cm</div>
		<div><strong>'.$GLOBALS['TL_LANG']['tl_bk_bp_plants']['bluezeit'][0] . ':</strong> '.$GLOBALS['TL_LANG']['MONTHS'][$arrRow['bluezeit_ab']-1].($arrRow['bluezeit_bis']?' - ':'').$GLOBALS['TL_LANG']['MONTHS'][$arrRow['bluezeit_bis']-1].'</div>
		</div>' . "\n    ";

		return $return;
    }
}
