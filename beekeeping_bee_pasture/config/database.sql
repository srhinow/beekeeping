--
-- Tabellenstruktur für Tabelle `tl_bk_bp_ground`
--
CREATE TABLE `tl_bk_bp_ground` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `sorting` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `text` varchar(255) NOT NULL default '',
  `kurz` varchar(255) NOT NULL default '',
   PRIMARY KEY  (`id`)
) ENGINE=MyISAM default CHARSET=utf8;

--
-- Daten für Tabelle `tl_bk_bp_ground`
--

INSERT INTO `tl_bk_bp_ground` (`id`, `pid`, `sorting`, `tstamp`, `text`, `kurz`) VALUES
(1, 3, 128, 1365151614, 'sandig', 's'),
(2, 3, 256, 1365151625, 'lehmig', 'l'),
(3, 3, 384, 1365151642, 'kalkhaltig', 'k'),
(4, 3, 512, 1365151650, 'sauer', 'sr');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_bk_bp_moisture`
--

CREATE TABLE `tl_bk_bp_moisture` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `sorting` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `text` varchar(255) NOT NULL default '',
  `kurz` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  default CHARSET=utf8;

--
-- Daten für Tabelle `tl_bk_bp_moisture`
--

INSERT INTO `tl_bk_bp_moisture` (`id`, `pid`, `sorting`, `tstamp`, `text`, `kurz`) VALUES
(1, 4, 128, 1365151708, 'trocken', 't'),
(2, 4, 256, 1365151728, 'mäßig feucht', 'm'),
(3, 4, 384, 1365151738, 'feucht', 'f');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_bk_bp_light`
--

CREATE TABLE `tl_bk_bp_light` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `sorting` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `text` varchar(255) NOT NULL default '',
  `kurz` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  default CHARSET=utf8;

--
-- Daten für Tabelle `tl_bk_bp_light`
--

INSERT INTO `tl_bk_bp_light` (`id`, `pid`, `sorting`, `tstamp`, `text`, `kurz`) VALUES
(1, 2, 128, 1365150349, 'sonnig', 's'),
(2, 2, 256, 1365150365, 'halbschattig', 'h'),
(3, 2, 384, 1365150387, 'schattig', 'd');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_bk_bp_nectar`
--

CREATE TABLE `tl_bk_bp_nectar` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `sorting` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `text` varchar(255) NOT NULL default '',
  `kurz` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  default CHARSET=utf8;

--
-- Daten für Tabelle `tl_bk_bp_nectar`
--

INSERT INTO `tl_bk_bp_nectar` (`id`, `pid`, `sorting`, `tstamp`, `text`, `kurz`) VALUES
(1, 5, 128, 1365361840, 'sehr gut', '4'),
(2, 5, 256, 1365361840, 'gut', '3'),
(3, 5, 384, 1365361840, 'mäßig', '2'),
(4, 5, 512, 1365361840, 'gering', '1');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_bk_bp_plants`
--

CREATE TABLE `tl_bk_bp_plants` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `sorting` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `name_de` varchar(255) NOT NULL default '',
  `name_bot` varchar(255) NOT NULL default '',
  `licht` text NULL,
  `rubrik` int(10) NOT NULL default '0',
  `boden` text NULL,
  `feuchte` text NULL,
  `hoehe_ab` varchar(255) NOT NULL default '',
  `hoehe_bis` varchar(255) NOT NULL default '',
  `bluezeit_ab` varchar(255) NOT NULL default '',
  `bluezeit_bis` varchar(255) NOT NULL default '',
  `nektar` text NULL,
  `pollen` text NULL,
  `bluetenfarbe` varchar(255) NOT NULL default '',
  `wikipedia_link` varchar(255) NOT NULL default '',
  `image_wikimedia` varchar(255) NOT NULL default '',
  `image_local` varchar(255) NOT NULL default '',
  `useImage` char(1) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  default CHARSET=utf8;

--
-- Daten für Tabelle `tl_bk_bp_plants`
--

