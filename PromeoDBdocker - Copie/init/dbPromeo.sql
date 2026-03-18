CREATE DATABASE  IF NOT EXISTS `promeo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `promeo`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: promeo
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bulletin`
--

DROP TABLE IF EXISTS `bulletin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bulletin` (
  `IdBul` int NOT NULL,
  `Trim_` int DEFAULT NULL,
  `Annee` int DEFAULT NULL,
  `NumE` int NOT NULL,
  PRIMARY KEY (`IdBul`),
  KEY `bulletin_ibfk_1_idx` (`NumE`),
  CONSTRAINT `bulletin_ibfk_1` FOREIGN KEY (`NumE`) REFERENCES `etudiant` (`NumE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bulletin`
--

LOCK TABLES `bulletin` WRITE;
/*!40000 ALTER TABLE `bulletin` DISABLE KEYS */;
INSERT INTO `bulletin` VALUES (1,1,2025,1),(2,1,2025,2),(3,1,2025,3),(4,1,2025,4),(5,1,2025,5),(6,1,2025,6),(7,1,2025,7),(8,1,2025,8),(9,1,2025,9),(10,1,2025,10),(11,1,2025,11),(12,1,2025,12),(13,1,2025,13),(14,1,2025,14),(15,1,2025,15),(16,1,2025,16),(17,1,2025,17),(18,1,2025,18),(19,1,2025,19),(21,1,2025,21),(22,1,2025,22),(23,1,2025,23),(24,1,2025,24),(25,1,2025,25),(26,1,2025,26),(27,1,2025,27),(28,1,2025,28),(29,1,2025,29),(30,1,2025,30),(31,1,2025,31),(32,1,2025,32),(33,1,2025,33),(34,1,2025,34),(35,1,2025,35),(36,1,2025,36),(37,1,2025,37),(38,1,2025,38),(39,1,2025,39),(40,1,2025,40),(41,1,2025,41),(42,1,2025,42),(43,1,2025,43),(44,1,2025,44),(45,1,2025,45),(46,1,2025,46),(47,1,2025,47),(48,1,2025,48),(49,1,2025,49),(50,1,2025,50),(51,1,2025,51),(52,1,2025,52),(53,1,2025,53),(54,1,2025,54),(55,1,2025,55),(56,1,2025,56),(57,1,2025,57),(58,1,2025,58),(59,1,2025,59),(60,1,2025,60),(61,1,2025,61),(62,1,2025,62),(63,1,2025,63),(64,1,2025,64),(65,1,2025,65),(66,1,2025,66),(67,1,2025,67),(68,1,2025,68),(69,1,2025,69),(70,1,2025,70),(71,1,2025,71),(72,1,2025,72),(73,1,2025,73),(74,1,2025,74),(75,1,2025,75),(76,1,2025,76),(77,1,2025,77);
/*!40000 ALTER TABLE `bulletin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cours`
--

DROP TABLE IF EXISTS `cours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cours` (
  `CodeC` int NOT NULL,
  `Intitule` varchar(50) DEFAULT NULL,
  `Coef` decimal(10,0) DEFAULT NULL,
  `NumF` int NOT NULL,
  `IdSec` int DEFAULT NULL,
  PRIMARY KEY (`CodeC`),
  KEY `IdSec` (`IdSec`),
  KEY `cours_ibfk_1_idx` (`NumF`),
  CONSTRAINT `cours_ibfk_1` FOREIGN KEY (`NumF`) REFERENCES `formateur` (`NumF`),
  CONSTRAINT `cours_ibfk_2` FOREIGN KEY (`IdSec`) REFERENCES `section` (`IdSec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cours`
--

LOCK TABLES `cours` WRITE;
/*!40000 ALTER TABLE `cours` DISABLE KEYS */;
INSERT INTO `cours` VALUES (1,'MATH',3,1,1),(2,'VIE SOCIAL',1,2,2),(3,'ECO SOCIAL',1,3,3),(4,'INFO',2,4,1),(5,'FRANCAIS',3,5,2),(6,'ANGLAIS',1,6,3),(7,'ALGO',2,7,1),(8,'DROIT',3,8,2),(9,'BUREAUTIQUE',1,9,3),(10,'ELECTRO',1,10,1),(11,'RESEAUX',2,13,1),(12,'BASES DE DONNEES',3,14,2),(13,'COMPTABILITE',2,15,3),(14,'MARKETING',1,16,4),(15,'GESTION DE PROJET',3,17,5),(16,'DEVELOPPEMENT WEB',2,18,6),(17,'CYBERSECURITE',3,19,1),(18,'COMMUNICATION',1,20,2),(19,'PHOTOGRAPHIE',1,21,3),(20,'ROBOTIQUE',2,22,4);
/*!40000 ALTER TABLE `cours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entreprise`
--

DROP TABLE IF EXISTS `entreprise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entreprise` (
  `IDEn` int NOT NULL,
  `RS` varchar(50) DEFAULT NULL,
  `Adresse` varchar(50) DEFAULT NULL,
  `Contact` varchar(50) DEFAULT NULL,
  `CP` char(10) DEFAULT NULL,
  `Ville` varchar(50) DEFAULT NULL,
  `Tel` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IDEn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entreprise`
--

LOCK TABLES `entreprise` WRITE;
/*!40000 ALTER TABLE `entreprise` DISABLE KEYS */;
INSERT INTO `entreprise` VALUES (1,'U-Boat','2 Place Grand rue','Noemie','02180','Mercaville','0323531267','Nomie.Noemie@gmail.com'),(2,'Cab Systeme','4 rue du temple','Henri','60000','Compiegne','0323531248','Henri.Henri@gmail.com'),(3,'123 Go','55 rue st georges','Lucas','02300','Chauny','0323531249','Lucas.Lucas@gmail.com'),(4,'Plastique nouveau','103 place degaule','Nopier','02200','Soissons','0323531250','Nopier.Nopier@gmail.com'),(5,'FIL Robert','78 impasse mille','Velli','60130','Couloisy','0323531251','Velli.Velli@gmail.com'),(6,'ABS','102 bld Ploc','Maurice','60100','Noyon','0323531252','Maurice.Maurice@gmail.com'),(7,'VPU','44 Avenue dureuille','Bertrant','60125','Verneuille','0323531253','Bertrans.Bertrant@gmail.com'),(8,'ATOS','12 rue libre','Mopa','77120','Seimart','0323531254','Mopa.Mopa@gmail.com'),(9,'Poclain','44 rue fine','Krilo','44520','Domin','0323531255','Krilo.Krilo@gmail.com'),(10,'Michel G','1 place general cluny','Marcel','78221','Pernon','0323531256','Marcel.Marcel@gmail.com'),(11,'LM Free','45 rue marcel','Vilmin','78200','Vermont','0323531257','Vilmin.Vilmin@gmail.com'),(12,'MiBi','12 rue pierre Libre','Dorin','60850','Blerancourt','0323531258','DorienDor@gmail.com'),(13,'C-Cab','2 rue de l\'impasse','Lucien','60150','Trosly','0323531259','Lucien.Lucien@gmail.com'),(14,'Topos','44 rue blanche','Pierre','60250','Usnin','0323531260','Pierre.Pierre@gmail.com'),(15,'BBT-IN','2 rue charpentier','Bernard','02532','Cluny','0323531261','Bernard.Bernard@gmail.com'),(16,'X2S','1 impasse robach','Marcel','60125','Bernoud-Ville','0323531262','Marcel.Marcel@gmail.com'),(17,'WabCab','44 bld JS Bazch','Jules','60200','Millant-Sur-Seine','0323531263','Jules.Jules@gmail.com'),(18,'Line T','11 rue lumiere','Yves','60310','Piotre','0323531264','Yves.Yves@gmail.com'),(19,'Free G','2 place Thierry','Kevin','60450','Verquille','0323531265','Kevin.Kevin@gmail.com'),(20,'Kav SARL','5 place de la mairie','Luc','60120','Vremont','0323535868','Contact.kav.sarl@laposte.net'),(21,'Libert','178 bvd Roland','stephanie','60480','Luly','0323531266','st.stephanie@gmail.com'),(22,'EBU','8 rue de la ville','Martin','60100','Noyon','0323531247','Martin.Martin@gmail.com'),(23,'EuroCom','12 rue des pins','Chloe','60000','Compiegne','0323531268','Chloe.Chloe@gmail.com'),(24,'TechNov','45 bld du commerce','Paul','02300','Chauny','0323531269','Paul.Paul@gmail.com'),(25,'Global Plast','22 rue de la Paix','Lea','02200','Soissons','0323531270','Lea.Lea@gmail.com'),(26,'Green Solutions','88 avenue du lac','Julien','60130','Couloisy','0323531271','Julien.Julien@gmail.com'),(27,'Aero Plus','10 avenue des lilas','Clara','60100','Noyon','0323531272','Clara.Clara@gmail.com'),(28,'Lumiere Moderne','5 rue des Etoiles','Vincent','60125','Verneuille','0323531273','Vincent.Vincent@gmail.com'),(29,'Info Syst','34 bld Jean Jaures','Marie','77120','Seimart','0323531274','Marie.Marie@gmail.com'),(30,'Carbone X','7 impasse du soleil','Axel','44520','Domin','0323531275','Axel.Axel@gmail.com'),(31,'Meca Precision','9 rue des Artisans','Anais','78221','Pernon','0323531276','Anais.Anais@gmail.com'),(32,'Cyber Connect','11 rue de la Gare','Florian','78200','Vermont','0323531277','Florian.Florian@gmail.com'),(33,'Hydro Clean','15 rue du Chateau','Emma','60850','Blerancourt','0323531278','Emma.Emma@gmail.com'),(34,'Metal Art','23 rue de la Foret','Olivier','60150','Trosly','0323531279','Olivier.Olivier@gmail.com'),(35,'Soudure Pro','67 avenue de la Plage','Alice','60250','Usnin','0323531280','Alice.Alice@gmail.com'),(36,'Electri Sol','14 rue du Pont','Marc','02532','Cluny','0323531281','Marc.Marc@gmail.com'),(37,'Axe Logistique','10 impasse des Champs','Sophie','60125','Bernoud-Ville','0323531282','Sophie.Sophie@gmail.com'),(38,'MobiLink','56 bld Foch','David','60200','Millant-Sur-Seine','0323531283','David.David@gmail.com'),(40,'Concept Bois','19 place de l\'Eglise','Nicolas','60450','Verquille','0323531285','Nicolas.Nicolas@gmail.com');
/*!40000 ALTER TABLE `entreprise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etudiant`
--

DROP TABLE IF EXISTS `etudiant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etudiant` (
  `NumE` int NOT NULL,
  `Nom` varchar(50) DEFAULT NULL,
  `Prenom` varchar(50) DEFAULT NULL,
  `Adresse` varchar(50) DEFAULT NULL,
  `CP` char(10) DEFAULT NULL,
  `Ville` varchar(50) DEFAULT NULL,
  `Tel` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `IDEn` int DEFAULT NULL,
  `IdSec` int DEFAULT NULL,
  PRIMARY KEY (`NumE`),
  KEY `etudiant_ibfk_1_idx` (`IDEn`),
  KEY `etudiant_ibfk_2` (`IdSec`),
  CONSTRAINT `etudiant_ibfk_2` FOREIGN KEY (`IdSec`) REFERENCES `section` (`IdSec`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etudiant`
--

LOCK TABLES `etudiant` WRITE;
/*!40000 ALTER TABLE `etudiant` DISABLE KEYS */;
INSERT INTO `etudiant` VALUES (1,'Laporte','Henri','4 rue de laplace','60100','Noyon','0323531212','Laporte.Henri@gmail.com',1,1),(2,'Ruisseau','Philippe','8 rue nouveau','60000','Compiegne','0323561213','Ruisseau.Philippe@gmail.com',2,2),(3,'Moulin','Jean','1 place Maarceau','02300','Chauny','0323531214','Moulin.Jean@gmail.com',3,3),(4,'Nopa','Mathieu','5 bld Fildor','02200','Soissons','0323531215','Nopa.Mathieu@gmail.com',4,1),(5,'Kiola','Octave','4 rue dormant','60130','Couloisy','0323541216','Kiola.Octave@gmail.com',5,2),(6,'Vagner','Alexandre','6 place boom','60100','Noyon','0323531217','Vagner.Alexandre@gmail.com',6,3),(7,'Bethove','Bertrand','56 bld Degaule','60000','Compiegne','0323531218','Bethove.Bertrand@gmail.com',7,1),(8,'Mivicco','Marc','21 rue st georges','02420','Besme','0323531219','Mivicco.Marc@gmail.com',8,2),(9,'Rodez','David','44 rue dorme','02450','Bl?rancourt','0323531220','Rodez.David@gmail.com',9,3),(10,'Luca','Noel','254 bld Bertaud','02600','Verneux','0323531221','Luca.Noel@gmail.com',10,1),(11,'Novale','Marc','112 place d\'orlant','02300','Chauny','0323531222','Novale.Marc@gmail.com',11,2),(12,'Kyan','Leo','2 impasse blaize','60240','Bery-sur-pomme','0323531223','Kyan.Leo@gmail.com',12,3),(13,'Morceau','Erica','44 rue l\'oiseau','60100','Noyon','0323531224','Morceau.Erica@gmail.com',13,1),(14,'Lutte','Lydie','13 place morte','60000','Compiegne','0323541225','Lutte.Lydie@gmail.com',14,2),(15,'Burina','Bryan','89 grand place','02200','Soissons','0323531226','Burina.Bryan@gmail.com',15,3),(16,'Nirva','Stephanie','123 rue des pendut','60190','Ville bois','0323531227','Nirva.Stephanie@gmail.com',16,1),(17,'Milon','Lia','5 rue des maisons brulees','60400','Noyant','0323531228','Milon.Lia@gmail.com',17,2),(18,'Feret?','Corinne','47 avenue fosh','60000','Compiegne','0323545229','Feret.Corinne@gmail.com',18,3),(19,'Dacier','Myke','12 rue du temple','02200','Soissons','0323531230','Dacier.Myke@gmail.com',19,1),(21,'Brutus','Bernard','11 impasse libre','02200','Soissons','0323531232','Brutus.Bernard@gmail.com',21,3),(22,'Duran','Chloe','5 rue du moulin','60100','Noyon','0323531233','Duran.Chloe@gmail.com',22,1),(23,'Leroi','Thomas','10 place de la paix','60000','Compiegne','0323561234','Leroi.Thomas@gmail.com',23,2),(24,'Bernard','Elise','3 bld Gambetta','02300','Chauny','0323531235','Bernard.Elise@gmail.com',24,3),(25,'Moreau','Alexis','7 rue des ecoles','02200','Soissons','0323531236','Moreau.Alexis@gmail.com',25,1),(26,'Fournier','Julie','15 rue du chateau','60130','Couloisy','0323541237','Fournier.Julie@gmail.com',26,2),(27,'Lefevre','David','22 avenue Foch','60100','Noyon','0323531238','Lefevre.David@gmail.com',27,3),(28,'Petit','Amelie','33 rue des lilas','60000','Compiegne','0323531239','Petit.Amelie@gmail.com',28,1),(29,'Dupont','Kevin','45 bld Victor Hugo','02420','Besme','0323531240','Dupont.Kevin@gmail.com',29,2),(30,'Giraud','Sophie','56 rue des roses','02450','Blerancourt','0323531241','Giraud.Sophie@gmail.com',30,3),(31,'Richard','Luc','67 rue de Paris','02600','Verneux','0323531242','Richard.Luc@gmail.com',31,1),(32,'Dubois','Camille','78 place de la liberte','02300','Chauny','0323531243','Dubois.Camille@gmail.com',32,2),(33,'Robert','Antoine','89 rue de la gare','60240','Bery-sur-pomme','0323531244','Robert.Antoine@gmail.com',33,3),(34,'Durand','Marion','90 rue du parc','60100','Noyon','0323531245','Durand.Marion@gmail.com',34,1),(35,'Leroux','Paul','101 rue du temple','60000','Compiegne','0323541246','Leroux.Paul@gmail.com',35,2),(36,'Michel','Celine','112 rue de la vigne','02200','Soissons','0323531247','Michel.Celine@gmail.com',36,3),(37,'Martin','Guillaume','123 rue des bois','60190','Ville bois','0323531248','Martin.Guillaume@gmail.com',37,1),(38,'Robin','Laura','134 avenue de la republique','60400','Noyant','0323531249','Robin.Laura@gmail.com',38,2),(39,'Lenoir','Hugo','145 rue du soleil','60000','Compiegne','0323545250','Lenoir.Hugo@gmail.com',30,3),(40,'Lacroix','Manon','156 rue du printemps','02200','Soissons','0323531251','Lacroix.Manon@gmail.com',40,1),(41,'Leclerc','Julien','167 rue des champs','60100','Noyon','0323531252','Leclerc.Julien@gmail.com',1,2),(42,'Benoit','Sophie','178 bld Charles de Gaulle','02300','Chauny','0323531253','Benoit.Sophie@gmail.com',2,4),(43,'Leroy','Christophe','189 rue des Vignes','02200','Soissons','0323531254','Leroy.Christophe@gmail.com',3,4),(44,'Morel','Laura','190 place du Marché','60130','Couloisy','0323531255','Morel.Laura@gmail.com',4,4),(45,'Guillot','Julien','201 rue des Fleurs','60100','Noyon','0323531256','Guillot.Julien@gmail.com',5,4),(46,'Lopez','Marie','212 bld Saint-Vincent','60000','Compiegne','0323531257','Lopez.Marie@gmail.com',6,4),(47,'Perrin','François','223 rue de la Paix','02420','Besme','0323531258','Perrin.François@gmail.com',7,4),(48,'Lefort','Charlotte','234 rue des Saules','02450','Blerancourt','0323531259','Lefort.Charlotte@gmail.com',8,4),(49,'Simon','Eric','245 rue des Moulins','02600','Verneux','0323531260','Simon.Eric@gmail.com',9,4),(50,'Renard','Justine','256 rue des Peupliers','02300','Chauny','0323531261','Renard.Justine@gmail.com',10,4),(51,'Dubois','Vincent','267 place du Château','60240','Bery-sur-pomme','0323531262','Dubois.Vincent@gmail.com',11,4),(52,'Ferreira','Ines','278 rue de la Fontaine','60100','Noyon','0323531263','Ferreira.Ines@gmail.com',12,4),(53,'Morin','Adrien','289 rue des Lilas','60000','Compiegne','0323531264','Morin.Adrien@gmail.com',13,4),(54,'Dumont','Chloe','300 rue de l\'Eglise','02200','Soissons','0323531265','Dumont.Chloe@gmail.com',14,5),(55,'Marchand','Theo','311 rue du Parc','60190','Ville bois','0323531266','Marchand.Theo@gmail.com',15,5),(56,'Bourgeois','Lea','322 avenue de la Gare','60400','Noyant','0323531267','Bourgeois.Lea@gmail.com',16,5),(57,'Hubert','Axel','333 rue des Ormes','60000','Compiegne','0323531268','Hubert.Axel@gmail.com',17,5),(58,'Colin','Elodie','344 bld de la République','02200','Soissons','0323531269','Colin.Elodie@gmail.com',18,5),(59,'Chevalier','Mathis','355 rue du Temple','60100','Noyon','0323531270','Chevalier.Mathis@gmail.com',19,5),(60,'Gautier','Caroline','366 rue des Pêcheurs','02180','Mercaville','0323531271','Gautier.Caroline@gmail.com',20,5),(61,'Herve','Romain','377 rue du Port','60000','Compiegne','0323531272','Herve.Romain@gmail.com',21,5),(62,'Poulain','Marine','388 rue de la Mairie','02300','Chauny','0323531273','Poulain.Marine@gmail.com',22,5),(63,'Blanc','Louis','399 bld des Champs','02200','Soissons','0323531274','Blanc.Louis@gmail.com',23,5),(64,'Moulin','Margaux','410 rue de la Forêt','60130','Couloisy','0323531275','Moulin.Margaux@gmail.com',24,5),(65,'Henry','Nathan','421 rue de l\'Industrie','60100','Noyon','0323531276','Henry.Nathan@gmail.com',25,5),(66,'Leblanc','Juliette','432 bld Carnot','60125','Verneuille','0323531277','Leblanc.Juliette@gmail.com',26,6),(67,'Lebrun','Raphaël','443 rue des Tilleuls','77120','Seimart','0323531278','Lebrun.Raphael@gmail.com',27,6),(68,'Roux','Sarah','454 rue du Verger','44520','Domin','0323531279','Roux.Sarah@gmail.com',28,6),(69,'Garcia','Arthur','465 place du Commerce','78221','Pernon','0323531280','Garcia.Arthur@gmail.com',29,6),(70,'Martinez','Eva','476 rue de l\'Avenir','78200','Vermont','0323531281','Martinez.Eva@gmail.com',30,6),(71,'Rodriguez','Leo','487 rue des Acacias','60850','Blerancourt','0323531282','Rodriguez.Leo@gmail.com',31,6),(72,'Dupuy','Anna','498 rue des Platanes','60150','Trosly','0323531283','Dupuy.Anna@gmail.com',32,6),(73,'Legrand','Hugo','509 rue des Forges','60250','Usnin','0323531284','Legrand.Hugo@gmail.com',33,6),(74,'Lacombe','Mathilde','520 rue des Arts','02532','Cluny','0323531285','Lacombe.Mathilde@gmail.com',34,6),(75,'Boucher','Gabriel','531 rue des Remparts','60125','Bernoud-Ville','0323531286','Boucher.Gabriel@gmail.com',35,6),(76,'Delaunay','Justine','542 bld des Deux Lacs','60200','Millant-Sur-Seine','0323531287','Delaunay.Justine@gmail.com',36,6),(77,'Perrot','Nicolas','553 rue de la Riviere','60310','Piotre','0323531288','Perrot.Nicolas@gmail.com',37,6),(78,'Sandron','Martin','4 rue du bac','47300','Gravy','0654856588','s.martin28@gmail.com',NULL,NULL);
/*!40000 ALTER TABLE `etudiant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formateur`
--

DROP TABLE IF EXISTS `formateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formateur` (
  `NumF` int NOT NULL,
  `Nom` varchar(50) DEFAULT NULL,
  `Prenom` varchar(50) DEFAULT NULL,
  `Adresse` varchar(50) DEFAULT NULL,
  `CP` char(10) DEFAULT NULL,
  `Ville` varchar(50) DEFAULT NULL,
  `Tel` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Intitul` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`NumF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formateur`
--

LOCK TABLES `formateur` WRITE;
/*!40000 ALTER TABLE `formateur` DISABLE KEYS */;
INSERT INTO `formateur` VALUES (1,'Tanner','Jean','4 rue de laplace','60100','Noyon','0323531212','Jean.Tanner@gmail.com',NULL),(2,'Millet','Mathieu','8 rue nouveau','60000','Compiegne','0323561213','Mathieu.Millet@gmail.com',NULL),(3,'Vils','Joseph','1 place Maarceau','02300','Chauny','0323531214','Joseph.Vils@gmail.com',NULL),(4,'Philbert','Alexy','5 bld Fildor','02200','Soissons','0323531215','Alexy.Philbert@gmail.com',NULL),(5,'Bourin','Marc','4 rue dormant','60130','Couloisy','0323541216','Marc.Bourin@gmail.com',NULL),(6,'Teigneux','Alex','6 place boom','60100','Noyon','0323531217','Alex.Teigneux@gmail.com',NULL),(7,'Chanceux','Ben','56 bld Degaule','60000','Compiegne','0323531218','Ben.Chanceux@gmail.com',NULL),(8,'Force','Luc','21 rue st georges','02420','Besme','0323531219','Luc.Force@gmail.com',NULL),(9,'Aguil','Yves','44 rue dorme','02450','Blerancourt','0323531220','Yves.Aguil@gmail.com',NULL),(10,'Lucky','Albert','254 bld Bertaud','02600','Verneux','0323531221','Albert.Lucky@gmail.com',NULL),(11,'Mova','Paul','112 place d\'orlant','02300','Chauny','0323531222','Paul.Mova@gmail.com',NULL),(12,'Lily','Emile','2 impasse blaize','60240','Bery-sur-pomme','0323531223','Emile.Lily@gmail.com',NULL),(13,'Dubois','Claire','44 rue de l\'oiseau','60100','Noyon','0323531224','Claire.Dubois@gmail.com',NULL),(14,'Lefevre','Olivier','13 place morte','60000','Compiegne','0323541225','Olivier.Lefevre@gmail.com',NULL),(15,'Martin','Sophie','89 grand place','02200','Soissons','0323531226','Sophie.Martin@gmail.com',NULL),(16,'Bernard','Julien','123 rue des pendut','60190','Ville bois','0323531227','Julien.Bernard@gmail.com',NULL),(17,'Petit','Camille','5 rue des maisons brulees','60400','Noyant','0323531228','Camille.Petit@gmail.com',NULL),(18,'Thomas','Antoine','47 avenue fosh','60000','Compiegne','0323545229','Antoine.Thomas@gmail.com',NULL),(19,'Robert','Manon','12 rue du temple','02200','Soissons','0323531230','Manon.Robert@gmail.com',NULL),(20,'Richard','Lucie','12 rue brute','60100','Noyon','0323531231','Lucie.Richard@gmail.com',NULL),(21,'Durand','Mathieu','11 impasse libre','02200','Soissons','0323531232','Mathieu.Durand@gmail.com',NULL),(22,'Leroy','Chloe','7 rue de la gare','60100','Noyon','0323531233','Chloe.Leroy@gmail.com',NULL);
/*!40000 ALTER TABLE `formateur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscrire`
--

DROP TABLE IF EXISTS `inscrire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inscrire` (
  `CodeC` int NOT NULL,
  `NumE` int NOT NULL,
  PRIMARY KEY (`CodeC`,`NumE`),
  KEY `inscrire_ibfk_2_idx` (`NumE`),
  CONSTRAINT `inscrire_ibfk_1` FOREIGN KEY (`CodeC`) REFERENCES `cours` (`CodeC`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `inscrire_ibfk_2` FOREIGN KEY (`NumE`) REFERENCES `etudiant` (`NumE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscrire`
--

LOCK TABLES `inscrire` WRITE;
/*!40000 ALTER TABLE `inscrire` DISABLE KEYS */;
INSERT INTO `inscrire` VALUES (2,1),(3,1),(4,1),(3,2),(4,2),(5,2),(4,3),(5,3),(6,3),(5,4),(6,4),(7,4),(6,5),(7,5),(8,5),(7,6),(8,6),(9,6),(8,7),(9,7),(10,7),(9,8),(10,8),(11,8),(10,9),(11,9),(12,9),(11,10),(12,10),(13,10),(12,11),(13,11),(14,11),(13,12),(14,12),(15,12),(14,13),(15,13),(16,13),(15,14),(16,14),(17,14),(16,15),(17,15),(18,15),(17,16),(18,16),(19,16),(18,17),(19,17),(20,17),(1,18),(19,18),(20,18),(1,19),(2,19),(20,19),(2,21),(3,21),(4,21),(1,22),(2,22),(3,22),(4,22),(1,23),(2,23),(3,23),(4,23),(1,24),(2,24),(3,24),(4,24),(1,25),(2,25),(3,25),(4,25),(1,26),(2,26),(3,26),(4,26),(1,27),(2,27),(3,27),(4,27),(1,28),(2,28),(3,28),(4,28),(1,29),(2,29),(3,29),(4,29),(1,30),(2,30),(3,30),(4,30),(1,31),(2,31),(3,31),(4,31),(1,32),(2,32),(3,32),(4,32),(1,33),(2,33),(3,33),(4,33),(1,34),(2,34),(3,34),(4,34),(1,35),(2,35),(3,35),(4,35),(1,36),(2,36),(3,36),(4,36),(1,37),(2,37),(3,37),(4,37),(1,38),(2,38),(3,38),(4,38),(1,39),(2,39),(3,39),(4,39),(1,40),(2,40),(3,40),(4,40),(1,41),(2,41),(3,41),(4,41);
/*!40000 ALTER TABLE `inscrire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `note` (
  `RefNote` int NOT NULL,
  `Valeur` decimal(10,0) DEFAULT NULL,
  `CodeC` int NOT NULL,
  `IdBul` int NOT NULL,
  PRIMARY KEY (`RefNote`),
  KEY `note_ibfk_2` (`IdBul`),
  KEY `note_ibfk_1` (`CodeC`),
  CONSTRAINT `note_ibfk_1` FOREIGN KEY (`CodeC`) REFERENCES `cours` (`CodeC`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `note_ibfk_2` FOREIGN KEY (`IdBul`) REFERENCES `bulletin` (`IdBul`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note`
--

LOCK TABLES `note` WRITE;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
INSERT INTO `note` VALUES (1,5,1,1),(2,6,2,2),(3,10,3,3),(4,17,4,4),(5,2,5,5),(6,6,6,6),(7,3,7,7),(8,2,8,8),(9,13,9,9),(10,8,10,10),(11,12,1,11),(12,16,2,12),(13,14,3,13),(14,1,4,14),(15,20,5,15),(16,11,6,16),(17,14,7,17),(18,16,8,18),(19,6,9,19),(21,9,1,21),(22,14,2,1),(23,12,3,2),(24,4,4,3),(25,18,5,4),(26,14,6,5),(27,10,7,6),(28,20,8,7),(29,15,9,8),(30,2,10,9),(31,0,1,10),(32,7,2,11),(33,11,3,12),(34,20,4,13),(35,17,5,14),(36,4,6,15),(37,9,7,16),(38,16,8,17),(39,20,9,18),(40,17,10,19),(42,11,2,21),(43,9,3,1),(44,14,4,2),(45,12,5,3),(46,11,6,4),(47,7,7,5),(48,8,8,6),(49,0,9,7),(50,1,10,8),(51,15,11,22),(52,10,12,23),(53,7,13,24),(54,19,14,25),(55,5,15,26),(56,12,16,27),(57,18,17,28),(58,14,18,29),(59,10,19,30),(60,6,20,31),(61,17,11,32),(62,9,12,33),(63,11,13,34),(64,8,14,35),(65,15,15,36),(66,13,16,37),(67,18,17,38),(68,20,18,39),(69,14,19,40),(70,11,20,41),(71,16,11,24),(72,14,12,25),(73,10,13,26),(74,19,14,27),(75,20,15,28),(76,11,16,29),(77,7,17,30),(78,12,18,31),(79,18,19,32),(80,10,20,33),(81,15,11,34),(82,16,12,35),(83,13,13,36),(84,9,14,37),(85,17,15,38),(86,10,16,39),(87,12,17,40),(88,14,18,41),(89,15,19,22),(90,16,20,23),(91,17,1,23),(92,11,2,24),(93,8,3,25),(94,19,4,26),(95,13,5,27),(96,16,6,28),(97,14,7,29),(98,18,8,30),(99,10,9,31),(100,7,10,32),(101,15,11,33),(102,9,12,34),(103,11,13,35),(104,14,14,36),(105,17,15,37),(106,12,16,38),(107,18,17,39),(108,16,18,40),(109,10,19,41),(110,8,20,22),(111,19,1,24),(112,13,2,25),(113,16,3,26),(114,14,4,27),(115,10,5,28),(116,7,6,29),(117,15,7,30),(118,12,8,31),(119,18,9,32),(120,9,10,33),(121,11,11,34),(122,14,12,35),(123,17,13,36),(124,16,14,37),(125,13,15,38),(126,18,16,39),(127,10,17,40),(128,7,18,41),(129,15,19,22),(130,9,20,23),(131,14,1,25),(132,12,2,26),(133,18,3,27),(134,16,4,28),(135,10,5,29),(136,7,6,30),(137,15,7,31),(138,9,8,32),(139,11,9,33),(140,14,10,34),(141,17,11,35),(142,13,12,36),(143,16,13,37),(144,18,14,38),(145,10,15,39),(146,7,16,40),(147,15,17,41),(148,9,18,22),(149,11,19,23),(150,14,20,24),(151,17,1,26),(152,13,2,27),(153,16,3,28),(154,18,4,29),(155,10,5,30),(156,7,6,31),(157,15,7,32),(158,9,8,33),(159,11,9,34),(160,14,10,35),(161,17,11,36),(162,13,12,37),(163,16,13,38),(164,18,14,39),(165,10,15,40),(166,7,16,41),(167,15,17,22),(168,9,18,23),(169,11,19,24),(170,14,20,25),(171,17,1,27),(172,13,2,28),(173,16,3,29),(174,18,4,30),(175,10,5,31),(176,7,6,32),(177,15,7,33),(178,9,8,34),(179,11,9,35),(180,14,10,36),(181,17,11,37),(182,13,12,38),(183,16,13,39),(184,18,14,40),(185,10,15,41),(186,7,16,22),(187,15,17,23),(188,9,18,24),(189,11,19,25),(190,14,20,26),(191,17,5,48),(192,12,15,49),(193,7,11,49),(194,10,16,49),(195,8,15,50),(196,0,10,50),(197,3,17,50),(198,2,9,51),(199,7,20,51),(200,10,11,51),(201,12,4,52),(202,5,5,52),(203,11,7,52),(204,16,8,53),(205,10,5,53),(206,10,9,53),(207,6,14,54),(208,8,17,54),(209,12,2,54),(210,2,11,55),(211,7,12,55),(212,6,6,55),(213,5,19,56),(214,7,18,56),(215,15,14,56),(216,2,1,57),(217,4,18,57),(218,0,11,57),(219,12,16,58),(220,15,9,58),(221,12,20,58),(222,3,2,59),(223,14,14,59),(224,17,3,59),(225,17,14,60),(226,10,8,60),(227,16,10,60),(228,2,11,61),(229,9,14,61),(230,1,16,61),(231,16,4,62),(232,7,15,62),(233,8,5,62),(234,3,7,63),(235,2,18,63),(236,5,19,63),(237,7,2,64),(238,19,2,64),(239,14,8,64),(240,16,16,65),(241,11,9,65),(242,16,7,65),(243,13,10,66),(244,14,10,66),(245,8,15,66),(246,5,4,67),(247,4,8,67),(248,10,20,67),(249,14,19,68),(250,18,17,68),(251,10,8,68),(252,10,14,69),(253,8,9,69),(254,7,9,69),(255,1,8,70),(256,8,15,70),(257,16,7,70),(258,3,6,71),(259,1,13,71),(260,14,10,71),(261,17,6,72),(262,3,18,72),(263,6,9,72),(264,2,7,73),(265,8,8,73),(266,16,1,73),(267,3,9,74),(268,17,11,74),(269,4,1,74),(270,14,15,75),(271,9,11,75),(272,18,2,75),(273,1,13,76),(274,14,17,76),(275,8,18,76),(276,2,20,77),(277,9,19,77),(278,4,3,77);
/*!40000 ALTER TABLE `note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participer`
--

DROP TABLE IF EXISTS `participer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participer` (
  `Ids` int NOT NULL,
  `NumF` int NOT NULL,
  `NumE` int NOT NULL,
  PRIMARY KEY (`Ids`,`NumF`,`NumE`),
  KEY `participer_ibfk_2_idx` (`NumF`),
  KEY `participer_ibfk_3_idx` (`NumE`),
  CONSTRAINT `participer_ibfk_1` FOREIGN KEY (`Ids`) REFERENCES `seance` (`Ids`),
  CONSTRAINT `participer_ibfk_2` FOREIGN KEY (`NumF`) REFERENCES `formateur` (`NumF`),
  CONSTRAINT `participer_ibfk_3` FOREIGN KEY (`NumE`) REFERENCES `etudiant` (`NumE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participer`
--

LOCK TABLES `participer` WRITE;
/*!40000 ALTER TABLE `participer` DISABLE KEYS */;
INSERT INTO `participer` VALUES (4,1,22),(4,1,23),(4,1,24),(4,1,25),(5,2,22),(5,2,23),(5,2,24),(5,2,25),(5,2,26),(6,3,22),(6,3,23),(6,3,24),(6,3,25),(6,3,26),(6,3,27),(7,4,22),(7,4,23),(7,4,24),(7,4,25),(7,4,26),(7,4,27),(7,4,28),(8,5,26),(8,5,27),(8,5,28),(8,5,29),(9,6,27),(9,6,28),(9,6,29),(9,6,30),(10,7,28),(10,7,29),(10,7,30),(10,7,31),(11,8,29),(11,8,30),(11,8,31),(11,8,32),(12,9,30),(12,9,31),(12,9,32),(12,9,33),(13,10,31),(13,10,32),(13,10,33),(13,10,34),(14,11,32),(14,11,33),(14,11,34),(14,11,35),(15,12,33),(15,12,34),(15,12,35),(15,12,36),(16,13,34),(16,13,35),(16,13,36),(16,13,37),(17,14,35),(17,14,36),(17,14,37),(17,14,38),(18,15,36),(18,15,37),(18,15,38),(18,15,39),(19,16,37),(19,16,38),(19,16,39),(19,16,40),(20,17,38),(20,17,39),(20,17,40),(20,17,41),(21,18,39),(21,18,40),(21,18,41),(22,19,40),(22,19,41),(23,20,41),(25,20,36),(25,20,37);
/*!40000 ALTER TABLE `participer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seance`
--

DROP TABLE IF EXISTS `seance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seance` (
  `Ids` int NOT NULL,
  `Intitule` varchar(50) DEFAULT NULL,
  `Debut` datetime DEFAULT NULL,
  `Fin` datetime DEFAULT NULL,
  `CodeC` int NOT NULL,
  PRIMARY KEY (`Ids`),
  KEY `CodeC` (`CodeC`),
  CONSTRAINT `seance_ibfk_1` FOREIGN KEY (`CodeC`) REFERENCES `cours` (`CodeC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seance`
--

LOCK TABLES `seance` WRITE;
/*!40000 ALTER TABLE `seance` DISABLE KEYS */;
INSERT INTO `seance` VALUES (1,'Salle 25','2025-12-17 08:30:00','2025-12-17 12:30:00',1),(2,'Salle 136','2025-12-17 08:30:00','2025-12-17 17:30:00',3),(3,'Salle 149','2025-12-17 08:30:00','2025-12-17 12:00:00',2),(4,'Salle 141','2025-09-17 08:30:00','2025-09-17 12:30:00',1),(5,'Salle 20','2025-09-17 13:00:00','2025-09-17 16:00:00',2),(6,'Salle 145','2025-09-18 09:00:00','2025-09-18 11:30:00',3),(7,'Salle 25','2025-09-18 14:00:00','2025-09-18 17:00:00',4),(8,'Salle 150','2025-09-19 08:30:00','2025-09-19 12:30:00',5),(9,'Salle 16','2025-09-19 13:00:00','2025-09-19 15:30:00',6),(10,'Salle 139','2025-09-22 09:00:00','2025-09-22 12:00:00',7),(11,'Salle 19','2025-09-22 13:30:00','2025-09-22 16:30:00',8),(12,'Salle 143','2025-09-23 08:00:00','2025-09-23 11:00:00',9),(13,'Salle 22','2025-09-23 14:00:00','2025-09-23 17:00:00',10),(14,'Salle 151','2025-09-24 09:30:00','2025-09-24 12:30:00',11),(15,'Salle 14','2025-09-24 13:30:00','2025-09-24 16:30:00',12),(16,'Salle 148','2025-09-25 08:30:00','2025-09-25 12:30:00',13),(17,'Salle 21','2025-09-25 13:00:00','2025-09-25 16:00:00',14),(18,'Salle 140','2025-09-26 09:00:00','2025-09-26 11:30:00',15),(19,'Salle 17','2025-09-26 14:00:00','2025-09-26 17:00:00',16),(20,'Salle 153','2025-09-29 08:30:00','2025-09-29 12:30:00',17),(21,'Salle 18','2025-09-29 13:00:00','2025-09-29 15:30:00',18),(22,'Salle 142','2025-09-30 09:00:00','2025-09-30 12:00:00',19),(23,'Salle 23','2025-09-30 13:30:00','2025-09-30 16:30:00',20),(24,'Salle 146','2025-10-01 08:00:00','2025-10-01 11:00:00',1),(25,'Salle 24','2025-10-01 14:00:00','2025-10-01 17:00:00',2),(26,'Salle 144','2025-10-02 09:30:00','2025-10-02 12:30:00',3),(27,'Salle 15','2025-10-02 13:30:00','2025-10-02 16:30:00',4),(28,'Salle 149','2025-10-03 08:30:00','2025-10-03 12:30:00',5),(29,'Salle 20','2025-10-03 13:00:00','2025-10-03 16:00:00',6);
/*!40000 ALTER TABLE `seance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section` (
  `IdSec` int NOT NULL,
  `Intitule` varchar(50) DEFAULT NULL,
  `NumF` int NOT NULL,
  PRIMARY KEY (`IdSec`),
  KEY `section_ibfk_1_idx` (`NumF`),
  CONSTRAINT `section_ibfk_1` FOREIGN KEY (`NumF`) REFERENCES `formateur` (`NumF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES (1,'CO 26 SIO',4),(2,'CO 27 PGME',8),(3,'CO 27 CG',2),(4,'CO 26 CIEL',4),(5,'CO 26 SAM',8),(6,'CO 27 SAM',2);
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-15 11:11:00
