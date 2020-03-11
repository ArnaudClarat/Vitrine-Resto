SET time_zone = "+02:00";

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
    `nom_categ` int (11) NOT NULL,
    PRIMARY KEY (`id_categ`),
)

--
-- Déchargement de la table `t_categ`
--

-- TODO Déchargment `t_categ`

--
-- Structure de la table `t_plats`
--

DROP TABLE IF EXISTS `t_plats`;
CREATE TABLE IF NOT EXISTS `t_product` (
    `id_plat` int(11) NOT NULL AUTO_INCREMENT,
    `name_plat` varchar(250) NOT NULL,
    `details_plat` varchar(2048) NOT NULL,
    `categ_plat` int(11) NOT NULL,
    PRIMARY KEY (`id_plat`),
    FOREIGN KEY (`categ_plat`) REFERENCES `t_categ` (`id_categ`)
)

-- TODO Déchargment `t_plats`