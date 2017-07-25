/*
SQLyog Ultimate v12.09 (32 bit)
MySQL - 10.0.17-MariaDB : Database - laundreev2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`laundreev2` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `laundreev2`;

/*Table structure for table `backset` */

DROP TABLE IF EXISTS `backset`;

CREATE TABLE `backset` (
  `url` varchar(100) DEFAULT NULL,
  `sessiontime` varchar(4) DEFAULT NULL,
  `footer` varchar(50) DEFAULT NULL,
  `themesback` varchar(2) DEFAULT NULL,
  `responsive` varchar(2) DEFAULT NULL,
  `haha` datetime DEFAULT NULL,
  `print` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `backset` */

insert  into `backset`(`url`,`sessiontime`,`footer`,`themesback`,`responsive`,`haha`,`print`) values ('http://localhost/laundreev2','','','2','0','2017-01-20 07:30:02','one');

/*Table structure for table `bayar` */

DROP TABLE IF EXISTS `bayar`;

CREATE TABLE `bayar` (
  `nota` varchar(20) NOT NULL,
  `tglmasuk` date DEFAULT NULL,
  `jammasuk` time DEFAULT NULL,
  `pelanggan` varchar(50) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `tgldeadline` date DEFAULT NULL,
  `jamdeadline` time DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `kasir` varchar(100) DEFAULT NULL,
  `catatan` varchar(255) DEFAULT NULL,
  `tgllunas` date DEFAULT NULL,
  `no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`nota`),
  KEY `no` (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `bayar` */

/*Table structure for table `chmenu` */

DROP TABLE IF EXISTS `chmenu`;

CREATE TABLE `chmenu` (
  `userjabatan` varchar(20) NOT NULL,
  `menu1` varchar(1) DEFAULT '0',
  `menu2` varchar(1) DEFAULT '0',
  `menu3` varchar(1) DEFAULT '0',
  `menu4` varchar(1) DEFAULT '0',
  `menu5` varchar(1) DEFAULT '0',
  `menu6` varchar(1) DEFAULT '0',
  `menu7` varchar(1) DEFAULT '0',
  `menu8` varchar(1) DEFAULT '0',
  `menu9` varchar(1) DEFAULT '0',
  `menu10` varchar(1) DEFAULT '0',
  `menu11` varchar(1) DEFAULT '0',
  PRIMARY KEY (`userjabatan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `chmenu` */

insert  into `chmenu`(`userjabatan`,`menu1`,`menu2`,`menu3`,`menu4`,`menu5`,`menu6`,`menu7`,`menu8`,`menu9`,`menu10`,`menu11`) values ('admin','2','4','0','0','0','0','0','0','0','0','0');

/*Table structure for table `data` */

DROP TABLE IF EXISTS `data`;

CREATE TABLE `data` (
  `nama` varchar(100) DEFAULT NULL,
  `tagline` varchar(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `notelp` varchar(20) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `avatar` varchar(150) DEFAULT NULL,
  `no` int(11) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `data` */

insert  into `data`(`nama`,`tagline`,`alamat`,`notelp`,`signature`,`avatar`,`no`) values ('Proware Laundry','WebApp Developer','Jl Indah Rejo 9 no 10','031545745','Thank you for Shopping with us','dist/upload/index.jpg',0);

/*Table structure for table `info` */

DROP TABLE IF EXISTS `info`;

CREATE TABLE `info` (
  `nama` varchar(50) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `isi` text,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `info` */

insert  into `info`(`nama`,`avatar`,`tanggal`,`isi`,`id`) values ('admin','dist/img/avatar5.png','2017-01-17','<p>Berita Informasi</p>',1);

/*Table structure for table `jabatan` */

DROP TABLE IF EXISTS `jabatan`;

CREATE TABLE `jabatan` (
  `kode` varchar(20) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`kode`),
  KEY `no` (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

/*Data for the table `jabatan` */

insert  into `jabatan`(`kode`,`nama`,`no`) values ('0001','admin',28),('0002','demo',29),('0003','operator',30);

/*Table structure for table `jenis` */

DROP TABLE IF EXISTS `jenis`;

CREATE TABLE `jenis` (
  `kode` varchar(20) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL,
  `biaya` int(11) DEFAULT NULL,
  `no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`kode`),
  KEY `no` (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `jenis` */

insert  into `jenis`(`kode`,`nama`,`satuan`,`biaya`,`no`) values ('0001','Cuci Kering','0001',5000,2),('0002','Karpet','0002',7000,3),('0003','Cuci Setrika','0001',8000,6);

/*Table structure for table `komplain` */

DROP TABLE IF EXISTS `komplain`;

CREATE TABLE `komplain` (
  `kode` varchar(20) NOT NULL,
  `nota` varchar(20) DEFAULT NULL,
  `tglkomplain` date DEFAULT NULL,
  `jamkomplain` time DEFAULT NULL,
  `komplain` varchar(100) DEFAULT NULL,
  `detail` varchar(500) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `tindakan` varchar(100) DEFAULT NULL,
  `detailtindakan` varchar(500) DEFAULT NULL,
  `tgltindakan` date DEFAULT NULL,
  `jamtindakan` time DEFAULT NULL,
  `kasir` varchar(20) DEFAULT NULL,
  `no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`kode`),
  KEY `no` (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `komplain` */

/*Table structure for table `loglogin` */

DROP TABLE IF EXISTS `loglogin`;

CREATE TABLE `loglogin` (
  `username` varchar(20) DEFAULT NULL,
  `tgllogin` date DEFAULT NULL,
  `jamlogin` time DEFAULT NULL,
  `tgllogout` date DEFAULT NULL,
  `jamlogout` time DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

/*Data for the table `loglogin` */

/*Table structure for table `operasional` */

DROP TABLE IF EXISTS `operasional`;

CREATE TABLE `operasional` (
  `kode` varchar(20) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `biaya` int(11) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `kasir` varchar(20) DEFAULT NULL,
  `no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`kode`),
  KEY `no` (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `operasional` */

insert  into `operasional`(`kode`,`nama`,`tanggal`,`biaya`,`keterangan`,`kasir`,`no`) values ('0001','uu','2017-01-16',6666,'','admin',2);

/*Table structure for table `pelanggan` */

DROP TABLE IF EXISTS `pelanggan`;

CREATE TABLE `pelanggan` (
  `kode` varchar(20) NOT NULL,
  `tgldaftar` date DEFAULT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `alamat` varchar(70) DEFAULT NULL,
  `nohp` varchar(20) DEFAULT NULL,
  `no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`kode`),
  KEY `no3` (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `pelanggan` */

insert  into `pelanggan`(`kode`,`tgldaftar`,`nama`,`alamat`,`nohp`,`no`) values ('0001','2017-01-15','Alit Rahma Estu','Jl Merpati 3','081232164724',6),('0002','2017-01-15','Puspa','Jl Gajah Putih III no 8','081232164429',7),('0003','2017-01-17','Sisi','Jl ajudan','0895545544',8),('1','0000-00-00','Non Member','-','-',1);

/*Table structure for table `satuan` */

DROP TABLE IF EXISTS `satuan`;

CREATE TABLE `satuan` (
  `kode` varchar(20) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`kode`),
  KEY `no` (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `satuan` */

insert  into `satuan`(`kode`,`nama`,`no`) values ('0001','Kg',1),('0002','M',2);

/*Table structure for table `transaksimasuk` */

DROP TABLE IF EXISTS `transaksimasuk`;

CREATE TABLE `transaksimasuk` (
  `nota` varchar(20) NOT NULL,
  `kode` varchar(20) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `biaya` int(11) DEFAULT NULL,
  `satuan` varchar(100) DEFAULT NULL,
  `jumlah` float DEFAULT NULL,
  `hargaakhir` int(11) DEFAULT NULL,
  `biayaakhir` int(11) DEFAULT NULL,
  `no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`nota`,`kode`),
  KEY `barang` (`nama`),
  KEY `no5_2` (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `transaksimasuk` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userna_me` varchar(20) NOT NULL,
  `pa_ssword` varchar(70) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `nohp` varchar(20) DEFAULT NULL,
  `tgllahir` date DEFAULT NULL,
  `tglaktif` date DEFAULT NULL,
  `jabatan` varchar(20) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`userna_me`),
  KEY `no` (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`userna_me`,`pa_ssword`,`nama`,`alamat`,`nohp`,`tgllahir`,`tglaktif`,`jabatan`,`avatar`,`no`) values ('admin','90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad','admin','jl jalan','0875757777','0000-00-00','2016-10-08','admin','dist/img/avatar5.png',1),('demo','a69681bcf334ae130217fea4505fd3c994f5683f','demo','demo','088888','2016-12-22','2016-12-26','demo','dist/upload/index.jpg',3),('demo22','a69681bcf334ae130217fea4505fd3c994f5683f','Demo','','','0000-00-00','2016-12-27','admin','dist/upload/91f644a1932c252d4a158f13f1936aab.jpg',4),('username','a69681bcf334ae130217fea4505fd3c994f5683f','Username','','','0000-00-00','2016-12-27','demo','dist/upload/index.jpg',7);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