INSERT INTO `tl_bk_bp_plants` (`id`, `pid`, `sorting`, `tstamp`, `name_de`, `name_bot`, `licht`, `rubrik`, `boden`, `feuchte`, `hoehe_ab`, `hoehe_bis`, `bluezeit_ab`, `bluezeit_bis`, `nektar`, `pollen`, `bluetenfarbe`, `wikipedia_link`, `image_wikimedia`) VALUES
(16, 7, 31744, 1365357776, 'Akelei, Gemeine', 'Aquilegia vulgaris', '1,2', 4, '1,2,3', '2', '30', '80', '5', '7', '2', '3', 'blau', 'http://de.wikipedia.org/wiki/Aquilegia_vulgaris', 'http://upload.wikimedia.org/wikipedia/commons/1/1a/Orlik_pospolity_Aquilegia_vulgaris.jpg'),
(17, 7, 31488, 1365356586, 'Akelei, Schwarzviolette', 'Aquilegia atrata', '1,2', 4, '1,2,3', '2', '30', '80', '5', '7', '2', '3', 'violett', 'http://de.wikipedia.org/wiki/Aquilegia_atrata', 'http://upload.wikimedia.org/wikipedia/commons/8/83/Aquilegia_atrata01.jpg'),
(18, 7, 31616, 1365356586, 'Alant, Weiden-', 'Inula salicina', '1,2', 4, '1,2', '1,2', '20', '60', '6', '10', '3', '2', 'gelb', 'http://de.wikipedia.org/wiki/Inula_salicina', 'http://upload.wikimedia.org/wikipedia/commons/d/de/Inula_salicina_240606.jpg'),
(19, 7, 31232, 1365356586, 'Alant, Weidenblättriger', 'Inula britannica', '1,2', 4, '1', '3', '20', '60', '7', '9', '3', '2', 'gelb', 'http://de.wikipedia.org/wiki/Inula_salicina', 'http://upload.wikimedia.org/wikipedia/commons/d/de/Inula_salicina_240606.jpg'),
(20, 7, 31360, 1365356586, 'Baldrian, Kleiner', 'Valeriana dioica', '1', 4, '1,2', '3', '10', '30', '5', '6', '3', '4', 'rosa', 'http://de.wikipedia.org/wiki/Valeriana_dioica', 'http://upload.wikimedia.org/wikipedia/commons/1/17/Valeriana_dioica.jpeg'),
(21, 7, 30336, 1365356586, 'Bärenklau, Wiesen-', 'Heracleum sphondylium', '1', 4, '1,2', '2', '70', '160', '6', '9', '2', '3', 'weiß', 'http://de.wikipedia.org/wiki/Heracleum_sphondylium', 'http://upload.wikimedia.org/wikipedia/commons/c/c7/HeracleumSphondylium1.jpg'),
(22, 7, 30464, 1365356586, 'Beinwell, Gemeiner', 'Symphytum officinale', '1,2', 4, '1,2', '3', '30', '100', '5', '7', '3', '4', 'violett', 'http://de.wikipedia.org/wiki/Symphytum_officinale', 'http://upload.wikimedia.org/wikipedia/commons/8/8d/Gemeiner_Beinwell01.jpg'),
(24, 7, 30592, 1365356586, 'Calla, Sumpf-', 'Calla palustris', '1', 4, '1,2,4', '3', '15', '30', '5', '9', '3', '3', 'weiß', 'http://de.wikipedia.org/wiki/Calla_palustris', 'http://upload.wikimedia.org/wikipedia/commons/2/2b/Calla_palustris.jpg'),
(25, 7, 30720, 1365356586, 'Dotterblume, Sumpf-', 'Caltha palustris', '1', 4, '1,2', '3', '10', '30', '4', '6', '3', '3', 'goldgelb', 'http://de.wikipedia.org/wiki/Caltha_palustris', 'http://upload.wikimedia.org/wikipedia/commons/8/8d/2007-03-27Caltha_palustris01.jpg'),
(26, 7, 30848, 1365356586, 'Ehrenpreis, Bach-', 'Veronica beccabunga', '1', 4, '1', '3', '20', '60', '5', '9', '3', '4', 'blau', 'http://de.wikipedia.org/wiki/Veronica_beccabunga', 'http://upload.wikimedia.org/wikipedia/commons/3/33/Veronica_beccabunga.jpeg'),
(27, 7, 30976, 1365356587, 'Ehrenpreis, Echter', 'Veronica officinalis', '1,2', 4, '1,2,4', '1,2', '10', '30', '6', '8', '3', '4', 'hellblau', 'http://de.wikipedia.org/wiki/Veronica_officinalis', 'http://upload.wikimedia.org/wikipedia/commons/2/2b/Veronica_officinalis0.jpg'),
(28, 7, 31104, 1365356587, 'Ehrenpreis, Großer', 'Veronica teucrium', '1,2', 4, '1,2,3', '1,2', '20', '100', '6', '7', '3', '4', 'himmelblau', 'http://de.wikipedia.org/wiki/Veronica_teucrium', 'http://upload.wikimedia.org/wikipedia/commons/4/4a/Veronica_teucrium_eF.jpg'),
(29, 7, 29952, 1365356587, 'Ehrenpreis, Nesselblättriger', 'Veronica urticifolia', '1,2', 4, '1,2,3', '2', '20', '60', '6', '8', '3', '4', 'lila', 'http://de.wikipedia.org/wiki/Nesselbl%C3%A4ttriger_Ehrenpreis', 'http://upload.wikimedia.org/wikipedia/commons/7/78/Veronica_urticifolia_2006.06.28_11.29.24-p6280368.jpg'),
(30, 7, 30080, 1365356587, 'Ehrenpreis, Quendel-', 'Veronica serpyllifolia', '1', 4, '1,2', '2,3', '5', '20', '5', '9', '3', '4', 'weißblau', 'http://de.wikipedia.org/wiki/Veronica_serpyllifolia', 'http://upload.wikimedia.org/wikipedia/commons/e/ea/Veronica_serpyllifolia_W.jpg'),
(31, 7, 30208, 1365356587, 'Esparsette, Saat-', 'Onobrychis viciifolia', '1', 4, '1,2,3', '1', '30', '60', '5', '7', '1', '1', 'rosarot', 'http://de.wikipedia.org/wiki/Onobrychis_viciifolia', 'http://upload.wikimedia.org/wikipedia/commons/e/e1/Onobrychis_viciifolia_060507.jpg'),
(32, 7, 29184, 1365356587, 'Fetthenne, Buckel-', 'Sedum dasyphyllum', '1', 4, '1', '1', '5', '20', '6', '8', '2', '3', 'zartrosa', 'http://de.wikipedia.org/wiki/Fetthennen', 'http://upload.wikimedia.org/wikipedia/commons/8/81/Mauerpfeffer2.jpg'),
(33, 7, 29312, 1365356587, 'Fetthenne, Felsen-', 'Sedum rupestre', '1,2', 4, '1', '1', '10', '30', '6', '8', '2', '3', 'gelb', 'http://de.wikipedia.org/wiki/Sedum_rupestre', 'http://upload.wikimedia.org/wikipedia/commons/6/64/Sedum_rupestre.jpeg'),
(34, 7, 29440, 1365356587, 'Fetthenne, Große', 'Sedum maximum', '1,2', 4, '1', '1', '20', '50', '7', '9', '2', '3', 'grüngelb', 'http://de.wikipedia.org/wiki/Sedum_maximum', 'http://upload.wikimedia.org/wikipedia/commons/7/77/Sedum_telephium_ssp_maximum_1.jpg'),
(35, 7, 29568, 1365356587, 'Fetthenne, Kaukasus-', 'Sedum spurium', '1', 4, '1', '1', '5', '20', '7', '8', '2', '3', 'rosa', 'http://de.wikipedia.org/wiki/Sedum_spurium', 'http://upload.wikimedia.org/wikipedia/commons/e/ea/Dickblatt01.jpg'),
(36, 7, 29696, 1365356587, 'Fetthenne, Ockergelbe', 'Sedum ochroleucum', '1', 4, '1,3', '1', '10', '20', '6', '8', '2', '3', 'ockergelb', 'http://de.wikipedia.org/wiki/Sedum_ochroleucum', 'http://upload.wikimedia.org/wikipedia/commons/8/87/Sedum_ochroleucum.JPG'),
(37, 7, 29824, 1365356587, 'Fetthenne, Weiße', 'Sedum album', '1', 4, '1', '1', '5', '20', '6', '7', '2', '4', 'weiß', 'http://de.wikipedia.org/wiki/Sedum_album', 'http://upload.wikimedia.org/wikipedia/commons/6/6e/Sedum_album_03_ies.jpg'),
(38, 7, 28288, 1365356587, 'Fetthenne, Zierliche', 'Sedum forsterianum', '1', 4, '1', '1', '15', '20', '6', '8', '2', '3', 'gelb', 'http://de.wikipedia.org/wiki/Fetthennen', 'http://upload.wikimedia.org/wikipedia/commons/8/81/Mauerpfeffer2.jpg'),
(39, 7, 28416, 1365356587, 'Fingerhut, Gelber', 'Digitalis lutea', '2', 4, '1,2,3', '2', '30', '70', '6', '8', '3', '4', 'zitronengelb', 'http://de.wikipedia.org/wiki/Digitalis_lutea', 'http://upload.wikimedia.org/wikipedia/commons/5/58/Digitalis_lutea_160607c.jpg'),
(40, 7, 28544, 1365356587, 'Flockenblume, Berg-', 'Centaurea montana', '1,2', 4, '1,2,3', '2', '30', '60', '5', '10', '2', '3', 'violett', 'http://de.wikipedia.org/wiki/Centaurea_montana', 'http://upload.wikimedia.org/wikipedia/commons/e/ec/Berg-Flockenblume01.jpg'),
(41, 7, 28672, 1365356588, 'Flockenblume, Perücken-', 'Centaurea pseudophrygia', '1', 4, '1,2', '2', '30', '80', '8', '9', '2', '3', 'hellrot', 'http://de.wikipedia.org/wiki/Flockenblumen', 'http://upload.wikimedia.org/wikipedia/commons/f/f2/Centaurea_scabiosa.jpg'),
(42, 7, 28800, 1365356588, 'Flockenblume, Rispen-', 'Centaurea stoebe', '1', 4, '1', '1', '30', '120', '7', '9', '2', '3', 'violett', 'http://de.wikipedia.org/wiki/Centaurea_stoebe', 'http://upload.wikimedia.org/wikipedia/commons/1/12/Centaurea_stoebe.jpeg'),
(43, 7, 28928, 1365356588, 'Flockenblume, Schwarze', 'Centaurea nigra', '1,2', 4, '1,2', '1,2', '20', '70', '7', '9', '2', '3', 'purpur', 'http://de.wikipedia.org/wiki/Centaurea_nigra', 'http://upload.wikimedia.org/wikipedia/commons/e/e2/Centaurea_nigra_Sturm24.jpg'),
(44, 7, 29056, 1365356588, 'Flockenblume, Skabiosen-', 'Centaurea scabiosa', '1', 4, '1,3', '1,2', '30', '100', '7', '8', '2', '3', 'violett', 'http://de.wikipedia.org/wiki/Centaurea_scabiosa', 'http://upload.wikimedia.org/wikipedia/commons/0/0d/Centaurea_scabiosa.jpeg'),
(45, 7, 26368, 1365356588, 'Flockenblume, Wiesen-', 'Centaurea jacea', '1,2', 4, '1,2', '2', '20', '80', '6', '10', '2', '3', 'violett', 'http://de.wikipedia.org/wiki/Centaurea_jacea', 'http://upload.wikimedia.org/wikipedia/commons/2/2e/Flockeblume01.jpg'),
(46, 7, 26496, 1365356588, 'Gamander, Berg-', 'Teucrium montanum', '1,2', 4, '1,3', '1', '5', '35', '6', '9', '2', '4', 'blaßgelb', 'http://de.wikipedia.org/wiki/Teucrium_montanum', 'http://upload.wikimedia.org/wikipedia/commons/6/6e/Teucrium_montanum.jpg'),
(47, 7, 26624, 1365356588, 'Gamander, Edel-', 'Teucrium chamaedrys', '1', 4, '1,3', '1', '10', '30', '7', '8', '2', '4', 'rot', 'http://de.wikipedia.org/wiki/Teucrium_chamaedrys', 'http://upload.wikimedia.org/wikipedia/commons/6/6e/Teucrium_chamaedrys_1.jpg'),
(48, 7, 26752, 1365356588, 'Gamander, Salbei-', 'Teucrium scorodonia', '1,2', 4, '1,4', '2', '30', '60', '7', '9', '2', '4', 'gelb', 'http://de.wikipedia.org/wiki/Teucrium_scorodonia', 'http://upload.wikimedia.org/wikipedia/commons/f/f1/Teucrium_scorodonia_07_ies.jpg'),
(49, 7, 26880, 1365356588, 'Glockenblume, Acker-', 'Campanula rapunculoides', '1,2', 4, '1,2', '2', '30', '70', '6', '9', '3', '3', 'blau', 'http://de.wikipedia.org/wiki/Campanula_rapunculoides', 'http://upload.wikimedia.org/wikipedia/commons/9/98/Campanula_rapunculoides_Vuohenkello_C_VII08_H6203.jpg'),
(50, 7, 27008, 1365356588, 'Glockenblume, Knäuel-', 'Campanula glomerata', '1,2', 4, '1,3', '1', '20', '40', '6', '9', '3', '3', 'blau', 'http://de.wikipedia.org/wiki/Campanula_glomerata', 'http://upload.wikimedia.org/wikipedia/commons/7/7f/Campanula_glomerata.JPG'),
(51, 7, 27136, 1365356588, 'Glockenblume, Nesselblättrige', 'Campanula trachelium', '1,2', 4, '1,2', '2', '30', '110', '7', '8', '3', '3', 'blau', 'http://de.wikipedia.org/wiki/Campanula_trachelium', 'http://upload.wikimedia.org/wikipedia/commons/2/20/Campanula_trachelium.jpg'),
(52, 7, 27264, 1365356588, 'Glockenblume, Pfirsich-', 'Campanula persicifolia', '1,2', 4, '1,2', '2', '70', '120', '6', '9', '3', '3', 'blau', 'http://de.wikipedia.org/wiki/Campanula_persicifolia', 'http://upload.wikimedia.org/wikipedia/commons/b/b2/Campanula_persicifolia_Liberec_1.jpg'),
(53, 7, 27392, 1365356588, 'Glockenblume, Rundblättrige', 'Campanula rotundifolia', '1', 4, '1', '1', '10', '40', '6', '10', '3', '3', 'blau', 'http://de.wikipedia.org/wiki/Campanula_rotundifolia', 'http://upload.wikimedia.org/wikipedia/commons/b/b1/Campanula_rotundifolia_W.jpg'),
(54, 7, 27520, 1365356588, 'Glockenblume, Scheuchzers', 'Campanula scheuchzeri', '1', 4, '1', '1', '10', '20', '7', '8', '3', '3', 'blauviolett', 'http://de.wikipedia.org/wiki/Campanula_scheuchzeri', 'http://upload.wikimedia.org/wikipedia/commons/f/fe/Campanula_scheuchzeri01.jpg'),
(55, 7, 27648, 1365356589, 'Glockenblume, Wiesen-', 'Campanula patula', '1,2', 4, '1,2', '2', '20', '50', '6', '7', '3', '3', 'blau', 'http://de.wikipedia.org/wiki/Campanula_patula', 'http://upload.wikimedia.org/wikipedia/commons/d/df/Campanula_patula_W.jpg'),
(56, 7, 27776, 1365356589, 'Goldrute, Gemeine', 'Solidago virgaurea', '1,2', 4, '1,2', '2', '20', '100', '7', '10', '3', '3', 'gelb', 'http://de.wikipedia.org/wiki/Solidago_virgaurea', 'http://upload.wikimedia.org/wikipedia/commons/8/83/Solidago_virgaurea09.jpg'),
(57, 7, 27904, 1365356589, 'Goldrute, Kanadische', 'Solidago canadensis', '1,2', 4, '1,2', '2', '50', '250', '8', '10', '3', '3', 'gelb', 'http://de.wikipedia.org/wiki/Solidago_canadensis', 'http://upload.wikimedia.org/wikipedia/commons/2/26/Solidago_canadensis_20050815_248.jpg'),
(58, 7, 28032, 1365356589, 'Grasnelke, Gemeine', 'Armeria maritima', '1,2', 4, '1,4', '1,2,3', '10', '50', '5', '11', '3', '4', 'hellkarmin', 'http://de.wikipedia.org/wiki/Armeria_maritima', 'http://upload.wikimedia.org/wikipedia/commons/7/74/Armeria_maritima_%28plants%29.jpg'),
(59, 7, 28160, 1365356589, 'Greiskraut, Jacobs-', 'Senecio jacobaea', '1,2', 4, '1,2', '1,2', '30', '120', '7', '9', '3', '3', 'gelb', 'http://de.wikipedia.org/wiki/Senecio_jacobaea', 'http://upload.wikimedia.org/wikipedia/commons/e/e7/SenecioJacobaeaJacobaea.jpg'),
(60, 7, 23552, 1365356589, 'Greiskraut, Raukenblättriges', 'Senecio erucifolius', '1', 4, '1,3', '1', '30', '120', '7', '9', '3', '3', 'gelb', 'http://de.wikipedia.org/wiki/Senecio_erucifolius', 'http://upload.wikimedia.org/wikipedia/commons/b/bd/Senecio_erucifolius_-_plant_%28aka%29.jpg'),
(61, 7, 23680, 1365356589, 'Günsel, Kriechender', 'Ajuga reptans', '1,2', 4, '1,2', '2', '15', '30', '5', '8', '3', '4', 'blauviolett', 'http://de.wikipedia.org/wiki/Ajuga_reptans', 'http://upload.wikimedia.org/wikipedia/commons/4/48/Ajuga_reptans_LC0138.jpg'),
(62, 7, 23808, 1365356589, 'Habichtskraut, Dolden-', 'Hieracium umbellatum', '1,2', 4, '1', '1,2', '50', '150', '7', '10', '3', '3', 'gelb', 'http://de.wikipedia.org/wiki/Hieracium_umbellatum', 'http://upload.wikimedia.org/wikipedia/commons/d/db/Hieracium_umbellatum_Schermhavikskruid_11-08-2007_15.25.38.JPG'),
(63, 7, 23936, 1365356589, 'Habichtskraut, Gemeines', 'Hieracium lachenalii', '1,2', 4, '1,2,4', '1,2', '30', '100', '6', '8', '3', '3', 'gelb', 'http://de.wikipedia.org/wiki/Hieracium_lachenalii', 'http://upload.wikimedia.org/wikipedia/commons/a/a0/Hieracium_vulgatum_%E2%80%94_Flora_Batava_%E2%80%94_Volume_v16.jpg'),
(64, 7, 24064, 1365356589, 'Habichtskraut, Kleines', 'Hieracium pilosella', '1', 4, '1,2', '1,2', '10', '30', '5', '10', '3', '3', 'sonnengelb', 'http://de.wikipedia.org/wiki/Hieracium_pilosella', 'http://upload.wikimedia.org/wikipedia/commons/d/d8/Hieracium_pilosella_090721.jpg'),
(65, 7, 24192, 1365356589, 'Habichtskraut, Ohr-', 'HIeracium lactucella', '1', 4, '1', '2', '10', '30', '5', '8', '3', '3', 'gelb', 'http://de.wikipedia.org/wiki/Habichtskr%C3%A4uter', 'http://upload.wikimedia.org/wikipedia/commons/d/d1/Hieracium_villosum.jpg'),
(66, 7, 24320, 1365356589, 'Habichtskraut, Orangerotes', 'Hieracium aurantiacum', '1', 4, '1', '1,2,3', '20', '50', '6', '8', '3', '3', 'orange', 'http://de.wikipedia.org/wiki/Hieracium_aurantiacum', 'http://upload.wikimedia.org/wikipedia/commons/6/61/Hieracium_aurantiacum_LC0106.jpg'),
(67, 7, 24448, 1365356589, 'Habichtskraut, Wald-', 'Hieracium sylvaticum', '1,2', 4, '1,2', '1,2', '20', '60', '5', '7', '3', '3', 'gelb', 'http://de.wikipedia.org/wiki/Hieracium_sylvaticum', 'http://upload.wikimedia.org/wikipedia/commons/e/e1/Hieracium_murorum_2006.06.19_09.36.35-p6190020.jpg'),
(68, 7, 24576, 1365356589, 'Hahnenfuß, Knolliger', 'Ranunculus bulbosus', '1', 4, '1', '1', '10', '40', '5', '7', '4', '4', 'gelb', 'http://de.wikipedia.org/wiki/Ranunculus_bulbosus', 'http://upload.wikimedia.org/wikipedia/commons/0/08/Ranunculus_bulbosus_plant.jpg'),
(69, 7, 24704, 1365356590, 'Hahnenfuß, Kriechender', 'Ranunculus repens', '1,2', 4, '2', '3', '10', '50', '5', '8', '4', '4', 'gelb', 'http://de.wikipedia.org/wiki/Ranunculus_repens', 'http://upload.wikimedia.org/wikipedia/commons/e/e8/Ranunculus_repens_LC0036.jpg'),
(70, 7, 24832, 1365356590, 'Hahnenfuß, Wolliger', 'Ranunculus lanuginosus', '1,2', 4, '1,2', '2', '30', '70', '5', '7', '4', '4', 'gelb', 'http://de.wikipedia.org/wiki/Ranunculus_lanuginosus', 'http://upload.wikimedia.org/wikipedia/commons/8/84/Ranunculus_lanuginosus2_W.jpg'),
(71, 7, 24960, 1365356590, 'Hahnenfuß, Zungen-', 'Ranunculus lingua', '1,2', 4, '1', '3', '40', '150', '6', '8', '4', '4', 'gelb', 'http://de.wikipedia.org/wiki/Ranunculus_lingua', 'http://upload.wikimedia.org/wikipedia/commons/3/3f/Ranunculus_lingua_9790-800.jpg'),
(72, 7, 25088, 1365356590, 'Hauhechel, Kriechende', 'Ononis repens', '1', 4, '1', '1,2', '20', '50', '6', '7', '4', '3', 'rosa', 'http://de.wikipedia.org/wiki/Ononis_repens', 'http://upload.wikimedia.org/wikipedia/commons/2/2d/Ononis_repens2_W.jpg'),
(73, 7, 25216, 1365356590, 'Herzgespann', 'Leonurus cardiaca', '1', 4, '1', '1,2', '30', '100', '6', '9', '2', '3', 'purpur', 'http://de.wikipedia.org/wiki/Leonurus_cardiaca', 'http://upload.wikimedia.org/wikipedia/commons/a/ae/Leonurus_cardiaca_170607a.jpg'),
(74, 7, 25344, 1365356590, 'Himmelsleiter, Blaue', 'Polemonium caeruleum', '1', 4, '1,3', '2,3', '30', '80', '6', '7', '2', '2', 'himmelblau', 'http://de.wikipedia.org/wiki/Jakobsleiter_%28Pflanze%29', 'http://upload.wikimedia.org/wikipedia/commons/d/d8/Jacobsledder3.jpg'),
(75, 7, 25472, 1365356590, 'Hornklee, Gemeiner', 'Lotus corniculatus', '1', 4, '1,2', '1,2', '5', '40', '6', '8', '3', '4', 'gelb', 'http://de.wikipedia.org/wiki/Lotus_corniculatus', 'http://commons.wikimedia.org/wiki/File:Hornklee.jpg'),
(76, 7, 25600, 1365356590, 'Huflattich', 'Tussilago farfara', '1,2', 4, '1', '1,2,3', '5', '20', '3', '4', '3', '3', 'gelb', 'http://de.wikipedia.org/wiki/Tussilago_farfara', 'http://upload.wikimedia.org/wikipedia/commons/7/7f/Coltsfoot.jpg'),
(77, 7, 25728, 1365356590, 'Katzenminze, Echte', 'Nepeta cataria', '1', 4, '1', '1,2', '50', '100', '7', '9', '2', '4', 'gelb, rosa', 'http://de.wikipedia.org/wiki/Nepeta_cataria', 'http://upload.wikimedia.org/wikipedia/commons/e/e8/Nepeta-catarica1.jpg'),
(78, 7, 25856, 1365356590, 'Kerbel, Wiesen-', 'Anthriscus sylvestris', '1', 4, '1,2', '2', '50', '150', '5', '8', '3', '3', 'weiß', 'http://de.wikipedia.org/wiki/Wiesenkerbel', 'http://upload.wikimedia.org/wikipedia/commons/0/0b/Anthriscus_sylvestris_W.jpg'),
(79, 7, 25984, 1365356590, 'Klette, Große', 'Arctium lappa', '1', 4, '1', '1,2', '30', '200', '7', '8', '3', '3', 'rot', 'http://de.wikipedia.org/wiki/Arctium_lappa', 'http://upload.wikimedia.org/wikipedia/commons/c/ca/ArctiumLappa1.jpg'),
(80, 7, 26112, 1365356590, 'Knöterich, Wasser-', 'Polygonum amphibium', '1', 4, '1,2', '3', '30', '300', '6', '9', '2', '3', 'rosa', 'http://de.wikipedia.org/wiki/Polygonum_amphibium', 'http://upload.wikimedia.org/wikipedia/commons/4/42/Persicaria_amphibia_LC0253.jpg'),
(81, 7, 26240, 1365356590, 'Knöterich, Wiesen-', 'Polygonum bistorta', '1', 4, '1,2', '3', '30', '80', '5', '7', '2', '3', 'rosa', 'http://de.wikipedia.org/wiki/Polygonum_bistorta', 'http://upload.wikimedia.org/wikipedia/commons/b/b3/Schlangenkn%C3%B6terich_%2812%29.jpg'),
(82, 7, 18944, 1365356591, 'Kratzdistel, Acker-', 'Cirsium arvense', '1,2', 4, '1,2', '1,2', '60', '120', '7', '9', '2', '3', 'lila', 'http://de.wikipedia.org/wiki/Cirsium_arvense', 'http://upload.wikimedia.org/wikipedia/commons/4/40/AckerKratzdistelMitHummel.jpg'),
(83, 7, 19072, 1365356591, 'Kratzdistel, Kohl-', 'Cirsium oleraceum', '1', 4, '1,2', '3', '50', '150', '6', '9', '2', '3', 'grüngelb', 'http://de.wikipedia.org/wiki/Cirsium_oleraceum', 'http://upload.wikimedia.org/wikipedia/commons/4/4b/Moesdistel_R0012270.JPG'),
(84, 7, 19200, 1365356591, 'Kratzdistel, Stengellose', 'Cirsium acaule', '1', 4, '1', '1,2', '5', '10', '7', '9', '2', '3', 'rotviolett', 'http://de.wikipedia.org/wiki/St%C3%A4ngellose_Kratzdistel', 'http://upload.wikimedia.org/wikipedia/commons/1/1a/Cirsium_acaule_eF.jpg'),
(85, 7, 19328, 1365356591, 'Kratzdistel, Sumpf-', 'Cirsium palustre', '1,2', 4, '1,2', '3', '50', '150', '7', '9', '2', '3', 'lila, rot', 'http://de.wikipedia.org/wiki/Cirsium_palustre', 'http://commons.wikimedia.org/wiki/File:Sumpfkratzdistel_uf1-1-.jpg'),
(86, 7, 19456, 1365356591, 'Kreuzkraut, Fuchssches', 'Senecio fuchsii', '1,2', 4, '1,2', '2', '60', '150', '7', '9', '3', '3', 'gelb', 'http://de.wikipedia.org/wiki/Senecio_fuchsii', 'http://upload.wikimedia.org/wikipedia/commons/1/12/Senecio_ovatus_%281%29.jpg'),
(87, 7, 19584, 1365356591, 'Küchenschelle, Gemeine', 'Pulsatilla vulgaris', '1', 4, '1,3', '1', '10', '20', '4', '5', '4', '2', 'violett', 'http://de.wikipedia.org/wiki/Pulsatilla_vulgaris', 'http://upload.wikimedia.org/wikipedia/commons/0/0c/Pulsatilla_vulgaris_MS_0164.jpg'),
(88, 7, 19712, 1365356591, 'Kugeldistel, Große', 'Echinops sphaerocephalus', '1,2', 4, '1,2', '1,2,3', '60', '150', '6', '8', '2', '3', 'blaugrün', 'http://de.wikipedia.org/wiki/Echinops_sphaerocephalus', 'http://upload.wikimedia.org/wikipedia/commons/9/9f/Echinops-sphaerocephalus-bumblebee-0a.jpg'),
(89, 7, 19840, 1365356591, 'Lauch, Kugelköpfiger', 'Allium sphaerocephalon', '1', 4, '1,3', '1,2', '30', '90', '6', '7', '2', '4', 'purpur', 'http://de.wikipedia.org/wiki/Kugelk%C3%B6pfiger_Lauch', 'http://upload.wikimedia.org/wikipedia/commons/b/bb/Allium_sphaerocephalon.jpg'),
(90, 7, 19968, 1365356591, 'Lauch, Runder', 'Allium rotundum', '1', 4, '1,3', '1,2', '30', '60', '6', '8', '2', '4', 'purpur', 'http://de.wikipedia.org/wiki/Allium_rotundum', 'http://upload.wikimedia.org/wikipedia/commons/9/98/Allium_rotundum_290608a.jpg'),
(91, 7, 20096, 1365356591, 'Lauch, Weinberg-', 'Allium vineale', '1,2', 4, '1,2', '2', '30', '60', '6', '8', '2', '4', 'rosa', 'http://de.wikipedia.org/wiki/Allium_vineale', 'http://upload.wikimedia.org/wikipedia/commons/f/fc/Allium_vineale1.jpg'),
(92, 7, 20224, 1365356591, 'Lerchensporn, Hohler', 'Corydalis cava', '1,2', 4, '1,2', '2', '15', '30', '3', '5', '3', '3', 'rot, weiß', 'http://de.wikipedia.org/wiki/Corydalis_cava', 'http://upload.wikimedia.org/wikipedia/commons/e/e2/CorydalisCava-2011-03-19-%284%29-Bonn-Jesuitenhof.jpg'),
(93, 7, 20352, 1365356591, 'Lerchensporn, Mittlerer', 'Corydalis intermedia', '1,2', 4, '1,2', '2', '10', '20', '3', '4', '3', '3', 'purpur', 'http://de.wikipedia.org/wiki/Corydalis_intermedia', 'http://upload.wikimedia.org/wikipedia/commons/6/61/Corydalis_intermedia1.jpg'),
(94, 7, 20480, 1365356591, 'Lichtnelke, Kuckucks-', 'Lychnis flos-cuculi', '1', 4, '1,2', '2,3', '30', '80', '5', '7', '3', '3', 'rosa', 'http://de.wikipedia.org/wiki/Lychnis_flos-cuculi', 'http://upload.wikimedia.org/wikipedia/commons/4/42/Lychnis_flos-cuculi_1.jpg'),
(95, 7, 20608, 1365356591, 'Löwenzahn, Herbst-', 'Leontodon autumnalis', '1', 4, '1,2', '2', '15', '45', '7', '9', '3', '4', 'gelb', 'http://de.wikipedia.org/wiki/Leontodon_autumnalis', 'http://upload.wikimedia.org/wikipedia/commons/b/bb/Leontodon_autumnalis_Sturm33.jpg'),
(96, 7, 20736, 1365356592, 'Löwenzahn, Rauher', 'Leontodon hispidus', '1', 4, '1,2', '2', '15', '30', '6', '10', '3', '4', 'gelb', 'http://de.wikipedia.org/wiki/Leontodon_hispidus', 'http://upload.wikimedia.org/wikipedia/commons/7/7f/Leontodon_hisp_hyos1.jpg'),
(97, 7, 20864, 1365356592, 'Luzerne, Hopfen-', 'Medicago lupulina', '1', 4, '1,2,3', '1,2', '10', '40', '5', '10', '2', '3', 'gelb', 'http://de.wikipedia.org/wiki/Medicago_lupulina', 'http://upload.wikimedia.org/wikipedia/commons/e/e4/MedicagoLupulina.jpg'),
(98, 7, 20992, 1365356592, 'Malve, Moschus-', 'Malva moschata', '1', 4, '1,2', '1,2', '30', '80', '6', '10', '3', '4', 'weiß, lila', 'http://de.wikipedia.org/wiki/Malva_moschata', 'http://upload.wikimedia.org/wikipedia/commons/6/65/Mallowbug.jpg'),
(99, 7, 21120, 1365356592, 'Malve, Wilde', 'Malva sylvestris', '1', 4, '1', '1,2', '40', '120', '6', '10', '3', '4', 'purpur', 'http://de.wikipedia.org/wiki/Malva_sylvestris', 'http://upload.wikimedia.org/wikipedia/commons/7/70/Malva_sylvestris_1.jpg'),
(100, 7, 21248, 1365356592, 'Mauerpfeffer, Scharfer', 'Sedum acre', '1', 4, '1', '1', '5', '15', '6', '7', '2', '3', 'gelb', 'http://de.wikipedia.org/wiki/Sedum_acre', 'http://upload.wikimedia.org/wikipedia/commons/d/d0/Sedum_acre_-_Iceland_-_2007-07-08.jpg'),
(101, 7, 21376, 1365356592, 'Minze, Roß-', 'Mentha longifolia', '1', 4, '1,2', '3', '30', '80', '7', '9', '3', '4', 'lila', 'http://de.wikipedia.org/wiki/Mentha_longifolia', 'http://upload.wikimedia.org/wikipedia/commons/b/b9/Mentha_longifolia_2005.08.02_09.53.56.jpg'),
(102, 7, 21504, 1365356592, 'Minze, Wasser-', 'Mentha aquatica', '1', 4, '1,2', '3', '20', '80', '7', '10', '3', '4', 'lila', 'http://de.wikipedia.org/wiki/Mentha_aquatica', 'http://upload.wikimedia.org/wikipedia/commons/5/5b/Mentha_aquatica_LC0099.jpg'),
(103, 7, 21632, 1365356592, 'Nieswurz, Stinkende', 'Helleborus foetidus', '1,2', 4, '1,2', '1,2', '20', '50', '3', '5', '3', '2', 'grüngelb', 'http://de.wikipedia.org/wiki/Stinkende_Nieswurz', 'http://upload.wikimedia.org/wikipedia/commons/d/d0/Helleborus_foetidus_070406.jpg'),
(104, 7, 21760, 1365356592, 'Ochsenzunge, Gebräuchliche', 'Anchusa officinalis', '1', 4, '1', '1,2', '30', '80', '5', '9', '2', '4', 'hellblau', 'http://de.wikipedia.org/wiki/Anchusa_officinalis', 'http://upload.wikimedia.org/wikipedia/commons/2/2c/AnchusaOfficinalis.jpg'),
(105, 7, 21888, 1365356592, 'Pestwurz, Gemeine', 'Petasites officinalis', '1,2', 4, '1', '3', '10', '50', '4', '5', '2', '2', 'rötlich', 'http://de.wikipedia.org/wiki/Petasites_officinalis', 'http://upload.wikimedia.org/wikipedia/commons/8/83/Gewoehnliche_Pestwurz_Common_Butterbur_%28Petasites_hybridus%29.jpg'),
(106, 7, 22016, 1365356592, 'Pestwurz, Weiße', 'Petasites albus', '1', 4, '1,2', '2,3', '10', '50', '4', '5', '2', '2', 'weiß', 'http://de.wikipedia.org/wiki/Petasites_albus', 'http://upload.wikimedia.org/wikipedia/commons/e/e1/Petasites_albus1.jpg'),
(107, 7, 22144, 1365356592, 'Platterbse, Berg-', 'Lathyrus linifolius', '1,2', 4, '1', '1,2', '15', '30', '4', '6', '3', '', 'purpur', 'http://de.wikipedia.org/wiki/Berg-Platterbse', 'http://upload.wikimedia.org/wikipedia/commons/5/52/Lathyrus_linifolius_01.jpg'),
(108, 7, 22272, 1365356592, 'Platterbse, Frühlings-', 'Lathyrus vernus', '1,2', 4, '1,2,3', '2', '20', '40', '4', '5', '3', '4', 'purpurrot', 'http://de.wikipedia.org/wiki/Lathyrus_vernus', 'http://upload.wikimedia.org/wikipedia/commons/e/e8/Lathyrus_vernus_2pl.jpg'),
(109, 7, 22400, 1365356592, 'Platterbse, Knollen-', 'Lathyrus tuberosus', '1', 4, '2,3', '2', '30', '100', '6', '8', '3', '4', 'karmin', 'http://de.wikipedia.org/wiki/Lathyrus_tuberosus', 'http://de.wikipedia.org/wiki/Lathyrus_tuberosus'),
(110, 7, 22528, 1365356593, 'Platterbse, Wald-', 'Lathyrus sylvestris', '1,2', 4, '1,2', '2', '100', '200', '7', '8', '3', '4', 'rot', 'http://de.wikipedia.org/wiki/Lathyrus_sylvestris', 'http://upload.wikimedia.org/wikipedia/commons/3/30/Lathyrus_sylvestris_eF.jpg'),
(111, 7, 22656, 1365356593, 'Platterbse, Wiesen-', 'Lathyrus pratensis', '1', 4, '1,2', '2,3', '30', '100', '6', '8', '3', '4', 'gelb', 'http://de.wikipedia.org/wiki/Lathyrus_pratensis', 'http://upload.wikimedia.org/wikipedia/commons/3/3b/Meadow_vetchling_close_800.jpg'),
(112, 7, 22784, 1365356593, 'Resede, Färber-', 'Reseda luteola', '1', 4, '1,3', '1,2', '50', '120', '6', '9', '3', '2', 'gelb', 'http://de.wikipedia.org/wiki/Reseda_luteola', 'http://upload.wikimedia.org/wikipedia/commons/8/84/Reseda_luteola_habitat.jpg'),
(113, 7, 22912, 1365356593, 'Resede, Gelbe', 'Reseda lutea', '1', 4, '1,3', '1,2', '20', '50', '5', '9', '3', '2', 'gelb', 'http://de.wikipedia.org/wiki/Reseda_lutea', 'http://upload.wikimedia.org/wikipedia/commons/0/02/ResedaLutea-plant-kl.jpg'),
(114, 7, 23040, 1365356593, 'Salbei, Klebriger', 'Salvia glutinosa', '1,2', 4, '1,3', '2', '50', '120', '7', '10', '2', '4', 'gelb', 'http://de.wikipedia.org/wiki/Salvia_glutinosa', 'http://upload.wikimedia.org/wikipedia/commons/8/82/Klebriger_Salbei_%28Salvia_glutinosa%29.jpg'),
(115, 7, 23168, 1365356593, 'Salbei, Quirlblättriger', 'Salvia verticillata', '1', 4, '1,3', '1,2', '20', '60', '6', '9', '2', '4', 'violett', 'http://de.wikipedia.org/wiki/Salvia_verticillata', 'http://upload.wikimedia.org/wikipedia/commons/e/e1/Salvia_verticillata_1.jpg'),
(116, 7, 23296, 1365356593, 'Salbei, Wiesen-', 'Salvia pratensis', '1', 4, '1,2', '1', '30', '60', '5', '8', '2', '4', 'blau', 'http://de.wikipedia.org/wiki/Salvia_pratensis', 'http://upload.wikimedia.org/wikipedia/commons/7/77/Wiesensalbei_1.jpg'),
(117, 7, 23424, 1365356593, 'Sauerampfer, Kleiner', 'Rumex acetosella', '1', 4, '1,2,4', '1,2', '10', '30', '5', '7', '', '3', 'rötlich', 'http://de.wikipedia.org/wiki/Rumex_acetosella', 'http://upload.wikimedia.org/wikipedia/commons/9/96/Ahosuolahein%C3%A4_%28Rumex_acetosella%29.jpg'),
(118, 7, 14464, 1365356593, 'Schafgarbe, Edle', 'Achillea nobilis', '1', 4, '1', '1', '20', '60', '6', '10', '3', '3', 'gelbweiß', 'http://de.wikipedia.org/wiki/Achillea_nobilis', 'http://upload.wikimedia.org/wikipedia/commons/5/58/Achillea_nobilis_003.JPG'),
(119, 7, 14592, 1365356593, 'Schafgarbe, Sumpf-', 'Achillea ptarmica', '1', 4, '1,4', '2,3', '15', '30', '7', '9', '3', '3', 'weiß', 'http://de.wikipedia.org/wiki/Achillea_ptarmica', 'http://upload.wikimedia.org/wikipedia/commons/e/e1/Achillea_ptarmica_prg_1.jpg'),
(120, 7, 14720, 1365356593, 'Scharbockskraut', 'Ranunculus ficaria', '1,2', 4, '1', '3', '5', '20', '3', '5', '4', '4', 'sonnengelb', 'http://de.wikipedia.org/wiki/Ranunculus_ficaria', 'http://upload.wikimedia.org/wikipedia/commons/7/78/Ficaria_verna_002.JPG'),
(121, 7, 14848, 1365356593, 'Schaumkraut, Wiesen-', 'Cardamine pratensis', '1', 4, '1,2,4', '2,3', '10', '40', '4', '6', '3', '3', 'ila, rosa', 'http://de.wikipedia.org/wiki/Cardamine_pratensis', 'http://upload.wikimedia.org/wikipedia/commons/b/ba/WiesenschaumkrautSumpfdotterblume.jpg'),
(122, 7, 14976, 1365356593, 'Skabiose, Duft-', 'Scabiosa canescens', '1,2', 4, '1,2', '1,2', '20', '50', '7', '11', '3', '4', 'hellblau', 'http://de.wikipedia.org/wiki/Scabiosa_canescens', 'http://upload.wikimedia.org/wikipedia/commons/7/7c/Scabiosa_canescens_sl_1.jpg'),
(123, 7, 15104, 1365356593, 'Skabiose, Gelbe', 'Scabiosa ochroleuca', '1', 4, '1', '1,2', '20', '60', '7', '10', '3', '4', 'gelb', 'http://de.wikipedia.org/wiki/Scabiosa_ochroleuca', 'http://upload.wikimedia.org/wikipedia/commons/d/d7/Scabiosa_ochroleucaG2.jpg'),
(124, 7, 15232, 1365356594, 'Skabiose, Tauben-', 'Scabiosa columbaria', '1', 4, '1,2,3', '1,2', '20', '60', '7', '11', '3', '4', 'lila', 'http://de.wikipedia.org/wiki/Scabiosa_columbaria', 'http://upload.wikimedia.org/wikipedia/commons/4/40/Widderchen.jpg'),
(125, 7, 15360, 1365356594, 'Sternmiere, Gras-', 'Stellaria graminea', '1', 4, '1,4', '1', '10', '50', '5', '7', '3', '3', 'weiß', 'http://de.wikipedia.org/wiki/Gras-Sternmiere', 'http://upload.wikimedia.org/wikipedia/commons/a/a0/Stellaria_graminea_eF.jpeg'),
(126, 7, 15488, 1365356594, 'Storchschnabel, Blut-', 'Geranium sanguineum', '1,2', 4, '1,2,3', '1,2', '10', '50', '6', '8', '3', '3', 'rot', 'http://de.wikipedia.org/wiki/Geranium_sanguineum', 'http://upload.wikimedia.org/wikipedia/commons/8/87/Geranium_sanguineum.jpg'),
(127, 7, 15616, 1365356594, 'Storchschnabel, Pyrenäen-', 'Geranium pyrenaicum', '1', 4, '1', '1', '20', '50', '5', '10', '3', '3', 'purpurviolett', 'http://de.wikipedia.org/wiki/Geranium_pyrenaicum', 'http://upload.wikimedia.org/wikipedia/commons/e/ea/GeraniumPyrenaicum.jpg'),
(128, 7, 15744, 1365356594, 'Storchschnabel, Sumpf-', 'Geranium palustre', '1', 4, '1,2', '3', '30', '80', '6', '9', '3', '3', 'purpurrot', 'http://de.wikipedia.org/wiki/Geranium_palustre', 'http://upload.wikimedia.org/wikipedia/commons/c/cb/GeraniumPalustre2.JPG'),
(129, 7, 15872, 1365356594, 'Storchschnabel, Wald-', 'Geranium sylvaticum', '1', 4, '1', '3', '20', '60', '5', '7', '3', '3', 'purpur', 'http://de.wikipedia.org/wiki/Geranium_sylvaticum', 'http://upload.wikimedia.org/wikipedia/commons/b/bf/Geranium_sylvaticum_%282%29.JPG'),
(130, 7, 16000, 1365356594, 'Storchschnabel, Wiesen-', 'Geranium pratense', '1', 4, '1,2,3', '2,3', '30', '60', '6', '8', '3', '3', 'blauviolett', 'http://de.wikipedia.org/wiki/Geranium_pratense', 'http://upload.wikimedia.org/wikipedia/commons/9/91/Snaputis.jpg'),
(131, 7, 16128, 1365356594, 'Taubnessel, Gefleckte', 'Lamium maculatum', '1,2', 4, '1', '1,2', '20', '50', '4', '10', '3', '4', 'rot', 'http://de.wikipedia.org/wiki/Lamium_maculatum', 'http://upload.wikimedia.org/wikipedia/commons/f/f4/Lamium_maculatum_MdE.jpg'),
(132, 7, 16256, 1365972630, 'Taubnessel, Weiße', 'Lamium album', '1,2', 4, '1', '2', '20', '50', '4', '10', '3', '4', 'weiß', 'http://de.wikipedia.org/wiki/Wei%C3%9Fe_Taubnessel', 'http://upload.wikimedia.org/wikipedia/commons/a/a9/Lamium_album_LC0137.jpg'),
(133, 7, 16384, 1365356594, 'Thymian, Gemeiner', 'Thymus pulegioides', '1', 4, '1', '1,2', '5', '20', '6', '10', '2', '4', 'rosa', 'http://de.wikipedia.org/wiki/Lamium_album', 'http://upload.wikimedia.org/wikipedia/commons/a/a9/Lamium_album_LC0137.jpg'),
(134, 7, 16512, 1365356594, 'Thymian, Sand-', 'Thymus serpyllum', '1', 4, '1,3', '1', '2', '10', '7', '8', '2', '4', 'blau', 'http://de.wikipedia.org/wiki/Thymus_serpyllum', 'http://upload.wikimedia.org/wikipedia/commons/a/ab/Wilder_Thymian.jpg'),
(135, 7, 16640, 1365356594, 'Tripmadam, Felsen-Fetthenne', 'Sedum reflexum', '1,2', 4, '1', '1', '15', '30', '6', '8', '2', '1,3', 'goldgelb', 'http://de.wikipedia.org/wiki/Sedum_reflexum', 'http://upload.wikimedia.org/wikipedia/commons/0/01/Sedum_Reflexum.JPG'),
(136, 7, 16768, 1365356594, 'Trollblume', 'Trollius europaeus', '1', 4, '1', '3', '30', '60', '5', '6', '3', '2', 'gelb', 'http://de.wikipedia.org/wiki/Trollius_europaeus', 'http://upload.wikimedia.org/wikipedia/commons/4/49/Trollius_europaeus_Schwaebisch_Hall-Wackershofen_20080530_2.jpg'),
(137, 7, 16896, 1365356594, 'Vergißmeinnicht, Sumpf-', 'Myosotis palustris', '1,2', 4, '1,2', '3', '20', '60', '5', '9', '4', '4', 'hellblau', 'http://de.wikipedia.org/wiki/Myosotis_palustris', 'http://upload.wikimedia.org/wikipedia/commons/e/e5/MyosotisScorpioides.jpg'),
(138, 7, 17024, 1365356595, 'Vergißmeinnicht, Wald-', 'Myosotis sylvatica', '1,2', 4, '1,2', '2', '10', '40', '5', '7', '4', '4', 'himmelblau', 'http://de.wikipedia.org/wiki/Myosotis_sylvatica', 'http://upload.wikimedia.org/wikipedia/commons/5/5f/Myosotis.sylvatica%2801%29.jpg'),
(139, 7, 17152, 1365356595, 'Wegerich, Breit-', 'Plantago major', '1,2', 4, '1', '1,2', '5', '30', '6', '10', '', '2', 'braun', 'http://de.wikipedia.org/wiki/Plantago_major', 'http://upload.wikimedia.org/wikipedia/commons/4/49/Plantago_major_02_ies.jpg'),
(140, 7, 17280, 1365356595, 'Wegerich, Mittel-', 'Plantago media', '1', 4, '1', '1', '10', '50', '5', '9', '', '2', 'grünlila', 'http://de.wikipedia.org/wiki/Plantago_media', 'http://upload.wikimedia.org/wikipedia/commons/2/21/Plantago-media.JPG'),
(141, 7, 17408, 1365356595, 'Wegwarte, Gemeine, Zichorie', 'Cichorium intybus', '1', 4, '1,2', '1,2', '30', '120', '7', '10', '2', '2', 'blau', 'http://de.wikipedia.org/wiki/Cichorium_intybus', 'http://upload.wikimedia.org/wikipedia/commons/9/91/Cykoria_podroznik_pokroj.jpg'),
(142, 7, 17536, 1365356595, 'Weidenröschen, Rauhhaariges', 'Epilobium hirsutum', '1', 4, '1', '3', '60', '120', '6', '9', '3', '3', 'rosa', 'http://de.wikipedia.org/wiki/Epilobium_hirsutum', 'http://upload.wikimedia.org/wikipedia/commons/0/0b/Epilobium-hirsutum-2008.JPG'),
(143, 7, 17664, 1365356595, 'Weidenröschen, Schmalblättr.', 'Epilobium angustifolium', '1,2', 4, '1,2', '2', '50', '160', '7', '8', '3', '3', 'rosa', 'http://de.wikipedia.org/wiki/Epilobium_angustifolium', 'http://upload.wikimedia.org/wikipedia/commons/1/1d/Maitohorsma_%28Epilobium_angustifolium%29.JPG'),
(144, 7, 17792, 1365356595, 'Weiderich, Blut-, Gemeiner', 'Lythrum salicaria', '1', 4, '1,2', '3', '50', '130', '7', '9', '2', '3', 'violett', 'http://de.wikipedia.org/wiki/Lythrum_salicaria', 'http://upload.wikimedia.org/wikipedia/commons/5/57/Blutweiderich_0507241.jpg'),
(145, 7, 17920, 1365356595, 'Wiesenraute, Akelei', 'Thalictrum aquilegiifolium', '1,2', 4, '1,2', '2,3', '40', '120', '5', '7', '', '3', 'lila', 'http://de.wikipedia.org/wiki/Thalictrum_aquilegiifolium', 'http://upload.wikimedia.org/wikipedia/commons/e/e0/Thalictrum_aquilegifolium.jpg'),
(146, 7, 18048, 1365356595, 'Windröschen, Busch-', 'Anemone nemorosa', '1,2', 4, '1,2', '2,3', '10', '30', '3', '5', '', '3', 'weiß', 'http://de.wikipedia.org/wiki/Anemone_nemorosa', 'http://upload.wikimedia.org/wikipedia/commons/7/73/Anemone_nemerosa_LC0124.jpg'),
(147, 7, 18176, 1365356595, 'Windröschen, Gelbes', 'Anemone ranunculoides', '1,2', 4, '1,2', '2', '15', '30', '4', '5', '', '3', 'gelb', 'http://de.wikipedia.org/wiki/Anemone_ranunculoides', 'http://commons.wikimedia.org/wiki/File:Anemone_ranunculoides.jpg'),
(148, 7, 18304, 1365356595, 'Windröschen, Narzissen-', 'Anemone narcissiflora', '1', 4, '1,2', '1', '20', '40', '5', '7', '', '3', 'weiß', 'http://de.wikipedia.org/wiki/Anemone_narcissiflora', 'http://upload.wikimedia.org/wikipedia/commons/0/07/Hakusanitige.JPG'),
(149, 7, 18432, 1365356595, 'Wundklee, Gemeiner', 'Anthyllis vulneraria', '1,2', 4, '1,2', '2', '15', '30', '5', '8', '3', '3', 'gelb', 'http://de.wikipedia.org/wiki/Anthyllis_vulneraria', 'http://upload.wikimedia.org/wikipedia/commons/4/40/Anthyllis_vulneraria_pseudovulneraria_W.jpg'),
(151, 7, 18560, 1365356595, 'Ziest, Heil-', 'Stachys officinalis', '1,2', 4, '1,2', '1,2,3', '20', '70', '7', '8', '2', '4', 'rosa', 'http://de.wikipedia.org/wiki/Stachys_officinalis', 'http://upload.wikimedia.org/wikipedia/commons/e/e2/Stachys_officinalis3.jpg'),
(152, 7, 18688, 1365356595, 'Ziest, Sumpf-', 'Stachys palustris', '1', 4, '1,2', '3', '30', '100', '6', '9', '2', '4', 'rosa', 'http://de.wikipedia.org/wiki/Stachys_palustris', 'http://upload.wikimedia.org/wikipedia/commons/e/e3/Stachys_palustris_2005.07.03_12.12.10.jpg'),
(153, 7, 18816, 1365356596, 'Ziest, Wald-', 'Stachys silvatica', '1,2', 4, '1,2', '2', '30', '100', '6', '9', '2', '4', 'violett', 'http://de.wikipedia.org/wiki/Wald-Ziest', 'http://upload.wikimedia.org/wikipedia/commons/4/4c/Stachys_sylvatica_flowers.jpg'),
(154, 7, 14336, 1365280371, 'Apfel, Wild-, Holzapfel', 'Malus sylvestris', '1', 3, '2', '3', '100', '500', '5', '6', '3', '3', 'rosa-weiß', 'http://de.wikipedia.org/wiki/Malus_sylvestris', 'http://commons.wikimedia.org/wiki/File:Malus_sylvestris.jpg'),
(155, 7, 14208, 1365280371, 'Berberitze, Gemeine, Sauerdorn', 'Berberis vulgaris', '1,2', 3, '1,3', '1,2', '100', '300', '5', '6', '3', '4', 'gelb', 'http://de.wikipedia.org/wiki/Berberis_vulgaris', 'http://upload.wikimedia.org/wikipedia/commons/b/bb/Berberis_vulgaris3.jpg'),
(156, 7, 14080, 1365280371, 'Bocksdorn, Gemeiner', 'Lycium barbarum', '1,2', 3, '1,3', '1', '100', '300', '6', '10', '3', '3', 'purpur', 'http://de.wikipedia.org/wiki/Lycium_barbarum', 'http://upload.wikimedia.org/wikipedia/commons/5/5c/LyciumBarbarum-plant-hr.jpg'),
(157, 7, 13952, 1365280371, 'Brombeere, Wilde', 'Rubus fruticosus', '1,2', 3, '1,2,3,4', '2,3', '100', '300', '6', '8', '2', '3', 'rosa-weiß', 'http://de.wikipedia.org/wiki/Taybeere', 'http://upload.wikimedia.org/wikipedia/commons/d/d9/Tayberry_flower.jpg'),
(158, 7, 13824, 1365280371, 'Buchsbaum, Immergrüner', 'Buxus sempervirens', '1,2,3', 3, '1,2', '1,2', '100', '500', '3', '4', '3', '4', 'gelbgrün', 'http://de.wikipedia.org/wiki/Buxus_sempervirens', 'http://upload.wikimedia.org/wikipedia/commons/f/fb/Buxus_sempervirens_IP1204022.JPG'),
(159, 7, 13696, 1365280371, 'Eibe, Gemeine', 'Taxus baccata', '1,2,3', 3, '3', '1', '100', '500', '3', '5', '', '2', 'grün', 'http://de.wikipedia.org/wiki/Taxus_baccata', 'http://upload.wikimedia.org/wikipedia/commons/3/31/Taxus_baccata_MHNT.jpg'),
(160, 7, 13568, 1365280371, 'Faulbaum', 'Rhamnus frangula', '2', 3, '1,4', '2', '100', '300', '5', '8', '2', '3', 'weiß', 'http://de.wikipedia.org/wiki/Rhamnus_frangula', 'http://upload.wikimedia.org/wikipedia/commons/9/9d/Rhamnus_frangula_07_ies.jpg'),
(161, 7, 13440, 1365280371, 'Felsenbirne, Gemeine', 'Amelanchier ovalis', '1,2', 3, '1,3', '1', '100', '300', '4', '5', '3', '4', 'weiß', 'http://de.wikipedia.org/wiki/Amelanchier_ovalis', 'http://upload.wikimedia.org/wikipedia/commons/c/cc/Amelanchier_ovalis_001.jpg'),
(162, 7, 13312, 1365280371, 'Fingerstrauch', 'Potentilla fruticosa', '1', 3, '1,2', '2', '50', '100', '6', '8', '3', '3', 'weiß', 'http://de.wikipedia.org/wiki/Potentilla_fruticosa', 'http://upload.wikimedia.org/wikipedia/commons/b/b7/2007-08-30Potentilla_fruticosa02.jpg'),
(163, 7, 13184, 1365280371, 'Geißklee, Niederliegender', 'Cytisus decumbens', '1', 3, '1', '1,2', '', '30', '4', '5', '', '3', 'goldgelb', 'http://de.wikipedia.org/wiki/Cytisus_decumbens', 'http://upload.wikimedia.org/wikipedia/commons/8/8a/Cytisus_decumbens_001.JPG'),
(164, 7, 13056, 1365280371, 'Geißklee, Schwärzender', 'Lembotrypis nigricans', '1', 3, '1', '1,2', '50', '130', '6', '8', '', '3', 'gelb', 'http://de.wikipedia.org/wiki/Schwarzwerdender_Gei%C3%9Fklee', 'http://upload.wikimedia.org/wikipedia/commons/f/f3/Cytisus_nigricans_2006.07.01_10.41.34-p7010259.jpg'),
(165, 7, 12928, 1365280371, 'Ginster, Besen-', 'Sarothamnus scoparius', '1', 3, '1', '1,2', '100', '300', '5', '6', '', '4', 'cremegelb', 'http://de.wikipedia.org/wiki/Sarothamnus_scoparius', 'http://upload.wikimedia.org/wikipedia/commons/e/e0/Cytisus_scoparius2.jpg'),
(166, 7, 12800, 1365280372, 'Ginster, Deutscher', 'Genista germanica', '1', 3, '1,3', '1', '', '100', '5', '8', '', '3', 'gelb', 'http://de.wikipedia.org/wiki/Genista_germanica', 'http://upload.wikimedia.org/wikipedia/commons/1/17/Genista_germanica20080528.jpg'),
(167, 7, 12672, 1365280372, 'Ginster, Englischer', 'Genista anglica', '1,2', 3, '1,3', '1', '', '100', '5', '7', '', '3', 'blaugrün', 'http://de.wikipedia.org/wiki/Genista_anglica', 'http://upload.wikimedia.org/wikipedia/commons/e/ed/Genista_anglica.jpeg'),
(168, 7, 12544, 1365280372, 'Ginster, Färber-', 'Genista tinctoria', '1', 3, '1,3', '1', '', '190', '6', '8', '', '3', 'gelb', 'http://de.wikipedia.org/wiki/Genista_tinctoria', 'http://upload.wikimedia.org/wikipedia/commons/d/d1/Genista_tinctoria_jfg.jpg'),
(169, 7, 12416, 1365280372, 'Hartriegel, Roter', 'Cornus sanguinea', '1,2', 3, '1,2,3', '2', '100', '500', '5', '6', '3', '4', 'weiß', 'http://de.wikipedia.org/wiki/Cornus_sanguinea', 'http://upload.wikimedia.org/wikipedia/commons/5/55/Cornus_sanguinea3.jpg'),
(170, 7, 12288, 1365280372, 'Hasel', 'Corylus avellana', '1,2,3', 3, '1,2,3', '2', '100', '500', '2', '4', '', '3', 'rot-gelb', 'http://de.wikipedia.org/wiki/Corylus_avellana', 'http://upload.wikimedia.org/wikipedia/commons/1/1a/Corylus_avellana_001.jpg'),
(171, 7, 12160, 1365280372, 'Heckenkirsche, Alpen-', 'Lonicera alpigena', '1,2', 3, '1,2,3', '2', '100', '150', '5', '6', '3', '3', 'gelb', 'http://de.wikipedia.org/wiki/Lonicera_alpigena', 'http://upload.wikimedia.org/wikipedia/commons/e/e3/Lonicera_alpigena.jpg'),
(172, 7, 12032, 1365280372, 'Heckenkirsche, Blaue', 'Lonicera caerulea', '1,2,3', 3, '1,2', '2', '', '230', '5', '7', '3', '3', 'weißgelb', 'http://de.wikipedia.org/wiki/Blaue_Heckenkirsche', 'http://upload.wikimedia.org/wikipedia/commons/6/62/Lonicera_coerulea_a3.jpg'),
(173, 7, 11904, 1365280372, 'Heckenkirsche, Rote', 'Lonicera xylosteum', '2', 3, '2,3', '2', '100', '300', '5', '6', '3', '3', 'gelb-weiß', 'http://de.wikipedia.org/wiki/Lonicera_xylosteum', 'http://upload.wikimedia.org/wikipedia/commons/b/b2/Lonicera_xylosteum_W.jpg'),
(174, 7, 11776, 1365280372, 'Heide, Besen-', 'Calluna vulgaris', '1', 3, '1,4', '1', '', '80', '8', '9', '2', '2', 'weiß', 'http://de.wikipedia.org/wiki/Calluna_vulgaris', 'http://upload.wikimedia.org/wikipedia/commons/3/30/CallunaVulgaris.jpg'),
(175, 7, 11648, 1365280372, 'Heidelbeere, Blaubeere', 'Vaccinium myrtillus', '1,2', 3, '1,2,4', '2', '50', '', '4', '8', '2', '4', 'hellgrün', 'http://de.wikipedia.org/wiki/Vaccinium_myrtillus', 'http://upload.wikimedia.org/wikipedia/commons/c/c5/Vaccinium_myrtillus1_ies.jpg'),
(176, 7, 11520, 1365280372, 'Himbeere', 'Rubus idaeus', '1,2', 3, '1,2', '2', '60', '120', '5', '8', '1', '2', 'weiß', 'http://de.wikipedia.org/wiki/Rubus_idaeus', 'http://upload.wikimedia.org/wikipedia/commons/1/15/2010-05-24_Himbeerbl%C3%BCte_01.jpg'),
(177, 7, 11392, 1365280372, 'Johannisbeere, Rote', 'Ribes rubrum', '2', 3, '2,3', '3', '', '200', '4', '5', '3', '2', 'grün', 'http://de.wikipedia.org/wiki/Ribes_rubrum', 'http://upload.wikimedia.org/wikipedia/commons/0/07/Ribes_rubrum_flos.JPG'),
(178, 7, 11264, 1365280372, 'Steinweichsel', 'Prunus mahaleb', '1,2,3', 3, '1,2', '1,2', '400', '500', '4', '5', '2', '2', 'gelb', 'http://de.wikipedia.org/wiki/Stein-Weichsel', 'http://commons.wikimedia.org/wiki/File:Weichselboom_bloemen_%28Prunus_mahaleb_flowers%29.jpg'),
(179, 7, 11136, 1365280372, 'Kornelkirsche', 'Cornus mas', '1,2', 3, '3', '1,2', '300', '500', '5', '6', '2', '3', 'weiß', 'http://de.wikipedia.org/wiki/Cornus_mas', 'http://upload.wikimedia.org/wikipedia/commons/c/c1/Gele_kornoelje_27-08-2005_15.12.06.JPG'),
(180, 7, 11008, 1365280373, 'Liguster, Gemeiner', 'Ligustrum vulgare', '1', 3, '2,3', '3', '100', '300', '6', '9', '3', '4', 'gelbgrün', 'http://de.wikipedia.org/wiki/Gew%C3%B6hnlicher_Liguster', 'http://upload.wikimedia.org/wikipedia/commons/f/f5/LigusterBl%C3%BCtenstand.jpg'),
(181, 7, 10880, 1365280373, 'Mannsblut, Blut-Johanniskraut', 'Hypericum androsaemum', '2', 3, '1,2', '2', '90', '170', '6', '7', '3', '3', 'weiß', 'http://de.wikipedia.org/wiki/Hypericum_androsaemum', 'http://upload.wikimedia.org/wikipedia/commons/f/f2/Hypericum_androsaemum6.jpg'),
(182, 7, 10752, 1365280373, 'Pfaffenhütchen, Europäisches', 'Euonymus europaea', '1,2,3', 3, '2', '1,2', '300', '500', '5', '6', '3', '4', 'grünweiß', 'http://de.wikipedia.org/wiki/Euonymus_europaea', 'http://upload.wikimedia.org/wikipedia/commons/a/a1/Euonymus_europaeus_1a.JPG'),
(183, 7, 10624, 1365280373, 'Preiselbeere, Kronsbeere', 'Vaccinium vitis-idaea', '1,2', 3, '1,2,4', '2', '15', '', '5', '6', '2', '4', 'weiß', 'http://de.wikipedia.org/wiki/Vaccinium_vitis-idaea', 'http://upload.wikimedia.org/wikipedia/commons/0/0d/Vaccinium_vitis-idaea.jpg'),
(185, 7, 10496, 1365280373, 'Gebirgs-Rose, Alpenhecken', 'Rosa pendulina', '1,2', 3, '3', '1,2', '50', '100', '5', '6', '3', '3', 'grünlichgelb', 'http://de.wikipedia.org/wiki/Rosa_pendulina', 'http://upload.wikimedia.org/wikipedia/commons/0/0d/Rosa_pendulina.jpg'),
(186, 7, 10368, 1365280373, 'Rose, Apfel-', 'Rosa villosa', '1', 3, '3', '1,2', '50', '200', '6', '7', '3', '3', 'purpur', 'http://de.wikipedia.org/wiki/Rosa_villosa', 'http://upload.wikimedia.org/wikipedia/commons/c/c1/Rosa_villosa.jpg'),
(187, 7, 10240, 1365280373, 'Rose, Bastard-, Kriech-', 'Rosa polyantha', '1', 3, '1,2,3', '3', '50', '100', '5', '7', '3', '3', 'rosenrot', 'http://de.wikipedia.org/wiki/Rosa_polyantha', 'http://upload.wikimedia.org/wikipedia/commons/8/84/Rosa_multiflora_1.jpg'),
(188, 7, 10112, 1365280373, 'Rose, Bibernell-', 'Rosa pimpinellifolia', '1', 3, '1,2,3', '1,2', '100', '', '6', '7', '3', '3', 'blaßrosa', 'http://de.wikipedia.org/wiki/Rosa_pimpinellifolia', 'http://upload.wikimedia.org/wikipedia/commons/1/1a/Rosa_spinosissima.jpg'),
(189, 7, 9984, 1365280373, 'Rose, Blaugrüne, Vogesen-Rose', 'Rosa vosagiaca', '1', 3, '1,2,3', '1,2', '50', '200', '6', '7', '3', '3', 'milchweiß', 'http://de.wikipedia.org/wiki/Vogesen-Rose', 'http://upload.wikimedia.org/wikipedia/commons/e/e4/RosaDumalis1UME.jpg'),
(190, 7, 9856, 1365280373, 'Hecken-Rose', 'Rosa corymbifera', '1,2', 3, '1,2', '1', '200', '400', '6', '', '3', '3', 'hellrosa bis weiß', 'http://de.wikipedia.org/wiki/Rosa_corymbifera', 'http://upload.wikimedia.org/wikipedia/commons/0/03/Rosa_corymbifera.jpg'),
(191, 7, 9728, 1365280373, 'Rose, Déséglise', 'Rosa deseglisei', '1,2', 3, '1', '2', '50', '150', '6', '7', '3', '3', 'rosa', 'http://de.wikipedia.org/wiki/Rosen', 'http://upload.wikimedia.org/wikipedia/commons/2/26/Rosa_rugosa_Bluete.jpg'),
(192, 7, 9600, 1365280373, 'Rose, Essig-', 'Rosa gallica', '1', 3, '2,3', '1,2', '', '100', '700', '', '3', '3', 'weiß', 'http://de.wikipedia.org/wiki/Rosa_gallica', 'http://upload.wikimedia.org/wikipedia/commons/e/eb/Wild_Rosa_gallica_Romania.jpg'),
(193, 7, 9472, 1365280373, 'Rose, Feld-', 'Rosa agrestis', '2', 3, '2,3', '1,2', '100', '200', '6', '7', '3', '3', 'dunkelrot', 'http://de.wikipedia.org/wiki/Feld-Rose', 'http://upload.wikimedia.org/wikipedia/commons/c/c7/Rosa_arvensis.jpg'),
(194, 7, 9344, 1365280373, 'Rose, Filz-', 'Rosa tomentosa', '1,2', 3, '3', '1', '100', '200', '6', '7', '3', '3', 'weiß', 'http://de.wikipedia.org/wiki/Rosa_tomentosa', 'http://upload.wikimedia.org/wikipedia/commons/0/0e/Rosa_tomentosa_260611a.JPG'),
(195, 7, 9216, 1365280373, 'Rose, Griffel-', 'Rosa stylosa', '1', 3, '1', '1', '100', '300', '6', '7', '3', '3', 'weiß', '', ''),
(196, 7, 9088, 1365280374, 'Rose, Hunds-, Hecken-', 'Rosa canina', '1', 3, '1', '1', '100', '300', '6', '7', '3', '3', 'rosa', 'http://de.wikipedia.org/wiki/Rosa_canina', 'http://upload.wikimedia.org/wikipedia/commons/c/cc/Hundsrose.jpg'),
(197, 7, 8960, 1365280374, 'Rose, Keilblättrige', 'Rosa elliptica', '1', 3, '1', '1', '100', '200', '6', '7', '3', '3', 'rosa', 'http://de.wikipedia.org/wiki/Wildrosen', 'http://upload.wikimedia.org/wikipedia/commons/0/0d/Rosa_pendulina.jpg'),
(198, 7, 8832, 1365280374, 'Rose, Kleinblütige', 'Rosa micrantha', '1', 3, '1', '1', '200', '300', '6', '7', '3', '3', 'hellrosa', '', ''),
(199, 7, 8704, 1365280374, 'Rose, Kratz-', 'Rosa scabriuscula', '1,2', 3, '1', '1', '200', '300', '6', '7', '3', '3', 'hellrosa', '', ''),
(200, 7, 8576, 1365280374, 'Rose, Kriech-', 'Rosa arvensis', '1,2', 3, '3', '1,2', '50', '100', '6', '7', '3', '3', 'rosaweiß', 'http://de.wikipedia.org/wiki/Feld-Rose', 'http://commons.wikimedia.org/wiki/File:Rosa_arvensis.jpg'),
(201, 7, 8448, 1365280374, 'Rose, Lederblättrige', 'Rosa caesia', '1,2', 3, '1', '1', '100', '150', '6', '', '3', '3', 'weiß', '', ''),
(202, 7, 8320, 1365280374, 'Rose, Rauhblättrige', 'Rosa jundzillii', '1', 3, '3', '1', '100', '200', '6', '7', '3', '3', 'rosa', 'http://de.wikipedia.org/wiki/Rosa_jundzillii', ''),
(203, 7, 8192, 1365280374, 'Rose, Rotblättrige', 'Rosa glauca', '1', 3, '1', '1', '100', '300', '6', '8', '3', '3', 'dunkelrosa', 'http://de.wikipedia.org/wiki/Rosa_glauca', 'http://upload.wikimedia.org/wikipedia/commons/a/af/Rosa_glauca.jpg'),
(204, 7, 8064, 1365280374, 'Rose, Samt-', 'Rosa sherardii', '1,2', 3, '1', '1', '100', '200', '6', '7', '3', '3', 'rotweiß', 'http://de.wikipedia.org/wiki/Wildrosen', ''),
(205, 7, 7936, 1365280374, 'Rose, Stumpfblättrige', 'Rosa obtusifolia &#40;tomentella&#41;', '1,2', 3, '1', '1,2', '100', '200', '5', '7', '3', '4', 'rosa', 'http://de.wikipedia.org/wiki/Wildrosen', ''),
(206, 7, 7808, 1365280374, 'Rose, Wein-', 'Rosa rubiginosa', '1', 3, '1,3', '1', '100', '200', '6', '7', '3', '3', 'rosenrot', 'http://de.wikipedia.org/wiki/Rosa_rubiginosa', 'http://upload.wikimedia.org/wikipedia/commons/4/40/Rosa_eglanteria_img_3218.jpg'),
(207, 7, 7680, 1365280374, 'Rose, Zimt-', 'Rosa majalis', '1,2,3', 3, '1,2', '2,3', '100', '150', '5', '7', '3', '3', 'rosa', 'http://de.wikipedia.org/wiki/Rosa_majalis', 'http://upload.wikimedia.org/wikipedia/commons/6/61/Illustration_Rosa_majalis0.jpg');
INSERT INTO `tl_bk_bp_plants` (`id`, `pid`, `sorting`, `tstamp`, `name_de`, `name_bot`, `licht`, `rubrik`, `boden`, `feuchte`, `hoehe_ab`, `hoehe_bis`, `bluezeit_ab`, `bluezeit_bis`, `nektar`, `pollen`, `bluetenfarbe`, `wikipedia_link`, `image_wikimedia`) VALUES
(208, 7, 7552, 1365280374, 'Schneeball, Gemeiner', 'Viburnum opulus', '2', 3, '2,3', '2', '100', '500', '5', '6', '3', '4', 'gelb', 'http://de.wikipedia.org/wiki/Gemeiner_Schneeball', 'http://upload.wikimedia.org/wikipedia/commons/d/dd/Viburnum_opulus_B.jpg'),
(209, 7, 7424, 1365280374, 'Schneeball, Wolliger', 'Viburnum lantana', '1', 3, '1,3', '1,2', '100', '500', '5', '6', '4', '4', 'weiß', 'http://de.wikipedia.org/wiki/Viburnum_lantana', 'http://upload.wikimedia.org/wikipedia/commons/1/19/Viburnum_lantana_001.jpg'),
(210, 7, 7296, 1365280375, 'Schwarzdorn, Schlehe', 'Prunus spinosa', '1', 3, '1,3', '1', '300', '', '4', '5', '3', '2', 'weiß', 'http://de.wikipedia.org/wiki/Prunus_spinosa', 'http://upload.wikimedia.org/wikipedia/commons/3/31/Schlehenbl%C3%BCte_2009_6.JPG'),
(211, 7, 7168, 1365280375, 'Seidelbast, Gemeiner', 'Daphne mezereum', '2,3', 3, '2', '2,3', '100', '', '3', '4', '3', '3', 'rosa-rot', 'http://de.wikipedia.org/wiki/Daphne_mezereum', 'http://upload.wikimedia.org/wikipedia/commons/e/e2/Gewoehnlicher_Seidelbast_Daphne_mezereum.jpg'),
(212, 7, 7040, 1365280375, 'Stachelbeere', 'Ribes uva-crispa', '2', 3, '2,3', '3', '200', '', '4', '5', '2', '4', 'grün', 'http://de.wikipedia.org/wiki/Ribes_uva-crispa', 'http://upload.wikimedia.org/wikipedia/commons/d/d4/Ribes_uva-crispa_130405.jpg'),
(213, 7, 6912, 1365280375, 'Tamariske, Deutsche', 'Myricaria germanica', '1', 3, '1', '3', '50', '200', '5', '9', '4', '4', 'gelb', 'http://de.wikipedia.org/wiki/Myricaria_germanica', 'http://upload.wikimedia.org/wikipedia/commons/5/50/Myricaria_germanica_flowers.jpg'),
(214, 7, 6784, 1365280375, 'Waldgeißblatt, Deutsches', 'Lonicera periclymenum', '2,3', 3, '1', '3', '100', '1000', '6', '8', '3', '3', 'grün', 'http://de.wikipedia.org/wiki/Lonicera_periclymenum', 'http://upload.wikimedia.org/wikipedia/commons/3/3b/European_honeysuckle_800.jpg'),
(215, 7, 6656, 1365280375, 'Weide, Korb-', 'Salix viminalis', '1', 3, '1', '3', '', '400', '3', '4', '3', '3', 'gelb-grün', 'http://de.wikipedia.org/wiki/Salix_viminalis', 'http://upload.wikimedia.org/wikipedia/commons/a/ae/Salix_viminalis_006.jpg'),
(216, 7, 6528, 1365280375, 'Weide, Kübler-', 'Salix x smithiana', '1', 3, '1,2', '3', '300', '900', '3', '4', '1', '1', 'gelb-grün', 'http://de.wikipedia.org/wiki/Weiden_%28Botanik%29', 'http://upload.wikimedia.org/wikipedia/commons/e/ed/Willow_catkin_1_aka.jpg'),
(217, 7, 6400, 1365280375, 'Weide, Purpur-', 'Salix purpurea', '1', 3, '1,2', '2,3', '', '1000', '3', '4', '2', '2', 'gelb-grün', 'http://de.wikipedia.org/wiki/Salix_purpurea', 'http://upload.wikimedia.org/wikipedia/commons/2/20/Salix_purpurea_002.jpg'),
(218, 7, 6272, 1365280375, 'Weide, Reif-', 'Salix daphnoides', '1', 3, '1,2,3', '1,2,3', '300', '2000', '3', '4', '2', '2', 'gelb-grün', 'http://de.wikipedia.org/wiki/Salix_daphnoides', 'http://upload.wikimedia.org/wikipedia/commons/8/82/Salix_daphnoides_Bra62.png'),
(219, 7, 6144, 1365280375, 'Weide, Sal-', 'Salix caprea', '1,2,3', 3, '2', '2,3', '300', '900', '3', '4', '1', '1', 'gelb-grün', 'http://de.wikipedia.org/wiki/Salix_caprea', 'http://upload.wikimedia.org/wikipedia/commons/5/54/Salix_caprea_013.jpg'),
(220, 7, 6016, 1365280375, 'Weide, Grau-, Asch-', 'Salix cinerea', '1', 3, '1,2', '3', '150', '300', '3', '4', '3', '3', 'gelb-grün', 'http://de.wikipedia.org/wiki/Salix_cinerea', 'http://upload.wikimedia.org/wikipedia/commons/b/b1/Grauwe_wilg_%28Salix_cinerea%29.JPG'),
(221, 7, 5888, 1365280375, 'Weide, Ohr-, Öhrchen-', 'Salix aurita', '1,2', 3, '1,2', '3', '50', '200', '4', '5', '2', '2', 'gelb-grün', 'http://de.wikipedia.org/wiki/Salix_aurita', 'http://upload.wikimedia.org/wikipedia/commons/f/fe/Salix_aurita_007.jpg'),
(222, 7, 5760, 1365280375, 'Weißdorn, Eingriffliger', 'Crataegus monogyna', '1,2', 3, '1,2,3', '1,2,3', '100', '500', '5', '6', '3', '3', 'weiß', 'http://de.wikipedia.org/wiki/Crataegus_monogyna', 'http://upload.wikimedia.org/wikipedia/commons/c/c0/Common_hawthorn.jpg'),
(223, 7, 5632, 1365280375, 'Weißdorn, Zweigriffliger', 'Crataegus oxyacantha', '1,2,3', 3, '1,2,3', '1,2,3', '100', '500', '5', '6', '3', '3', 'weiß', 'http://de.wikipedia.org/wiki/Wei%C3%9Fdorne', 'http://upload.wikimedia.org/wikipedia/commons/f/f5/Crataegus_monogyna%2803%29.jpg'),
(224, 7, 5504, 1365280376, 'Zwergmispel, Gewöhnliche', 'Cotoneaster integerrimus', '1', 3, '1,3', '1', '60', '150', '4', '6', '2', '2', 'rosa', 'http://de.wikipedia.org/wiki/Cotoneaster_integerrimus', 'http://upload.wikimedia.org/wikipedia/commons/a/ae/COTONEASTER_INTEGERRIMUS_-_B%C3%92FIA-2.JPG'),
(225, 7, 5376, 1365275900, 'Ahorn, Berg-', 'Acer pseudo-platanus', '1', 1, '1,2', '2', '', '3000', '5', '', '1', '3', 'gelbgrün', 'http://de.wikipedia.org/wiki/Berg-Ahorn', 'http://upload.wikimedia.org/wikipedia/commons/3/3f/Acer_pseudoplatanus_infloresc_kz.JPG'),
(226, 7, 5248, 1365275900, 'Ahorn, Feld-', 'Acer campestre', '1,2,3', 1, '1,2', '1,2,3', '', '1500', '5', '', '3', '4', 'grünlich', 'http://de.wikipedia.org/wiki/Feld-Ahorn', 'http://upload.wikimedia.org/wikipedia/commons/a/a0/FeldahornBlatt.jpg'),
(227, 7, 5120, 1365275900, 'Ahorn, Spitz-', 'Acer platanoides', '1', 1, '1', '1,2', '', '3000', '4', '5', '2', '3', 'grüngelb', 'http://de.wikipedia.org/wiki/Spitzahorn', 'http://upload.wikimedia.org/wikipedia/commons/f/f3/Ahornbluete.jpg'),
(228, 7, 4992, 1365275900, 'Apfel', 'Malus spec.', '1', 1, '1,2', '2,3', '', '800', '4', '5', '1', '1', 'innen weiß, außen rosa', 'http://de.wikipedia.org/wiki/%C3%84pfel', 'http://upload.wikimedia.org/wikipedia/commons/a/ac/Malus_asiatica_1.jpg'),
(229, 7, 4864, 1365275900, 'Birke, Weiß-', 'Betula pendula', '1', 1, '1,2', '1,2', '', '2000', '4', '', '', '3', 'bräunl., grün', 'http://de.wikipedia.org/wiki/Wei%C3%9F-Birke', 'http://upload.wikimedia.org/wikipedia/commons/7/78/Illustration_Betula_pendula0.jpg'),
(230, 7, 4736, 1365275900, 'Birne, Kultur-', 'Pyrus communis', '1', 1, '1,2', '1,2', '', '1500', '4', '5', '2', '2', 'weiß', 'http://de.wikipedia.org/wiki/Kultur-Birne', 'http://upload.wikimedia.org/wikipedia/commons/2/2a/Illustration_Pyrus_communis0.jpg'),
(231, 7, 4608, 1365275901, 'Buche, Gemeine, Rot-', 'Fagus sylvatica', '1,2,3', 1, '1,2,3', '2', '1000', '4000', '4', '5', '', '3', 'unscheinbar', 'http://de.wikipedia.org/wiki/Rotbuche', 'http://upload.wikimedia.org/wikipedia/commons/1/17/Fagus_sylvatica_019.jpg'),
(232, 7, 4480, 1365275901, 'Eberesche, Gemeine, Vogelbeere', 'Sorbus aucuparia', '1,2,3', 1, '1,2,3', '1,2', '', '1500', '5', '6', '3', '3', 'gelbl-weiß', 'http://de.wikipedia.org/wiki/Vogelbeere', 'http://upload.wikimedia.org/wikipedia/commons/2/20/Ebereschebaum.jpg'),
(233, 7, 4352, 1365275901, 'Eibe, Gemeine', 'Taxus baccata', '1,2,3', 1, '3', '1', '', '1500', '3', '4', '', '2', 'grün', 'http://de.wikipedia.org/wiki/Europ%C3%A4ische_Eibe', 'http://upload.wikimedia.org/wikipedia/commons/6/65/Eibe.jpg'),
(234, 7, 4224, 1365275901, 'Eiche, Trauben-', 'Quercus petraea', '1,2', 1, '1,2', '2', '', '3500', '5', '6', '', '3', 'unscheinbar', 'http://de.wikipedia.org/wiki/Traubeneiche', 'http://upload.wikimedia.org/wikipedia/commons/8/89/Quercus_petraea_06.jpg'),
(235, 7, 4096, 1365275901, 'Eiche, Stiel-', 'Quercus robur', '1,2', 1, '1,2', '2', '', '4000', '5', '6', '', '3', 'unscheinbar', 'http://de.wikipedia.org/wiki/Stieleiche', 'http://upload.wikimedia.org/wikipedia/commons/6/65/Quercus_robur_early_flowers.jpg'),
(236, 7, 3968, 1365275901, 'Erle, Grau-', 'Alnus incana', '1,2', 1, '1,2,3', '2', '', '2500', '3', '4', '', '2', 'unscheinbar', 'http://de.wikipedia.org/wiki/Grau-Erle', 'http://upload.wikimedia.org/wikipedia/commons/f/fb/Alnus_incana_rugosa_leaves.jpg'),
(237, 7, 3840, 1365275901, 'Erle, Schwarz-, Rot-', 'Alnus glutinosa', '1,2', 1, '1,2', '2,3', '', '2000', '3', '4', '', '2', 'unscheinbar', 'http://de.wikipedia.org/wiki/Schwarz-Erle', 'http://upload.wikimedia.org/wikipedia/commons/6/64/Alnus_glutinosa_01_by-dpc.jpg'),
(238, 7, 3712, 1365275901, 'Esche, Gemeine', 'Fraxinus excelsior', '1,2,3', 1, '1,2', '2,3', '', '4000', '4', '5', '', '3', 'dunkelpurpur', 'http://de.wikipedia.org/wiki/Gemeine_Esche', 'http://upload.wikimedia.org/wikipedia/commons/4/43/IKAl_090920_Esche_Fr%C3%BCchte.jpg'),
(239, 7, 3584, 1365275901, 'Kastanie, Edel-, Eß-, Echte', 'Castanea sativa', '1', 1, '2', '2', '', '3000', '6', '7', '2', '2', 'gelbl. &#40;männl.&#41;', 'http://de.wikipedia.org/wiki/Edelkastanie', 'http://upload.wikimedia.org/wikipedia/commons/9/90/Castanea_sativa_20050703_433.jpg'),
(240, 7, 3456, 1365275901, 'Linde, Holländische', 'Tilia x vulgaris', '1,2,3', 1, '1,2', '2', '', '4000', '6', '7', '2', '4', 'gelblich', 'http://de.wikipedia.org/wiki/Holl%C3%A4ndische_Linde', 'http://upload.wikimedia.org/wikipedia/commons/2/2b/Tilia_x_vulgaris11.JPEG'),
(241, 7, 3328, 1365275901, 'Linde, Sommer-', 'Tilia platyphyllos', '1,2,3', 1, '1,2', '2', '', '4000', '6', '', '2', '4', 'gelblich', 'http://de.wikipedia.org/wiki/Sommerlinde', 'http://upload.wikimedia.org/wikipedia/commons/c/cf/Tilia_platyphyllos_004.jpg'),
(242, 7, 3200, 1365275901, 'Linde, Winter-, Stein-', 'Tilia cordata', '1,2,3', 1, '1,2', '2', '', '3200', '6', '7', '1', '4', 'gelblich', 'http://de.wikipedia.org/wiki/Winter-Linde', 'http://upload.wikimedia.org/wikipedia/commons/c/c9/Lime_tree.jpg'),
(243, 7, 3072, 1365275901, 'Mehlbeere, Echte', 'Sorbus aria', '1,2', 1, '1,2,3', '2,3', '', '1000', '5', '', '3', '3', 'weiß', 'http://de.wikipedia.org/wiki/Echte_Mehlbeere', 'http://upload.wikimedia.org/wikipedia/commons/3/38/Bl%C3%BChende_Mehlbeere.jpg'),
(244, 7, 2944, 1365275901, 'Mehlbeere, Schwedische', 'Sorbus intermedia', '1,2', 1, '1,2,3', '1,2', '', '1000', '5', '6', '3', '3', 'weißlich', 'http://de.wikipedia.org/wiki/Schwedische_Mehlbeere', 'http://upload.wikimedia.org/wikipedia/commons/3/39/Sorbus_intermedia_oxel.jpg'),
(245, 7, 2816, 1365275902, 'Pappel', 'Populus spec.', '1', 1, '1,2', '1,2', '1500', '3000', '5', '', '', '2', 'unscheinbar', 'http://de.wikipedia.org/wiki/Pappel', 'http://upload.wikimedia.org/wikipedia/commons/1/16/Populier_Populus_canadensis.jpg'),
(246, 7, 2688, 1365275902, 'Sauerkirsche, Weichsel', 'Cerasus vulgaris', '1', 1, '1,2', '1,2', '100', '1000', '4', '5', '1', '1', 'weiß', 'http://de.wikipedia.org/wiki/Sauerkirsche', 'http://upload.wikimedia.org/wikipedia/commons/e/e4/Illustration_Prunus_cerasus0.jpg'),
(247, 7, 2560, 1365275902, 'Steinweichsel, Felsenkirsche', 'Cerasus mahaleb', '1,2,3', 1, '1,2', '1,2', '200', '600', '5', '', '3', '3', 'weiß', 'http://de.wikipedia.org/wiki/Steinweichsel', 'http://upload.wikimedia.org/wikipedia/commons/d/d9/Weichselboom_bloemen_%28Prunus_mahaleb_flowers%29.jpg'),
(248, 7, 2432, 1365275902, 'Süßkirsche, Vogelkirsche', 'Cerasus avium', '1', 1, '1,2', '2', '200', '2500', '4', '5', '1', '1', 'weiß', 'http://de.wikipedia.org/wiki/Vogel-Kirsche', 'http://upload.wikimedia.org/wikipedia/commons/1/1c/S%C3%BC%C3%9Fkirsche_Prunus_avium.jpg'),
(249, 7, 2304, 1365275902, 'Traubenkirsche, Gemeine', 'Padus avium', '1,2,3', 1, '1,2', '2,3', '', '1000', '4', '5', '4', '4', 'Padus avium', 'http://de.wikipedia.org/wiki/Gew%C3%B6hnliche_Traubenkirsche', 'http://upload.wikimedia.org/wikipedia/commons/7/76/Prunus_padus_flos.jpg'),
(250, 7, 2176, 1365275902, 'Ulme', 'Ulmus spec.', '1,2', 1, '1,2', '2,3', '', '4000', '3', '4', '', '2', 'unscheinbar', 'http://de.wikipedia.org/wiki/Ulmen', 'http://upload.wikimedia.org/wikipedia/commons/9/95/Feldulme_%28Ulmus_minor%29.jpg'),
(251, 7, 2048, 1365275902, 'Walnuß, Echte', 'Juglans regia', '1', 1, '1,2', '2', '', '2500', '5', '', '', '3', 'grün', 'http://de.wikipedia.org/wiki/Echte_Walnuss', 'http://upload.wikimedia.org/wikipedia/commons/7/7f/Juglans_flower_female_20050526_064_part.jpg'),
(252, 7, 1920, 1365275902, 'Weide, Korb-', 'Salix viminalis', '1', 1, '1', '3', '', '400', '3', '4', '3', '3', 'gelb-grün', 'http://de.wikipedia.org/wiki/Korb-Weide', 'http://upload.wikimedia.org/wikipedia/commons/1/11/Salix_viminalis_002.jpg'),
(253, 7, 1792, 1365275902, 'Weide, Kübler-', 'Salix x smithiana', '1', 1, '1,2', '3', '300', '900', '3', '4', '1', '1', 'gelb-grün', 'http://de.wikipedia.org/wiki/Salicaceae', 'http://upload.wikimedia.org/wikipedia/commons/0/09/Illustration_Populus_tremula0.jpg'),
(254, 7, 1664, 1365275902, 'Weide, Purpur-', 'Salix purpurea', '1', 1, '1,2', '2,3', '', '1000', '3', '4', '2', '2', 'gelb-grün', 'http://de.wikipedia.org/wiki/Salix_purpurea', 'http://upload.wikimedia.org/wikipedia/commons/f/f3/Salix_purpurea_001.jpg'),
(255, 7, 1536, 1365275902, 'Weide, Reif-', 'Salix daphnoides', '1', 1, '1,2,3', '1,2,3', '300', '2000', '3', '4', '2', '2', 'gelb-grün', 'http://upload.wikimedia.org/wikipedia/commons/8/82/Salix_daphnoides_Bra62.png', 'http://de.wikipedia.org/wiki/Salix_daphnoides'),
(256, 7, 1408, 1365275902, 'Weide, Sal-', 'Salix caprea', '1,2,3', 1, '2', '2,3', '300', '900', '3', '4', '1', '1', 'gelb-grün', 'http://de.wikipedia.org/wiki/Salix_caprea', 'http://upload.wikimedia.org/wikipedia/commons/e/e9/Salix_caprea_036.jpg'),
(257, 7, 1280, 1365275902, 'Weide, Silber-, Kopf-', 'Salix alba', '1', 1, '1,2', '2,3', '300', '2500', '4', '5', '2', '2', 'silberweiße Kätzchen', 'http://de.wikipedia.org/wiki/Salix_alba', 'http://upload.wikimedia.org/wikipedia/commons/7/74/Salix_alba_012.jpg'),
(258, 7, 1152, 1365275902, 'Weide, Trauer-', 'Salix alba tristis', '1', 1, '1,2', '2,3', '300', '2500', '4', '5', '2', '2', 'silberweiße Kätzchen', 'http://de.wikipedia.org/wiki/Echte_Trauerweide', 'http://upload.wikimedia.org/wikipedia/commons/e/e9/Salix_babylonica_re.JPG'),
(260, 7, 1024, 1365271145, 'Bienenbaum,Samthaarige Stinkesche', 'Euodia hupehensis', '1', 2, '1,2', '2', '500', '1000', '8', '', '1', '2', 'weißlich', 'http://de.wikipedia.org/wiki/Samthaarige_Stinkesche', 'http://upload.wikimedia.org/wikipedia/commons/5/59/Evodia_hupehensis_a1.jpg'),
(261, 7, 896, 1365271145, 'Gleditschie, Christusdorn', 'Gleditsia triacanthos', '1', 2, '1,2', '1,2', '', '1800', '6', '7', '1', '4', 'grünlich', 'http://de.wikipedia.org/wiki/Amerikanische_Gleditschie', 'http://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Gleditsia_triacanthos_20050730_739.jpg/576px-Gleditsia_triacanthos_20050730_739.jpg'),
(262, 7, 768, 1365271145, 'Linde, Krim-', 'Tilia euchlora', '1', 2, '1,2', '2', '2000', '3000', '7', '', '2', '4', 'gelblich', 'http://de.wikipedia.org/wiki/Krim-Linde', 'http://upload.wikimedia.org/wikipedia/commons/8/89/Tilia_euchlora1.JPG'),
(263, 7, 640, 1365271145, 'Linde, Ungarische Silber-', 'Tilia tomentosa', '1', 2, '1,2', '2', '2000', '3000', '7', '', '2', '4', 'gelblich', 'http://de.wikipedia.org/wiki/Silber-Linde', 'http://upload.wikimedia.org/wikipedia/commons/1/16/Tilia-tomentosa.JPG'),
(264, 7, 512, 1365271145, 'Robinie, Gemeine', 'Robinia pseudoacacia', '1', 2, '1', '1', '1500', '2500', '6', '', '1', '4', 'weißlich', 'http://de.wikipedia.org/wiki/Gew%C3%B6hnliche_Robinie', 'http://upload.wikimedia.org/wikipedia/commons/8/86/Robina9146.JPG'),
(265, 7, 384, 1365271145, 'Roßkastanie, Gemeine', 'Aesculus hippocastanum', '1,2,3', 2, '1,2', '1,2', '', '1000', '5', '6', '2', '2', 'weißlich rot', 'http://de.wikipedia.org/wiki/Gew%C3%B6hnliche_Rosskastanie', 'http://upload.wikimedia.org/wikipedia/commons/6/63/Aesculus_hippocastanum_21.jpg'),
(266, 7, 256, 1365271146, 'Roßkastanie, Rote', 'Aesculus x carnea', '1,2', 2, '1,2', '1,2', '', '2000', '5', '', '2', '2', 'hell- bis dunkelrot', 'http://de.wikipedia.org/wiki/Rote_Rosskastanie', 'http://upload.wikimedia.org/wikipedia/commons/b/b8/Aesculus_pavia7.jpg'),
(267, 7, 128, 1365271146, 'Schnurbaum, Japanischer', 'Sophora japonica', '1', 2, '2', '1,2', '2000', '3000', '7', '8', '1', '3', 'gelblich weiß', 'http://de.wikipedia.org/wiki/Japanischer_Schnurbaum', 'http://upload.wikimedia.org/wikipedia/commons/1/18/Sophora_japonica_JPG2Fl.jpg');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_bk_bp_pollen`
--

CREATE TABLE `tl_bk_bp_pollen` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `sorting` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `text` varchar(255) NOT NULL default '',
  `kurz` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  default CHARSET=utf8;

--
-- Daten für Tabelle `tl_bk_bp_pollen`
--

INSERT INTO `tl_bk_bp_pollen` (`id`, `pid`, `sorting`, `tstamp`, `text`, `kurz`) VALUES
(1, 6, 128, 1365151915, 'sehr gut', '4'),
(2, 6, 256, 1365151921, 'gut', '3'),
(3, 6, 384, 1365151931, 'mäßig', '2'),
(4, 6, 512, 1365151938, 'gering', '1');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tl_bk_bp_categories`
--

CREATE TABLE `tl_bk_bp_categories` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `sorting` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `rubrik` varchar(255) NOT NULL default '',
  `alias` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  default CHARSET=utf8;

--
-- Daten für Tabelle `tl_bk_bp_categories`
--

INSERT INTO `tl_bk_bp_categories` (`id`, `pid`, `sorting`, `tstamp`, `rubrik`, `alias`) VALUES
(1, 1, 16, 1365201220, 'Einheimische Bäume', 'einheimische-baeume'),
(2, 1, 8, 1365203058, 'Eingebürgerte Bäume mit hohem Wert für nektar-und pollensammelnde Insekten', 'eingebuergerte-baeume'),
(3, 1, 32, 1365196234, 'Einheimische Sträucher', 'einheimische-straeucher'),
(4, 1, 64, 1365163031, 'Stauden, einheimisch, mehrjährig', 'stauden-einheimisch-mehrjaehrig');

