-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 07-05-2011 a las 12:50:10
-- Versión del servidor: 5.5.8
-- Versión de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `conocercat`
--
CREATE DATABASE `conocercat` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `conocercat`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jocs`
--

CREATE TABLE IF NOT EXISTS `jocs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nick` varchar(40) DEFAULT NULL,
  `preguntes` int(11) DEFAULT NULL,
  `correctes` int(11) DEFAULT NULL,
  `erronies` int(11) DEFAULT NULL,
  `nota` float DEFAULT NULL,
  `dia` datetime DEFAULT NULL,
  `dia_final` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=281 ;

--
-- Volcar la base de datos para la tabla `jocs`
--

INSERT INTO `jocs` (`id`, `nick`, `preguntes`, `correctes`, `erronies`, `nota`, `dia`, `dia_final`) VALUES
(271, 'coco13', 28, 23, 5, 82.14, '2011-05-07 14:06:59', '2011-05-07 14:48:33'),
(272, 'coco13', 10, 0, 0, 85, '2011-05-07 14:07:22', '2011-05-07 17:00:00'),
(273, 'coco13', 10, 0, 0, 85, '2011-05-07 14:08:16', '2011-05-07 17:00:00'),
(274, 'coco13', 10, 0, 0, 85, '2011-05-07 14:08:30', '2011-05-07 17:00:00'),
(275, 'coco13', 10, 0, 0, 85, '2011-05-07 14:08:42', '2011-05-07 17:00:00'),
(276, 'coco13', 0, 0, 0, 85, '2011-05-07 14:18:02', '2011-05-07 14:18:02'),
(277, 'coco13', 0, 0, 0, 85, '2011-05-07 14:18:10', '2011-05-07 14:18:10'),
(278, 'coco13', 0, 0, 0, 0, '2011-05-07 14:40:58', '2011-05-07 14:40:58'),
(279, 'coco13', 0, 0, 0, 0, '2011-05-07 14:46:52', '2011-05-07 14:46:52'),
(280, 'coco13', 0, 0, 0, 0, '2011-05-07 14:48:30', '2011-05-07 14:48:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipis`
--

CREATE TABLE IF NOT EXISTS `municipis` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `num_ok` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `municipis`
--

