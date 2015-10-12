DROP TABLE IF EXISTS `complement_pluriel_point`;
CREATE TABLE `complement_pluriel_point` (
  `nom` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
LOCK TABLES `complement_pluriel_point` WRITE;
INSERT INTO `complement_pluriel_point` VALUES ('des cockpits.');
INSERT INTO `complement_pluriel_point` VALUES ('des cocktails.');
INSERT INTO `complement_pluriel_point` VALUES ('nos cocker dans leurs cockpits.');
INSERT INTO `complement_pluriel_point` VALUES ('leurs dedick-ass aux torse.');
UNLOCK TABLES;

DROP TABLE IF EXISTS `complement_pluriel_virgule`;
CREATE TABLE `complement_pluriel_virgule` (
  `nom` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
LOCK TABLES `complement_pluriel_virgule` WRITE;
INSERT INTO `complement_pluriel_virgule` VALUES ('avec les parents de Woodcock,');
INSERT INTO `complement_pluriel_virgule` VALUES ('avec les cocker de mon pere,');
UNLOCK TABLES;

DROP TABLE IF EXISTS `complement_singulier_point`;
CREATE TABLE `complement_singulier_point` (
  `nom` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
LOCK TABLES `complement_singulier_point` WRITE;
INSERT INTO `complement_singulier_point` VALUES ('son cocktail.'),('avec son cocker.'),('en asstiquant son cockpit.'),('un cocker qui vient du cockass... c\'est vraiment cockass.');
UNLOCK TABLES;

DROP TABLE IF EXISTS `complement_singulier_virgule`;
CREATE TABLE `complement_singulier_virgule` (
  `nom` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
LOCK TABLES `complement_singulier_virgule` WRITE;
INSERT INTO `complement_singulier_virgule` VALUES ('avec le frere de Dick,');
INSERT INTO `complement_singulier_virgule` VALUES ('mais en prenant un cocktail avec Paul,');
UNLOCK TABLES;

DROP TABLE IF EXISTS `nom_pluriel`;
CREATE TABLE `nom_pluriel` (
  `nom` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
LOCK TABLES `nom_pluriel` WRITE;
INSERT INTO `nom_pluriel` VALUES ('Tony Woodcock et Dick Rivers');
UNLOCK TABLES;

DROP TABLE IF EXISTS `nom_singulier`;
CREATE TABLE `nom_singulier` (
  `nom` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
LOCK TABLES `nom_singulier` WRITE;
INSERT INTO `nom_singulier` VALUES ('Dick Rivers'),('Il'),('Elle'),('Tony Woodcock'),('Ma mere'),('Mon pere'),('Paul');
UNLOCK TABLES;

DROP TABLE IF EXISTS `verbe_emotion_pluriel`;
CREATE TABLE `verbe_emotion_pluriel` (
  `nom` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
LOCK TABLES `verbe_emotion_pluriel` WRITE;
INSERT INTO `verbe_emotion_pluriel` VALUES ('aiment'),('souhaitent'),('veulent');
UNLOCK TABLES;

DROP TABLE IF EXISTS `verbe_emotion_singulier`;
CREATE TABLE `verbe_emotion_singulier` (
  `nom` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
LOCK TABLES `verbe_emotion_singulier` WRITE;
INSERT INTO `verbe_emotion_singulier` VALUES ('aime'),('souhaite'),('veux');
UNLOCK TABLES;

DROP TABLE IF EXISTS `verbe_pluriel`;
CREATE TABLE `verbe_pluriel` (
  `nom` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
LOCK TABLES `verbe_pluriel` WRITE;
INSERT INTO `verbe_pluriel` VALUES ('assument');
UNLOCK TABLES;

DROP TABLE IF EXISTS `verbe_singulier`;
CREATE TABLE `verbe_singulier` (
  `nom` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
LOCK TABLES `verbe_singulier` WRITE;
INSERT INTO `verbe_singulier` VALUES ('mange'),('goute'),('dedickass');
UNLOCK TABLES;

DROP TABLE IF EXISTS `verbe_infinitif`;
CREATE TABLE `verbe_infinitif` (
  `nom` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
LOCK TABLES `verbe_infinitif` WRITE;
INSERT INTO `verbe_infinitif` VALUES ('manger'),('gouter'),('dedickasser');
UNLOCK TABLES;
