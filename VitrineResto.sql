--
-- Base de données :  `vitrineresto`
--

CREATE DATABASE IF NOT EXISTS `vitrineresto` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `vitrineresto`;

-- --------------------------------------------------------

--
-- Structure de la table `t_categ`
--

DROP TABLE IF EXISTS `t_categ`;
CREATE TABLE IF NOT EXISTS `t_categ` (
    `id_categ` int(11) NOT NULL AUTO_INCREMENT,
    `nom_categ` varchar(250) NOT NULL,
    PRIMARY KEY (`id_categ`)
);

--
-- Déchargement de la table `t_categ`
--

INSERT INTO `t_categ` (`nom_categ`) VALUES
('Viande'),
('Poisson'),
('Volaile'),
('Végé'),
('Vegan'),
('Soupe'),
('Dessert');
COMMIT;


--
-- Structure de la table `t_plats`
--

DROP TABLE IF EXISTS `t_plats`;
CREATE TABLE IF NOT EXISTS `t_plats` (
    `id_plat` int(11) NOT NULL AUTO_INCREMENT,
    `nom_plat` varchar(250) NOT NULL,
    `details_plat` varchar(2048) NOT NULL,
    `prix_plat` decimal(4,2),
    `categ_plat` int(11) NOT NULL,
    PRIMARY KEY (`id_plat`),
    FOREIGN KEY (`categ_plat`) REFERENCES `t_categ` (`id_categ`)
);

--
-- Déchargment de la table `t_plats`
--

INSERT INTO `t_plats` (`nom_plat`, `details_plat`, `prix_plat`, `categ_plat`) VALUES
('Burger', 'Burger 100% pur boeuf accompagné de frites et salade, sauce au choix', 10, 1),
('Steak', 'Steak de 150g accompagné de frites et salade, sauce au choix', 11.5, 1),
('Filet de pangasius', 'accompagné de frites et salade, sauce au choix', 13, 2),
('Demi poulet roti', 'accompné de frites et salade, sauce au choix', 12.5, 3),
('Risotto épinard', 'Risotto épinard et crême, servi avec du parmesan', 10, 4),
('Risotto vegan', 'Risotto au lait de coco, raisins secs et pignons', 11, 5),
('Soupe tomate', 'Velouté de tomate accompagné au choix de croutons', 7, 6),
('Brownies', 'Brownies au chocolat noir maison', 5, 7);
COMMIT;
