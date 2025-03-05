--

DROP TABLE IF EXISTS `actorlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actorlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role` varchar(100) NOT NULL,
  `id_film` int DEFAULT NULL,
  `id_actor` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_film` (`id_film`),
  KEY `id_actor` (`id_actor`),
  CONSTRAINT `actorlist_ibfk_1` FOREIGN KEY (`id_film`) REFERENCES `film` (`id`),
  CONSTRAINT `actorlist_ibfk_2` FOREIGN KEY (`id_actor`) REFERENCES `actors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actorlist`
--

LOCK TABLES `actorlist` WRITE;
/*!40000 ALTER TABLE `actorlist` DISABLE KEYS */;
INSERT INTO `actorlist` VALUES (1,'Dominick Cobb',1,1),(2,'Nina Sayers',1,2),(3,'Walt Kowalski',2,3),(4,'Natasha Romanoff',4,4),(5,'Forrest Gump',1,1),(6,'Margaret Thatcher',1,2),(7,'Tony Stark',2,3),(8,'Mia Dolan',3,4),(9,'Wolverine',4,1);
/*!40000 ALTER TABLE `actorlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-05 12:21:16
