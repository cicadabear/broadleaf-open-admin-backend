# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.42-log)
# Database: jiangren
# Generation Time: 2017-03-15 08:22:50 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table BLC_ADDRESS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_ADDRESS`;

CREATE TABLE `BLC_ADDRESS` (
  `ADDRESS_ID` bigint(20) NOT NULL,
  `ADDRESS_LINE1` varchar(255) NOT NULL,
  `ADDRESS_LINE2` varchar(255) DEFAULT NULL,
  `ADDRESS_LINE3` varchar(255) DEFAULT NULL,
  `CITY` varchar(255) NOT NULL,
  `COMPANY_NAME` varchar(255) DEFAULT NULL,
  `COUNTY` varchar(255) DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(255) DEFAULT NULL,
  `FAX` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `FULL_NAME` varchar(255) DEFAULT NULL,
  `IS_ACTIVE` tinyint(1) DEFAULT NULL,
  `IS_BUSINESS` tinyint(1) DEFAULT NULL,
  `IS_DEFAULT` tinyint(1) DEFAULT NULL,
  `IS_MAILING` tinyint(1) DEFAULT NULL,
  `IS_STREET` tinyint(1) DEFAULT NULL,
  `ISO_COUNTRY_SUB` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `POSTAL_CODE` varchar(255) DEFAULT NULL,
  `PRIMARY_PHONE` varchar(255) DEFAULT NULL,
  `SECONDARY_PHONE` varchar(255) DEFAULT NULL,
  `STANDARDIZED` tinyint(1) DEFAULT NULL,
  `SUB_STATE_PROV_REG` varchar(255) DEFAULT NULL,
  `TOKENIZED_ADDRESS` varchar(255) DEFAULT NULL,
  `VERIFICATION_LEVEL` varchar(255) DEFAULT NULL,
  `ZIP_FOUR` varchar(255) DEFAULT NULL,
  `COUNTRY` varchar(255) DEFAULT NULL,
  `ISO_COUNTRY_ALPHA2` varchar(255) DEFAULT NULL,
  `PHONE_FAX_ID` bigint(20) DEFAULT NULL,
  `PHONE_PRIMARY_ID` bigint(20) DEFAULT NULL,
  `PHONE_SECONDARY_ID` bigint(20) DEFAULT NULL,
  `STATE_PROV_REGION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ADDRESS_ID`),
  KEY `ADDRESS_COUNTRY_INDEX` (`COUNTRY`),
  KEY `ADDRESS_ISO_COUNTRY_IDX` (`ISO_COUNTRY_ALPHA2`),
  KEY `ADDRESS_PHONE_FAX_IDX` (`PHONE_FAX_ID`),
  KEY `ADDRESS_PHONE_PRI_IDX` (`PHONE_PRIMARY_ID`),
  KEY `ADDRESS_PHONE_SEC_IDX` (`PHONE_SECONDARY_ID`),
  KEY `ADDRESS_STATE_INDEX` (`STATE_PROV_REGION`),
  KEY `FK299F86CEA46E16CF` (`COUNTRY`),
  KEY `FK299F86CE3A39A488` (`ISO_COUNTRY_ALPHA2`),
  KEY `FK299F86CEF1A6533F` (`PHONE_FAX_ID`),
  KEY `FK299F86CEBF4449BA` (`PHONE_PRIMARY_ID`),
  KEY `FK299F86CEE12DC0C8` (`PHONE_SECONDARY_ID`),
  KEY `FK299F86CE337C4D50` (`STATE_PROV_REGION`),
  CONSTRAINT `FK299F86CE337C4D50` FOREIGN KEY (`STATE_PROV_REGION`) REFERENCES `BLC_STATE` (`ABBREVIATION`),
  CONSTRAINT `FK299F86CE3A39A488` FOREIGN KEY (`ISO_COUNTRY_ALPHA2`) REFERENCES `BLC_ISO_COUNTRY` (`ALPHA_2`),
  CONSTRAINT `FK299F86CEA46E16CF` FOREIGN KEY (`COUNTRY`) REFERENCES `BLC_COUNTRY` (`ABBREVIATION`),
  CONSTRAINT `FK299F86CEBF4449BA` FOREIGN KEY (`PHONE_PRIMARY_ID`) REFERENCES `BLC_PHONE` (`PHONE_ID`),
  CONSTRAINT `FK299F86CEE12DC0C8` FOREIGN KEY (`PHONE_SECONDARY_ID`) REFERENCES `BLC_PHONE` (`PHONE_ID`),
  CONSTRAINT `FK299F86CEF1A6533F` FOREIGN KEY (`PHONE_FAX_ID`) REFERENCES `BLC_PHONE` (`PHONE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `BLC_ADDRESS` WRITE;
/*!40000 ALTER TABLE `BLC_ADDRESS` DISABLE KEYS */;

INSERT INTO `BLC_ADDRESS` (`ADDRESS_ID`, `ADDRESS_LINE1`, `ADDRESS_LINE2`, `ADDRESS_LINE3`, `CITY`, `COMPANY_NAME`, `COUNTY`, `EMAIL_ADDRESS`, `FAX`, `FIRST_NAME`, `FULL_NAME`, `IS_ACTIVE`, `IS_BUSINESS`, `IS_DEFAULT`, `IS_MAILING`, `IS_STREET`, `ISO_COUNTRY_SUB`, `LAST_NAME`, `POSTAL_CODE`, `PRIMARY_PHONE`, `SECONDARY_PHONE`, `STANDARDIZED`, `SUB_STATE_PROV_REG`, `TOKENIZED_ADDRESS`, `VERIFICATION_LEVEL`, `ZIP_FOUR`, `COUNTRY`, `ISO_COUNTRY_ALPHA2`, `PHONE_FAX_ID`, `PHONE_PRIMARY_ID`, `PHONE_SECONDARY_ID`, `STATE_PROV_REGION`)
VALUES
	(1,'Shenzhen',NULL,NULL,'Shenzhen','cicadabear.cc','CN','cicadabear@163.com',NULL,NULL,'Shenzhen',1,0,1,1,1,'CN',NULL,NULL,NULL,NULL,0,'Guangdong',NULL,NULL,NULL,'US',NULL,NULL,1,NULL,NULL);

/*!40000 ALTER TABLE `BLC_ADDRESS` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table blc_admin_module
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blc_admin_module`;

CREATE TABLE `blc_admin_module` (
  `ADMIN_MODULE_ID` bigint(20) NOT NULL,
  `DISPLAY_ORDER` int(11) DEFAULT NULL,
  `ICON` varchar(255) DEFAULT NULL,
  `MODULE_KEY` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ADMIN_MODULE_ID`),
  KEY `ADMINMODULE_NAME_INDEX` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `blc_admin_module` WRITE;
/*!40000 ALTER TABLE `blc_admin_module` DISABLE KEYS */;

INSERT INTO `blc_admin_module` (`ADMIN_MODULE_ID`, `DISPLAY_ORDER`, `ICON`, `MODULE_KEY`, `NAME`)
VALUES
	(-9,250,'blc-icon-inventory','BLCInventory','Inventory'),
	(-8,150,'fa fa-usd','BLCPricing','Pricing'),
	(-7,500,'blc-icon-site-updates','BLCWorkflow','Site Updates'),
	(-6,400,'blc-icon-design','BLCDesign','Design'),
	(-5,700,'blc-icon-settings','BLCModuleConfiguration','Settings'),
	(-4,600,'blc-icon-security','BLCOpenAdmin','Security'),
	(-3,550,'blc-icon-customer-care','BLCCustomerCare','Customer Care'),
	(-2,200,'blc-icon-content','BLCContentManagement','Content'),
	(-1,100,'blc-icon-catalog','BLCMerchandising','Catalog');

/*!40000 ALTER TABLE `blc_admin_module` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BLC_ADMIN_PASSWORD_TOKEN
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_ADMIN_PASSWORD_TOKEN`;

CREATE TABLE `BLC_ADMIN_PASSWORD_TOKEN` (
  `PASSWORD_TOKEN` varchar(255) NOT NULL,
  `ADMIN_USER_ID` bigint(20) NOT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `TOKEN_USED_DATE` datetime DEFAULT NULL,
  `TOKEN_USED_FLAG` tinyint(1) NOT NULL,
  PRIMARY KEY (`PASSWORD_TOKEN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table BLC_ADMIN_PERMISSION
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_ADMIN_PERMISSION`;

CREATE TABLE `BLC_ADMIN_PERMISSION` (
  `ADMIN_PERMISSION_ID` bigint(20) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `IS_FRIENDLY` tinyint(1) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `PERMISSION_TYPE` varchar(255) NOT NULL,
  PRIMARY KEY (`ADMIN_PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `BLC_ADMIN_PERMISSION` WRITE;
/*!40000 ALTER TABLE `BLC_ADMIN_PERMISSION` DISABLE KEYS */;

INSERT INTO `BLC_ADMIN_PERMISSION` (`ADMIN_PERMISSION_ID`, `DESCRIPTION`, `IS_FRIENDLY`, `NAME`, `PERMISSION_TYPE`)
VALUES
	(-200,'Read Page Template',0,'PERMISSION_READ_PAGE_TEMPLATE','READ'),
	(-161,'Maintain Field Definitions',1,'PERMISSION_FLDDEF_ALL','ALL'),
	(-160,'View Field Definitions',1,'PERMISSION_FLDDEF_VIEW','READ'),
	(-151,'Maintain Permissions',1,'PERMISSION_PERM_ALL','ALL'),
	(-150,'View Permissions',1,'PERMISSION_PERM_VIEW','READ'),
	(-141,'Maintain Roles',1,'PERMISSION_ROLE_ALL','ALL'),
	(-140,'View Roles',1,'PERMISSION_ROLE_VIEW','READ'),
	(-131,'Maintain Translations',1,'PERMISSION_TRANSLATION','ALL'),
	(-130,'View Translations',1,'PERMISSION_TRANSLATION','READ'),
	(-127,'Maintain Module Configurations',1,'PERMISSION_MODULECONFIGURATION','ALL'),
	(-126,'View Module Configurations',1,'PERMISSION_MODULECONFIGURATION','READ'),
	(-121,'Maintain Users',1,'PERMISSION_USER','ALL'),
	(-120,'View Users',1,'PERMISSION_USER','READ'),
	(-119,'Maintain Customers',1,'PERMISSION_CUSTOMER','ALL'),
	(-118,'View Customers',1,'PERMISSION_CUSTOMER','READ'),
	(-115,'Maintain URL Redirects',1,'PERMISSION_URLREDIRECT','ALL'),
	(-114,'View URL Redirects',1,'PERMISSION_URLREDIRECT','READ'),
	(-111,'Maintain Assets',1,'PERMISSION_ASSET','ALL'),
	(-110,'View Assets',1,'PERMISSION_ASSET','READ'),
	(-109,'Maintain Pages',1,'PERMISSION_PAGE','ALL'),
	(-108,'View Pages',1,'PERMISSION_PAGE','READ'),
	(-107,'Maintain Offers',1,'PERMISSION_OFFER','ALL'),
	(-106,'View Offers',1,'PERMISSION_OFFER','READ'),
	(-105,'Maintain Product Options',1,'PERMISSION_PRODUCTOPTIONS','ALL'),
	(-104,'View Product Options',1,'PERMISSION_PRODUCTOPTIONS','READ'),
	(-103,'Maintain Products',1,'PERMISSION_PRODUCT','ALL'),
	(-102,'View Products',1,'PERMISSION_PRODUCT','READ'),
	(-101,'Maintain Categories',1,'PERMISSION_CATEGORY','ALL'),
	(-100,'View Categories',1,'PERMISSION_CATEGORY','READ'),
	(-55,'All ISO COUNTRIES',0,'PERMISSION_ALL_ISO_COUNTRIES','ALL'),
	(-54,'Read ISO Countries',0,'PERMISSION_READ_ISO_COUNTRIES','READ'),
	(-53,'All Catalog Permissions',0,'PERMISSION_ALL_CATALOG_PERMS','ALL'),
	(-52,'Read Catalog Permissions',0,'PERMISSION_READ_CATALOG_PERMS','READ'),
	(-51,'All Field Definitions',0,'PERMISSION_ALL_FIELD_DEFS','ALL'),
	(-50,'Read Field Definitions',0,'PERMISSION_READ_FIELD_DEFS','READ'),
	(-49,'All Admin Permissions',1,'PERMISSION_ALL_ADMIN_PERMS','ALL'),
	(-48,'Read Admin Permissions',0,'PERMISSION_READ_ADMIN_PERMS','READ'),
	(-47,'All Admin Roles',0,'PERMISSION_ALL_ADMIN_ROLES','ALL'),
	(-46,'Read Admin Roles',0,'PERMISSION_READ_ADMIN_ROLES','READ'),
	(-45,'All System Property',0,'PERMISSION_ALL_SYSTEM_PROPERTY','ALL'),
	(-44,'Read System Property',0,'PERMISSION_READ_SYSTEM_PROPERTY','READ'),
	(-43,'All Site Map Gen Configuration',0,'PERMISSION_ALL_SITE_MAP_GEN_CONFIG','ALL'),
	(-42,'Read Site Map Gen Configuration',0,'PERMISSION_READ_SITE_MAP_GEN_CONFIG','READ'),
	(-41,'All Translation',1,'PERMISSION_ALL_TRANSLATION','ALL'),
	(-40,'Read Translation',0,'PERMISSION_READ_TRANSLATION','READ'),
	(-39,'All Enumeration',0,'PERMISSION_ALL_ENUMERATION','ALL'),
	(-38,'Read Enumeration',0,'PERMISSION_READ_ENUMERATION','READ'),
	(-37,'All Configuration',1,'PERMISSION_ALL_MODULECONFIGURATION','ALL'),
	(-36,'Read Configuration',0,'PERMISSION_READ_MODULECONFIGURATION','READ'),
	(-35,'All Currency',0,'PERMISSION_ALL_CURRENCY','ALL'),
	(-34,'Read Currency',0,'PERMISSION_READ_CURRENCY','READ'),
	(-33,'All SearchFacet',0,'PERMISSION_ALL_SEARCHFACET','ALL'),
	(-32,'Read SearchFacet',0,'PERMISSION_READ_SEARCHFACET','READ'),
	(-31,'All SearchRedirect',0,'PERMISSION_ALL_SEARCHREDIRECT','ALL'),
	(-30,'Read SearchRedirect',0,'PERMISSION_READ_SEARCHREDIRECT','READ'),
	(-29,'All URLHandler',0,'PERMISSION_ALL_URLHANDLER','ALL'),
	(-28,'Read URLHandler',0,'PERMISSION_READ_URLHANDLER','READ'),
	(-27,'All Admin User',0,'PERMISSION_ALL_ADMIN_USER','ALL'),
	(-26,'Read Admin User',0,'PERMISSION_READ_ADMIN_USER','READ'),
	(-23,'All Asset',0,'PERMISSION_ALL_ASSET','ALL'),
	(-22,'Read Asset',0,'PERMISSION_READ_ASSET','READ'),
	(-21,'All Page',0,'PERMISSION_ALL_PAGE','ALL'),
	(-20,'Read Page',0,'PERMISSION_READ_PAGE','READ'),
	(-19,'All Customer',0,'PERMISSION_ALL_CUSTOMER','ALL'),
	(-18,'Read Customer',0,'PERMISSION_READ_CUSTOMER','READ'),
	(-17,'All Order Item',0,'PERMISSION_ALL_ORDER_ITEM','ALL'),
	(-16,'Read Order Item',0,'PERMISSION_READ_ORDER_ITEM','READ'),
	(-15,'All Fulfillment Group',0,'PERMISSION_ALL_FULFILLMENT_GROUP','ALL'),
	(-14,'Read Fulfillment Group',0,'PERMISSION_READ_FULFILLMENT_GROUP','READ'),
	(-13,'All Order',0,'PERMISSION_ALL_ORDER','ALL'),
	(-12,'Read Order',0,'PERMISSION_READ_ORDER','READ'),
	(-11,'All Promotion',0,'PERMISSION_ALL_PROMOTION','ALL'),
	(-10,'Read Promotion',0,'PERMISSION_READ_PROMOTION','READ'),
	(-9,'All Sku',0,'PERMISSION_ALL_SKU','ALL'),
	(-8,'Read Sku',0,'PERMISSION_READ_SKU','READ'),
	(-7,'All Product Option',0,'PERMISSION_ALL_PRODUCT_OPTION','ALL'),
	(-6,'Read Product Option',0,'PERMISSION_READ_PRODUCT_OPTION','READ'),
	(-5,'All Product',0,'PERMISSION_ALL_PRODUCT','ALL'),
	(-4,'Read Product',0,'PERMISSION_READ_PRODUCT','READ'),
	(-3,'All Category',0,'PERMISSION_ALL_CATEGORY','ALL'),
	(-2,'Read Category',0,'PERMISSION_READ_CATEGORY','READ'),
	(-1,'Default Permission',0,'PERMISSION_OTHER_DEFAULT','OTHER');

/*!40000 ALTER TABLE `BLC_ADMIN_PERMISSION` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BLC_ADMIN_PERMISSION_ENTITY
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_ADMIN_PERMISSION_ENTITY`;

CREATE TABLE `BLC_ADMIN_PERMISSION_ENTITY` (
  `ADMIN_PERMISSION_ENTITY_ID` bigint(20) NOT NULL,
  `CEILING_ENTITY` varchar(255) NOT NULL,
  `ADMIN_PERMISSION_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ADMIN_PERMISSION_ENTITY_ID`),
  KEY `FK23C09E3DE88B7D38` (`ADMIN_PERMISSION_ID`),
  CONSTRAINT `FK23C09E3DE88B7D38` FOREIGN KEY (`ADMIN_PERMISSION_ID`) REFERENCES `BLC_ADMIN_PERMISSION` (`ADMIN_PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `BLC_ADMIN_PERMISSION_ENTITY` WRITE;
/*!40000 ALTER TABLE `BLC_ADMIN_PERMISSION_ENTITY` DISABLE KEYS */;

INSERT INTO `BLC_ADMIN_PERMISSION_ENTITY` (`ADMIN_PERMISSION_ENTITY_ID`, `CEILING_ENTITY`, `ADMIN_PERMISSION_ID`)
VALUES
	(-1011,'org.broadleafcommerce.common.i18n.domain.ISOCountry',-55),
	(-1010,'org.broadleafcommerce.common.i18n.domain.ISOCountry',-54),
	(-1003,'org.broadleafcommerce.common.site.domain.Site',-53),
	(-1002,'org.broadleafcommerce.common.site.domain.Site',-52),
	(-1001,'org.broadleafcommerce.common.site.domain.Catalog',-53),
	(-1000,'org.broadleafcommerce.common.site.domain.Catalog',-52),
	(-991,'org.broadleafcommerce.cms.field.domain.FieldDefinition',-51),
	(-990,'org.broadleafcommerce.cms.field.domain.FieldDefinition',-50),
	(-983,'org.broadleafcommerce.openadmin.server.security.domain.AdminPermissionQualifiedEntity',-48),
	(-982,'org.broadleafcommerce.openadmin.server.security.domain.AdminPermissionQualifiedEntity',-49),
	(-981,'org.broadleafcommerce.openadmin.server.security.domain.AdminPermission',-48),
	(-980,'org.broadleafcommerce.openadmin.server.security.domain.AdminPermission',-49),
	(-971,'org.broadleafcommerce.openadmin.server.security.domain.AdminRole',-47),
	(-970,'org.broadleafcommerce.openadmin.server.security.domain.AdminRole',-46),
	(-961,'org.broadleafcommerce.common.config.domain.SystemProperty',-45),
	(-960,'org.broadleafcommerce.common.config.domain.SystemProperty',-44),
	(-953,'org.broadleafcommerce.common.sitemap.domain.SiteMapURLEntry',-43),
	(-952,'org.broadleafcommerce.common.sitemap.domain.SiteMapURLEntry',-42),
	(-951,'org.broadleafcommerce.common.sitemap.domain.SiteMapGeneratorConfiguration',-43),
	(-950,'org.broadleafcommerce.common.sitemap.domain.SiteMapGeneratorConfiguration',-42),
	(-911,'org.broadleafcommerce.common.i18n.domain.Translation',-41),
	(-910,'org.broadleafcommerce.common.i18n.domain.Translation',-40),
	(-903,'org.broadleafcommerce.common.enumeration.domain.DataDrivenEnumerationValue',-39),
	(-902,'org.broadleafcommerce.common.enumeration.domain.DataDrivenEnumerationValue',-38),
	(-901,'org.broadleafcommerce.common.enumeration.domain.DataDrivenEnumeration',-39),
	(-900,'org.broadleafcommerce.common.enumeration.domain.DataDrivenEnumeration',-38),
	(-881,'org.broadleafcommerce.common.config.domain.ModuleConfiguration',-37),
	(-880,'org.broadleafcommerce.common.config.domain.ModuleConfiguration',-36),
	(-851,'org.broadleafcommerce.common.currency.domain.BroadleafCurrency',-35),
	(-850,'org.broadleafcommerce.common.currency.domain.BroadleafCurrency',-34),
	(-813,'org.broadleafcommerce.core.search.domain.IndexFieldType',-33),
	(-812,'org.broadleafcommerce.core.search.domain.IndexFieldType',-32),
	(-811,'org.broadleafcommerce.core.search.domain.IndexField',-33),
	(-810,'org.broadleafcommerce.core.search.domain.IndexField',-32),
	(-809,'org.broadleafcommerce.core.search.domain.CategoryExcludedSearchFacet',-33),
	(-808,'org.broadleafcommerce.core.search.domain.CategoryExcludedSearchFacet',-32),
	(-807,'org.broadleafcommerce.core.search.domain.SearchFacetRange',-33),
	(-806,'org.broadleafcommerce.core.search.domain.SearchFacetRange',-32),
	(-805,'org.broadleafcommerce.core.search.domain.CategorySearchFacet',-33),
	(-804,'org.broadleafcommerce.core.search.domain.CategorySearchFacet',-32),
	(-803,'org.broadleafcommerce.core.search.domain.Field',-33),
	(-802,'org.broadleafcommerce.core.search.domain.Field',-32),
	(-801,'org.broadleafcommerce.core.search.domain.SearchFacet',-33),
	(-800,'org.broadleafcommerce.core.search.domain.SearchFacet',-32),
	(-781,'org.broadleafcommerce.core.search.redirect.domain.SearchRedirect',-31),
	(-780,'org.broadleafcommerce.core.search.redirect.domain.SearchRedirect',-30),
	(-753,'org.broadleafcommerce.common.locale.domain.Locale',-29),
	(-752,'org.broadleafcommerce.common.locale.domain.Locale',-28),
	(-751,'org.broadleafcommerce.cms.url.domain.URLHandler',-29),
	(-750,'org.broadleafcommerce.cms.url.domain.URLHandler',-28),
	(-721,'org.broadleafcommerce.openadmin.server.security.domain.AdminUser',-27),
	(-720,'org.broadleafcommerce.openadmin.server.security.domain.AdminUser',-26),
	(-603,'org.broadleafcommerce.cms.file.domain.StaticAssetFolder',-23),
	(-602,'org.broadleafcommerce.cms.file.domain.StaticAssetFolder',-22),
	(-601,'org.broadleafcommerce.cms.file.domain.StaticAsset',-23),
	(-600,'org.broadleafcommerce.cms.file.domain.StaticAsset',-22),
	(-557,'org.broadleafcommerce.common.locale.domain.Locale',-21),
	(-556,'org.broadleafcommerce.common.locale.domain.Locale',-20),
	(-555,'org.broadleafcommerce.cms.page.domain.PageItemCriteria',-21),
	(-554,'org.broadleafcommerce.cms.page.domain.PageItemCriteria',-20),
	(-552,'org.broadleafcommerce.cms.page.domain.PageTemplate',-200),
	(-551,'org.broadleafcommerce.cms.page.domain.Page',-21),
	(-550,'org.broadleafcommerce.cms.page.domain.Page',-20),
	(-514,'org.broadleafcommerce.core.catalog.domain.CrossSaleProductImpl',-19),
	(-513,'org.broadleafcommerce.core.catalog.domain.CrossSaleProductImpl',-18),
	(-512,'org.broadleafcommerce.profile.core.domain.CustomerPhone',-19),
	(-511,'org.broadleafcommerce.profile.core.domain.CustomerPhone',-18),
	(-510,'org.broadleafcommerce.profile.core.domain.CustomerPayment',-19),
	(-509,'org.broadleafcommerce.profile.core.domain.CustomerPayment',-18),
	(-508,'org.broadleafcommerce.profile.core.domain.CustomerAddress',-19),
	(-507,'org.broadleafcommerce.profile.core.domain.CustomerAddress',-18),
	(-506,'org.broadleafcommerce.profile.core.domain.CustomerAttribute',-19),
	(-504,'org.broadleafcommerce.profile.core.domain.CustomerAttribute',-18),
	(-503,'org.broadleafcommerce.profile.core.domain.ChallengeQuestion',-19),
	(-502,'org.broadleafcommerce.profile.core.domain.ChallengeQuestion',-18),
	(-501,'org.broadleafcommerce.profile.core.domain.Customer',-19),
	(-500,'org.broadleafcommerce.profile.core.domain.Customer',-18),
	(-461,'org.broadleafcommerce.core.order.domain.BundleOrderItemFeePriceImpl',-17),
	(-460,'org.broadleafcommerce.core.order.domain.BundleOrderItemFeePriceImpl',-16),
	(-459,'org.broadleafcommerce.core.order.domain.OrderItemPriceDetailImpl',-17),
	(-458,'org.broadleafcommerce.core.order.domain.OrderItemPriceDetailImpl',-16),
	(-457,'org.broadleafcommerce.core.offer.domain.OrderItemPriceDetailAdjustmentImpl',-17),
	(-456,'org.broadleafcommerce.core.offer.domain.OrderItemPriceDetailAdjustmentImpl',-16),
	(-455,'org.broadleafcommerce.core.offer.domain.OrderItemAdjustment',-17),
	(-454,'org.broadleafcommerce.core.offer.domain.OrderItemAdjustment',-16),
	(-453,'org.broadleafcommerce.core.order.domain.DiscreteOrderItemFeePrice',-17),
	(-452,'org.broadleafcommerce.core.order.domain.DiscreteOrderItemFeePrice',-16),
	(-451,'org.broadleafcommerce.core.order.domain.OrderItem',-17),
	(-450,'org.broadleafcommerce.core.order.domain.OrderItem',-16),
	(-407,'org.broadleafcommerce.core.order.domain.FulfillmentGroupItemImpl',-15),
	(-406,'org.broadleafcommerce.core.order.domain.FulfillmentGroupItemImpl',-14),
	(-405,'org.broadleafcommerce.core.order.domain.FulfillmentGroupFeeImpl',-15),
	(-404,'org.broadleafcommerce.core.order.domain.FulfillmentGroupFeeImpl',-14),
	(-403,'org.broadleafcommerce.core.offer.domain.FulfillmentGroupAdjustment',-15),
	(-402,'org.broadleafcommerce.core.offer.domain.FulfillmentGroupAdjustment',-14),
	(-401,'org.broadleafcommerce.core.order.domain.FulfillmentGroup',-15),
	(-400,'org.broadleafcommerce.core.order.domain.FulfillmentGroup',-14),
	(-370,'org.broadleafcommerce.core.payment.domain.PaymentTransactionImpl',-13),
	(-369,'org.broadleafcommerce.core.payment.domain.PaymentTransactionImpl',-12),
	(-368,'org.broadleafcommerce.profile.core.domain.State',-13),
	(-367,'org.broadleafcommerce.profile.core.domain.State',-12),
	(-366,'org.broadleafcommerce.profile.core.domain.Country',-13),
	(-365,'org.broadleafcommerce.profile.core.domain.Country',-12),
	(-361,'org.broadleafcommerce.core.payment.domain.OrderPayment',-13),
	(-360,'org.broadleafcommerce.core.payment.domain.OrderPayment',-12),
	(-356,'org.broadleafcommerce.core.offer.domain.OrderAdjustment',-13),
	(-355,'org.broadleafcommerce.core.offer.domain.OrderAdjustment',-12),
	(-351,'org.broadleafcommerce.core.order.domain.Order',-13),
	(-350,'org.broadleafcommerce.core.order.domain.Order',-12),
	(-307,'org.broadleafcommerce.core.offer.domain.OfferTier',-11),
	(-306,'org.broadleafcommerce.core.offer.domain.OfferTier',-10),
	(-305,'org.broadleafcommerce.core.offer.domain.OfferCode',-11),
	(-304,'org.broadleafcommerce.core.offer.domain.OfferCode',-10),
	(-303,'org.broadleafcommerce.core.offer.domain.OfferItemCriteria',-11),
	(-302,'org.broadleafcommerce.core.offer.domain.OfferItemCriteria',-10),
	(-301,'org.broadleafcommerce.core.offer.domain.Offer',-11),
	(-300,'org.broadleafcommerce.core.offer.domain.Offer',-10),
	(-251,'org.broadleafcommerce.core.catalog.domain.Sku',-9),
	(-250,'org.broadleafcommerce.core.catalog.domain.Sku',-8),
	(-207,'org.broadleafcommerce.core.catalog.domain.SkuProductOptionValueXref',-7),
	(-206,'org.broadleafcommerce.core.catalog.domain.SkuProductOptionValueXref',-6),
	(-205,'org.broadleafcommerce.core.catalog.domain.ProductOptionXref',-7),
	(-204,'org.broadleafcommerce.core.catalog.domain.ProductOptionXref',-6),
	(-203,'org.broadleafcommerce.core.catalog.domain.ProductOptionValue',-7),
	(-202,'org.broadleafcommerce.core.catalog.domain.ProductOptionValue',-6),
	(-201,'org.broadleafcommerce.core.catalog.domain.ProductOption',-7),
	(-200,'org.broadleafcommerce.core.catalog.domain.ProductOption',-6),
	(-107,'org.broadleafcommerce.core.catalog.domain.SkuBundleItemImpl',-5),
	(-106,'org.broadleafcommerce.core.catalog.domain.SkuBundleItemImpl',-4),
	(-105,'org.broadleafcommerce.core.catalog.domain.UpSaleProductImpl',-5),
	(-104,'org.broadleafcommerce.core.catalog.domain.UpSaleProductImpl',-4),
	(-103,'org.broadleafcommerce.core.catalog.domain.ProductAttribute',-5),
	(-102,'org.broadleafcommerce.core.catalog.domain.ProductAttribute',-4),
	(-101,'org.broadleafcommerce.core.catalog.domain.Product',-5),
	(-100,'org.broadleafcommerce.core.catalog.domain.Product',-4),
	(-14,'org.broadleafcommerce.core.catalog.domain.UpSaleProductImpl',-3),
	(-13,'org.broadleafcommerce.core.catalog.domain.UpSaleProductImpl',-2),
	(-12,'org.broadleafcommerce.core.catalog.domain.CrossSaleProductImpl',-3),
	(-11,'org.broadleafcommerce.core.catalog.domain.CrossSaleProductImpl',-2),
	(-10,'org.broadleafcommerce.core.catalog.domain.FeaturedProductImpl',-3),
	(-9,'org.broadleafcommerce.core.catalog.domain.FeaturedProductImpl',-2),
	(-8,'org.broadleafcommerce.core.catalog.domain.CategoryXrefImpl',-3),
	(-7,'org.broadleafcommerce.core.catalog.domain.CategoryXrefImpl',-2),
	(-6,'org.broadleafcommerce.core.catalog.domain.CategoryProductXrefImpl',-3),
	(-5,'org.broadleafcommerce.core.catalog.domain.CategoryProductXrefImpl',-2),
	(-4,'org.broadleafcommerce.core.catalog.domain.CategoryAttribute',-3),
	(-3,'org.broadleafcommerce.core.catalog.domain.CategoryAttribute',-2),
	(-2,'org.broadleafcommerce.core.catalog.domain.Category',-3),
	(-1,'org.broadleafcommerce.core.catalog.domain.Category',-2);

/*!40000 ALTER TABLE `BLC_ADMIN_PERMISSION_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BLC_ADMIN_PERMISSION_XREF
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_ADMIN_PERMISSION_XREF`;

CREATE TABLE `BLC_ADMIN_PERMISSION_XREF` (
  `CHILD_PERMISSION_ID` bigint(20) NOT NULL,
  `ADMIN_PERMISSION_ID` bigint(20) NOT NULL,
  KEY `FKBCAD1F5E88B7D38` (`ADMIN_PERMISSION_ID`),
  KEY `FKBCAD1F575A3C445` (`CHILD_PERMISSION_ID`),
  CONSTRAINT `FKBCAD1F575A3C445` FOREIGN KEY (`CHILD_PERMISSION_ID`) REFERENCES `BLC_ADMIN_PERMISSION` (`ADMIN_PERMISSION_ID`),
  CONSTRAINT `FKBCAD1F5E88B7D38` FOREIGN KEY (`ADMIN_PERMISSION_ID`) REFERENCES `BLC_ADMIN_PERMISSION` (`ADMIN_PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `BLC_ADMIN_PERMISSION_XREF` WRITE;
/*!40000 ALTER TABLE `BLC_ADMIN_PERMISSION_XREF` DISABLE KEYS */;

INSERT INTO `BLC_ADMIN_PERMISSION_XREF` (`CHILD_PERMISSION_ID`, `ADMIN_PERMISSION_ID`)
VALUES
	(-2,-100),
	(-4,-100),
	(-32,-100),
	(-53,-100),
	(-3,-101),
	(-4,-101),
	(-32,-101),
	(-53,-101),
	(-4,-102),
	(-6,-102),
	(-8,-102),
	(-34,-102),
	(-53,-101),
	(-5,-103),
	(-6,-103),
	(-9,-103),
	(-34,-103),
	(-53,-103),
	(-6,-104),
	(-32,-104),
	(-53,-104),
	(-7,-105),
	(-32,-105),
	(-53,-105),
	(-10,-106),
	(-53,-106),
	(-11,-107),
	(-53,-106),
	(-20,-108),
	(-200,-108),
	(-21,-109),
	(-200,-109),
	(-22,-110),
	(-23,-111),
	(-28,-114),
	(-29,-115),
	(-18,-118),
	(-19,-119),
	(-26,-120),
	(-46,-120),
	(-48,-120),
	(-27,-121),
	(-46,-120),
	(-48,-120),
	(-36,-126),
	(-37,-127),
	(-40,-130),
	(-41,-131),
	(-46,-140),
	(-48,-140),
	(-47,-141),
	(-48,-141),
	(-48,-150),
	(-49,-151),
	(-50,-160),
	(-51,-161);

/*!40000 ALTER TABLE `BLC_ADMIN_PERMISSION_XREF` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BLC_ADMIN_ROLE
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_ADMIN_ROLE`;

CREATE TABLE `BLC_ADMIN_ROLE` (
  `ADMIN_ROLE_ID` bigint(20) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ADMIN_ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `BLC_ADMIN_ROLE` WRITE;
/*!40000 ALTER TABLE `BLC_ADMIN_ROLE` DISABLE KEYS */;

INSERT INTO `BLC_ADMIN_ROLE` (`ADMIN_ROLE_ID`, `DESCRIPTION`, `NAME`)
VALUES
	(-7,'CMS Designer','ROLE_CONTENT_DESIGNER'),
	(-6,'CMS Approver','ROLE_CONTENT_APPROVER'),
	(-5,'CMS Editor','ROLE_CONTENT_EDITOR'),
	(-4,'CSR','ROLE_CUSTOMER_SERVICE_REP'),
	(-3,'Promotion Manager','ROLE_PROMOTION_MANAGER'),
	(-2,'Merchandiser','ROLE_MERCHANDISE_MANAGER'),
	(-1,'Admin Master Access','ROLE_ADMIN');

/*!40000 ALTER TABLE `BLC_ADMIN_ROLE` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BLC_ADMIN_ROLE_PERMISSION_XREF
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_ADMIN_ROLE_PERMISSION_XREF`;

CREATE TABLE `BLC_ADMIN_ROLE_PERMISSION_XREF` (
  `ADMIN_ROLE_ID` bigint(20) NOT NULL,
  `ADMIN_PERMISSION_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ADMIN_PERMISSION_ID`,`ADMIN_ROLE_ID`),
  KEY `FK4A819D98E88B7D38` (`ADMIN_PERMISSION_ID`),
  KEY `FK4A819D985F43AAD8` (`ADMIN_ROLE_ID`),
  CONSTRAINT `FK4A819D985F43AAD8` FOREIGN KEY (`ADMIN_ROLE_ID`) REFERENCES `BLC_ADMIN_ROLE` (`ADMIN_ROLE_ID`),
  CONSTRAINT `FK4A819D98E88B7D38` FOREIGN KEY (`ADMIN_PERMISSION_ID`) REFERENCES `BLC_ADMIN_PERMISSION` (`ADMIN_PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `BLC_ADMIN_ROLE_PERMISSION_XREF` WRITE;
/*!40000 ALTER TABLE `BLC_ADMIN_ROLE_PERMISSION_XREF` DISABLE KEYS */;

INSERT INTO `BLC_ADMIN_ROLE_PERMISSION_XREF` (`ADMIN_ROLE_ID`, `ADMIN_PERMISSION_ID`)
VALUES
	(-5,-161),
	(-1,-161),
	(-1,-141),
	(-5,-131),
	(-3,-131),
	(-2,-131),
	(-1,-131),
	(-1,-121),
	(-4,-119),
	(-1,-119),
	(-1,-115),
	(-6,-111),
	(-5,-111),
	(-2,-111),
	(-1,-111),
	(-6,-109),
	(-5,-109),
	(-1,-109),
	(-3,-107),
	(-1,-107),
	(-2,-105),
	(-1,-105),
	(-2,-103),
	(-1,-103),
	(-2,-101),
	(-1,-101);

/*!40000 ALTER TABLE `BLC_ADMIN_ROLE_PERMISSION_XREF` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BLC_ADMIN_SEC_PERM_XREF
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_ADMIN_SEC_PERM_XREF`;

CREATE TABLE `BLC_ADMIN_SEC_PERM_XREF` (
  `ADMIN_SECTION_ID` bigint(20) NOT NULL,
  `ADMIN_PERMISSION_ID` bigint(20) NOT NULL,
  KEY `FK5E832966E88B7D38` (`ADMIN_PERMISSION_ID`),
  KEY `FK5E8329663AF7F0FC` (`ADMIN_SECTION_ID`),
  CONSTRAINT `FK5E8329663AF7F0FC` FOREIGN KEY (`ADMIN_SECTION_ID`) REFERENCES `BLC_ADMIN_SECTION` (`ADMIN_SECTION_ID`),
  CONSTRAINT `FK5E832966E88B7D38` FOREIGN KEY (`ADMIN_PERMISSION_ID`) REFERENCES `BLC_ADMIN_PERMISSION` (`ADMIN_PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `BLC_ADMIN_SEC_PERM_XREF` WRITE;
/*!40000 ALTER TABLE `BLC_ADMIN_SEC_PERM_XREF` DISABLE KEYS */;

INSERT INTO `BLC_ADMIN_SEC_PERM_XREF` (`ADMIN_SECTION_ID`, `ADMIN_PERMISSION_ID`)
VALUES
	(-1,-100),
	(-1,-101),
	(-2,-102),
	(-2,-103),
	(-3,-104),
	(-3,-105),
	(-4,-106),
	(-4,-107),
	(-5,-108),
	(-5,-109),
	(-6,-110),
	(-6,-111),
	(-8,-114),
	(-8,-115),
	(-10,-118),
	(-10,-119),
	(-11,-120),
	(-11,-121),
	(-12,-140),
	(-12,-141),
	(-13,-126),
	(-13,-127),
	(-17,-150),
	(-17,-151);

/*!40000 ALTER TABLE `BLC_ADMIN_SEC_PERM_XREF` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BLC_ADMIN_SECTION
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_ADMIN_SECTION`;

CREATE TABLE `BLC_ADMIN_SECTION` (
  `ADMIN_SECTION_ID` bigint(20) NOT NULL,
  `CEILING_ENTITY` varchar(255) DEFAULT NULL,
  `DISPLAY_CONTROLLER` varchar(255) DEFAULT NULL,
  `DISPLAY_ORDER` int(11) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `SECTION_KEY` varchar(255) NOT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `USE_DEFAULT_HANDLER` tinyint(1) DEFAULT NULL,
  `ADMIN_MODULE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ADMIN_SECTION_ID`),
  UNIQUE KEY `uc_BLC_ADMIN_SECTION_1` (`SECTION_KEY`),
  KEY `ADMINSECTION_MODULE_INDEX` (`ADMIN_MODULE_ID`),
  KEY `ADMINSECTION_NAME_INDEX` (`NAME`),
  KEY `FK7EA7D92FB1A18498` (`ADMIN_MODULE_ID`),
  CONSTRAINT `FK7EA7D92FB1A18498` FOREIGN KEY (`ADMIN_MODULE_ID`) REFERENCES `BLC_ADMIN_MODULE` (`ADMIN_MODULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `BLC_ADMIN_SECTION` WRITE;
/*!40000 ALTER TABLE `BLC_ADMIN_SECTION` DISABLE KEYS */;

INSERT INTO `BLC_ADMIN_SECTION` (`ADMIN_SECTION_ID`, `CEILING_ENTITY`, `DISPLAY_CONTROLLER`, `DISPLAY_ORDER`, `NAME`, `SECTION_KEY`, `URL`, `USE_DEFAULT_HANDLER`, `ADMIN_MODULE_ID`)
VALUES
	(-17,'org.broadleafcommerce.openadmin.server.security.domain.AdminPermission',NULL,11000,'Permission Management','PermissionManagement','/permission-management',NULL,-5),
	(-13,'org.broadleafcommerce.common.config.domain.ModuleConfiguration',NULL,10000,'Configuration Management','ConfigurationManagement','/configuration-management',NULL,-5),
	(-12,'org.broadleafcommerce.openadmin.server.security.domain.AdminRole',NULL,3000,'Role Management','RoleManagement','/role-management',NULL,-5),
	(-11,'org.broadleafcommerce.openadmin.server.security.domain.AdminUser',NULL,2000,'User Management','UserManagement','/user-management',NULL,-5),
	(-10,'org.broadleafcommerce.profile.core.domain.Customer',NULL,1000,'Customer','Customer','/customer',NULL,-3),
	(-8,'org.broadleafcommerce.openadmin.server.security.domain.AdminPermissionQualifiedEntity',NULL,7000,'Redirect URL','RedirectURL','/redirect-url',NULL,-2),
	(-6,'org.broadleafcommerce.common.i18n.domain.Translation',NULL,4000,'Assets','Assets','/assets',NULL,-2),
	(-5,'org.broadleafcommerce.openadmin.server.security.domain.AdminUser',NULL,2000,'Pages','Pages','/pages',NULL,-2),
	(-4,'org.broadleafcommerce.common.config.domain.ModuleConfiguration',NULL,1000,'Offer','Offer','/offer',NULL,-8),
	(-3,'org.broadleafcommerce.common.i18n.domain.ISOCountry',NULL,5000,'Product Options','ProductOptions','/product-options',NULL,-1),
	(-2,'org.broadleafcommerce.common.config.domain.ModuleConfiguration',NULL,3000,'Product','Product','/product',NULL,-1),
	(-1,'org.broadleafcommerce.openadmin.server.security.domain.AdminPermission',NULL,2000,'Category','Category','/category',NULL,-1);

/*!40000 ALTER TABLE `BLC_ADMIN_SECTION` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table blc_admin_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blc_admin_user`;

CREATE TABLE `blc_admin_user` (
  `ADMIN_USER_ID` bigint(20) NOT NULL,
  `ACTIVE_STATUS_FLAG` tinyint(1) DEFAULT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `LOGIN` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `PHONE_NUMBER` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ADMIN_USER_ID`),
  KEY `ADMINPERM_EMAIL_INDEX` (`EMAIL`),
  KEY `ADMINUSER_NAME_INDEX` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `blc_admin_user` WRITE;
/*!40000 ALTER TABLE `blc_admin_user` DISABLE KEYS */;

INSERT INTO `blc_admin_user` (`ADMIN_USER_ID`, `ACTIVE_STATUS_FLAG`, `EMAIL`, `LOGIN`, `NAME`, `PASSWORD`, `PHONE_NUMBER`)
VALUES
	(-6,1,'cms_approver@yourdomain.com','cmsApprover','CMS Approver','admin',NULL),
	(-5,1,'cms_edit@yourdomain.com','cmsEditor','CMS Editor','admin',NULL),
	(-4,1,'csr@yourdomain.com','csr','CSR','admin',NULL),
	(-3,1,'promo@yourdomain.com','promo','Promotion Manager','admin',NULL),
	(-2,1,'merchandise@yourdomain.com','merchandise','Merchandise Manager','admin',NULL),
	(-1,1,'admin@yourdomain.com','admin','Administrator','admin',NULL);

/*!40000 ALTER TABLE `blc_admin_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BLC_ADMIN_USER_ADDTL_FIELDS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_ADMIN_USER_ADDTL_FIELDS`;

CREATE TABLE `BLC_ADMIN_USER_ADDTL_FIELDS` (
  `ATTRIBUTE_ID` bigint(20) NOT NULL,
  `FIELD_NAME` varchar(255) NOT NULL,
  `FIELD_VALUE` varchar(255) DEFAULT NULL,
  `ADMIN_USER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ATTRIBUTE_ID`),
  KEY `ADMINUSERATTRIBUTE_INDEX` (`ADMIN_USER_ID`),
  KEY `ADMINUSERATTRIBUTE_NAME_INDEX` (`FIELD_NAME`),
  KEY `FK73274CDD46EBC38` (`ADMIN_USER_ID`),
  CONSTRAINT `FK73274CDD46EBC38` FOREIGN KEY (`ADMIN_USER_ID`) REFERENCES `BLC_ADMIN_USER` (`ADMIN_USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table BLC_ADMIN_USER_PERMISSION_XREF
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_ADMIN_USER_PERMISSION_XREF`;

CREATE TABLE `BLC_ADMIN_USER_PERMISSION_XREF` (
  `ADMIN_USER_ID` bigint(20) NOT NULL,
  `ADMIN_PERMISSION_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ADMIN_PERMISSION_ID`,`ADMIN_USER_ID`),
  KEY `FKF0B3BEEDE88B7D38` (`ADMIN_PERMISSION_ID`),
  KEY `FKF0B3BEED46EBC38` (`ADMIN_USER_ID`),
  CONSTRAINT `FKF0B3BEED46EBC38` FOREIGN KEY (`ADMIN_USER_ID`) REFERENCES `BLC_ADMIN_USER` (`ADMIN_USER_ID`),
  CONSTRAINT `FKF0B3BEEDE88B7D38` FOREIGN KEY (`ADMIN_PERMISSION_ID`) REFERENCES `BLC_ADMIN_PERMISSION` (`ADMIN_PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `BLC_ADMIN_USER_PERMISSION_XREF` WRITE;
/*!40000 ALTER TABLE `BLC_ADMIN_USER_PERMISSION_XREF` DISABLE KEYS */;

INSERT INTO `BLC_ADMIN_USER_PERMISSION_XREF` (`ADMIN_USER_ID`, `ADMIN_PERMISSION_ID`)
VALUES
	(-1,-37);

/*!40000 ALTER TABLE `BLC_ADMIN_USER_PERMISSION_XREF` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BLC_ADMIN_USER_ROLE_XREF
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_ADMIN_USER_ROLE_XREF`;

CREATE TABLE `BLC_ADMIN_USER_ROLE_XREF` (
  `ADMIN_USER_ID` bigint(20) NOT NULL,
  `ADMIN_ROLE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ADMIN_ROLE_ID`,`ADMIN_USER_ID`),
  KEY `FKFFD33A265F43AAD8` (`ADMIN_ROLE_ID`),
  KEY `FKFFD33A2646EBC38` (`ADMIN_USER_ID`),
  CONSTRAINT `FKFFD33A2646EBC38` FOREIGN KEY (`ADMIN_USER_ID`) REFERENCES `BLC_ADMIN_USER` (`ADMIN_USER_ID`),
  CONSTRAINT `FKFFD33A265F43AAD8` FOREIGN KEY (`ADMIN_ROLE_ID`) REFERENCES `BLC_ADMIN_ROLE` (`ADMIN_ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `BLC_ADMIN_USER_ROLE_XREF` WRITE;
/*!40000 ALTER TABLE `BLC_ADMIN_USER_ROLE_XREF` DISABLE KEYS */;

INSERT INTO `BLC_ADMIN_USER_ROLE_XREF` (`ADMIN_USER_ID`, `ADMIN_ROLE_ID`)
VALUES
	(-6,-6),
	(-5,-5),
	(-4,-4),
	(-3,-3),
	(-2,-2),
	(-1,-1);

/*!40000 ALTER TABLE `BLC_ADMIN_USER_ROLE_XREF` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BLC_ADMIN_USER_SANDBOX
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_ADMIN_USER_SANDBOX`;

CREATE TABLE `BLC_ADMIN_USER_SANDBOX` (
  `SANDBOX_ID` bigint(20) DEFAULT NULL,
  `ADMIN_USER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ADMIN_USER_ID`),
  KEY `FKD0A97E09579FE59D` (`SANDBOX_ID`),
  KEY `FKD0A97E0946EBC38` (`ADMIN_USER_ID`),
  CONSTRAINT `FKD0A97E0946EBC38` FOREIGN KEY (`ADMIN_USER_ID`) REFERENCES `BLC_ADMIN_USER` (`ADMIN_USER_ID`),
  CONSTRAINT `FKD0A97E09579FE59D` FOREIGN KEY (`SANDBOX_ID`) REFERENCES `BLC_SANDBOX` (`SANDBOX_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table BLC_CATALOG
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_CATALOG`;

CREATE TABLE `BLC_CATALOG` (
  `CATALOG_ID` bigint(20) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CATALOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table BLC_CHALLENGE_QUESTION
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_CHALLENGE_QUESTION`;

CREATE TABLE `BLC_CHALLENGE_QUESTION` (
  `QUESTION_ID` bigint(20) NOT NULL,
  `QUESTION` varchar(255) NOT NULL,
  PRIMARY KEY (`QUESTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `BLC_CHALLENGE_QUESTION` WRITE;
/*!40000 ALTER TABLE `BLC_CHALLENGE_QUESTION` DISABLE KEYS */;

INSERT INTO `BLC_CHALLENGE_QUESTION` (`QUESTION_ID`, `QUESTION`)
VALUES
	(1,'What is your favorite sports team?'),
	(2,'What was your high school name?'),
	(3,'What was your childhood nickname?'),
	(4,'What street did you live on in third grade?'),
	(5,'What is your oldest sibling\'s middle name?'),
	(6,'What school did you attend for sixth grade?'),
	(7,'Where does your nearest sibling live?'),
	(8,'What is your youngest brother\'s birthday?'),
	(9,'In what city or town was your first job?');

/*!40000 ALTER TABLE `BLC_CHALLENGE_QUESTION` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BLC_COUNTRY
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_COUNTRY`;

CREATE TABLE `BLC_COUNTRY` (
  `ABBREVIATION` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ABBREVIATION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `BLC_COUNTRY` WRITE;
/*!40000 ALTER TABLE `BLC_COUNTRY` DISABLE KEYS */;

INSERT INTO `BLC_COUNTRY` (`ABBREVIATION`, `NAME`)
VALUES
	('CA','Canada'),
	('ES','Spain'),
	('FR','France'),
	('GB','United Kingdom'),
	('MX','Mexico'),
	('US','United States');

/*!40000 ALTER TABLE `BLC_COUNTRY` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BLC_COUNTRY_SUB
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_COUNTRY_SUB`;

CREATE TABLE `BLC_COUNTRY_SUB` (
  `ABBREVIATION` varchar(255) NOT NULL,
  `ALT_ABBREVIATION` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `COUNTRY_SUB_CAT` bigint(20) DEFAULT NULL,
  `COUNTRY` varchar(255) NOT NULL,
  PRIMARY KEY (`ABBREVIATION`),
  KEY `COUNTRY_SUB_ALT_ABRV_IDX` (`ALT_ABBREVIATION`),
  KEY `COUNTRY_SUB_NAME_IDX` (`NAME`),
  KEY `FKA804FBD172AAB3C0` (`COUNTRY_SUB_CAT`),
  KEY `FKA804FBD1A46E16CF` (`COUNTRY`),
  CONSTRAINT `FKA804FBD172AAB3C0` FOREIGN KEY (`COUNTRY_SUB_CAT`) REFERENCES `BLC_COUNTRY_SUB_CAT` (`COUNTRY_SUB_CAT_ID`),
  CONSTRAINT `FKA804FBD1A46E16CF` FOREIGN KEY (`COUNTRY`) REFERENCES `BLC_COUNTRY` (`ABBREVIATION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `BLC_COUNTRY_SUB` WRITE;
/*!40000 ALTER TABLE `BLC_COUNTRY_SUB` DISABLE KEYS */;

INSERT INTO `BLC_COUNTRY_SUB` (`ABBREVIATION`, `ALT_ABBREVIATION`, `NAME`, `COUNTRY_SUB_CAT`, `COUNTRY`)
VALUES
	('CA-AB','AB','ALBERTA',63,'CA'),
	('CA-BC','BC','BRITISH COLUMBIA',63,'CA'),
	('CA-MB','MB','MANITOBA',63,'CA'),
	('CA-NB','NB','NEW BRUNSWICK',63,'CA'),
	('CA-NL','NL','NEWFOUNDLAND',63,'CA'),
	('CA-NS','NS','NOVA SCOTIA',63,'CA'),
	('CA-NT','NT','NORTHWEST TERRITORIES',81,'CA'),
	('CA-NU','NU','NUNAVUT',81,'CA'),
	('CA-ON','ON','ONTARIO',63,'CA'),
	('CA-PE','PE','PRINCE EDWARD ISLAND',63,'CA'),
	('CA-QC','QC','QUEBEC',63,'CA'),
	('CA-SK','SK','SASKATCHEWAN',63,'CA'),
	('CA-YT','YT','YUKON',81,'CA'),
	('ES-A','A','Alicante',63,'ES'),
	('ES-AB','AB','Albacete',63,'ES'),
	('ES-AL','AL','Almería',63,'ES'),
	('ES-AV','AV','Ávila',63,'ES'),
	('ES-B','B','Barcelona',63,'ES'),
	('ES-BA','BA','Badajoz',63,'ES'),
	('ES-BI','BI','Vizcaya',63,'ES'),
	('ES-BU','BU','Burgos',63,'ES'),
	('ES-C','C','A Coruña',63,'ES'),
	('ES-CA','CA','Cádiz',63,'ES'),
	('ES-CC','CC','Cáceres',63,'ES'),
	('ES-CO','CO','Córdoba',63,'ES'),
	('ES-CR','CR','Ciudad Real',63,'ES'),
	('ES-CS','CS','Castellón',63,'ES'),
	('ES-CU','CU','Cuenca',63,'ES'),
	('ES-GC','GC','Las Palmas',63,'ES'),
	('ES-GI','GI','Girona',63,'ES'),
	('ES-GR','GR','Granada',63,'ES'),
	('ES-GU','GU','Guadalajara',63,'ES'),
	('ES-H','H','Huelva',63,'ES'),
	('ES-HU','HU','Huesca',63,'ES'),
	('ES-J','J','Jaén',63,'ES'),
	('ES-L','L','Lleida',63,'ES'),
	('ES-LE','LE','León',63,'ES'),
	('ES-LO','LO','La Rioja',63,'ES'),
	('ES-LU','LU','Lugo',63,'ES'),
	('ES-M','M','Madrid',63,'ES'),
	('ES-MA','MA','Málaga',63,'ES'),
	('ES-MU','MU','Murcia',63,'ES'),
	('ES-NA','NA','Navarra',63,'ES'),
	('ES-O','O','Asturias',63,'ES'),
	('ES-OR','OR','Ourense',63,'ES'),
	('ES-P','P','Palencia',63,'ES'),
	('ES-PM','PM','Balears',63,'ES'),
	('ES-PO','PO','Pontevedra',63,'ES'),
	('ES-S','S','Cantabria',63,'ES'),
	('ES-SA','SA','Salamanca',63,'ES'),
	('ES-SE','SE','Sevilla',63,'ES'),
	('ES-SG','SG','Segovia',63,'ES'),
	('ES-SO','SO','Soria',63,'ES'),
	('ES-SS','SS','Guipúzcoa',63,'ES'),
	('ES-T','T','Tarragona',63,'ES'),
	('ES-TE','TE','Teruel',63,'ES'),
	('ES-TF','TF','Santa Cruz de Tenerife',63,'ES'),
	('ES-TO','TO','Toledo',63,'ES'),
	('ES-V','V','Valencia',63,'ES'),
	('ES-VA','VA','Valladolid',63,'ES'),
	('ES-VI','VI','Álava',63,'ES'),
	('ES-Z','Z','Zaragoza',63,'ES'),
	('ES-ZA','ZA','Zamora',63,'ES'),
	('MX-AGU','AGU','AGUASCALIENTES',79,'MX'),
	('MX-BCN','BCN','BAJA CALIFORNIA',79,'MX'),
	('MX-BCS','BCS','BAJA CALIFORNIA SUR',79,'MX'),
	('MX-CAM','CAM','CAMPECHE',79,'MX'),
	('MX-CHH','CHH','CHIHUAHUA',79,'MX'),
	('MX-CHP','CHP','CHIAPAS',79,'MX'),
	('MX-COA','COA','COAHUILA',79,'MX'),
	('MX-COL','COL','COLIMA',79,'MX'),
	('MX-DIF','DIF','DISTRITO FEDERAL',39,'MX'),
	('MX-DUR','DUR','DURANGO',79,'MX'),
	('MX-GRO','GRO','GUERRERO',79,'MX'),
	('MX-GUA','GUA','GUANAJUATO',79,'MX'),
	('MX-HID','HID','HIDALGO',79,'MX'),
	('MX-JAL','JAL','JALISCO',79,'MX'),
	('MX-MEX','MEX','MÉXICO',79,'MX'),
	('MX-MIC','MIC','MICHOACÁN',79,'MX'),
	('MX-MOR','MOR','MORELOS',79,'MX'),
	('MX-NAY','NAY','NAYARIT',79,'MX'),
	('MX-NLE','NLE','NUEVO LEÓN',79,'MX'),
	('MX-OAX','OAX','OAXACA',79,'MX'),
	('MX-PUE','PUE','PUEBLA',79,'MX'),
	('MX-QUE','QUE','QUERÉTARO',79,'MX'),
	('MX-ROO','ROO','QUINTANA ROO',79,'MX'),
	('MX-SIN','SIN','SINALOA',79,'MX'),
	('MX-SLP','SLP','SAN LUIS POTOSÍ',79,'MX'),
	('MX-SON','SON','SONORA',79,'MX'),
	('MX-TAB','TAB','TABASCO',79,'MX'),
	('MX-TAM','TAM','TAMAULIPAS',79,'MX'),
	('MX-TLA','TLA','TLAXCALA',79,'MX'),
	('MX-VER','VER','VERACRUZ',79,'MX'),
	('MX-YUC','YUC','YUCATÁN',79,'MX'),
	('MX-ZAC','ZAC','ZACATECAS',79,'MX'),
	('US-AK','AK','ALASKA',79,'US'),
	('US-AL','AL','ALABAMA',79,'US'),
	('US-AR','AR','ARKANSAS',79,'US'),
	('US-AS','AS','AMERICAN SAMOA',57,'US'),
	('US-AZ','AZ','ARIZONA',79,'US'),
	('US-CA','CA','CALIFORNIA',79,'US'),
	('US-CO','CO','COLORADO',79,'US'),
	('US-CT','CT','CONNECTICUT',79,'US'),
	('US-DC','DC','DISTRICT OF COLUMBIA',31,'US'),
	('US-DE','DE','DELAWARE',79,'US'),
	('US-FL','FL','FLORIDA',79,'US'),
	('US-GA','GA','GEORGIA',79,'US'),
	('US-GU','GU','GUAM',57,'US'),
	('US-HI','HI','HAWAII',79,'US'),
	('US-IA','IA','IOWA',79,'US'),
	('US-ID','ID','IDAHO',79,'US'),
	('US-IL','IL','ILLINOIS',79,'US'),
	('US-IN','IN','INDIANA',79,'US'),
	('US-KS','KS','KANSAS',79,'US'),
	('US-KY','KY','KENTUCKY',79,'US'),
	('US-LA','LA','LOUISIANA',79,'US'),
	('US-MA','MA','MASSACHUSETTS',79,'US'),
	('US-MD','MD','MARYLAND',79,'US'),
	('US-ME','ME','MAINE',79,'US'),
	('US-MI','MI','MICHIGAN',79,'US'),
	('US-MN','MN','MINNESOTA',79,'US'),
	('US-MO','MO','MISSOURI',79,'US'),
	('US-MP','MP','NORTHERN MARIANA ISLANDS',57,'US'),
	('US-MS','MS','MISSISSIPPI',79,'US'),
	('US-MT','MT','MONTANA',79,'US'),
	('US-NC','NC','NORTH CAROLINA',79,'US'),
	('US-ND','ND','NORTH DAKOTA',79,'US'),
	('US-NE','NE','NEBRASKA',79,'US'),
	('US-NH','NH','NEW HAMPSHIRE',79,'US'),
	('US-NJ','NJ','NEW JERSEY',79,'US'),
	('US-NM','NM','NEW MEXICO',79,'US'),
	('US-NV','NV','NEVADA',79,'US'),
	('US-NY','NY','NEW YORK',79,'US'),
	('US-OH','OH','OHIO',79,'US'),
	('US-OK','OK','OKLAHOMA',79,'US'),
	('US-OR','OR','OREGON',79,'US'),
	('US-PA','PA','PENNSYLVANIA',79,'US'),
	('US-PR','PR','PUERTO RICO',57,'US'),
	('US-RI','RI','RHODE ISLAND',79,'US'),
	('US-SC','SC','SOUTH CAROLINA',79,'US'),
	('US-SD','SD','SOUTH DAKOTA',79,'US'),
	('US-TN','TN','TENNESSEE',79,'US'),
	('US-TX','TX','TEXAS',79,'US'),
	('US-UM','UM','UNITED STATES MINOR OUTLYING ISLANDS',57,'US'),
	('US-UT','UT','UTAH',79,'US'),
	('US-VA','VA','VIRGINIA',79,'US'),
	('US-VI','VI','VIRGIN ISLANDS',57,'US'),
	('US-VT','VT','VERMONT',79,'US'),
	('US-WA','WA','WASHINGTON',79,'US'),
	('US-WI','WI','WISCONSIN',79,'US'),
	('US-WV','WV','WEST VIRGINIA',79,'US'),
	('US-WY','WY','WYOMING',79,'US');

/*!40000 ALTER TABLE `BLC_COUNTRY_SUB` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BLC_COUNTRY_SUB_CAT
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_COUNTRY_SUB_CAT`;

CREATE TABLE `BLC_COUNTRY_SUB_CAT` (
  `COUNTRY_SUB_CAT_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`COUNTRY_SUB_CAT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `BLC_COUNTRY_SUB_CAT` WRITE;
/*!40000 ALTER TABLE `BLC_COUNTRY_SUB_CAT` DISABLE KEYS */;

INSERT INTO `BLC_COUNTRY_SUB_CAT` (`COUNTRY_SUB_CAT_ID`, `NAME`)
VALUES
	(1,'Administration'),
	(2,'Administrative Atoll'),
	(3,'Administrative Region'),
	(4,'Area'),
	(5,'Autonomous City'),
	(6,'Autonomous Community'),
	(7,'Autonomous District'),
	(8,'Autonomous Municipality'),
	(9,'Autonomous Province'),
	(10,'Autonomous Region'),
	(11,'Autonomous Republic'),
	(12,'Autonomous Sector'),
	(13,'Autonomous Territorial Unit'),
	(14,'Borough'),
	(15,'Canton'),
	(16,'Capital'),
	(17,'Capital City'),
	(18,'Capital District'),
	(19,'Capital Metropolitan City'),
	(20,'City'),
	(21,'City of County Right'),
	(22,'Commune'),
	(23,'Constitutional Province'),
	(24,'Corporation'),
	(25,'Council Area'),
	(26,'Country'),
	(27,'County'),
	(28,'Department'),
	(29,'Dependency'),
	(30,'Development Region'),
	(31,'District'),
	(32,'District With Special Status'),
	(33,'Division'),
	(34,'Economic Prefecture'),
	(35,'Emirate'),
	(36,'Entity'),
	(37,'Federal Capital Territory'),
	(38,'Federal Dependency'),
	(39,'Federal District'),
	(40,'Federal Land'),
	(41,'Federal Territory'),
	(42,'Federated States'),
	(43,'Geographical Entity'),
	(44,'Geographical Regions'),
	(45,'Governorate'),
	(46,'Indigenous Region'),
	(47,'Island'),
	(48,'Island Council'),
	(49,'Local Council'),
	(50,'Metropolitan Administration'),
	(51,'Metropolitan City'),
	(52,'Metropolitan Department'),
	(53,'Metropolitan Region'),
	(54,'Municipality'),
	(55,'Oblast'),
	(56,'Outlying Area'),
	(57,'Outlying Territory'),
	(58,'Overseas Region'),
	(59,'Overseas Territorial Collectivity'),
	(60,'Parish'),
	(61,'Popularate'),
	(62,'Prefecture'),
	(63,'Province'),
	(64,'Quarter'),
	(65,'Rayon'),
	(66,'Region'),
	(67,'Regional Council'),
	(68,'Republic'),
	(69,'Republican City'),
	(70,'Self-governed Part'),
	(71,'Special Administrative City'),
	(72,'Special Administrative Region'),
	(73,'Special City'),
	(74,'Special District'),
	(75,'Special Island Authority'),
	(76,'Special Municipality'),
	(77,'Special Region'),
	(78,'Special Zone'),
	(79,'State'),
	(80,'Territorial Unit'),
	(81,'Territory'),
	(82,'Town Council'),
	(83,'Union Territory'),
	(84,'Unitary Authority'),
	(85,'Urban Community'),
	(86,'Zone');

/*!40000 ALTER TABLE `BLC_COUNTRY_SUB_CAT` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BLC_CURRENCY
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_CURRENCY`;

CREATE TABLE `BLC_CURRENCY` (
  `CURRENCY_CODE` varchar(255) NOT NULL,
  `DEFAULT_FLAG` tinyint(1) DEFAULT NULL,
  `FRIENDLY_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CURRENCY_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `BLC_CURRENCY` WRITE;
/*!40000 ALTER TABLE `BLC_CURRENCY` DISABLE KEYS */;

INSERT INTO `BLC_CURRENCY` (`CURRENCY_CODE`, `DEFAULT_FLAG`, `FRIENDLY_NAME`)
VALUES
	('USD',1,'US Dollar');

/*!40000 ALTER TABLE `BLC_CURRENCY` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BLC_CUST_SITE_MAP_GEN_CFG
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_CUST_SITE_MAP_GEN_CFG`;

CREATE TABLE `BLC_CUST_SITE_MAP_GEN_CFG` (
  `GEN_CONFIG_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`GEN_CONFIG_ID`),
  KEY `FK67C0DBA0BCAB9F56` (`GEN_CONFIG_ID`),
  CONSTRAINT `FK67C0DBA0BCAB9F56` FOREIGN KEY (`GEN_CONFIG_ID`) REFERENCES `BLC_SITE_MAP_GEN_CFG` (`GEN_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table BLC_CUSTOMER
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_CUSTOMER`;

CREATE TABLE `BLC_CUSTOMER` (
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `CHALLENGE_ANSWER` varchar(255) DEFAULT NULL,
  `DEACTIVATED` tinyint(1) DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `IS_TAX_EXEMPT` tinyint(1) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `PASSWORD_CHANGE_REQUIRED` tinyint(1) DEFAULT NULL,
  `IS_PREVIEW` tinyint(1) DEFAULT NULL,
  `RECEIVE_EMAIL` tinyint(1) DEFAULT NULL,
  `IS_REGISTERED` tinyint(1) DEFAULT NULL,
  `TAX_EXEMPTION_CODE` varchar(255) DEFAULT NULL,
  `USER_NAME` varchar(255) DEFAULT NULL,
  `CHALLENGE_QUESTION_ID` bigint(20) DEFAULT NULL,
  `LOCALE_CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ID`),
  KEY `CUSTOMER_CHALLENGE_INDEX` (`CHALLENGE_QUESTION_ID`),
  KEY `CUSTOMER_EMAIL_INDEX` (`EMAIL_ADDRESS`),
  KEY `FK7716F0241422B204` (`CHALLENGE_QUESTION_ID`),
  KEY `FK7716F024A1E1C128` (`LOCALE_CODE`),
  CONSTRAINT `FK7716F0241422B204` FOREIGN KEY (`CHALLENGE_QUESTION_ID`) REFERENCES `BLC_CHALLENGE_QUESTION` (`QUESTION_ID`),
  CONSTRAINT `FK7716F024A1E1C128` FOREIGN KEY (`LOCALE_CODE`) REFERENCES `BLC_LOCALE` (`LOCALE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `BLC_CUSTOMER` WRITE;
/*!40000 ALTER TABLE `BLC_CUSTOMER` DISABLE KEYS */;

INSERT INTO `BLC_CUSTOMER` (`CUSTOMER_ID`, `CREATED_BY`, `DATE_CREATED`, `DATE_UPDATED`, `UPDATED_BY`, `CHALLENGE_ANSWER`, `DEACTIVATED`, `EMAIL_ADDRESS`, `FIRST_NAME`, `IS_TAX_EXEMPT`, `LAST_NAME`, `PASSWORD`, `PASSWORD_CHANGE_REQUIRED`, `IS_PREVIEW`, `RECEIVE_EMAIL`, `IS_REGISTERED`, `TAX_EXEMPTION_CODE`, `USER_NAME`, `CHALLENGE_QUESTION_ID`, `LOCALE_CODE`)
VALUES
	(1,-1,'2017-02-06 21:31:57','2017-02-06 21:31:57',-1,NULL,1,'czfyjl@163.com','Jack',0,'Lee',NULL,0,NULL,1,1,NULL,'JackLee',NULL,NULL);

/*!40000 ALTER TABLE `BLC_CUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BLC_CUSTOMER_ADDRESS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_CUSTOMER_ADDRESS`;

CREATE TABLE `BLC_CUSTOMER_ADDRESS` (
  `CUSTOMER_ADDRESS_ID` bigint(20) NOT NULL,
  `ADDRESS_NAME` varchar(255) DEFAULT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `ADDRESS_ID` bigint(20) NOT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CUSTOMER_ADDRESS_ID`),
  KEY `CUSTOMERADDRESS_ADDRESS_INDEX` (`ADDRESS_ID`),
  KEY `FK75B95AB9C13085DD` (`ADDRESS_ID`),
  KEY `FK75B95AB97470F437` (`CUSTOMER_ID`),
  CONSTRAINT `FK75B95AB97470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `BLC_CUSTOMER` (`CUSTOMER_ID`),
  CONSTRAINT `FK75B95AB9C13085DD` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `BLC_ADDRESS` (`ADDRESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `BLC_CUSTOMER_ADDRESS` WRITE;
/*!40000 ALTER TABLE `BLC_CUSTOMER_ADDRESS` DISABLE KEYS */;

INSERT INTO `BLC_CUSTOMER_ADDRESS` (`CUSTOMER_ADDRESS_ID`, `ADDRESS_NAME`, `ARCHIVED`, `ADDRESS_ID`, `CUSTOMER_ID`)
VALUES
	(1,'Home','N',1,1);

/*!40000 ALTER TABLE `BLC_CUSTOMER_ADDRESS` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BLC_CUSTOMER_ATTRIBUTE
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_CUSTOMER_ATTRIBUTE`;

CREATE TABLE `BLC_CUSTOMER_ATTRIBUTE` (
  `CUSTOMER_ATTR_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CUSTOMER_ATTR_ID`),
  KEY `FKB974C8217470F437` (`CUSTOMER_ID`),
  CONSTRAINT `FKB974C8217470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `BLC_CUSTOMER` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table BLC_CUSTOMER_PASSWORD_TOKEN
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_CUSTOMER_PASSWORD_TOKEN`;

CREATE TABLE `BLC_CUSTOMER_PASSWORD_TOKEN` (
  `PASSWORD_TOKEN` varchar(255) NOT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `TOKEN_USED_DATE` datetime DEFAULT NULL,
  `TOKEN_USED_FLAG` tinyint(1) NOT NULL,
  PRIMARY KEY (`PASSWORD_TOKEN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table BLC_CUSTOMER_PAYMENT
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_CUSTOMER_PAYMENT`;

CREATE TABLE `BLC_CUSTOMER_PAYMENT` (
  `CUSTOMER_PAYMENT_ID` bigint(20) NOT NULL,
  `IS_DEFAULT` tinyint(1) DEFAULT NULL,
  `GATEWAY_TYPE` varchar(255) DEFAULT NULL,
  `PAYMENT_TOKEN` varchar(255) DEFAULT NULL,
  `PAYMENT_TYPE` varchar(255) DEFAULT NULL,
  `ADDRESS_ID` bigint(20) DEFAULT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CUSTOMER_PAYMENT_ID`),
  UNIQUE KEY `CSTMR_PAY_UNIQUE_CNSTRNT` (`CUSTOMER_ID`,`PAYMENT_TOKEN`),
  KEY `CUSTOMERPAYMENT_TYPE_INDEX` (`PAYMENT_TYPE`),
  KEY `FK8B3DF0CBC13085DD` (`ADDRESS_ID`),
  KEY `FK8B3DF0CB7470F437` (`CUSTOMER_ID`),
  CONSTRAINT `FK8B3DF0CB7470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `BLC_CUSTOMER` (`CUSTOMER_ID`),
  CONSTRAINT `FK8B3DF0CBC13085DD` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `BLC_ADDRESS` (`ADDRESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table BLC_CUSTOMER_PAYMENT_FIELDS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_CUSTOMER_PAYMENT_FIELDS`;

CREATE TABLE `BLC_CUSTOMER_PAYMENT_FIELDS` (
  `CUSTOMER_PAYMENT_ID` bigint(20) NOT NULL,
  `FIELD_VALUE` longtext,
  `FIELD_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`CUSTOMER_PAYMENT_ID`,`FIELD_NAME`),
  KEY `FK5CCB14ADCA0B98E0` (`CUSTOMER_PAYMENT_ID`),
  CONSTRAINT `FK5CCB14ADCA0B98E0` FOREIGN KEY (`CUSTOMER_PAYMENT_ID`) REFERENCES `BLC_CUSTOMER_PAYMENT` (`CUSTOMER_PAYMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table BLC_CUSTOMER_PHONE
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_CUSTOMER_PHONE`;

CREATE TABLE `BLC_CUSTOMER_PHONE` (
  `CUSTOMER_PHONE_ID` bigint(20) NOT NULL,
  `PHONE_NAME` varchar(255) DEFAULT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `PHONE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CUSTOMER_PHONE_ID`),
  UNIQUE KEY `CSTMR_PHONE_UNIQUE_CNSTRNT` (`CUSTOMER_ID`,`PHONE_NAME`),
  KEY `CUSTPHONE_PHONE_INDEX` (`PHONE_ID`),
  KEY `FK3D28ED737470F437` (`CUSTOMER_ID`),
  KEY `FK3D28ED73D894CB5D` (`PHONE_ID`),
  CONSTRAINT `FK3D28ED737470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `BLC_CUSTOMER` (`CUSTOMER_ID`),
  CONSTRAINT `FK3D28ED73D894CB5D` FOREIGN KEY (`PHONE_ID`) REFERENCES `BLC_PHONE` (`PHONE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `BLC_CUSTOMER_PHONE` WRITE;
/*!40000 ALTER TABLE `BLC_CUSTOMER_PHONE` DISABLE KEYS */;

INSERT INTO `BLC_CUSTOMER_PHONE` (`CUSTOMER_PHONE_ID`, `PHONE_NAME`, `CUSTOMER_ID`, `PHONE_ID`)
VALUES
	(1,'IPhone',1,2);

/*!40000 ALTER TABLE `BLC_CUSTOMER_PHONE` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BLC_CUSTOMER_ROLE
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_CUSTOMER_ROLE`;

CREATE TABLE `BLC_CUSTOMER_ROLE` (
  `CUSTOMER_ROLE_ID` bigint(20) NOT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `ROLE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CUSTOMER_ROLE_ID`),
  KEY `CUSTROLE_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `CUSTROLE_ROLE_INDEX` (`ROLE_ID`),
  KEY `FK548EB7B17470F437` (`CUSTOMER_ID`),
  KEY `FK548EB7B1B8587B7` (`ROLE_ID`),
  CONSTRAINT `FK548EB7B17470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `BLC_CUSTOMER` (`CUSTOMER_ID`),
  CONSTRAINT `FK548EB7B1B8587B7` FOREIGN KEY (`ROLE_ID`) REFERENCES `BLC_ROLE` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table blc_data_drvn_enum
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blc_data_drvn_enum`;

CREATE TABLE `blc_data_drvn_enum` (
  `ENUM_ID` bigint(20) NOT NULL,
  `ENUM_KEY` varchar(255) DEFAULT NULL,
  `MODIFIABLE` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ENUM_ID`),
  KEY `ENUM_KEY_INDEX` (`ENUM_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table BLC_DATA_DRVN_ENUM_VAL
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_DATA_DRVN_ENUM_VAL`;

CREATE TABLE `BLC_DATA_DRVN_ENUM_VAL` (
  `ENUM_VAL_ID` bigint(20) NOT NULL,
  `DISPLAY` varchar(255) DEFAULT NULL,
  `HIDDEN` tinyint(1) DEFAULT NULL,
  `ENUM_KEY` varchar(255) DEFAULT NULL,
  `ENUM_TYPE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ENUM_VAL_ID`),
  KEY `HIDDEN_INDEX` (`HIDDEN`),
  KEY `ENUM_VAL_KEY_INDEX` (`ENUM_KEY`),
  KEY `FKB2D5700DA60E0554` (`ENUM_TYPE`),
  CONSTRAINT `FKB2D5700DA60E0554` FOREIGN KEY (`ENUM_TYPE`) REFERENCES `BLC_DATA_DRVN_ENUM` (`ENUM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table blc_email_tracking
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blc_email_tracking`;

CREATE TABLE `blc_email_tracking` (
  `EMAIL_TRACKING_ID` bigint(20) NOT NULL,
  `DATE_SENT` datetime DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`EMAIL_TRACKING_ID`),
  KEY `EMAILTRACKING_INDEX` (`EMAIL_ADDRESS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table BLC_EMAIL_TRACKING_CLICKS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_EMAIL_TRACKING_CLICKS`;

CREATE TABLE `BLC_EMAIL_TRACKING_CLICKS` (
  `CLICK_ID` bigint(20) NOT NULL,
  `CUSTOMER_ID` varchar(255) DEFAULT NULL,
  `DATE_CLICKED` datetime NOT NULL,
  `DESTINATION_URI` varchar(255) DEFAULT NULL,
  `QUERY_STRING` varchar(255) DEFAULT NULL,
  `EMAIL_TRACKING_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CLICK_ID`),
  KEY `TRACKINGCLICKS_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `TRACKINGCLICKS_TRACKING_INDEX` (`EMAIL_TRACKING_ID`),
  KEY `FKFDF9F52AFA1E5D61` (`EMAIL_TRACKING_ID`),
  CONSTRAINT `FKFDF9F52AFA1E5D61` FOREIGN KEY (`EMAIL_TRACKING_ID`) REFERENCES `BLC_EMAIL_TRACKING` (`EMAIL_TRACKING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table BLC_EMAIL_TRACKING_OPENS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_EMAIL_TRACKING_OPENS`;

CREATE TABLE `BLC_EMAIL_TRACKING_OPENS` (
  `OPEN_ID` bigint(20) NOT NULL,
  `DATE_OPENED` datetime DEFAULT NULL,
  `USER_AGENT` varchar(255) DEFAULT NULL,
  `EMAIL_TRACKING_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`OPEN_ID`),
  KEY `TRACKINGOPEN_TRACKING` (`EMAIL_TRACKING_ID`),
  KEY `FKA5C3722AFA1E5D61` (`EMAIL_TRACKING_ID`),
  CONSTRAINT `FKA5C3722AFA1E5D61` FOREIGN KEY (`EMAIL_TRACKING_ID`) REFERENCES `BLC_EMAIL_TRACKING` (`EMAIL_TRACKING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table BLC_ID_GENERATION
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_ID_GENERATION`;

CREATE TABLE `BLC_ID_GENERATION` (
  `ID_TYPE` varchar(255) NOT NULL,
  `BATCH_SIZE` bigint(20) NOT NULL,
  `BATCH_START` bigint(20) NOT NULL,
  `ID_MIN` bigint(20) DEFAULT NULL,
  `ID_MAX` bigint(20) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `BLC_ID_GENERATION` WRITE;
/*!40000 ALTER TABLE `BLC_ID_GENERATION` DISABLE KEYS */;

INSERT INTO `BLC_ID_GENERATION` (`ID_TYPE`, `BATCH_SIZE`, `BATCH_START`, `ID_MIN`, `ID_MAX`, `version`)
VALUES
	('org.broadleafcommerce.profile.core.domain.Customer',100,100,NULL,NULL,1);

/*!40000 ALTER TABLE `BLC_ID_GENERATION` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BLC_ISO_COUNTRY
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_ISO_COUNTRY`;

CREATE TABLE `BLC_ISO_COUNTRY` (
  `ALPHA_2` varchar(255) NOT NULL,
  `ALPHA_3` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `NUMERIC_CODE` int(11) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ALPHA_2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `BLC_ISO_COUNTRY` WRITE;
/*!40000 ALTER TABLE `BLC_ISO_COUNTRY` DISABLE KEYS */;

INSERT INTO `BLC_ISO_COUNTRY` (`ALPHA_2`, `ALPHA_3`, `NAME`, `NUMERIC_CODE`, `STATUS`)
VALUES
	('AA',NULL,NULL,-1,'USER_ASSIGNED'),
	('AB',NULL,NULL,-1,'UNASSIGNED'),
	('AC','ASC','Ascension Island',-1,'EXCEPTIONALLY_RESERVED'),
	('AD','AND','Andorra',20,'OFFICIALLY_ASSIGNED'),
	('AE','ARE','United Arab Emirates',784,'OFFICIALLY_ASSIGNED'),
	('AF','AFG','Afghanistan',4,'OFFICIALLY_ASSIGNED'),
	('AG','ATG','Antigua and Barbuda',28,'OFFICIALLY_ASSIGNED'),
	('AH',NULL,NULL,-1,'UNASSIGNED'),
	('AI','AIA','Anguilla',660,'OFFICIALLY_ASSIGNED'),
	('AJ',NULL,NULL,-1,'UNASSIGNED'),
	('AK',NULL,NULL,-1,'UNASSIGNED'),
	('AL','ALB','Albania',8,'OFFICIALLY_ASSIGNED'),
	('AM','ARM','Armenia',51,'OFFICIALLY_ASSIGNED'),
	('AN','ANHH','Netherlands Antilles',530,'TRANSITIONALLY_RESERVED'),
	('AO','AGO','Angola',24,'OFFICIALLY_ASSIGNED'),
	('AP',NULL,NULL,-1,'NOT_USED'),
	('AQ','ATA','Antarctica',10,'OFFICIALLY_ASSIGNED'),
	('AR','ARG','Argentina',32,'OFFICIALLY_ASSIGNED'),
	('AS','ASM','American Samoa',16,'OFFICIALLY_ASSIGNED'),
	('AT','AUT','Austria',40,'OFFICIALLY_ASSIGNED'),
	('AU','AUS','Australia',36,'OFFICIALLY_ASSIGNED'),
	('AV',NULL,NULL,-1,'UNASSIGNED'),
	('AW','ABW','Aruba',533,'OFFICIALLY_ASSIGNED'),
	('AX','ALA','Åland Islands',248,'OFFICIALLY_ASSIGNED'),
	('AY',NULL,NULL,-1,'UNASSIGNED'),
	('AZ','AZE','Azerbaijan',31,'OFFICIALLY_ASSIGNED'),
	('BA','BIH','Bosnia and Herzegovina',70,'OFFICIALLY_ASSIGNED'),
	('BB','BRB','Barbados',52,'OFFICIALLY_ASSIGNED'),
	('BC',NULL,NULL,-1,'UNASSIGNED'),
	('BD','BGD','Bangladesh',50,'OFFICIALLY_ASSIGNED'),
	('BE','BEL','Belgium',56,'OFFICIALLY_ASSIGNED'),
	('BF','BFA','Burkina Faso',854,'OFFICIALLY_ASSIGNED'),
	('BG','BGR','Bulgaria',100,'OFFICIALLY_ASSIGNED'),
	('BH','BHR','Bahrain',48,'OFFICIALLY_ASSIGNED'),
	('BI','BDI','Burundi',108,'OFFICIALLY_ASSIGNED'),
	('BJ','BEN','Benin',204,'OFFICIALLY_ASSIGNED'),
	('BK',NULL,NULL,-1,'UNASSIGNED'),
	('BL','BLM','Saint Barthélemy',652,'OFFICIALLY_ASSIGNED'),
	('BM','BMU','Bermuda',60,'OFFICIALLY_ASSIGNED'),
	('BN','BRN','Brunei Darussalam',96,'OFFICIALLY_ASSIGNED'),
	('BO','BOL','Bolivia, Plurinational State of',68,'OFFICIALLY_ASSIGNED'),
	('BP',NULL,NULL,-1,'UNASSIGNED'),
	('BQ','BES','Bonaire, Sint Eustatius and Saba',535,'OFFICIALLY_ASSIGNED'),
	('BR','BRA','Brazil',76,'OFFICIALLY_ASSIGNED'),
	('BS','BHS','Bahamas',44,'OFFICIALLY_ASSIGNED'),
	('BT','BTN','Bhutan',64,'OFFICIALLY_ASSIGNED'),
	('BU','BUMM','Burma',104,'TRANSITIONALLY_RESERVED'),
	('BV','BVT','Bouvet Island',74,'OFFICIALLY_ASSIGNED'),
	('BW','BWA','Botswana',72,'OFFICIALLY_ASSIGNED'),
	('BX',NULL,NULL,-1,'NOT_USED'),
	('BY','BLR','Belarus',112,'OFFICIALLY_ASSIGNED'),
	('BZ','BLZ','Belize',84,'OFFICIALLY_ASSIGNED'),
	('CA','CAN','Canada',124,'OFFICIALLY_ASSIGNED'),
	('CB',NULL,NULL,-1,'UNASSIGNED'),
	('CC','CCK','Cocos (Keeling) Islands',166,'OFFICIALLY_ASSIGNED'),
	('CD','COD','Congo, the Democratic Republic of the',180,'OFFICIALLY_ASSIGNED'),
	('CE',NULL,NULL,-1,'UNASSIGNED'),
	('CF','CAF','Central African Republic',140,'OFFICIALLY_ASSIGNED'),
	('CG','COG','Congo',178,'OFFICIALLY_ASSIGNED'),
	('CH','CHE','Switzerland',756,'OFFICIALLY_ASSIGNED'),
	('CI','CIV','Côte d\'Ivoire',384,'OFFICIALLY_ASSIGNED'),
	('CJ',NULL,NULL,-1,'UNASSIGNED'),
	('CK','COK','Cook Islands',184,'OFFICIALLY_ASSIGNED'),
	('CL','CHL','Chile',152,'OFFICIALLY_ASSIGNED'),
	('CM','CMR','Cameroon',120,'OFFICIALLY_ASSIGNED'),
	('CN','CHN','China',156,'OFFICIALLY_ASSIGNED'),
	('CO','COL','Colombia',170,'OFFICIALLY_ASSIGNED'),
	('CP','CPT','Clipperton Island',-1,'EXCEPTIONALLY_RESERVED'),
	('CQ',NULL,NULL,-1,'UNASSIGNED'),
	('CR','CRI','Costa Rica',188,'OFFICIALLY_ASSIGNED'),
	('CS','CSXX','Serbia and Montenegro',891,'TRANSITIONALLY_RESERVED'),
	('CT',NULL,NULL,-1,'UNASSIGNED'),
	('CU','CUB','Cuba',192,'OFFICIALLY_ASSIGNED'),
	('CV','CPV','Cape Verde',132,'OFFICIALLY_ASSIGNED'),
	('CW','CUW','Curaçao',531,'OFFICIALLY_ASSIGNED'),
	('CX','CXR','Christmas Island',162,'OFFICIALLY_ASSIGNED'),
	('CY','CYP','Cyprus',196,'OFFICIALLY_ASSIGNED'),
	('CZ','CZE','Czech Republic',203,'OFFICIALLY_ASSIGNED'),
	('DA',NULL,NULL,-1,'UNASSIGNED'),
	('DB',NULL,NULL,-1,'UNASSIGNED'),
	('DC',NULL,NULL,-1,'UNASSIGNED'),
	('DD',NULL,NULL,-1,'UNASSIGNED'),
	('DE','DEU','Germany',276,'OFFICIALLY_ASSIGNED'),
	('DF',NULL,NULL,-1,'UNASSIGNED'),
	('DG','DGA','Diego Garcia',-1,'EXCEPTIONALLY_RESERVED'),
	('DH',NULL,NULL,-1,'UNASSIGNED'),
	('DI',NULL,NULL,-1,'UNASSIGNED'),
	('DJ','DJI','Djibouti',262,'OFFICIALLY_ASSIGNED'),
	('DK','DNK','Denmark',208,'OFFICIALLY_ASSIGNED'),
	('DL',NULL,NULL,-1,'UNASSIGNED'),
	('DM','DMA','Dominica',212,'OFFICIALLY_ASSIGNED'),
	('DN',NULL,NULL,-1,'UNASSIGNED'),
	('DO','DOM','Dominican Republic',214,'OFFICIALLY_ASSIGNED'),
	('DP',NULL,NULL,-1,'UNASSIGNED'),
	('DQ',NULL,NULL,-1,'UNASSIGNED'),
	('DR',NULL,NULL,-1,'UNASSIGNED'),
	('DS',NULL,NULL,-1,'UNASSIGNED'),
	('DT',NULL,NULL,-1,'UNASSIGNED'),
	('DU',NULL,NULL,-1,'UNASSIGNED'),
	('DV',NULL,NULL,-1,'UNASSIGNED'),
	('DW',NULL,NULL,-1,'UNASSIGNED'),
	('DX',NULL,NULL,-1,'UNASSIGNED'),
	('DY',NULL,NULL,-1,'INDETERMINATELY_RESERVED'),
	('DZ','DZA','Algeria',12,'OFFICIALLY_ASSIGNED'),
	('EA','null','Ceuta, Melilla',-1,'EXCEPTIONALLY_RESERVED'),
	('EB',NULL,NULL,-1,'UNASSIGNED'),
	('EC','ECU','Ecuador',218,'OFFICIALLY_ASSIGNED'),
	('ED',NULL,NULL,-1,'UNASSIGNED'),
	('EE','EST','Estonia',233,'OFFICIALLY_ASSIGNED'),
	('EF',NULL,NULL,-1,'NOT_USED'),
	('EG','EGY','Egypt',818,'OFFICIALLY_ASSIGNED'),
	('EH','ESH','Western Sahara',732,'OFFICIALLY_ASSIGNED'),
	('EI',NULL,NULL,-1,'UNASSIGNED'),
	('EJ',NULL,NULL,-1,'UNASSIGNED'),
	('EK',NULL,NULL,-1,'UNASSIGNED'),
	('EL',NULL,NULL,-1,'UNASSIGNED'),
	('EM',NULL,NULL,-1,'NOT_USED'),
	('EN',NULL,NULL,-1,'UNASSIGNED'),
	('EO',NULL,NULL,-1,'UNASSIGNED'),
	('EP',NULL,NULL,-1,'NOT_USED'),
	('EQ',NULL,NULL,-1,'UNASSIGNED'),
	('ER','ERI','Eritrea',232,'OFFICIALLY_ASSIGNED'),
	('ES','ESP','Spain',724,'OFFICIALLY_ASSIGNED'),
	('ET','ETH','Ethiopia',231,'OFFICIALLY_ASSIGNED'),
	('EU','null','European Union',-1,'EXCEPTIONALLY_RESERVED'),
	('EV',NULL,NULL,-1,'NOT_USED'),
	('EW',NULL,NULL,-1,'INDETERMINATELY_RESERVED'),
	('EX',NULL,NULL,-1,'UNASSIGNED'),
	('EY',NULL,NULL,-1,'UNASSIGNED'),
	('EZ',NULL,NULL,-1,'UNASSIGNED'),
	('FA',NULL,NULL,-1,'UNASSIGNED'),
	('FB',NULL,NULL,-1,'UNASSIGNED'),
	('FC',NULL,NULL,-1,'UNASSIGNED'),
	('FD',NULL,NULL,-1,'UNASSIGNED'),
	('FE',NULL,NULL,-1,'UNASSIGNED'),
	('FF',NULL,NULL,-1,'UNASSIGNED'),
	('FG',NULL,NULL,-1,'UNASSIGNED'),
	('FH',NULL,NULL,-1,'UNASSIGNED'),
	('FI','FIN','Finland',246,'OFFICIALLY_ASSIGNED'),
	('FJ','FJI','Fiji',242,'OFFICIALLY_ASSIGNED'),
	('FK','FLK','Falkland Islands (Malvinas)',238,'OFFICIALLY_ASSIGNED'),
	('FL',NULL,NULL,-1,'INDETERMINATELY_RESERVED'),
	('FM','FSM','Micronesia, Federated States of',583,'OFFICIALLY_ASSIGNED'),
	('FN',NULL,NULL,-1,'UNASSIGNED'),
	('FO','FRO','Faroe Islands',234,'OFFICIALLY_ASSIGNED'),
	('FP',NULL,NULL,-1,'UNASSIGNED'),
	('FQ',NULL,NULL,-1,'UNASSIGNED'),
	('FR','FRA','France',250,'OFFICIALLY_ASSIGNED'),
	('FS',NULL,NULL,-1,'UNASSIGNED'),
	('FT',NULL,NULL,-1,'UNASSIGNED'),
	('FU',NULL,NULL,-1,'UNASSIGNED'),
	('FV',NULL,NULL,-1,'UNASSIGNED'),
	('FW',NULL,NULL,-1,'UNASSIGNED'),
	('FX','FXX','France, Metropolitan',-1,'EXCEPTIONALLY_RESERVED'),
	('FY',NULL,NULL,-1,'UNASSIGNED'),
	('FZ',NULL,NULL,-1,'UNASSIGNED'),
	('GA','GAB','Gabon',266,'OFFICIALLY_ASSIGNED'),
	('GB','GBR','United Kingdom',826,'OFFICIALLY_ASSIGNED'),
	('GC',NULL,NULL,-1,'NOT_USED'),
	('GD','GRD','Grenada',308,'OFFICIALLY_ASSIGNED'),
	('GE','GEO','Georgia',268,'OFFICIALLY_ASSIGNED'),
	('GF','GUF','French Guiana',254,'OFFICIALLY_ASSIGNED'),
	('GG','GGY','Guernsey',831,'OFFICIALLY_ASSIGNED'),
	('GH','GHA','Ghana',288,'OFFICIALLY_ASSIGNED'),
	('GI','GIB','Gibraltar',292,'OFFICIALLY_ASSIGNED'),
	('GJ',NULL,NULL,-1,'UNASSIGNED'),
	('GK',NULL,NULL,-1,'UNASSIGNED'),
	('GL','GRL','Greenland',304,'OFFICIALLY_ASSIGNED'),
	('GM','GMB','Gambia',270,'OFFICIALLY_ASSIGNED'),
	('GN','GIN','Guinea',324,'OFFICIALLY_ASSIGNED'),
	('GO',NULL,NULL,-1,'UNASSIGNED'),
	('GP','GLP','Guadeloupe',312,'OFFICIALLY_ASSIGNED'),
	('GQ','GNQ','Equatorial Guinea',226,'OFFICIALLY_ASSIGNED'),
	('GR','GRC','Greece',300,'OFFICIALLY_ASSIGNED'),
	('GS','SGS','South Georgia and the South Sandwich Islands',239,'OFFICIALLY_ASSIGNED'),
	('GT','GTM','Guatemala',320,'OFFICIALLY_ASSIGNED'),
	('GU','GUM','Guam',316,'OFFICIALLY_ASSIGNED'),
	('GV',NULL,NULL,-1,'UNASSIGNED'),
	('GW','GNB','Guinea-Bissau',624,'OFFICIALLY_ASSIGNED'),
	('GX',NULL,NULL,-1,'UNASSIGNED'),
	('GY','GUY','Guyana',328,'OFFICIALLY_ASSIGNED'),
	('GZ',NULL,NULL,-1,'UNASSIGNED'),
	('HA',NULL,NULL,-1,'UNASSIGNED'),
	('HB',NULL,NULL,-1,'UNASSIGNED'),
	('HC',NULL,NULL,-1,'UNASSIGNED'),
	('HD',NULL,NULL,-1,'UNASSIGNED'),
	('HE',NULL,NULL,-1,'UNASSIGNED'),
	('HF',NULL,NULL,-1,'UNASSIGNED'),
	('HG',NULL,NULL,-1,'UNASSIGNED'),
	('HH',NULL,NULL,-1,'UNASSIGNED'),
	('HI',NULL,NULL,-1,'UNASSIGNED'),
	('HJ',NULL,NULL,-1,'UNASSIGNED'),
	('HK','HKG','Hong Kong',344,'OFFICIALLY_ASSIGNED'),
	('HL',NULL,NULL,-1,'UNASSIGNED'),
	('HM','HMD','Heard Island and McDonald Islands',334,'OFFICIALLY_ASSIGNED'),
	('HN','HND','Honduras',340,'OFFICIALLY_ASSIGNED'),
	('HO',NULL,NULL,-1,'UNASSIGNED'),
	('HP',NULL,NULL,-1,'UNASSIGNED'),
	('HQ',NULL,NULL,-1,'UNASSIGNED'),
	('HR','HRV','Croatia',191,'OFFICIALLY_ASSIGNED'),
	('HS',NULL,NULL,-1,'UNASSIGNED'),
	('HT','HTI','Haiti',332,'OFFICIALLY_ASSIGNED'),
	('HU','HUN','Hungary',348,'OFFICIALLY_ASSIGNED'),
	('HV',NULL,NULL,-1,'UNASSIGNED'),
	('HW',NULL,NULL,-1,'UNASSIGNED'),
	('HX',NULL,NULL,-1,'UNASSIGNED'),
	('HY',NULL,NULL,-1,'UNASSIGNED'),
	('HZ',NULL,NULL,-1,'UNASSIGNED'),
	('IA',NULL,NULL,-1,'UNASSIGNED'),
	('IB',NULL,NULL,-1,'NOT_USED'),
	('IC','null','Canary Islands',-1,'EXCEPTIONALLY_RESERVED'),
	('ID','IDN','Indonesia',360,'OFFICIALLY_ASSIGNED'),
	('IE','IRL','Ireland',372,'OFFICIALLY_ASSIGNED'),
	('IF',NULL,NULL,-1,'UNASSIGNED'),
	('IG',NULL,NULL,-1,'UNASSIGNED'),
	('IH',NULL,NULL,-1,'UNASSIGNED'),
	('II',NULL,NULL,-1,'UNASSIGNED'),
	('IJ',NULL,NULL,-1,'UNASSIGNED'),
	('IK',NULL,NULL,-1,'UNASSIGNED'),
	('IL','ISR','Israel',376,'OFFICIALLY_ASSIGNED'),
	('IM','IMN','Isle of Man',833,'OFFICIALLY_ASSIGNED'),
	('IN','IND','India',356,'OFFICIALLY_ASSIGNED'),
	('IO','IOT','British Indian Ocean Territory',86,'OFFICIALLY_ASSIGNED'),
	('IP',NULL,NULL,-1,'UNASSIGNED'),
	('IQ','IRQ','Iraq',368,'OFFICIALLY_ASSIGNED'),
	('IR','IRN','Iran, Islamic Republic of',364,'OFFICIALLY_ASSIGNED'),
	('IS','ISL','Iceland',352,'OFFICIALLY_ASSIGNED'),
	('IT','ITA','Italy',380,'OFFICIALLY_ASSIGNED'),
	('IU',NULL,NULL,-1,'UNASSIGNED'),
	('IV',NULL,NULL,-1,'UNASSIGNED'),
	('IW',NULL,NULL,-1,'UNASSIGNED'),
	('IX',NULL,NULL,-1,'UNASSIGNED'),
	('IY',NULL,NULL,-1,'UNASSIGNED'),
	('IZ',NULL,NULL,-1,'UNASSIGNED'),
	('JA',NULL,NULL,-1,'INDETERMINATELY_RESERVED'),
	('JB',NULL,NULL,-1,'UNASSIGNED'),
	('JC',NULL,NULL,-1,'UNASSIGNED'),
	('JD',NULL,NULL,-1,'UNASSIGNED'),
	('JE','JEY','Jersey',832,'OFFICIALLY_ASSIGNED'),
	('JF',NULL,NULL,-1,'UNASSIGNED'),
	('JG',NULL,NULL,-1,'UNASSIGNED'),
	('JH',NULL,NULL,-1,'UNASSIGNED'),
	('JI',NULL,NULL,-1,'UNASSIGNED'),
	('JJ',NULL,NULL,-1,'UNASSIGNED'),
	('JK',NULL,NULL,-1,'UNASSIGNED'),
	('JL',NULL,NULL,-1,'UNASSIGNED'),
	('JM','JAM','Jamaica',388,'OFFICIALLY_ASSIGNED'),
	('JN',NULL,NULL,-1,'UNASSIGNED'),
	('JO','JOR','Jordan',400,'OFFICIALLY_ASSIGNED'),
	('JP','JPN','Japan',392,'OFFICIALLY_ASSIGNED'),
	('JQ',NULL,NULL,-1,'UNASSIGNED'),
	('JR',NULL,NULL,-1,'UNASSIGNED'),
	('JS',NULL,NULL,-1,'UNASSIGNED'),
	('JT',NULL,NULL,-1,'UNASSIGNED'),
	('JU',NULL,NULL,-1,'UNASSIGNED'),
	('JV',NULL,NULL,-1,'UNASSIGNED'),
	('JW',NULL,NULL,-1,'UNASSIGNED'),
	('JX',NULL,NULL,-1,'UNASSIGNED'),
	('JY',NULL,NULL,-1,'UNASSIGNED'),
	('JZ',NULL,NULL,-1,'UNASSIGNED'),
	('KA',NULL,NULL,-1,'UNASSIGNED'),
	('KB',NULL,NULL,-1,'UNASSIGNED'),
	('KC',NULL,NULL,-1,'UNASSIGNED'),
	('KD',NULL,NULL,-1,'UNASSIGNED'),
	('KE','KEN','Kenya',404,'OFFICIALLY_ASSIGNED'),
	('KF',NULL,NULL,-1,'UNASSIGNED'),
	('KG','KGZ','Kyrgyzstan',417,'OFFICIALLY_ASSIGNED'),
	('KH','KHM','Cambodia',116,'OFFICIALLY_ASSIGNED'),
	('KI','KIR','Kiribati',296,'OFFICIALLY_ASSIGNED'),
	('KJ',NULL,NULL,-1,'UNASSIGNED'),
	('KK',NULL,NULL,-1,'UNASSIGNED'),
	('KL',NULL,NULL,-1,'UNASSIGNED'),
	('KM','COM','Comoros',174,'OFFICIALLY_ASSIGNED'),
	('KN','KNA','Saint Kitts and Nevis',659,'OFFICIALLY_ASSIGNED'),
	('KO',NULL,NULL,-1,'UNASSIGNED'),
	('KP','PRK','Korea, Democratic People\'s Republic of',408,'OFFICIALLY_ASSIGNED'),
	('KQ',NULL,NULL,-1,'UNASSIGNED'),
	('KR','KOR','Korea, Republic of',410,'OFFICIALLY_ASSIGNED'),
	('KS',NULL,NULL,-1,'UNASSIGNED'),
	('KT',NULL,NULL,-1,'UNASSIGNED'),
	('KU',NULL,NULL,-1,'UNASSIGNED'),
	('KV',NULL,NULL,-1,'UNASSIGNED'),
	('KW','KWT','Kuwait',414,'OFFICIALLY_ASSIGNED'),
	('KX',NULL,NULL,-1,'UNASSIGNED'),
	('KY','CYM','Cayman Islands',136,'OFFICIALLY_ASSIGNED'),
	('KZ','KAZ','Kazakhstan',398,'OFFICIALLY_ASSIGNED'),
	('LA','LAO','Lao People\'s Democratic Republic',418,'OFFICIALLY_ASSIGNED'),
	('LB','LBN','Lebanon',422,'OFFICIALLY_ASSIGNED'),
	('LC','LCA','Saint Lucia',662,'OFFICIALLY_ASSIGNED'),
	('LD',NULL,NULL,-1,'UNASSIGNED'),
	('LE',NULL,NULL,-1,'UNASSIGNED'),
	('LF',NULL,NULL,-1,'INDETERMINATELY_RESERVED'),
	('LG',NULL,NULL,-1,'UNASSIGNED'),
	('LH',NULL,NULL,-1,'UNASSIGNED'),
	('LI','LIE','Liechtenstein',438,'OFFICIALLY_ASSIGNED'),
	('LJ',NULL,NULL,-1,'UNASSIGNED'),
	('LK','LKA','Sri Lanka',144,'OFFICIALLY_ASSIGNED'),
	('LL',NULL,NULL,-1,'UNASSIGNED'),
	('LM',NULL,NULL,-1,'UNASSIGNED'),
	('LN',NULL,NULL,-1,'UNASSIGNED'),
	('LO',NULL,NULL,-1,'UNASSIGNED'),
	('LP',NULL,NULL,-1,'UNASSIGNED'),
	('LQ',NULL,NULL,-1,'UNASSIGNED'),
	('LR','LBR','Liberia',430,'OFFICIALLY_ASSIGNED'),
	('LS','LSO','Lesotho',426,'OFFICIALLY_ASSIGNED'),
	('LT','LTU','Lithuania',440,'OFFICIALLY_ASSIGNED'),
	('LU','LUX','Luxembourg',442,'OFFICIALLY_ASSIGNED'),
	('LV','LVA','Latvia',428,'OFFICIALLY_ASSIGNED'),
	('LW',NULL,NULL,-1,'UNASSIGNED'),
	('LX',NULL,NULL,-1,'UNASSIGNED'),
	('LY','LBY','Libya',434,'OFFICIALLY_ASSIGNED'),
	('LZ',NULL,NULL,-1,'UNASSIGNED'),
	('MA','MAR','Morocco',504,'OFFICIALLY_ASSIGNED'),
	('MB',NULL,NULL,-1,'UNASSIGNED'),
	('MC','MCO','Monaco',492,'OFFICIALLY_ASSIGNED'),
	('MD','MDA','Moldova, Republic of',498,'OFFICIALLY_ASSIGNED'),
	('ME','MNE','Montenegro',499,'OFFICIALLY_ASSIGNED'),
	('MF','MAF','Saint Martin (French part)',663,'OFFICIALLY_ASSIGNED'),
	('MG','MDG','Madagascar',450,'OFFICIALLY_ASSIGNED'),
	('MH','MHL','Marshall Islands',584,'OFFICIALLY_ASSIGNED'),
	('MI',NULL,NULL,-1,'UNASSIGNED'),
	('MJ',NULL,NULL,-1,'UNASSIGNED'),
	('MK','MKD','Macedonia, the former Yugoslav Republic of',807,'OFFICIALLY_ASSIGNED'),
	('ML','MLI','Mali',466,'OFFICIALLY_ASSIGNED'),
	('MM','MMR','Myanmar',104,'OFFICIALLY_ASSIGNED'),
	('MN','MNG','Mongolia',496,'OFFICIALLY_ASSIGNED'),
	('MO','MAC','Macao',446,'OFFICIALLY_ASSIGNED'),
	('MP','MNP','Northern Mariana Islands',580,'OFFICIALLY_ASSIGNED'),
	('MQ','MTQ','Martinique',474,'OFFICIALLY_ASSIGNED'),
	('MR','MRT','Mauritania',478,'OFFICIALLY_ASSIGNED'),
	('MS','MSR','Montserrat',500,'OFFICIALLY_ASSIGNED'),
	('MT','MLT','Malta',470,'OFFICIALLY_ASSIGNED'),
	('MU','MUS','Mauritius',480,'OFFICIALLY_ASSIGNED'),
	('MV','MDV','Maldives',462,'OFFICIALLY_ASSIGNED'),
	('MW','MWI','Malawi',454,'OFFICIALLY_ASSIGNED'),
	('MX','MEX','Mexico',484,'OFFICIALLY_ASSIGNED'),
	('MY','MYS','Malaysia',458,'OFFICIALLY_ASSIGNED'),
	('MZ','MOZ','Mozambique',508,'OFFICIALLY_ASSIGNED'),
	('NA','NAM','Namibia',516,'OFFICIALLY_ASSIGNED'),
	('NB',NULL,NULL,-1,'UNASSIGNED'),
	('NC','NCL','New Caledonia',540,'OFFICIALLY_ASSIGNED'),
	('ND',NULL,NULL,-1,'UNASSIGNED'),
	('NE','NER','Niger',562,'OFFICIALLY_ASSIGNED'),
	('NF','NFK','Norfolk Island',574,'OFFICIALLY_ASSIGNED'),
	('NG','NGA','Nigeria',566,'OFFICIALLY_ASSIGNED'),
	('NH',NULL,NULL,-1,'UNASSIGNED'),
	('NI','NIC','Nicaragua',558,'OFFICIALLY_ASSIGNED'),
	('NJ',NULL,NULL,-1,'UNASSIGNED'),
	('NK',NULL,NULL,-1,'UNASSIGNED'),
	('NL','NLD','Netherlands',528,'OFFICIALLY_ASSIGNED'),
	('NM',NULL,NULL,-1,'UNASSIGNED'),
	('NN',NULL,NULL,-1,'UNASSIGNED'),
	('NO','NOR','Norway',578,'OFFICIALLY_ASSIGNED'),
	('NP','NPL','Nepal',524,'OFFICIALLY_ASSIGNED'),
	('NQ',NULL,NULL,-1,'UNASSIGNED'),
	('NR','NRU','Nauru',520,'OFFICIALLY_ASSIGNED'),
	('NS',NULL,NULL,-1,'UNASSIGNED'),
	('NT','NTHH','Neutral Zone',536,'TRANSITIONALLY_RESERVED'),
	('NU','NIU','Niue',570,'OFFICIALLY_ASSIGNED'),
	('NV',NULL,NULL,-1,'UNASSIGNED'),
	('NW',NULL,NULL,-1,'UNASSIGNED'),
	('NX',NULL,NULL,-1,'UNASSIGNED'),
	('NY',NULL,NULL,-1,'UNASSIGNED'),
	('NZ','NZL','New Zealand',554,'OFFICIALLY_ASSIGNED'),
	('OA',NULL,NULL,-1,'NOT_USED'),
	('OB',NULL,NULL,-1,'UNASSIGNED'),
	('OC',NULL,NULL,-1,'UNASSIGNED'),
	('OD',NULL,NULL,-1,'UNASSIGNED'),
	('OE',NULL,NULL,-1,'UNASSIGNED'),
	('OF',NULL,NULL,-1,'UNASSIGNED'),
	('OG',NULL,NULL,-1,'UNASSIGNED'),
	('OH',NULL,NULL,-1,'UNASSIGNED'),
	('OI',NULL,NULL,-1,'UNASSIGNED'),
	('OJ',NULL,NULL,-1,'UNASSIGNED'),
	('OK',NULL,NULL,-1,'UNASSIGNED'),
	('OL',NULL,NULL,-1,'UNASSIGNED'),
	('OM','OMN','Oman',512,'OFFICIALLY_ASSIGNED'),
	('ON',NULL,NULL,-1,'UNASSIGNED'),
	('OO',NULL,NULL,-1,'UNASSIGNED'),
	('OP',NULL,NULL,-1,'UNASSIGNED'),
	('OQ',NULL,NULL,-1,'UNASSIGNED'),
	('OR',NULL,NULL,-1,'UNASSIGNED'),
	('OS',NULL,NULL,-1,'UNASSIGNED'),
	('OT',NULL,NULL,-1,'UNASSIGNED'),
	('OU',NULL,NULL,-1,'UNASSIGNED'),
	('OV',NULL,NULL,-1,'UNASSIGNED'),
	('OW',NULL,NULL,-1,'UNASSIGNED'),
	('OX',NULL,NULL,-1,'UNASSIGNED'),
	('OY',NULL,NULL,-1,'UNASSIGNED'),
	('OZ',NULL,NULL,-1,'UNASSIGNED'),
	('PA','PAN','Panama',591,'OFFICIALLY_ASSIGNED'),
	('PB',NULL,NULL,-1,'UNASSIGNED'),
	('PC',NULL,NULL,-1,'UNASSIGNED'),
	('PD',NULL,NULL,-1,'UNASSIGNED'),
	('PE','PER','Peru',604,'OFFICIALLY_ASSIGNED'),
	('PF','PYF','French Polynesia',258,'OFFICIALLY_ASSIGNED'),
	('PG','PNG','Papua New Guinea',598,'OFFICIALLY_ASSIGNED'),
	('PH','PHL','Philippines',608,'OFFICIALLY_ASSIGNED'),
	('PI',NULL,NULL,-1,'INDETERMINATELY_RESERVED'),
	('PJ',NULL,NULL,-1,'UNASSIGNED'),
	('PK','PAK','Pakistan',586,'OFFICIALLY_ASSIGNED'),
	('PL','POL','Poland',616,'OFFICIALLY_ASSIGNED'),
	('PM','SPM','Saint Pierre and Miquelon',666,'OFFICIALLY_ASSIGNED'),
	('PN','PCN','Pitcairn',612,'OFFICIALLY_ASSIGNED'),
	('PO',NULL,NULL,-1,'UNASSIGNED'),
	('PP',NULL,NULL,-1,'UNASSIGNED'),
	('PQ',NULL,NULL,-1,'UNASSIGNED'),
	('PR','PRI','Puerto Rico',630,'OFFICIALLY_ASSIGNED'),
	('PS','PSE','Palestine, State of',275,'OFFICIALLY_ASSIGNED'),
	('PT','PRT','Portugal',620,'OFFICIALLY_ASSIGNED'),
	('PU',NULL,NULL,-1,'UNASSIGNED'),
	('PV',NULL,NULL,-1,'UNASSIGNED'),
	('PW','PLW','Palau',585,'OFFICIALLY_ASSIGNED'),
	('PX',NULL,NULL,-1,'UNASSIGNED'),
	('PY','PRY','Paraguay',600,'OFFICIALLY_ASSIGNED'),
	('PZ',NULL,NULL,-1,'UNASSIGNED'),
	('QA','QAT','Qatar',634,'OFFICIALLY_ASSIGNED'),
	('QB',NULL,NULL,-1,'UNASSIGNED'),
	('QC',NULL,NULL,-1,'UNASSIGNED'),
	('QD',NULL,NULL,-1,'UNASSIGNED'),
	('QE',NULL,NULL,-1,'UNASSIGNED'),
	('QF',NULL,NULL,-1,'UNASSIGNED'),
	('QG',NULL,NULL,-1,'UNASSIGNED'),
	('QH',NULL,NULL,-1,'UNASSIGNED'),
	('QI',NULL,NULL,-1,'UNASSIGNED'),
	('QJ',NULL,NULL,-1,'UNASSIGNED'),
	('QK',NULL,NULL,-1,'UNASSIGNED'),
	('QL',NULL,NULL,-1,'UNASSIGNED'),
	('QM',NULL,NULL,-1,'USER_ASSIGNED'),
	('QN',NULL,NULL,-1,'USER_ASSIGNED'),
	('QO',NULL,NULL,-1,'USER_ASSIGNED'),
	('QP',NULL,NULL,-1,'USER_ASSIGNED'),
	('QQ',NULL,NULL,-1,'USER_ASSIGNED'),
	('QR',NULL,NULL,-1,'USER_ASSIGNED'),
	('QS',NULL,NULL,-1,'USER_ASSIGNED'),
	('QT',NULL,NULL,-1,'USER_ASSIGNED'),
	('QU',NULL,NULL,-1,'USER_ASSIGNED'),
	('QV',NULL,NULL,-1,'USER_ASSIGNED'),
	('QW',NULL,NULL,-1,'USER_ASSIGNED'),
	('QX',NULL,NULL,-1,'USER_ASSIGNED'),
	('QY',NULL,NULL,-1,'USER_ASSIGNED'),
	('QZ',NULL,NULL,-1,'USER_ASSIGNED'),
	('RA',NULL,NULL,-1,'INDETERMINATELY_RESERVED'),
	('RB',NULL,NULL,-1,'INDETERMINATELY_RESERVED'),
	('RC',NULL,NULL,-1,'INDETERMINATELY_RESERVED'),
	('RD',NULL,NULL,-1,'UNASSIGNED'),
	('RE','REU','Réunion',638,'OFFICIALLY_ASSIGNED'),
	('RF',NULL,NULL,-1,'UNASSIGNED'),
	('RG',NULL,NULL,-1,'UNASSIGNED'),
	('RH',NULL,NULL,-1,'INDETERMINATELY_RESERVED'),
	('RI',NULL,NULL,-1,'INDETERMINATELY_RESERVED'),
	('RJ',NULL,NULL,-1,'UNASSIGNED'),
	('RK',NULL,NULL,-1,'UNASSIGNED'),
	('RL',NULL,NULL,-1,'INDETERMINATELY_RESERVED'),
	('RM',NULL,NULL,-1,'INDETERMINATELY_RESERVED'),
	('RN',NULL,NULL,-1,'INDETERMINATELY_RESERVED'),
	('RO','ROU','Romania',642,'OFFICIALLY_ASSIGNED'),
	('RP',NULL,NULL,-1,'INDETERMINATELY_RESERVED'),
	('RQ',NULL,NULL,-1,'UNASSIGNED'),
	('RR',NULL,NULL,-1,'UNASSIGNED'),
	('RS','SRB','Serbia',688,'OFFICIALLY_ASSIGNED'),
	('RT',NULL,NULL,-1,'UNASSIGNED'),
	('RU','RUS','Russian Federation',643,'OFFICIALLY_ASSIGNED'),
	('RV',NULL,NULL,-1,'UNASSIGNED'),
	('RW','RWA','Rwanda',646,'OFFICIALLY_ASSIGNED'),
	('RX',NULL,NULL,-1,'UNASSIGNED'),
	('RY',NULL,NULL,-1,'UNASSIGNED'),
	('RZ',NULL,NULL,-1,'UNASSIGNED'),
	('SA','SAU','Saudi Arabia',682,'OFFICIALLY_ASSIGNED'),
	('SB','SLB','Solomon Islands',90,'OFFICIALLY_ASSIGNED'),
	('SC','SYC','Seychelles',690,'OFFICIALLY_ASSIGNED'),
	('SD','SDN','Sudan',729,'OFFICIALLY_ASSIGNED'),
	('SE','SWE','Sweden',752,'OFFICIALLY_ASSIGNED'),
	('SF','FIN','Finland',246,'TRANSITIONALLY_RESERVED'),
	('SG','SGP','Singapore',702,'OFFICIALLY_ASSIGNED'),
	('SH','SHN','Saint Helena, Ascension and Tristan da Cunha',654,'OFFICIALLY_ASSIGNED'),
	('SI','SVN','Slovenia',705,'OFFICIALLY_ASSIGNED'),
	('SJ','SJM','Svalbard and Jan Mayen',744,'OFFICIALLY_ASSIGNED'),
	('SK','SVK','Slovakia',703,'OFFICIALLY_ASSIGNED'),
	('SL','SLE','Sierra Leone',694,'OFFICIALLY_ASSIGNED'),
	('SM','SMR','San Marino',674,'OFFICIALLY_ASSIGNED'),
	('SN','SEN','Senegal',686,'OFFICIALLY_ASSIGNED'),
	('SO','SOM','Somalia',706,'OFFICIALLY_ASSIGNED'),
	('SP',NULL,NULL,-1,'UNASSIGNED'),
	('SQ',NULL,NULL,-1,'UNASSIGNED'),
	('SR','SUR','Suriname',740,'OFFICIALLY_ASSIGNED'),
	('SS','SSD','South Sudan',728,'OFFICIALLY_ASSIGNED'),
	('ST','STP','Sao Tome and Principe',678,'OFFICIALLY_ASSIGNED'),
	('SU','SUN','USSR',-1,'EXCEPTIONALLY_RESERVED'),
	('SV','SLV','El Salvador',222,'OFFICIALLY_ASSIGNED'),
	('SW',NULL,NULL,-1,'UNASSIGNED'),
	('SX','SXM','Sint Maarten (Dutch part)',534,'OFFICIALLY_ASSIGNED'),
	('SY','SYR','Syrian Arab Republic',760,'OFFICIALLY_ASSIGNED'),
	('SZ','SWZ','Swaziland',748,'OFFICIALLY_ASSIGNED'),
	('TA','TAA','Tristan da Cunha',-1,'EXCEPTIONALLY_RESERVED'),
	('TB',NULL,NULL,-1,'UNASSIGNED'),
	('TC','TCA','Turks and Caicos Islands',796,'OFFICIALLY_ASSIGNED'),
	('TD','TCD','Chad',148,'OFFICIALLY_ASSIGNED'),
	('TE',NULL,NULL,-1,'UNASSIGNED'),
	('TF','ATF','French Southern Territories',260,'OFFICIALLY_ASSIGNED'),
	('TG','TGO','Togo',768,'OFFICIALLY_ASSIGNED'),
	('TH','THA','Thailand',764,'OFFICIALLY_ASSIGNED'),
	('TI',NULL,NULL,-1,'UNASSIGNED'),
	('TJ','TJK','Tajikistan',762,'OFFICIALLY_ASSIGNED'),
	('TK','TKL','Tokelau',772,'OFFICIALLY_ASSIGNED'),
	('TL','TLS','Timor-Leste',626,'OFFICIALLY_ASSIGNED'),
	('TM','TKM','Turkmenistan',795,'OFFICIALLY_ASSIGNED'),
	('TN','TUN','Tunisia',788,'OFFICIALLY_ASSIGNED'),
	('TO','TON','Tonga',776,'OFFICIALLY_ASSIGNED'),
	('TP','TPTL','East Timor',0,'TRANSITIONALLY_RESERVED'),
	('TQ',NULL,NULL,-1,'UNASSIGNED'),
	('TR','TUR','Turkey',792,'OFFICIALLY_ASSIGNED'),
	('TS',NULL,NULL,-1,'UNASSIGNED'),
	('TT','TTO','Trinidad and Tobago',780,'OFFICIALLY_ASSIGNED'),
	('TU',NULL,NULL,-1,'UNASSIGNED'),
	('TV','TUV','Tuvalu',798,'OFFICIALLY_ASSIGNED'),
	('TW','TWN','Taiwan, Province of China',158,'OFFICIALLY_ASSIGNED'),
	('TX',NULL,NULL,-1,'UNASSIGNED'),
	('TY',NULL,NULL,-1,'UNASSIGNED'),
	('TZ','TZA','Tanzania, United Republic of',834,'OFFICIALLY_ASSIGNED'),
	('UA','UKR','Ukraine',804,'OFFICIALLY_ASSIGNED'),
	('UB',NULL,NULL,-1,'UNASSIGNED'),
	('UC',NULL,NULL,-1,'UNASSIGNED'),
	('UD',NULL,NULL,-1,'UNASSIGNED'),
	('UE',NULL,NULL,-1,'UNASSIGNED'),
	('UF',NULL,NULL,-1,'UNASSIGNED'),
	('UG','UGA','Uganda',800,'OFFICIALLY_ASSIGNED'),
	('UH',NULL,NULL,-1,'UNASSIGNED'),
	('UI',NULL,NULL,-1,'UNASSIGNED'),
	('UJ',NULL,NULL,-1,'UNASSIGNED'),
	('UK','null','United Kingdom',-1,'EXCEPTIONALLY_RESERVED'),
	('UL',NULL,NULL,-1,'UNASSIGNED'),
	('UM','UMI','United States Minor Outlying Islands',581,'OFFICIALLY_ASSIGNED'),
	('UN',NULL,NULL,-1,'UNASSIGNED'),
	('UO',NULL,NULL,-1,'UNASSIGNED'),
	('UP',NULL,NULL,-1,'UNASSIGNED'),
	('UQ',NULL,NULL,-1,'UNASSIGNED'),
	('UR',NULL,NULL,-1,'UNASSIGNED'),
	('US','USA','United States',840,'OFFICIALLY_ASSIGNED'),
	('UT',NULL,NULL,-1,'UNASSIGNED'),
	('UU',NULL,NULL,-1,'UNASSIGNED'),
	('UV',NULL,NULL,-1,'UNASSIGNED'),
	('UW',NULL,NULL,-1,'UNASSIGNED'),
	('UX',NULL,NULL,-1,'UNASSIGNED'),
	('UY','URY','Uruguay',858,'OFFICIALLY_ASSIGNED'),
	('UZ','UZB','Uzbekistan',860,'OFFICIALLY_ASSIGNED'),
	('VA','VAT','Holy See (Vatican City State)',336,'OFFICIALLY_ASSIGNED'),
	('VB',NULL,NULL,-1,'UNASSIGNED'),
	('VC','VCT','Saint Vincent and the Grenadines',670,'OFFICIALLY_ASSIGNED'),
	('VD',NULL,NULL,-1,'UNASSIGNED'),
	('VE','VEN','Venezuela, Bolivarian Republic of',862,'OFFICIALLY_ASSIGNED'),
	('VF',NULL,NULL,-1,'UNASSIGNED'),
	('VG','VGB','Virgin Islands, British',92,'OFFICIALLY_ASSIGNED'),
	('VH',NULL,NULL,-1,'UNASSIGNED'),
	('VI','VIR','Virgin Islands, U.S.',850,'OFFICIALLY_ASSIGNED'),
	('VJ',NULL,NULL,-1,'UNASSIGNED'),
	('VK',NULL,NULL,-1,'UNASSIGNED'),
	('VL',NULL,NULL,-1,'UNASSIGNED'),
	('VM',NULL,NULL,-1,'UNASSIGNED'),
	('VN','VNM','Viet Nam',704,'OFFICIALLY_ASSIGNED'),
	('VO',NULL,NULL,-1,'UNASSIGNED'),
	('VP',NULL,NULL,-1,'UNASSIGNED'),
	('VQ',NULL,NULL,-1,'UNASSIGNED'),
	('VR',NULL,NULL,-1,'UNASSIGNED'),
	('VS',NULL,NULL,-1,'UNASSIGNED'),
	('VT',NULL,NULL,-1,'UNASSIGNED'),
	('VU','VUT','Vanuatu',548,'OFFICIALLY_ASSIGNED'),
	('VV',NULL,NULL,-1,'UNASSIGNED'),
	('VW',NULL,NULL,-1,'UNASSIGNED'),
	('VX',NULL,NULL,-1,'UNASSIGNED'),
	('VY',NULL,NULL,-1,'UNASSIGNED'),
	('VZ',NULL,NULL,-1,'UNASSIGNED'),
	('WA',NULL,NULL,-1,'UNASSIGNED'),
	('WB',NULL,NULL,-1,'UNASSIGNED'),
	('WC',NULL,NULL,-1,'UNASSIGNED'),
	('WD',NULL,NULL,-1,'UNASSIGNED'),
	('WE',NULL,NULL,-1,'UNASSIGNED'),
	('WF','WLF','Wallis and Futuna',876,'OFFICIALLY_ASSIGNED'),
	('WG',NULL,NULL,-1,'INDETERMINATELY_RESERVED'),
	('WH',NULL,NULL,-1,'UNASSIGNED'),
	('WI',NULL,NULL,-1,'UNASSIGNED'),
	('WJ',NULL,NULL,-1,'UNASSIGNED'),
	('WK',NULL,NULL,-1,'UNASSIGNED'),
	('WL',NULL,NULL,-1,'INDETERMINATELY_RESERVED'),
	('WM',NULL,NULL,-1,'UNASSIGNED'),
	('WN',NULL,NULL,-1,'UNASSIGNED'),
	('WO',NULL,NULL,-1,'NOT_USED'),
	('WP',NULL,NULL,-1,'UNASSIGNED'),
	('WQ',NULL,NULL,-1,'UNASSIGNED'),
	('WR',NULL,NULL,-1,'UNASSIGNED'),
	('WS','WSM','Samoa',882,'OFFICIALLY_ASSIGNED'),
	('WT',NULL,NULL,-1,'UNASSIGNED'),
	('WU',NULL,NULL,-1,'UNASSIGNED'),
	('WV',NULL,NULL,-1,'INDETERMINATELY_RESERVED'),
	('WW',NULL,NULL,-1,'UNASSIGNED'),
	('WX',NULL,NULL,-1,'UNASSIGNED'),
	('WY',NULL,NULL,-1,'UNASSIGNED'),
	('WZ',NULL,NULL,-1,'UNASSIGNED'),
	('XA',NULL,NULL,-1,'USER_ASSIGNED'),
	('XB',NULL,NULL,-1,'USER_ASSIGNED'),
	('XC',NULL,NULL,-1,'USER_ASSIGNED'),
	('XD',NULL,NULL,-1,'USER_ASSIGNED'),
	('XE',NULL,NULL,-1,'USER_ASSIGNED'),
	('XF',NULL,NULL,-1,'USER_ASSIGNED'),
	('XG',NULL,NULL,-1,'USER_ASSIGNED'),
	('XH',NULL,NULL,-1,'USER_ASSIGNED'),
	('XI',NULL,NULL,-1,'USER_ASSIGNED'),
	('XJ',NULL,NULL,-1,'USER_ASSIGNED'),
	('XK','XXK','Kosovo, Republic of',-1,'USER_ASSIGNED'),
	('XL',NULL,NULL,-1,'USER_ASSIGNED'),
	('XM',NULL,NULL,-1,'USER_ASSIGNED'),
	('XN',NULL,NULL,-1,'USER_ASSIGNED'),
	('XO',NULL,NULL,-1,'USER_ASSIGNED'),
	('XP',NULL,NULL,-1,'USER_ASSIGNED'),
	('XQ',NULL,NULL,-1,'USER_ASSIGNED'),
	('XR',NULL,NULL,-1,'USER_ASSIGNED'),
	('XS',NULL,NULL,-1,'USER_ASSIGNED'),
	('XT',NULL,NULL,-1,'USER_ASSIGNED'),
	('XU',NULL,NULL,-1,'USER_ASSIGNED'),
	('XV',NULL,NULL,-1,'USER_ASSIGNED'),
	('XW',NULL,NULL,-1,'USER_ASSIGNED'),
	('XX',NULL,NULL,-1,'USER_ASSIGNED'),
	('XY',NULL,NULL,-1,'USER_ASSIGNED'),
	('XZ',NULL,NULL,-1,'USER_ASSIGNED'),
	('YA',NULL,NULL,-1,'UNASSIGNED'),
	('YB',NULL,NULL,-1,'UNASSIGNED'),
	('YC',NULL,NULL,-1,'UNASSIGNED'),
	('YD',NULL,NULL,-1,'UNASSIGNED'),
	('YE','YEM','Yemen',887,'OFFICIALLY_ASSIGNED'),
	('YF',NULL,NULL,-1,'UNASSIGNED'),
	('YG',NULL,NULL,-1,'UNASSIGNED'),
	('YH',NULL,NULL,-1,'UNASSIGNED'),
	('YI',NULL,NULL,-1,'UNASSIGNED'),
	('YJ',NULL,NULL,-1,'UNASSIGNED'),
	('YK',NULL,NULL,-1,'UNASSIGNED'),
	('YL',NULL,NULL,-1,'UNASSIGNED'),
	('YM',NULL,NULL,-1,'UNASSIGNED'),
	('YN',NULL,NULL,-1,'UNASSIGNED'),
	('YO',NULL,NULL,-1,'UNASSIGNED'),
	('YP',NULL,NULL,-1,'UNASSIGNED'),
	('YQ',NULL,NULL,-1,'UNASSIGNED'),
	('YR',NULL,NULL,-1,'UNASSIGNED'),
	('YS',NULL,NULL,-1,'UNASSIGNED'),
	('YT','MYT','Mayotte',175,'OFFICIALLY_ASSIGNED'),
	('YU','YUCS','Yugoslavia',890,'TRANSITIONALLY_RESERVED'),
	('YV',NULL,NULL,-1,'INDETERMINATELY_RESERVED'),
	('YW',NULL,NULL,-1,'UNASSIGNED'),
	('YX',NULL,NULL,-1,'UNASSIGNED'),
	('YY',NULL,NULL,-1,'UNASSIGNED'),
	('YZ',NULL,NULL,-1,'UNASSIGNED'),
	('ZA','ZAF','South Africa',710,'OFFICIALLY_ASSIGNED'),
	('ZB',NULL,NULL,-1,'UNASSIGNED'),
	('ZC',NULL,NULL,-1,'UNASSIGNED'),
	('ZD',NULL,NULL,-1,'UNASSIGNED'),
	('ZE',NULL,NULL,-1,'UNASSIGNED'),
	('ZF',NULL,NULL,-1,'UNASSIGNED'),
	('ZG',NULL,NULL,-1,'UNASSIGNED'),
	('ZH',NULL,NULL,-1,'UNASSIGNED'),
	('ZI',NULL,NULL,-1,'UNASSIGNED'),
	('ZJ',NULL,NULL,-1,'UNASSIGNED'),
	('ZK',NULL,NULL,-1,'UNASSIGNED'),
	('ZL',NULL,NULL,-1,'UNASSIGNED'),
	('ZM','ZMB','Zambia',894,'OFFICIALLY_ASSIGNED'),
	('ZN',NULL,NULL,-1,'UNASSIGNED'),
	('ZO',NULL,NULL,-1,'UNASSIGNED'),
	('ZP',NULL,NULL,-1,'UNASSIGNED'),
	('ZQ',NULL,NULL,-1,'UNASSIGNED'),
	('ZR','ZRCD','Zaire',0,'TRANSITIONALLY_RESERVED'),
	('ZS',NULL,NULL,-1,'UNASSIGNED'),
	('ZT',NULL,NULL,-1,'UNASSIGNED'),
	('ZU',NULL,NULL,-1,'UNASSIGNED'),
	('ZV',NULL,NULL,-1,'UNASSIGNED'),
	('ZW','ZWE','Zimbabwe',716,'OFFICIALLY_ASSIGNED'),
	('ZX',NULL,NULL,-1,'UNASSIGNED'),
	('ZY',NULL,NULL,-1,'UNASSIGNED'),
	('ZZ',NULL,NULL,-1,'USER_ASSIGNED');

/*!40000 ALTER TABLE `BLC_ISO_COUNTRY` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BLC_LOCALE
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_LOCALE`;

CREATE TABLE `BLC_LOCALE` (
  `LOCALE_CODE` varchar(255) NOT NULL,
  `DEFAULT_FLAG` tinyint(1) DEFAULT NULL,
  `FRIENDLY_NAME` varchar(255) DEFAULT NULL,
  `USE_IN_SEARCH_INDEX` tinyint(1) DEFAULT NULL,
  `CURRENCY_CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`LOCALE_CODE`),
  KEY `FK56C7DC203E2FC4F9` (`CURRENCY_CODE`),
  CONSTRAINT `FK56C7DC203E2FC4F9` FOREIGN KEY (`CURRENCY_CODE`) REFERENCES `BLC_CURRENCY` (`CURRENCY_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `BLC_LOCALE` WRITE;
/*!40000 ALTER TABLE `BLC_LOCALE` DISABLE KEYS */;

INSERT INTO `BLC_LOCALE` (`LOCALE_CODE`, `DEFAULT_FLAG`, `FRIENDLY_NAME`, `USE_IN_SEARCH_INDEX`, `CURRENCY_CODE`)
VALUES
	('en',0,'English',NULL,'USD'),
	('en_US',1,'English US',NULL,'USD');

/*!40000 ALTER TABLE `BLC_LOCALE` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table blc_media
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blc_media`;

CREATE TABLE `blc_media` (
  `MEDIA_ID` bigint(20) NOT NULL,
  `ALT_TEXT` varchar(255) DEFAULT NULL,
  `TAGS` varchar(255) DEFAULT NULL,
  `TITLE` varchar(255) DEFAULT NULL,
  `URL` varchar(255) NOT NULL,
  PRIMARY KEY (`MEDIA_ID`),
  KEY `MEDIA_TITLE_INDEX` (`TITLE`),
  KEY `MEDIA_URL_INDEX` (`URL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table BLC_MODULE_CONFIGURATION
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_MODULE_CONFIGURATION`;

CREATE TABLE `BLC_MODULE_CONFIGURATION` (
  `MODULE_CONFIG_ID` bigint(20) NOT NULL,
  `ACTIVE_END_DATE` datetime DEFAULT NULL,
  `ACTIVE_START_DATE` datetime DEFAULT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `CONFIG_TYPE` varchar(255) NOT NULL,
  `IS_DEFAULT` tinyint(1) NOT NULL,
  `MODULE_NAME` varchar(255) NOT NULL,
  `MODULE_PRIORITY` int(11) NOT NULL,
  PRIMARY KEY (`MODULE_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table BLC_PHONE
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_PHONE`;

CREATE TABLE `BLC_PHONE` (
  `PHONE_ID` bigint(20) NOT NULL,
  `COUNTRY_CODE` varchar(255) DEFAULT NULL,
  `EXTENSION` varchar(255) DEFAULT NULL,
  `IS_ACTIVE` tinyint(1) DEFAULT NULL,
  `IS_DEFAULT` tinyint(1) DEFAULT NULL,
  `PHONE_NUMBER` varchar(255) NOT NULL,
  PRIMARY KEY (`PHONE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `BLC_PHONE` WRITE;
/*!40000 ALTER TABLE `BLC_PHONE` DISABLE KEYS */;

INSERT INTO `BLC_PHONE` (`PHONE_ID`, `COUNTRY_CODE`, `EXTENSION`, `IS_ACTIVE`, `IS_DEFAULT`, `PHONE_NUMBER`)
VALUES
	(1,NULL,NULL,1,0,'18682323715'),
	(2,NULL,NULL,1,1,'18682323715');

/*!40000 ALTER TABLE `BLC_PHONE` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table blc_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blc_role`;

CREATE TABLE `blc_role` (
  `ROLE_ID` bigint(20) NOT NULL,
  `ROLE_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ROLE_ID`),
  KEY `ROLE_NAME_INDEX` (`ROLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `blc_role` WRITE;
/*!40000 ALTER TABLE `blc_role` DISABLE KEYS */;

INSERT INTO `blc_role` (`ROLE_ID`, `ROLE_NAME`)
VALUES
	(1,'ROLE_USER');

/*!40000 ALTER TABLE `blc_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BLC_SANDBOX
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_SANDBOX`;

CREATE TABLE `BLC_SANDBOX` (
  `SANDBOX_ID` bigint(20) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `AUTHOR` bigint(20) DEFAULT NULL,
  `COLOR` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `GO_LIVE_DATE` datetime DEFAULT NULL,
  `SANDBOX_NAME` varchar(255) DEFAULT NULL,
  `SANDBOX_TYPE` varchar(255) DEFAULT NULL,
  `PARENT_SANDBOX_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SANDBOX_ID`),
  KEY `SANDBOX_NAME_INDEX` (`SANDBOX_NAME`),
  KEY `FKDD37A9A174160452` (`PARENT_SANDBOX_ID`),
  CONSTRAINT `FKDD37A9A174160452` FOREIGN KEY (`PARENT_SANDBOX_ID`) REFERENCES `BLC_SANDBOX` (`SANDBOX_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `BLC_SANDBOX` WRITE;
/*!40000 ALTER TABLE `BLC_SANDBOX` DISABLE KEYS */;

INSERT INTO `BLC_SANDBOX` (`SANDBOX_ID`, `ARCHIVED`, `AUTHOR`, `COLOR`, `DESCRIPTION`, `GO_LIVE_DATE`, `SANDBOX_NAME`, `SANDBOX_TYPE`, `PARENT_SANDBOX_ID`)
VALUES
	(1,'N',NULL,'#20C0F0',NULL,NULL,'Default','DEFAULT',NULL),
	(2,'N',-1,NULL,NULL,NULL,'Default','USER',1);

/*!40000 ALTER TABLE `BLC_SANDBOX` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BLC_SANDBOX_MGMT
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_SANDBOX_MGMT`;

CREATE TABLE `BLC_SANDBOX_MGMT` (
  `SANDBOX_MGMT_ID` bigint(20) NOT NULL,
  `SANDBOX_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`SANDBOX_MGMT_ID`),
  UNIQUE KEY `UK_4845009FE52B6993` (`SANDBOX_ID`),
  KEY `FK4845009F579FE59D` (`SANDBOX_ID`),
  CONSTRAINT `FK4845009F579FE59D` FOREIGN KEY (`SANDBOX_ID`) REFERENCES `BLC_SANDBOX` (`SANDBOX_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `BLC_SANDBOX_MGMT` WRITE;
/*!40000 ALTER TABLE `BLC_SANDBOX_MGMT` DISABLE KEYS */;

INSERT INTO `BLC_SANDBOX_MGMT` (`SANDBOX_MGMT_ID`, `SANDBOX_ID`)
VALUES
	(1,1),
	(2,2);

/*!40000 ALTER TABLE `BLC_SANDBOX_MGMT` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table blc_site
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blc_site`;

CREATE TABLE `blc_site` (
  `SITE_ID` bigint(20) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `DEACTIVATED` tinyint(1) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `SITE_IDENTIFIER_TYPE` varchar(255) DEFAULT NULL,
  `SITE_IDENTIFIER_VALUE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SITE_ID`),
  KEY `BLC_SITE_ID_VAL_INDEX` (`SITE_IDENTIFIER_VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table BLC_SITE_CATALOG
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_SITE_CATALOG`;

CREATE TABLE `BLC_SITE_CATALOG` (
  `SITE_CATALOG_XREF_ID` bigint(20) NOT NULL,
  `CATALOG_ID` bigint(20) NOT NULL,
  `SITE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`SITE_CATALOG_XREF_ID`),
  KEY `FK5F3F2047A350C7F1` (`CATALOG_ID`),
  KEY `FK5F3F2047843A8B63` (`SITE_ID`),
  CONSTRAINT `FK5F3F2047843A8B63` FOREIGN KEY (`SITE_ID`) REFERENCES `BLC_SITE` (`SITE_ID`),
  CONSTRAINT `FK5F3F2047A350C7F1` FOREIGN KEY (`CATALOG_ID`) REFERENCES `BLC_CATALOG` (`CATALOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table BLC_SITE_MAP_CFG
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_SITE_MAP_CFG`;

CREATE TABLE `BLC_SITE_MAP_CFG` (
  `INDEXED_SITE_MAP_FILE_NAME` varchar(255) DEFAULT NULL,
  `INDEXED_SITE_MAP_FILE_PATTERN` varchar(255) DEFAULT NULL,
  `MAX_URL_ENTRIES_PER_FILE` int(11) DEFAULT NULL,
  `SITE_MAP_FILE_NAME` varchar(255) DEFAULT NULL,
  `MODULE_CONFIG_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`MODULE_CONFIG_ID`),
  KEY `FK7012930FC50D449` (`MODULE_CONFIG_ID`),
  CONSTRAINT `FK7012930FC50D449` FOREIGN KEY (`MODULE_CONFIG_ID`) REFERENCES `BLC_MODULE_CONFIGURATION` (`MODULE_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table BLC_SITE_MAP_GEN_CFG
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_SITE_MAP_GEN_CFG`;

CREATE TABLE `BLC_SITE_MAP_GEN_CFG` (
  `GEN_CONFIG_ID` bigint(20) NOT NULL,
  `CHANGE_FREQ` varchar(255) NOT NULL,
  `DISABLED` tinyint(1) NOT NULL,
  `GENERATOR_TYPE` varchar(255) NOT NULL,
  `PRIORITY` varchar(255) DEFAULT NULL,
  `MODULE_CONFIG_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`GEN_CONFIG_ID`),
  KEY `FK1D76000A340ED71` (`MODULE_CONFIG_ID`),
  CONSTRAINT `FK1D76000A340ED71` FOREIGN KEY (`MODULE_CONFIG_ID`) REFERENCES `BLC_SITE_MAP_CFG` (`MODULE_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table BLC_SITE_MAP_URL_ENTRY
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_SITE_MAP_URL_ENTRY`;

CREATE TABLE `BLC_SITE_MAP_URL_ENTRY` (
  `URL_ENTRY_ID` bigint(20) NOT NULL,
  `CHANGE_FREQ` varchar(255) NOT NULL,
  `LAST_MODIFIED` datetime NOT NULL,
  `LOCATION` varchar(255) NOT NULL,
  `PRIORITY` varchar(255) NOT NULL,
  `GEN_CONFIG_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`URL_ENTRY_ID`),
  KEY `FKE2004FED36AFE1EE` (`GEN_CONFIG_ID`),
  CONSTRAINT `FKE2004FED36AFE1EE` FOREIGN KEY (`GEN_CONFIG_ID`) REFERENCES `BLC_CUST_SITE_MAP_GEN_CFG` (`GEN_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table BLC_STATE
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_STATE`;

CREATE TABLE `BLC_STATE` (
  `ABBREVIATION` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `COUNTRY` varchar(255) NOT NULL,
  PRIMARY KEY (`ABBREVIATION`),
  KEY `STATE_NAME_INDEX` (`NAME`),
  KEY `FK8F94A1EBA46E16CF` (`COUNTRY`),
  CONSTRAINT `FK8F94A1EBA46E16CF` FOREIGN KEY (`COUNTRY`) REFERENCES `BLC_COUNTRY` (`ABBREVIATION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `BLC_STATE` WRITE;
/*!40000 ALTER TABLE `BLC_STATE` DISABLE KEYS */;

INSERT INTO `BLC_STATE` (`ABBREVIATION`, `NAME`, `COUNTRY`)
VALUES
	('AA','ARMED FORCES AMERICA','US'),
	('AB','ALBERTA','CA'),
	('AE','ARMED FORCES','US'),
	('AK','ALASKA','US'),
	('AL','ALABAMA','US'),
	('AP','ARMED FORCES PACIFIC','US'),
	('AR','ARKANSAS','US'),
	('AS','AMERICAN SAMOA','US'),
	('AZ','ARIZONA','US'),
	('BC','BRITISH COLUMBIA','CA'),
	('CA','CALIFORNIA','US'),
	('CO','COLORADO','US'),
	('CT','CONNECTICUT','US'),
	('DC','DISTRICT OF COLUMBIA','US'),
	('DE','DELAWARE','US'),
	('FL','FLORIDA','US'),
	('FM','FEDERATED STATES OF MICRONESIA','US'),
	('GA','GEORGIA','US'),
	('GU','GUAM','US'),
	('HI','HAWAII','US'),
	('IA','IOWA','US'),
	('ID','IDAHO','US'),
	('IL','ILLINOIS','US'),
	('IN','INDIANA','US'),
	('KS','KANSAS','US'),
	('KY','KENTUCKY','US'),
	('LA','LOUISIANA','US'),
	('MA','MASSACHUSETTS','US'),
	('MB','MANITOBA','CA'),
	('MD','MARYLAND','US'),
	('ME','MAINE','US'),
	('MH','MARSHALL ISLANDS','US'),
	('MI','MICHIGAN','US'),
	('MN','MINNESOTA','US'),
	('MO','MISSOURI','US'),
	('MP','NORTHERN MARIANA ISLANDS','US'),
	('MS','MISSISSIPPI','US'),
	('MT','MONTANA','US'),
	('NB','NEW BRUNSWICK','CA'),
	('NC','NORTH CAROLINA','US'),
	('ND','NORTH DAKOTA','US'),
	('NE','NEBRASKA','US'),
	('NH','NEW HAMPSHIRE','US'),
	('NJ','NEW JERSEY','US'),
	('NL','NEWFOUNDLAND','CA'),
	('NM','NEW MEXICO','US'),
	('NS','NOVA SCOTIA','CA'),
	('NT','NORTHWEST TERRITORIES','CA'),
	('NU','NUNAVUT','CA'),
	('NV','NEVADA','US'),
	('NY','NEW YORK','US'),
	('OH','OHIO','US'),
	('OK','OKLAHOMA','US'),
	('ON','ONTARIO','CA'),
	('OR','OREGON','US'),
	('PA','PENNSYLVANIA','US'),
	('PE','PRINCE EDWARD ISLAND','CA'),
	('PR','PUERTO RICO','US'),
	('PW','PALAU','US'),
	('QC','QUEBEC','CA'),
	('RI','RHODE ISLAND','US'),
	('SC','SOUTH CAROLINA','US'),
	('SD','SOUTH DAKOTA','US'),
	('SK','SASKATCHEWAN','CA'),
	('TN','TENNESSEE','US'),
	('TX','TEXAS','US'),
	('UT','UTAH','US'),
	('VA','VIRGINIA','US'),
	('VI','VIRGIN ISLANDS','US'),
	('VT','VERMONT','US'),
	('WA','WASHINGTON','US'),
	('WI','WISCONSIN','US'),
	('WV','WEST VIRGINIA','US'),
	('WY','WYOMING','US'),
	('YT','YUKON','CA');

/*!40000 ALTER TABLE `BLC_STATE` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BLC_SYSTEM_PROPERTY
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BLC_SYSTEM_PROPERTY`;

CREATE TABLE `BLC_SYSTEM_PROPERTY` (
  `BLC_SYSTEM_PROPERTY_ID` bigint(20) NOT NULL,
  `FRIENDLY_GROUP` varchar(255) DEFAULT NULL,
  `FRIENDLY_NAME` varchar(255) DEFAULT NULL,
  `FRIENDLY_TAB` varchar(255) DEFAULT NULL,
  `PROPERTY_NAME` varchar(255) NOT NULL,
  `OVERRIDE_GENERATED_PROP_NAME` tinyint(1) DEFAULT NULL,
  `PROPERTY_TYPE` varchar(255) DEFAULT NULL,
  `PROPERTY_VALUE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`BLC_SYSTEM_PROPERTY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table blc_translation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blc_translation`;

CREATE TABLE `blc_translation` (
  `TRANSLATION_ID` bigint(20) NOT NULL,
  `ENTITY_ID` varchar(255) DEFAULT NULL,
  `ENTITY_TYPE` varchar(255) DEFAULT NULL,
  `FIELD_NAME` varchar(255) DEFAULT NULL,
  `LOCALE_CODE` varchar(255) DEFAULT NULL,
  `TRANSLATED_VALUE` longtext,
  PRIMARY KEY (`TRANSLATION_ID`),
  KEY `TRANSLATION_INDEX` (`ENTITY_TYPE`,`ENTITY_ID`,`FIELD_NAME`,`LOCALE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table SEQUENCE_GENERATOR
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SEQUENCE_GENERATOR`;

CREATE TABLE `SEQUENCE_GENERATOR` (
  `ID_NAME` varchar(255) NOT NULL,
  `ID_VAL` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `SEQUENCE_GENERATOR` WRITE;
/*!40000 ALTER TABLE `SEQUENCE_GENERATOR` DISABLE KEYS */;

INSERT INTO `SEQUENCE_GENERATOR` (`ID_NAME`, `ID_VAL`)
VALUES
	('AddressImpl',51),
	('AdminPermissionImpl',51),
	('AdminRoleImpl',51),
	('CategoryExcludedSearchFacetImpl',1000),
	('CategoryImpl',10000),
	('CategoryProductImpl',1000),
	('CategoryProductXrefImpl',1000),
	('CategorySearchFacetImpl',1000),
	('CategoryXrefImpl',1000),
	('ChallengeQuestionImpl',1000),
	('CountrySubdivisionCategoryImpl',100),
	('CustomerAddressImpl',51),
	('CustomerImpl',51),
	('CustomerPhoneImpl',51),
	('FeaturedProductImpl',1000),
	('FieldDefinitionImpl',1000),
	('FieldEnumerationImpl',1000),
	('FieldEnumerationItemImpl',1000),
	('FieldGroupImpl',1000),
	('FieldImpl',1000),
	('FulfillmentOptionImpl',1000),
	('IndexFieldImpl',30),
	('IndexFieldTypeImpl',20),
	('MediaImpl',100000),
	('MenuImpl',1000),
	('MenuItemImpl',1000),
	('OfferCodeImpl',1000),
	('OfferImpl',1000),
	('OfferItemCriteriaImpl',1000),
	('PageFieldImpl',1000),
	('PageImpl',1000),
	('PageTemplateFieldGroupXrefImpl',1000),
	('PageTemplateImpl',1000),
	('PhoneImpl',51),
	('ProductAttributeImpl',1000),
	('ProductImpl',10000),
	('ProductOptionImpl',1000),
	('ProductOptionValueImpl',1000),
	('ProductOptionXrefImpl',1000),
	('RoleImpl',1000),
	('SandBoxImpl',51),
	('SandBoxManagementImpl',51),
	('SearchFacetImpl',1000),
	('SearchFacetRangeImpl',1000),
	('SearchInterceptImpl',1000),
	('SkuAttributeImpl',30),
	('SkuImpl',10000),
	('SkuProductOptionValueXrefImpl',1000),
	('StaticAssetImpl',100000),
	('StructuredContentFieldImpl',1000),
	('StructuredContentImpl',1000),
	('StructuredContentRuleImpl',1000),
	('StructuredContentTypeImpl',1000),
	('URLHandlerImpl',1000);

/*!40000 ALTER TABLE `SEQUENCE_GENERATOR` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