INSERT INTO `municipis` (`id`, `name`, `num_ok`) VALUES
(80018, 'Abrera', 0),
(80023, 'Aguilar de Segarra', 0),
(80039, 'Alella', 0),
(80044, 'Alpens', 0),
(80057, 'Ametlla del Vallès, l''', 0),
(80060, 'Arenys de Mar', 0),
(80076, 'Arenys de Munt', 0),
(80082, 'Argençola', 0),
(80095, 'Argentona', 0),
(80109, 'Artés', 0),
(80116, 'Avià', 0),
(80121, 'Avinyó', 0),
(80137, 'Avinyonet del Penedès', 0),
(80142, 'Aiguafreda', 0),
(80155, 'Badalona', 0),
(80168, 'Bagà', 0),
(80174, 'Balenyà', 0),
(80180, 'Balsareny', 0),
(80193, 'Barcelona', 0),
(80207, 'Begues', 0),
(80214, 'Bellprat', 0),
(80229, 'Berga', 0),
(80235, 'Bigues i Riells', 0),
(80240, 'Borredà', 0),
(80253, 'Bruc, el', 0),
(80266, 'Brull, el', 0),
(80272, 'Cabanyes, les', 0),
(80288, 'Cabrera d''Anoia', 0),
(80291, 'Cabrera de Mar', 0),
(80305, 'Cabrils', 0),
(80312, 'Calaf', 0),
(80327, 'Caldes d''Estrac', 0),
(80333, 'Caldes de Montbui', 0),
(80348, 'Calders', 0),
(80351, 'Calella', 0),
(80364, 'Calonge de Segarra', 0),
(80370, 'Calldetenes', 0),
(80386, 'Callús', 0),
(80399, 'Campins', 0),
(80403, 'Canet de Mar', 0),
(80410, 'Canovelles', 0),
(80425, 'Cànoves i Samalús', 0),
(80431, 'Canyelles', 0),
(80446, 'Capellades', 0),
(80459, 'Capolat', 0),
(80462, 'Cardedeu', 0),
(80478, 'Cardona', 0),
(80484, 'Carme', 0),
(80497, 'Casserres', 0),
(80500, 'Castellar del Riu', 0),
(80517, 'Castellar del Vallès', 0),
(80522, 'Castellar de n''Hug', 0),
(80538, 'Castellbell i el Vilar', 0),
(80543, 'Castellbisbal', 0),
(80556, 'Castellcir', 0),
(80569, 'Castelldefels', 0),
(80575, 'Castell de l''Areny', 0),
(80581, 'Castellet i la Gornal', 0),
(80594, 'Castellfollit del Boix', 0),
(80608, 'Castellfollit de Riubregós', 0),
(80615, 'Castellgalí', 0),
(80620, 'Castellnou de Bages', 0),
(80636, 'Castellolí', 0),
(80641, 'Castellterçol', 0),
(80654, 'Castellví de la Marca', 0),
(80667, 'Castellví de Rosanes', 0),
(80673, 'Centelles', 0),
(80689, 'Cervelló', 0),
(80692, 'Collbató', 0),
(80706, 'Collsuspina', 0),
(80713, 'Copons', 0),
(80728, 'Corbera de Llobregat', 0),
(80734, 'Cornellà de Llobregat', 0),
(80749, 'Cubelles', 0),
(80752, 'Dosrius', 0),
(80765, 'Esparreguera', 0),
(80771, 'Esplugues de Llobregat', 0),
(80787, 'Espunyola, l''', 0),
(80790, 'Estany, l''', 0),
(80804, 'Fígols', 0),
(80811, 'Fogars de Montclús', 0),
(80826, 'Fogars de la Selva', 0),
(80832, 'Folgueroles', 0),
(80847, 'Fonollosa', 0),
(80850, 'Font-rubí', 0),
(80863, 'Franqueses del Vallès, les', 0),
(80879, 'Gallifa', 0),
(80885, 'Garriga, la', 0),
(80898, 'Gavà', 0),
(80902, 'Gaià', 0),
(80919, 'Gelida', 0),
(80924, 'Gironella', 0),
(80930, 'Gisclareny', 0),
(80945, 'Granada, la', 0),
(80958, 'Granera', 0),
(80961, 'Granollers', 0),
(80977, 'Gualba', 0),
(80983, 'Sant Salvador de Guardiola', 0),
(80996, 'Guardiola de Berguedà', 0),
(81000, 'Gurb', 0),
(81017, 'Hospitalet de Llobregat, l''', 0),
(81022, 'Igualada', 0),
(81038, 'Jorba', 0),
(81043, 'Llacuna, la', 0),
(81056, 'Llagosta, la', 0),
(81069, 'Llinars del Vallès', 0),
(81075, 'Lliçà d''Amunt', 0),
(81081, 'Lliçà de Vall', 0),
(81094, 'Lluçà', 0),
(81108, 'Malgrat de Mar', 0),
(81115, 'Malla', 0),
(81120, 'Manlleu', 0),
(81136, 'Manresa', 0),
(81141, 'Martorell', 0),
(81154, 'Martorelles', 0),
(81167, 'Masies de Roda, les', 0),
(81173, 'Masies de Voltregà, les', 0),
(81189, 'Masnou, el', 0),
(81192, 'Masquefa', 0),
(81206, 'Matadepera', 0),
(81213, 'Mataró', 0),
(81228, 'Mediona', 0),
(81234, 'Molins de Rei', 0),
(81249, 'Mollet del Vallès', 0),
(81252, 'Montcada i Reixac', 0),
(81265, 'Montgat', 0),
(81271, 'Monistrol de Montserrat', 0),
(81287, 'Monistrol de Calders', 0),
(81290, 'Muntanyola', 0),
(81304, 'Montclar', 0),
(81311, 'Montesquiu', 0),
(81326, 'Montmajor', 0),
(81332, 'Montmaneu', 0),
(81347, 'Figaró-Montmany', 0),
(81350, 'Montmeló', 0),
(81363, 'Montornès del Vallès', 0),
(81379, 'Montseny', 0),
(81385, 'Moià', 0),
(81398, 'Mura', 0),
(81402, 'Navarcles', 0),
(81419, 'Navàs', 0),
(81424, 'Nou de Berguedà, la', 0),
(81430, 'Òdena', 0),
(81445, 'Olvan', 0),
(81458, 'Olèrdola', 0),
(81461, 'Olesa de Bonesvalls', 0),
(81477, 'Olesa de Montserrat', 0),
(81483, 'Olivella', 0),
(81496, 'Olost', 0),
(81509, 'Orís', 0),
(81516, 'Oristà', 0),
(81521, 'Orpí', 0),
(81537, 'Òrrius', 0),
(81542, 'Pacs del Penedès', 0),
(81555, 'Palafolls', 0),
(81568, 'Palau-solità i Plegamans', 0),
(81574, 'Pallejà', 0),
(81580, 'Papiol, el', 0),
(81593, 'Parets del Vallès', 0),
(81607, 'Perafita', 0),
(81614, 'Piera', 0),
(81629, 'Hostalets de Pierola, els', 0),
(81635, 'Pineda de Mar', 0),
(81640, 'Pla del Penedès, el', 0),
(81653, 'Pobla de Claramunt, la', 0),
(81666, 'Pobla de Lillet, la', 0),
(81672, 'Polinyà', 0),
(81688, 'Pontons', 0),
(81691, 'Prat de Llobregat, el', 0),
(81705, 'Prats de Rei, els', 0),
(81712, 'Prats de Lluçanès', 0),
(81727, 'Premià de Mar', 0),
(81748, 'Puigdàlber', 0),
(81751, 'Puig-reig', 0),
(81764, 'Pujalt', 0),
(81770, 'Quar, la', 0),
(81786, 'Rajadell', 0),
(81799, 'Rellinars', 0),
(81803, 'Ripollet', 0),
(81810, 'Roca del Vallès, la', 0),
(81825, 'Pont de Vilomara i Rocafort, el', 0),
(81831, 'Roda de Ter', 0),
(81846, 'Rubí', 0),
(81859, 'Rubió', 0),
(81878, 'Sabadell', 0),
(81884, 'Sagàs', 0),
(81897, 'Sant Pere Sallavinera', 0),
(81901, 'Saldes', 0),
(81918, 'Sallent', 0),
(81923, 'Santpedor', 0),
(81939, 'Sant Iscle de Vallalta', 0),
(81944, 'Sant Adrià de Besòs', 0),
(81957, 'Sant Agustí de Lluçanès', 0),
(81960, 'Sant Andreu de la Barca', 0),
(81976, 'Sant Andreu de Llavaneres', 0),
(81982, 'Sant Antoni de Vilamajor', 0),
(81995, 'Sant Bartomeu del Grau', 0),
(82009, 'Sant Boi de Llobregat', 0),
(82016, 'Sant Boi de Lluçanès', 0),
(82021, 'Sant Celoni', 0),
(82037, 'Sant Cebrià de Vallalta', 0),
(82042, 'Sant Climent de Llobregat', 0),
(82055, 'Sant Cugat del Vallès', 0),
(82068, 'Sant Cugat Sesgarrigues', 0),
(82074, 'Sant Esteve de Palautordera', 0),
(82080, 'Sant Esteve Sesrovires', 0),
(82093, 'Sant Fost de Campsentelles', 0),
(82107, 'Sant Feliu de Codines', 0),
(82114, 'Sant Feliu de Llobregat', 0),
(82129, 'Sant Feliu Sasserra', 0),
(82135, 'Sant Fruitós de Bages', 0),
(82140, 'Vilassar de Dalt', 0),
(82153, 'Sant Hipòlit de Voltregà', 0),
(82166, 'Sant Jaume de Frontanyà', 0),
(82172, 'Sant Joan Despí', 0),
(82188, 'Sant Joan de Vilatorrada', 0),
(82191, 'Vilassar de Mar', 0),
(82205, 'Sant Julià de Vilatorta', 0),
(82212, 'Sant Just Desvern', 0),
(82227, 'Sant Llorenç d''Hortons', 0),
(82233, 'Sant Llorenç Savall', 0),
(82248, 'Sant Martí de Centelles', 0),
(82251, 'Sant Martí d''Albars', 0),
(82264, 'Sant Martí de Tous', 0),
(82270, 'Sant Martí Sarroca', 0),
(82286, 'Sant Martí Sesgueioles', 0),
(82299, 'Sant Mateu de Bages', 0),
(82303, 'Premià de Dalt', 0),
(82310, 'Sant Pere de Ribes', 0),
(82325, 'Sant Pere de Riudebitlles', 0),
(82331, 'Sant Pere de Torelló', 0),
(82346, 'Sant Pere de Vilamajor', 0),
(82359, 'Sant Pol de Mar', 0),
(82362, 'Sant Quintí de Mediona', 0),
(82378, 'Sant Quirze de Besora', 0),
(82384, 'Sant Quirze del Vallès', 0),
(82397, 'Sant Quirze Safaja', 0),
(82401, 'Sant Sadurní d''Anoia', 0),
(82418, 'Sant Sadurní d''Osormort', 0),
(82423, 'Marganell', 0),
(82439, 'Santa Cecília de Voltregà', 0),
(82444, 'Santa Coloma de Cervelló', 0),
(82457, 'Santa Coloma de Gramenet', 0),
(82460, 'Santa Eugènia de Berga', 0),
(82476, 'Santa Eulàlia de Riuprimer', 0),
(82482, 'Santa Eulàlia de Ronçana', 0),
(82495, 'Santa Fe del Penedès', 0),
(82508, 'Santa Margarida de Montbui', 0),
(82515, 'Santa Margarida i els Monjos', 0),
(82520, 'Barberà del Vallès', 0),
(82536, 'Santa Maria de Besora', 0),
(82541, 'Santa Maria de Corcó', 0),
(82554, 'Santa Maria de Merlès', 0),
(82567, 'Santa Maria de Martorelles', 0),
(82573, 'Santa Maria de Miralles', 0),
(82589, 'Santa Maria d''Oló', 0),
(82592, 'Santa Maria de Palautordera', 0),
(82606, 'Santa Perpètua de Mogoda', 0),
(82613, 'Santa Susanna', 0),
(82628, 'Sant Vicenç de Castellet', 0),
(82634, 'Sant Vicenç dels Horts', 0),
(82649, 'Sant Vicenç de Montalt', 0),
(82652, 'Sant Vicenç de Torelló', 0),
(82665, 'Cerdanyola del Vallès', 0),
(82671, 'Sentmenat', 0),
(82687, 'Cercs', 0),
(82690, 'Seva', 0),
(82704, 'Sitges', 0),
(82711, 'Sobremunt', 0),
(82726, 'Sora', 0),
(82732, 'Subirats', 0),
(82747, 'Súria', 0),
(82750, 'Tavèrnoles', 0),
(82763, 'Tagamanent', 0),
(82779, 'Talamanca', 0),
(82785, 'Taradell', 0),
(82798, 'Terrassa', 0),
(82802, 'Tavertet', 0),
(82819, 'Teià', 0),
(82824, 'Tiana', 0),
(82830, 'Tona', 0),
(82845, 'Tordera', 0),
(82858, 'Torelló', 0),
(82861, 'Torre de Claramunt, la', 0),
(82877, 'Torrelavit', 0),
(82883, 'Torrelles de Foix', 0),
(82896, 'Torrelles de Llobregat', 0),
(82900, 'Ullastrell', 0),
(82917, 'Vacarisses', 0),
(82922, 'Vallbona d''Anoia', 0),
(82938, 'Vallcebre', 0),
(82943, 'Vallgorguina', 0),
(82956, 'Vallirana', 0),
(82969, 'Vallromanes', 0),
(82975, 'Veciana', 0),
(82981, 'Vic', 0),
(82994, 'Vilada', 0),
(83008, 'Viladecavalls', 0),
(83015, 'Viladecans', 0),
(83020, 'Vilanova del Camí', 0),
(83036, 'Vilanova de Sau', 0),
(83041, 'Vilobí del Penedès', 0),
(83054, 'Vilafranca del Penedès', 0),
(83067, 'Vilalba Sasserra', 0),
(83073, 'Vilanova i la Geltrú', 0),
(83089, 'Viver i Serrateix', 0),
(89019, 'Rupit i Pruit', 0),
(89024, 'Vilanova del Vallès', 0),
(89030, 'Sant Julià de Cerdanyola', 0),
(89045, 'Badia del Vallès', 0),
(89058, 'Palma de Cervelló, la', 0),
(170010, 'Agullana', 0),
(170025, 'Aiguaviva', 0),
(170031, 'Albanyà', 0),
(170046, 'Albons', 0),
(170059, 'Far d''Empordà, el', 0),
(170062, 'Alp', 0),
(170078, 'Amer', 0),
(170084, 'Anglès', 0),
(170097, 'Arbúcies', 0),
(170101, 'Argelaguer', 0),
(170118, 'Armentera, l''', 0),
(170123, 'Avinyonet de Puigventós', 0),
(170139, 'Begur', 0),
(170144, 'Vajol, la', 0),
(170157, 'Banyoles', 0),
(170160, 'Bàscara', 0),
(170182, 'Bellcaire d''Empordà', 0),
(170195, 'Besalú', 0),
(170209, 'Bescanó', 0),
(170216, 'Beuda', 0),
(170221, 'Bisbal d''Empordà, la', 0),
(170237, 'Blanes', 0),
(170242, 'Bolvir', 0),
(170255, 'Bordils', 0),
(170268, 'Borrassà', 0),
(170274, 'Breda', 0),
(170280, 'Brunyola', 0),
(170293, 'Boadella i les Escaules', 0),
(170307, 'Cabanes', 0),
(170314, 'Cabanelles', 0),
(170329, 'Cadaqués', 0),
(170335, 'Caldes de Malavella', 0),
(170340, 'Calonge', 0),
(170353, 'Camós', 0),
(170366, 'Campdevànol', 0),
(170372, 'Campelles', 0),
(170388, 'Campllong', 0),
(170391, 'Camprodon', 0),
(170405, 'Canet d''Adri', 0),
(170412, 'Cantallops', 0),
(170427, 'Capmany', 0),
(170433, 'Queralbs', 0),
(170448, 'Cassà de la Selva', 0),
(170464, 'Castellfollit de la Roca', 0),
(170470, 'Castelló d''Empúries', 0),
(170486, 'Castell-Platja d''Aro', 0),
(170499, 'Celrà', 0),
(170502, 'Cervià de Ter', 0),
(170519, 'Cistella', 0),
(170524, 'Siurana', 0),
(170545, 'Colera', 0),
(170558, 'Colomers', 0),
(170561, 'Cornellà del Terri', 0),
(170577, 'Corçà', 0),
(170583, 'Crespià', 0),
(170600, 'Darnius', 0),
(170617, 'Das', 0),
(170622, 'Escala, l''', 0),
(170638, 'Espinelves', 0),
(170643, 'Espolla', 0),
(170656, 'Esponellà', 0),
(170669, 'Figueres', 0),
(170675, 'Flaçà', 0),
(170681, 'Foixà', 0),
(170694, 'Fontanals de Cerdanya', 0),
(170708, 'Fontanilles', 0),
(170715, 'Fontcoberta', 0),
(170736, 'Fornells de la Selva', 0),
(170741, 'Fortià', 0),
(170754, 'Garrigàs', 0),
(170767, 'Garrigoles', 0),
(170773, 'Garriguella', 0),
(170789, 'Ger', 0),
(170792, 'Girona', 0),
(170806, 'Gombrèn', 4),
(170813, 'Gualta', 0),
(170828, 'Guils de Cerdanya', 0),
(170834, 'Hostalric', 0),
(170849, 'Isòvol', 0),
(170852, 'Jafre', 0),
(170865, 'Jonquera, la', 0),
(170871, 'Juià', 0),
(170887, 'Lladó', 0),
(170890, 'Llagostera', 0),
(170904, 'Llambilles', 0),
(170911, 'Llanars', 0),
(170926, 'Llançà', 0),
(170932, 'Llers', 0),
(170947, 'Llívia', 0),
(170950, 'Lloret de Mar', 0),
(170963, 'Llosses, les', 0),
(170979, 'Madremanya', 0),
(170985, 'Maià de Montcal', 0),
(170998, 'Meranges', 0),
(171002, 'Masarac', 0),
(171019, 'Massanes', 0),
(171024, 'Maçanet de Cabrenys', 0),
(171030, 'Maçanet de la Selva', 0),
(171058, 'Mieres', 0),
(171061, 'Mollet de Peralada', 0),
(171077, 'Molló', 0),
(171096, 'Montagut i Oix', 0),
(171100, 'Mont-ras', 0),
(171117, 'Navata', 0),
(171122, 'Ogassa', 0),
(171143, 'Olot', 0),
(171156, 'Ordis', 0),
(171169, 'Osor', 0),
(171175, 'Palafrugell', 0),
(171181, 'Palamós', 0),
(171194, 'Palau de Santa Eulàlia', 0),
(171208, 'Palau-saverdera', 0),
(171215, 'Palau-sator', 0),
(171236, 'Palol de Revardit', 0),
(171241, 'Pals', 0),
(171254, 'Pardines', 0),
(171267, 'Parlavà', 0),
(171289, 'Pau', 0),
(171292, 'Pedret i Marzà', 0),
(171306, 'Pera, la', 0),
(171328, 'Peralada', 0),
(171334, 'Planes d''Hostoles, les', 0),
(171349, 'Planoles', 0),
(171352, 'Pont de Molins', 0),
(171365, 'Pontós', 0),
(171371, 'Porqueres', 0),
(171387, 'Portbou', 0),
(171390, 'Preses, les', 0),
(171404, 'Port de la Selva, el', 0),
(171411, 'Puigcerdà', 0),
(171426, 'Quart', 0),
(171432, 'Rabós', 0),
(171447, 'Regencós', 0),
(171450, 'Ribes de Freser', 0),
(171463, 'Riells i Viabrea', 0),
(171479, 'Ripoll', 0),
(171485, 'Riudarenes', 0),
(171498, 'Riudaura', 0),
(171501, 'Riudellots de la Selva', 0),
(171518, 'Riumors', 0),
(171523, 'Roses', 0),
(171539, 'Rupià', 0),
(171544, 'Sales de Llierca', 0),
(171557, 'Salt', 0),
(171576, 'Sant Andreu Salou', 0),
(171582, 'Sant Climent Sescebes', 0),
(171595, 'Sant Feliu de Buixalleu', 0),
(171609, 'Sant Feliu de Guíxols', 0),
(171616, 'Sant Feliu de Pallerols', 0),
(171621, 'Sant Ferriol', 0),
(171637, 'Sant Gregori', 0),
(171642, 'Sant Hilari Sacalm', 0),
(171655, 'Sant Jaume de Llierca', 0),
(171668, 'Sant Jordi Desvalls', 0),
(171674, 'Sant Joan de les Abadesses', 0),
(171680, 'Sant Joan de Mollet', 0),
(171693, 'Sant Julià de Ramis', 0),
(171707, 'Vallfogona de Ripollès', 0),
(171714, 'Sant Llorenç de la Muga', 0),
(171729, 'Sant Martí de Llémena', 0),
(171735, 'Sant Martí Vell', 0),
(171740, 'Sant Miquel de Campmajor', 0),
(171753, 'Sant Miquel de Fluvià', 0),
(171766, 'Sant Mori', 0),
(171772, 'Sant Pau de Segúries', 1),
(171788, 'Sant Pere Pescador', 0),
(171805, 'Santa Coloma de Farners', 0),
(171812, 'Santa Cristina d''Aro', 0),
(171827, 'Santa Llogaia d''Àlguema', 0),
(171833, 'Sant Aniol de Finestres', 0),
(171848, 'Santa Pau', 0),
(171851, 'Sant Joan les Fonts', 0),
(171864, 'Sarrià de Ter', 0),
(171870, 'Saus, Camallera i Llampaies', 0),
(171886, 'Selva de Mar, la', 0),
(171899, 'Cellera de Ter, la', 0),
(171903, 'Serinyà', 0),
(171910, 'Serra de Daró', 0),
(171925, 'Setcases', 0),
(171931, 'Sils', 0),
(171946, 'Susqueda', 0),
(171959, 'Tallada d''Empordà, la', 0),
(171962, 'Terrades', 0),
(171978, 'Torrent', 0),
(171984, 'Torroella de Fluvià', 0),
(171997, 'Torroella de Montgrí', 4),
(172001, 'Tortellà', 0),
(172018, 'Toses', 0),
(172023, 'Tossa de Mar', 0),
(172039, 'Ultramort', 0),
(172044, 'Ullà', 0),
(172057, 'Ullastret', 0),
(172060, 'Urús', 0),
(172076, 'Vall d''en Bas, la', 0),
(172082, 'Vall de Bianya, la', 0),
(172095, 'Vall-llobrega', 0),
(172109, 'Ventalló', 0),
(172116, 'Verges', 0),
(172121, 'Vidrà', 0),
(172137, 'Vidreres', 0),
(172142, 'Vilabertran', 0),
(172155, 'Vilablareix', 0),
(172168, 'Viladasens', 0),
(172174, 'Viladamat', 0),
(172180, 'Vilademuls', 0),
(172207, 'Viladrau', 0),
(172214, 'Vilafant', 0),
(172229, 'Vilaür', 0),
(172235, 'Vilajuïga', 0),
(172240, 'Vilallonga de Ter', 0),
(172253, 'Vilamacolum', 0),
(172266, 'Vilamalla', 0),
(172272, 'Vilamaniscle', 0),
(172288, 'Vilanant', 0),
(172305, 'Vila-sacra', 0),
(172327, 'Vilopriu', 0),
(172333, 'Vilobí d''Onyar', 0),
(172348, 'Biure', 0),
(179011, 'Cruïlles, Monells i Sant Sadurní de l''Heura', 0),
(179026, 'Forallac', 0),
(179032, 'Sant Julià del Llor i Bonmatí', 0),
(250019, 'Abella de la Conca', 0),
(250024, 'Àger', 0),
(250030, 'Agramunt', 0),
(250045, 'Alamús, els', 0),
(250058, 'Alàs i Cerc', 0),
(250061, 'Albagés, l''', 0),
(250077, 'Albatàrrec', 0),
(250083, 'Albesa', 0),
(250096, 'Albi, l''', 0),
(250100, 'Alcanó', 0),
(250117, 'Alcarràs', 0),
(250122, 'Alcoletge', 0),
(250138, 'Alfarràs', 0),
(250143, 'Alfés', 0),
(250156, 'Algerri', 0),
(250169, 'Alguaire', 0),
(250175, 'Alins', 6),
(250194, 'Almacelles', 0),
(250208, 'Almatret', 0),
(250215, 'Almenar', 0),
(250220, 'Alòs de Balaguer', 4),
(250236, 'Alpicat', 0),
(250241, 'Alt Àneu', 0),
(250254, 'Naut Aran', 0),
(250273, 'Anglesola', 0),
(250292, 'Arbeca', 0),
(250306, 'Pont de Bar, el', 0),
(250313, 'Arres', 0),
(250328, 'Arsèguel', 0),
(250334, 'Artesa de Lleida', 0),
(250349, 'Artesa de Segre', 0),
(250352, 'Sentiu de Sió, la', 0),
(250365, 'Aspa', 0),
(250371, 'Avellanes i Santa Linya, les', 4),
(250387, 'Aitona', 0),
(250390, 'Baix Pallars', 0),
(250404, 'Balaguer', 0),
(250411, 'Barbens', 0),
(250426, 'Baronia de Rialb, la', 0),
(250432, 'Vall de Boí, la', 0),
(250447, 'Bassella', 0),
(250450, 'Bausen', 0),
(250463, 'Belianes', 0),
(250479, 'Bellcaire d''Urgell', 0),
(250485, 'Bell-lloc d''Urgell', 0),
(250498, 'Bellmunt d''Urgell', 0),
(250501, 'Bellpuig', -4),
(250518, 'Bellver de Cerdanya', 0),
(250523, 'Bellvís', 0),
(250539, 'Benavent de Segrià', 0),
(250557, 'Biosca', 0),
(250560, 'Bovera', 0),
(250576, 'Bòrdes, Es', 0),
(250582, 'Borges Blanques, les', 0),
(250595, 'Bossòst', 0),
(250609, 'Cabanabona', 0),
(250616, 'Cabó', 0),
(250621, 'Camarasa', 0),
(250637, 'Canejan', 2),
(250642, 'Castellar de la Ribera', 0),
(250674, 'Castelldans', 0),
(250680, 'Castellnou de Seana', 0),
(250693, 'Castelló de Farfanya', 0),
(250707, 'Castellserà', 0),
(250714, 'Cava', 0),
(250729, 'Cervera', 0),
(250735, 'Cervià de les Garrigues', 0),
(250740, 'Ciutadilla', 0),
(250753, 'Clariana de Cardener', 4),
(250766, 'Cogul, el', 0),
(250772, 'Coll de Nargó', 0),
(250788, 'Corbins', 0),
(250791, 'Cubells', 0),
(250812, 'Espluga Calba, l''', 0),
(250827, 'Espot', 1),
(250851, 'Estaràs', 0),
(250864, 'Esterri d''Àneu', 0),
(250870, 'Esterri de Cardós', 0),
(250886, 'Estamariu', 0),
(250899, 'Farrera', 0),
(250925, 'Floresta, la', 0),
(250931, 'Fondarella', 0),
(250946, 'Foradada', 0),
(250962, 'Fuliola, la', 0),
(250978, 'Fulleda', 0),
(250984, 'Gavet de la Conca', 0),
(250997, 'Golmés', 0),
(251001, 'Gósol', 0),
(251018, 'Granadella, la', 0),
(251023, 'Granja d''Escarp, la', 0),
(251039, 'Granyanella', 0),
(251044, 'Granyena de Segarra', 0),
(251057, 'Granyena de les Garrigues', 0),
(251095, 'Guimerà', 0),
(251109, 'Guissona', 0),
(251116, 'Guixers', 0),
(251121, 'Ivars de Noguera', 0),
(251137, 'Ivars d''Urgell', 0),
(251142, 'Ivorra', 0),
(251155, 'Isona i Conca Dellà', 0),
(251180, 'Juncosa', 0),
(251193, 'Juneda', 0),
(251207, 'Lleida', 0),
(251214, 'Les', 0),
(251229, 'Linyola', 0),
(251235, 'Lladorre', 0),
(251240, 'Lladurs', 0),
(251253, 'Llardecans', 0),
(251266, 'Llavorsí', 0),
(251272, 'Lles de Cerdanya', -4),
(251288, 'Llimiana', 0),
(251291, 'Llobera', 0),
(251305, 'Maldà', 2),
(251312, 'Massalcoreig', 0),
(251327, 'Massoteres', 0),
(251333, 'Maials', 0),
(251348, 'Menàrguens', 0),
(251351, 'Miralcamp', 0),
(251364, 'Molsosa, la', 0),
(251370, 'Mollerussa', 0),
(251386, 'Montgai', 0),
(251399, 'Montellà i Martinet', 0),
(251403, 'Montferrer i Castellbò', 0),
(251410, 'Montoliu de Segarra', 0),
(251425, 'Montoliu de Lleida', 0),
(251431, 'Montornès de Segarra', 0),
(251459, 'Nalec', 0),
(251462, 'Navès', 0),
(251484, 'Odèn', 0),
(251497, 'Oliana', 0),
(251500, 'Oliola', 0),
(251517, 'Olius', 0),
(251522, 'Oluges, les', 0),
(251538, 'Omellons, els', 0),
(251543, 'Omells de na Gaia, els', 0),
(251556, 'Organyà', 4),
(251569, 'Os de Balaguer', 0),
(251575, 'Ossó de Sió', 0),
(251581, 'Palau d''Anglesola, el', 0),
(251615, 'Conca de Dalt', 0),
(251636, 'Coma i la Pedra, la', 0),
(251641, 'Penelles', 0),
(251654, 'Peramola', 0),
(251667, 'Pinell de Solsonès', 0),
(251673, 'Pinós', 0),
(251689, 'Poal, el', 0),
(251692, 'Pobla de Cérvoles, la', 0),
(251706, 'Bellaguarda', 0),
(251713, 'Pobla de Segur, la', 0),
(251728, 'Ponts', 0),
(251734, 'Pont de Suert, el', 0),
(251749, 'Portella, la', 0),
(251752, 'Prats i Sansor', 0),
(251765, 'Preixana', 0),
(251771, 'Preixens', 0),
(251790, 'Prullans', 4),
(251804, 'Puiggròs', 0),
(251811, 'Puigverd d''Agramunt', 6),
(251826, 'Puigverd de Lleida', 0),
(251832, 'Rialp', 0),
(251850, 'Ribera d''Urgellet', 0),
(251863, 'Riner', 0),
(251898, 'Rosselló', 0),
(251902, 'Salàs de Pallars', 0),
(251919, 'Sanaüja', 0),
(251924, 'Sant Guim de Freixenet', 0),
(251930, 'Sant Llorenç de Morunys', 0),
(251945, 'Sant Ramon', 0),
(251961, 'Sant Esteve de la Sarga', 0),
(251977, 'Sant Guim de la Plana', 0),
(252000, 'Sarroca de Lleida', 0),
(252017, 'Sarroca de Bellera', 0),
(252022, 'Senterada', 0),
(252038, 'Seu d''Urgell, la', 0),
(252043, 'Seròs', 0),
(252056, 'Sidamon', 0),
(252069, 'Soleràs, el', 0),
(252075, 'Solsona', 0),
(252081, 'Soriguera', 0),
(252094, 'Sort', 0),
(252108, 'Soses', 0),
(252115, 'Sudanell', 0),
(252120, 'Sunyer', 0),
(252154, 'Talarn', 0),
(252167, 'Talavera', 0),
(252173, 'Tàrrega', 0),
(252189, 'Tarrés', 0),
(252192, 'Tarroja de Segarra', 0),
(252206, 'Térmens', 0),
(252213, 'Tírvia', 0),
(252228, 'Tiurana', 0),
(252234, 'Torà', 0),
(252249, 'Torms, els', 0),
(252252, 'Tornabous', 0),
(252265, 'Torrebesses', 0),
(252271, 'Torre de Cabdella, la', 0),
(252287, 'Torrefarrera', 0),
(252304, 'Torregrossa', 0),
(252311, 'Torrelameu', 0),
(252326, 'Torres de Segre', 0),
(252332, 'Torre-serona', 0),
(252347, 'Tremp', 0),
(252385, 'Vallbona de les Monges', 0),
(252398, 'Valls de Valira, les', 0),
(252402, 'Vallfogona de Balaguer', 0),
(252424, 'Verdú', 0),
(252430, 'Vielha e Mijaran', 0),
(252445, 'Vilagrassa', 0),
(252458, 'Vilaller', 0),
(252477, 'Vilamòs', 0),
(252483, 'Vilanova de Bellpuig', 0),
(252496, 'Vilanova de l''Aguda', 0),
(252509, 'Vilanova de Meià', 0),
(252516, 'Vilanova de Segrià', 0),
(252521, 'Vila-sana', 0),
(252537, 'Vilosell, el', 0),
(252542, 'Vilanova de la Barca', 0),
(252555, 'Vinaixa', 0),
(259010, 'Vall de Cardós', 0),
(259025, 'Sant Martí de Riucorb', 1),
(259031, 'Guingueta d''Àneu, la', 0),
(259046, 'Castell de Mur', 0),
(259059, 'Ribera d''Ondara', 0),
(259062, 'Valls d''Aguilar, les', 0),
(259078, 'Torrefeta i Florejacs', 0),
(259084, 'Fígols i Alinyà', 0),
(259097, 'Vansa i Fórnols, la', 0),
(259101, 'Josa i Tuixén', 0),
(259118, 'Plans de Sió, els', 0),
(259123, 'Gimenells i el Pla de la Font', 0),
(259139, 'Riu de Cerdanya', 0),
(430017, 'Aiguamúrcia', 0),
(430022, 'Albinyana', 0),
(430038, 'Albiol, l''', 0),
(430043, 'Alcanar', 0),
(430056, 'Alcover', 0),
(430069, 'Aldover', 0),
(430075, 'Aleixar, l''', 0),
(430081, 'Alfara de Carles', 0),
(430094, 'Alforja', 0),
(430108, 'Alió', 0),
(430115, 'Almoster', 0),
(430120, 'Altafulla', 0),
(430136, 'Ametlla de Mar, l''', 0),
(430141, 'Amposta', 0),
(430154, 'Arbolí', 0),
(430167, 'Arboç, l''', 0),
(430173, 'Argentera, l''', 0),
(430189, 'Arnes', 0),
(430192, 'Ascó', 0),
(430206, 'Banyeres del Penedès', 0),
(430213, 'Barberà de la Conca', 0),
(430228, 'Batea', 0),
(430234, 'Bellmunt del Priorat', 0),
(430249, 'Bellvei', 2),
(430252, 'Benifallet', 0),
(430265, 'Benissanet', 0),
(430271, 'Bisbal de Falset, la', 0),
(430287, 'Bisbal del Penedès, la', 0),
(430290, 'Blancafort', 0),
(430304, 'Bonastre', 0),
(430311, 'Borges del Camp, les', 0),
(430326, 'Bot', 0),
(430332, 'Botarell', 0),
(430347, 'Bràfim', 0),
(430350, 'Cabacés', 0),
(430363, 'Cabra del Camp', 0),
(430379, 'Calafell', 0),
(430385, 'Cambrils', 0),
(430398, 'Capafonts', 0),
(430402, 'Capçanes', 4),
(430419, 'Caseres', 0),
(430424, 'Castellvell del Camp', 0),
(430430, 'Catllar, el', 0),
(430445, 'Sénia, la', 0),
(430458, 'Colldejou', 0),
(430461, 'Conesa', 0),
(430477, 'Constantí', 0),
(430483, 'Corbera d''Ebre', 0),
(430496, 'Cornudella de Montsant', 0),
(430509, 'Creixell', 0),
(430516, 'Cunit', 0),
(430521, 'Xerta', 0),
(430537, 'Duesaigües', 0),
(430542, 'Espluga de Francolí, l''', 0),
(430555, 'Falset', 0),
(430568, 'Fatarella, la', 0),
(430574, 'Febró, la', 0),
(430580, 'Figuera, la', 0),
(430593, 'Figuerola del Camp', 0),
(430607, 'Flix', 0),
(430614, 'Forès', 0),
(430629, 'Freginals', 0),
(430635, 'Galera, la', 0),
(430640, 'Gandesa', 0),
(430653, 'Garcia', 0),
(430666, 'Garidells, els', 0),
(430672, 'Ginestar', 0),
(430688, 'Godall', 0),
(430691, 'Gratallops', 1),
(430705, 'Guiamets, els', 0),
(430712, 'Horta de Sant Joan', 0),
(430727, 'Lloar, el', 0),
(430733, 'Llorac', 0),
(430748, 'Llorenç del Penedès', 0),
(430751, 'Margalef', 0),
(430764, 'Marçà', 0),
(430770, 'Mas de Barberans', 0),
(430786, 'Masdenverge', 0),
(430799, 'Masllorenç', 0),
(430803, 'Masó, la', 0),
(430810, 'Maspujols', 0),
(430825, 'Masroig, el', 0),
(430831, 'Milà, el', 0),
(430846, 'Miravet', 0),
(430859, 'Molar, el', 0),
(430862, 'Montblanc', 0),
(430884, 'Montbrió del Camp', 0),
(430897, 'Montferri', 0),
(430901, 'Montmell, el', 0),
(430918, 'Mont-ral', 0),
(430923, 'Mont-roig del Camp', 0),
(430939, 'Móra d''Ebre', 0),
(430944, 'Móra la Nova', 0),
(430957, 'Morell, el', 0),
(430960, 'Morera de Montsant, la', 0),
(430976, 'Nou de Gaià, la', 0),
(430982, 'Nulles', 0),
(430995, 'Palma d''Ebre, la', 0),
(431009, 'Pallaresos, els', 0),
(431016, 'Passanant i Belltall', 4),
(431021, 'Paüls', 0),
(431037, 'Perafort', 0),
(431042, 'Perelló, el', 0),
(431055, 'Piles, les', 0),
(431068, 'Pinell de Brai, el', 0),
(431074, 'Pira', 0),
(431080, 'Pla de Santa Maria, el', 0),
(431093, 'Pobla de Mafumet, la', 0),
(431107, 'Pobla de Massaluca, la', 0),
(431114, 'Pobla de Montornès, la', 0),
(431129, 'Poboleda', 0),
(431135, 'Pont d''Armentera, el', 0),
(431140, 'Porrera', 0),
(431153, 'Pradell de la Teixeta', 0),
(431166, 'Prades', 0),
(431172, 'Prat de Comte', 0),
(431188, 'Pratdip', 0),
(431191, 'Puigpelat', 0),
(431205, 'Querol', 0),
(431212, 'Rasquera', 0),
(431227, 'Renau', 0),
(431233, 'Reus', 0),
(431248, 'Riba, la', 0),
(431251, 'Riba-roja d''Ebre', 0),
(431264, 'Riera de Gaià, la', 0),
(431270, 'Riudecanyes', 0),
(431286, 'Riudecols', 0),
(431299, 'Riudoms', 0),
(431303, 'Rocafort de Queralt', 0),
(431310, 'Roda de Barà', 0),
(431325, 'Rodonyà', 0),
(431331, 'Roquetes', 0),
(431346, 'Rourell, el', 0),
(431359, 'Salomó', 0),
(431362, 'Sant Carles de la Ràpita', 0),
(431378, 'Sant Jaume dels Domenys', 0),
(431384, 'Santa Bàrbara', 0),
(431397, 'Santa Coloma de Queralt', 0),
(431401, 'Santa Oliva', 0),
(431418, 'Pontils', 0),
(431423, 'Sarral', 0),
(431439, 'Savallà del Comtat', 0),
(431444, 'Secuita, la', 0),
(431457, 'Selva del Camp, la', 0),
(431460, 'Senan', 0),
(431476, 'Solivella', 0),
(431482, 'Tarragona', 0),
(431495, 'Tivenys', 0),
(431508, 'Tivissa', 0),
(431515, 'Torre de Fontaubella, la', 0),
(431520, 'Torre de l''Espanyol, la', 0),
(431536, 'Torredembarra', 0),
(431541, 'Torroja del Priorat', 0),
(431554, 'Tortosa', 0),
(431567, 'Ulldecona', 0),
(431573, 'Ulldemolins', 0),
(431589, 'Vallclara', 0),
(431592, 'Vallfogona de Riucorb', 0),
(431606, 'Vallmoll', 0),
(431613, 'Valls', 0),
(431628, 'Vandellòs i l''Hospitalet de l''Infant', 0),
(431634, 'Vendrell, el', 0),
(431649, 'Vespella de Gaià', 0),
(431652, 'Vilabella', 0),
(431665, 'Vilallonga del Camp', 0),
(431671, 'Vilanova d''Escornalbou', 0),
(431687, 'Vilanova de Prades', 0),
(431690, 'Vilaplana', 0),
(431704, 'Vila-rodona', 0),
(431711, 'Vila-seca', 0),
(431726, 'Vilaverd', 0),
(431732, 'Vilella Alta, la', 0),
(431747, 'Vilella Baixa, la', 0),
(431750, 'Vilalba dels Arcs', 0),
(431763, 'Vimbodí i Poblet', 4),
(431779, 'Vinebre', 0),
(431785, 'Vinyols i els Arcs', 0),
(439018, 'Deltebre', 0),
(439023, 'Sant Jaume d''Enveja', 0),
(439039, 'Camarles', 0),
(439044, 'Aldea, l''', 0),
(439057, 'Salou', 0),
(439060, 'Ampolla, l''', 0),
(439076, 'Canonja, la', 0);
