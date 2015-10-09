
DROP TABLE IF EXISTS `complement_pluriel`;
CREATE TABLE `complement_pluriel` (
  `nom` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `complement_pluriel` WRITE;
INSERT INTO `complement_pluriel` VALUES ('ses cockpits');
UNLOCK TABLES;

DROP TABLE IF EXISTS `complement_singulier`;
CREATE TABLE `complement_singulier` (
  `nom` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `complement_singulier` WRITE;
INSERT INTO `complement_singulier` VALUES ('son cocktail'),('avec son cocker'),('asstique son cockpit'),('un cocker qui vient du cockass... c\'est vraiment cockass');
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
INSERT INTO `nom_singulier` VALUES ('Dick Rivers'),('Il'),('Elle'),('Tony Woodcock'),('Ma mère'),('Mon père'),('Paul');
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
INSERT INTO `verbe_singulier` VALUES ('mange'),('souhaite'),('veut');
UNLOCK TABLES;

