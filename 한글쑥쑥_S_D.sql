-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: webapp1
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `baseboard`
--

DROP TABLE IF EXISTS `baseboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `baseboard` (
  `id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `first` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `firstText` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `second` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `secondText` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `third` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `thirdText` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fourth` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fourthText` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fifth` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fifthText` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sixth` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sixthText` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `seventh` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `seventhText` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `eighth` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `eighthText` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nineth` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ninethText` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baseboard`
--

LOCK TABLES `baseboard` WRITE;
/*!40000 ALTER TABLE `baseboard` DISABLE KEYS */;
INSERT INTO `baseboard` VALUES ('animal','Symbol/n13_dong_mul_sig_mul_/n2_po_yu_ryu_/sa_ja_201_.png','사자','Symbol/n13_dong_mul_sig_mul_/n2_po_yu_ryu_/to_ggi_004_.png','토끼','Symbol/n13_dong_mul_sig_mul_/n2_po_yu_ryu_/yeo_u_.png','여우','Symbol/n13_dong_mul_sig_mul_/n2_po_yu_ryu_/go_yang_i_.png','고양이','Symbol/n13_dong_mul_sig_mul_/n2_po_yu_ryu_/da_ram_jwi_.png','다람쥐','Symbol/n13_dong_mul_sig_mul_/n2_po_yu_ryu_/gang_a_ji_.png','강아지','Symbol/n13_dong_mul_sig_mul_/n2_po_yu_ryu_/ko_ggi_ri_.png','코끼리','Symbol/n13_dong_mul_sig_mul_/n2_po_yu_ryu_/ha_ma_.png','하마','Symbol/n13_dong_mul_sig_mul_/n4_pa_cung_ryu_yang_seo_ryu_/ag_eo_.png','악어'),('color','Symbol/n12_saeg_/bbal_gang_.png','빨간색','Symbol/n12_saeg_/ju_hwang_saeg_.png','주황색','Symbol/n12_saeg_/nog_saeg_.png','녹색','Symbol/n12_saeg_/bun_hong_saeg_.png','분홍색','Symbol/n12_saeg_/nam_saeg_.png','남색','Symbol/n12_saeg_/bo_ra_saeg_.png','보라색','Symbol/n12_saeg_/hyin_saeg_.png','흰색','Symbol/n12_saeg_/geom_jeong_.png','검정색','Symbol/n12_saeg_/pa_rang_.png','파랑색'),('family','Symbol/n1_gi_bon_gi_neung_ki_/n1_zcorez_/eom_ma_003_.png','엄마','Symbol/n1_gi_bon_gi_neung_ki_/n1_zcorez_/a_bba_001_.png','아빠','Symbol/n4_jib_/n2_ga_jog_/hal_meo_ni_001_.png','할머니','Symbol/n4_jib_/n2_ga_jog_/hal_a_beo_ji_001_.png','할아버지','Symbol/n4_jib_/n2_ga_jog_/eon_ni_001_.png','언니','Symbol/n4_jib_/n2_ga_jog_/o_bba_001_.png','오빠','Symbol/n4_jib_/n2_ga_jog_/hyeong_001_.png','형','Symbol/n4_jib_/n2_ga_jog_/nu_na_001_.png','누나','Symbol/n4_jib_/n2_ga_jog_/dong_saeng_003_.png','동생'),('food','Symbol/n1_gi_bon_gi_neung_ki_/n1_zcorez_/gim_bab_.png','김밥','Symbol/n2_eum_sig_/n1_zcorez_/gim_ci_bogg_eum_bab_1.png','김치볶음밥','Symbol/n2_eum_sig_/n2_eum_ryo_/sa_gwa_ju_seu_.png','사과주스','Symbol/n2_eum_sig_/n1_zcorez_/u_yu_003_.png','우유','Symbol/n2_eum_sig_/n1_zcorez_/gal_bi_tang_1.png','갈비탕','Symbol/n2_eum_sig_/n1_zcorez_/mul_man_du_1.png','물만두','Symbol/n2_eum_sig_/n1_zcorez_/gwa_ja_.png','과자','Symbol/n2_eum_sig_/n1_zcorez_/do_mi_no_pi_ja_1.png','피자','Symbol/n2_eum_sig_/n1_zcorez_/peu_ra_i_deu_ci_kin_.png','프라이드치킨'),('fruit','Symbol/n2_eum_sig_/n7_gan_sig_/sa_gwa_001_.png','사과','Symbol/n2_eum_sig_/n7_gan_sig_/po_do_001_.png','포도','Symbol/n2_eum_sig_/n4_gwa_il_cae_so_gog_sig_/mel_ron_201_.png','멜론','Symbol/n2_eum_sig_/n7_gan_sig_/bog_sung_a_004_.png','복숭아','Symbol/n2_eum_sig_/n7_gan_sig_/gyul_.png','귤','Symbol/n2_eum_sig_/n7_gan_sig_/ddal_gi_001_.png','딸기','Symbol/n2_eum_sig_/n7_gan_sig_/su_bag_.png','수박','Symbol/n8_ji_yeog_sa_hoe_/n2_syu_peo_ma_teu_/cam_oe_.png','참외','Symbol/n2_eum_sig_/n7_gan_sig_/ce_ri_.png','체리'),('instrument','Symbol/n5_nol_i_yeo_ga_/n5_eum_ag_/pi_a_no_.png','피아노','Symbol/n5_nol_i_yeo_ga_/n5_eum_ag_/ba_i_ol_rin_.png','바이올린','Symbol/n5_nol_i_yeo_ga_/n5_eum_ag_/gi_ta_001_.png','기타','Symbol/n5_nol_i_yeo_ga_/n5_eum_ag_/deu_reom_.png','드럼','Symbol/n3_hag_gyo_/n10_ye_sul_gong_ye_/ri_ko_deo_.png','리코더','Symbol/n3_hag_gyo_/n10_ye_sul_gong_ye_/dan_so_.png','단소','Symbol/n5_nol_i_yeo_ga_/n5_eum_ag_/jing_002_.png','징','Symbol/n5_nol_i_yeo_ga_/n5_eum_ag_/peul_rus_002_.png','플룻','Symbol/n5_nol_i_yeo_ga_/n5_eum_ag_/teu_ra_i_aeng_geul_.png','트라이앵글'),('pencil','Symbol/n3_hag_gyo_/n4_su_eob_gong_tong_/yeon_pil_001_.png','연필','Symbol/n8_ji_yeog_sa_hoe_/n9_mun_gu_jeom_/saeg_yeon_pil_201_.png','색연필','Symbol/n3_hag_gyo_/n2_hag_gyo_dae_hwa_/ji_u_gae_002_.png','지우개','Symbol/n8_ji_yeog_sa_hoe_/n9_mun_gu_jeom_/bol_pen_.png','볼펜','Symbol/n8_ji_yeog_sa_hoe_/n9_mun_gu_jeom_/pul_.png','풀','Symbol/n8_ji_yeog_sa_hoe_/n9_mun_gu_jeom_/ja_001_.png','자','Symbol/n8_ji_yeog_sa_hoe_/n9_mun_gu_jeom_/ga_wi_.png','가위','Symbol/n3_hag_gyo_/n10_ye_sul_gong_ye_/hyeong_gwang_pen_.png','형광펜','Symbol/n3_hag_gyo_/n7_su_hag_/gag_do_gi_.png','각도기'),('place','Symbol/n1_gi_bon_gi_neung_ki_/n2_ka_te_go_ri_/byeong_weon_.png','병원','Symbol/n1_gi_bon_gi_neung_ki_/n2_ka_te_go_ri_/seo_jeom_002_.png','서점','Symbol/n1_gi_bon_gi_neung_ki_/n2_ka_te_go_ri_/yag_gug_201_.png','약국','Symbol/n1_gi_bon_gi_neung_ki_/n2_ka_te_go_ri_/yeong_hwa_gwan_2.png','영화관','Symbol/n1_gi_bon_gi_neung_ki_/n2_ka_te_go_ri_/hag_gyo_001_.png','학교','Symbol/n1_gi_bon_gi_neung_ki_/n1_zcorez_/bbang_jib_.png','빵집','Symbol/n1_gi_bon_gi_neung_ki_/n1_zcorez_/syu_peo_ma_teu_.png','슈퍼마트','Symbol/n1_gi_bon_gi_neung_ki_/n2_ka_te_go_ri_/baeg_hwa_jeom_.png','백화점','Symbol/n1_gi_bon_gi_neung_ki_/n2_ka_te_go_ri_/eun_haeng_001_1.png','은행'),('school','Symbol/n4_jib_/n7_bang_/gong_bu_001_.png','공부','Symbol/n3_hag_gyo_/n1_zcorez_/seon_saeng_nim_001_.png','선생님','Symbol/n1_gi_bon_gi_neung_ki_/n1_zcorez_/cin_gu_.png','친구','Symbol/n17_mi_bun_ryu_/n1_gi_ta_/hag_yong_pum_002_.png','학용품','Symbol/n3_hag_gyo_/n4_su_eob_gong_tong_/gyo_gwa_seo_002_.png','교과서','Symbol/n3_hag_gyo_/n4_su_eob_gong_tong_/cil_pan_002_.png','칠판','Symbol/n3_hag_gyo_/n2_hag_gyo_dae_hwa_/gyo_jang_seon_saeng_nim_.png','교장선생님','Symbol/n3_hag_gyo_/n2_hag_gyo_dae_hwa_/geub_sig_.png','급식','Symbol/n3_hag_gyo_/n1_zcorez_/hag_gyo_sig_dang_.png','학교식당'),('traffic','Symbol/n7_gyo_tong_/n1_zcorez_/sin_ho_deung_002_.png','신호등','Symbol/n7_gyo_tong_/n4_taeg_si_/hoeng_dan_bo_do_201_.png','횡단보도','Symbol/n7_gyo_tong_/n8_gyo_tong_gi_ta_/ja_dong_ca_002_.png','자동차','Symbol/n7_gyo_tong_/n1_zcorez_/bbal_gan_bul_i_kyeo_jyeoss_eo_yo_002_.png','빨간불이켜졌어요','Symbol/n7_gyo_tong_/n1_zcorez_/co_rog_bul_i_kyeo_jyeoss_eo_yo_002_.png','초록불이켜졌어요','Symbol/n1_gi_bon_gi_neung_ki_/n2_ka_te_go_ri_/beo_seu_.png','버스','Symbol/n7_gyo_tong_/n4_taeg_si_/taeg_si_004_.png','택시','Symbol/n7_gyo_tong_/n8_gyo_tong_gi_ta_/o_to_ba_i_201_.png','오토바이','Symbol/n7_gyo_tong_/n8_gyo_tong_gi_ta_/ja_jeon_geo_201_.png','자전거');
/*!40000 ALTER TABLE `baseboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `parentId` varchar(45) NOT NULL,
  `first` varchar(200) NOT NULL,
  `second` varchar(200) NOT NULL,
  `third` varchar(200) NOT NULL,
  `fourth` varchar(200) NOT NULL,
  `fifth` varchar(200) NOT NULL,
  `sixth` varchar(200) NOT NULL,
  `seventh` varchar(200) NOT NULL,
  `eighth` varchar(200) NOT NULL,
  `nineth` varchar(200) NOT NULL,
  `firstText` varchar(100) NOT NULL,
  `secondText` varchar(100) NOT NULL,
  `thirdText` varchar(100) NOT NULL,
  `fourthText` varchar(100) NOT NULL,
  `fifthText` varchar(100) NOT NULL,
  `sixthText` varchar(100) NOT NULL,
  `seventhText` varchar(100) NOT NULL,
  `eighthText` varchar(100) NOT NULL,
  `ninethText` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'운동','gildong12','http://220.69.171.28:8080/Symbol/Symbol/n11_seu_po_ceu_/n1_su_yeong_/su_yeong_201_.png','http://220.69.171.28:8080/Symbol/Symbol/n11_seu_po_ceu_/n2_cug_gu_/cug_gu_001_.png','http://220.69.171.28:8080/Symbol/Symbol/n11_seu_po_ceu_/n3_ya_gu_/ya_gu_002_.png','http://220.69.171.28:8080/Symbol/Symbol/n11_seu_po_ceu_/n4_nong_gu_/nong_gu_001_.png','http://220.69.171.28:8080/Symbol/Symbol/n11_seu_po_ceu_/n5_ol_rim_pig_/re_seul_ring_.png','http://220.69.171.28:8080/Symbol/Symbol/n11_seu_po_ceu_/n5_ol_rim_pig_/ru_ji_.png','http://220.69.171.28:8080/Symbol/Symbol/n11_seu_po_ceu_/n5_ol_rim_pig_/ri_deum_ce_jo_.png','http://220.69.171.28:8080/Symbol/Symbol/n11_seu_po_ceu_/n5_ol_rim_pig_/bog_sing_.png','http://220.69.171.28:8080/Symbol/Symbol/n11_seu_po_ceu_/n5_ol_rim_pig_/seung_ma_.png','수영','축구','야구','농구','레슬링','루지','리듬체조','복싱','승마'),(2,'과일','gildong12','http://220.69.171.28:8080/Symbol/Symbol/n2_eum_sig_/n7_gan_sig_/sa_gwa_001_.png','http://220.69.171.28:8080/Symbol/Symbol/n2_eum_sig_/n7_gan_sig_/po_do_001_.png','http://220.69.171.28:8080/Symbol/Symbol/n2_eum_sig_/n4_gwa_il_cae_so_gog_sig_/mel_ron_201_.png','http://220.69.171.28:8080/Symbol/Symbol/n2_eum_sig_/n7_gan_sig_/bog_sung_a_004_.png','http://220.69.171.28:8080/Symbol/Symbol/n2_eum_sig_/n7_gan_sig_/gyul_.png','http://220.69.171.28:8080/Symbol/Symbol/n2_eum_sig_/n7_gan_sig_/ddal_gi_001_.png','http://220.69.171.28:8080/Symbol/Symbol/n2_eum_sig_/n7_gan_sig_/su_bag_.png','http://220.69.171.28:8080/Symbol/Symbol/n8_ji_yeog_sa_hoe_/n2_syu_peo_ma_teu_/cam_oe_.png','http://220.69.171.28:8080/Symbol/Symbol/n2_eum_sig_/n7_gan_sig_/ce_ri_.png','사과','포도','멜론','복숭아','귤','딸기','수박','참외','체리'),(3,'장소','youyou23','http://220.69.171.28:8080/Symbol/Symbol/n8_ji_yeog_sa_hoe_/n1_zcorez_/nol_i_teo_001_.png','http://220.69.171.28:8080/Symbol/Symbol/n8_ji_yeog_sa_hoe_/n1_zcorez_/mun_gu_jeom_2.png','http://220.69.171.28:8080/Symbol/Symbol/n8_ji_yeog_sa_hoe_/n2_syu_peo_ma_teu_/gye_san_dae_.png','http://220.69.171.28:8080/Symbol/Symbol/n8_ji_yeog_sa_hoe_/n5_baeg_hwa_jeom_syo_ping_/hom_peul_reo_seu_002_.png','http://220.69.171.28:8080/Symbol/Symbol/n8_ji_yeog_sa_hoe_/n5_baeg_hwa_jeom_syo_ping_/hyeon_dae_baeg_hwa_jeom_001_.png','http://220.69.171.28:8080/Symbol/Symbol/n8_ji_yeog_sa_hoe_/n5_baeg_hwa_jeom_syo_ping_/pyu_ma_.png','http://220.69.171.28:8080/Symbol/Symbol/n8_ji_yeog_sa_hoe_/n5_baeg_hwa_jeom_syo_ping_/pe_mil_ri_ma_teu_.png','http://220.69.171.28:8080/Symbol/Symbol/n8_ji_yeog_sa_hoe_/n5_baeg_hwa_jeom_syo_ping_/tal_yi_sil_002_.png','http://220.69.171.28:8080/Symbol/Symbol/n8_ji_yeog_sa_hoe_/n5_baeg_hwa_jeom_syo_ping_/jeom_weon_003_.png','놀이터','문구점','계산대','홈플러스','현대백화점','퓨마','페밀리마트','탈의실','점원'),(4,'학용품','youyou23','http://220.69.171.28:8080/Symbol/Symbol/n3_hag_gyo_/n4_su_eob_gong_tong_/yeon_pil_001_.png','http://220.69.171.28:8080/Symbol/Symbol/n8_ji_yeog_sa_hoe_/n9_mun_gu_jeom_/saeg_yeon_pil_201_.png','http://220.69.171.28:8080/Symbol/Symbol/n3_hag_gyo_/n2_hag_gyo_dae_hwa_/ji_u_gae_002_.png','http://220.69.171.28:8080/Symbol/Symbol/n8_ji_yeog_sa_hoe_/n9_mun_gu_jeom_/bol_pen_.png','http://220.69.171.28:8080/Symbol/Symbol/n8_ji_yeog_sa_hoe_/n9_mun_gu_jeom_/pul_.png','http://220.69.171.28:8080/Symbol/Symbol/n8_ji_yeog_sa_hoe_/n9_mun_gu_jeom_/ja_001_.png','http://220.69.171.28:8080/Symbol/Symbol/n8_ji_yeog_sa_hoe_/n9_mun_gu_jeom_/ga_wi_.png','http://220.69.171.28:8080/Symbol/Symbol/n3_hag_gyo_/n10_ye_sul_gong_ye_/hyeong_gwang_pen_.png','http://220.69.171.28:8080/Symbol/Symbol/n3_hag_gyo_/n7_su_hag_/gag_do_gi_.png','연필','색연필','지우개','볼펜','풀','자','가위','형광펜','각도기'),(5,'채소','youyou23','http://220.69.171.28:8080/Symbol/Symbol/n8_ji_yeog_sa_hoe_/n2_syu_peo_ma_teu_/ga_ji_yeol_mae_.png','http://220.69.171.28:8080/Symbol/Symbol/n8_ji_yeog_sa_hoe_/n2_syu_peo_ma_teu_/gam_ja_001_.png','http://220.69.171.28:8080/Symbol/Symbol/n8_ji_yeog_sa_hoe_/n2_syu_peo_ma_teu_/gang_nang_kong_002_.png','http://220.69.171.28:8080/Symbol/Symbol/n8_ji_yeog_sa_hoe_/n2_syu_peo_ma_teu_/gye_ran_.png','http://220.69.171.28:8080/Symbol/Symbol/n8_ji_yeog_sa_hoe_/n2_syu_peo_ma_teu_/go_gu_ma_002_.png','http://220.69.171.28:8080/Symbol/Symbol/n8_ji_yeog_sa_hoe_/n2_syu_peo_ma_teu_/go_cu_002_.png','http://220.69.171.28:8080/Symbol/Symbol/n8_ji_yeog_sa_hoe_/n2_syu_peo_ma_teu_/bae_cu_201_.png','http://220.69.171.28:8080/Symbol/Symbol/n8_ji_yeog_sa_hoe_/n2_syu_peo_ma_teu_/beo_seos_201_.png','http://220.69.171.28:8080/Symbol/Symbol/n8_ji_yeog_sa_hoe_/n2_syu_peo_ma_teu_/beu_ro_kol_ri_201_.png','가지(열매)','감자','강낭콩','계란','고구마','고추','배추','버섯','브로콜리'),(6,'국가','juho123','http://220.69.171.28:8080/Symbol/Symbol/n16_gug_ga_/n1_gug_ga_/dae_han_min_gug_1.png','http://220.69.171.28:8080/Symbol/Symbol/n16_gug_ga_/n1_gug_ga_/dog_il_.png','http://220.69.171.28:8080/Symbol/Symbol/n16_gug_ga_/n1_gug_ga_/mi_gug_.png','http://220.69.171.28:8080/Symbol/Symbol/n16_gug_ga_/n1_gug_ga_/il_bon_.png','http://220.69.171.28:8080/Symbol/Symbol/n16_gug_ga_/n1_gug_ga_/jung_gug_.png','http://220.69.171.28:8080/Symbol/Symbol/n16_gug_ga_/n1_gug_ga_/kae_na_da_.png','http://220.69.171.28:8080/Symbol/Symbol/n16_gug_ga_/n1_gug_ga_/peu_rang_seu_.png','http://220.69.171.28:8080/Symbol/Symbol/n16_gug_ga_/n1_gug_ga_/bug_han_001_.png','http://220.69.171.28:8080/Symbol/Symbol/n16_gug_ga_/n1_gug_ga_/yeong_gug_.png','대한민국','독일','미국','일본','중국','캐나다','프랑스','북한','영국'),(7,'동물','juho123','http://220.69.171.28:8080/Symbol/Symbol/n13_dong_mul_sig_mul_/n2_po_yu_ryu_/gang_a_ji_201_.png','http://220.69.171.28:8080/Symbol/Symbol/n13_dong_mul_sig_mul_/n2_po_yu_ryu_/go_ril_ra_.png','http://220.69.171.28:8080/Symbol/Symbol/n13_dong_mul_sig_mul_/n2_po_yu_ryu_/go_seum_do_ci_.png','http://220.69.171.28:8080/Symbol/Symbol/n13_dong_mul_sig_mul_/n2_po_yu_ryu_/go_yang_i_201_.png','http://220.69.171.28:8080/Symbol/Symbol/n13_dong_mul_sig_mul_/n2_po_yu_ryu_/gom_.png','http://220.69.171.28:8080/Symbol/Symbol/n13_dong_mul_sig_mul_/n2_po_yu_ryu_/gi_rin_201_.png','http://220.69.171.28:8080/Symbol/Symbol/n13_dong_mul_sig_mul_/n2_po_yu_ryu_/nag_ta_201_.png','http://220.69.171.28:8080/Symbol/Symbol/n13_dong_mul_sig_mul_/n2_po_yu_ryu_/dwae_ji_201_.png','http://220.69.171.28:8080/Symbol/Symbol/n13_dong_mul_sig_mul_/n2_po_yu_ryu_/sa_seum_.png','강아지','고릴라','고슴도치','고양이','곰','기린','낙타','돼지','사슴'),(8,'학교','kkuk11','http://220.69.171.28:8080/Symbol/Symbol/n4_jib_/n7_bang_/gong_bu_001_.png','http://220.69.171.28:8080/Symbol/Symbol/n3_hag_gyo_/n1_zcorez_/seon_saeng_nim_001_.png','http://220.69.171.28:8080/Symbol/Symbol/n1_gi_bon_gi_neung_ki_/n1_zcorez_/cin_gu_.png','http://220.69.171.28:8080/Symbol/Symbol/n17_mi_bun_ryu_/n1_gi_ta_/hag_yong_pum_002_.png','http://220.69.171.28:8080/Symbol/Symbol/n3_hag_gyo_/n4_su_eob_gong_tong_/gyo_gwa_seo_002_.png','http://220.69.171.28:8080/Symbol/Symbol/n3_hag_gyo_/n4_su_eob_gong_tong_/cil_pan_002_.png','http://220.69.171.28:8080/Symbol/Symbol/n3_hag_gyo_/n2_hag_gyo_dae_hwa_/gyo_jang_seon_saeng_nim_.png','http://220.69.171.28:8080/Symbol/Symbol/n3_hag_gyo_/n2_hag_gyo_dae_hwa_/geub_sig_.png','http://220.69.171.28:8080/Symbol/Symbol/n3_hag_gyo_/n1_zcorez_/hag_gyo_sig_dang_.png','공부','선생님','친구','학용품','교과서','칠판','교장선생님','급식','학교식당'),(9,'가족','kkuk11','http://220.69.171.28:8080/Symbol/Symbol/n1_gi_bon_gi_neung_ki_/n1_zcorez_/eom_ma_003_.png','http://220.69.171.28:8080/Symbol/Symbol/n1_gi_bon_gi_neung_ki_/n1_zcorez_/a_bba_001_.png','http://220.69.171.28:8080/Symbol/Symbol/n4_jib_/n2_ga_jog_/hal_meo_ni_001_.png','http://220.69.171.28:8080/Symbol/Symbol/n4_jib_/n2_ga_jog_/hal_a_beo_ji_001_.png','http://220.69.171.28:8080/Symbol/Symbol/n4_jib_/n2_ga_jog_/eon_ni_001_.png','http://220.69.171.28:8080/Symbol/Symbol/n4_jib_/n2_ga_jog_/o_bba_001_.png','http://220.69.171.28:8080/Symbol/Symbol/n4_jib_/n2_ga_jog_/hyeong_001_.png','http://220.69.171.28:8080/Symbol/Symbol/n4_jib_/n2_ga_jog_/nu_na_001_.png','http://220.69.171.28:8080/Symbol/Symbol/n4_jib_/n2_ga_jog_/dong_saeng_003_.png','엄마','아빠','할머니','할아버지','언니','오빠','형','누나','동생'),(10,'악기','kkuk11','http://220.69.171.28:8080/Symbol/Symbol/n5_nol_i_yeo_ga_/n5_eum_ag_/pi_a_no_.png','http://220.69.171.28:8080/Symbol/Symbol/n5_nol_i_yeo_ga_/n5_eum_ag_/ba_i_ol_rin_.png','http://220.69.171.28:8080/Symbol/Symbol/n5_nol_i_yeo_ga_/n5_eum_ag_/gi_ta_001_.png','http://220.69.171.28:8080/Symbol/Symbol/n5_nol_i_yeo_ga_/n5_eum_ag_/deu_reom_.png','http://220.69.171.28:8080/Symbol/Symbol/n3_hag_gyo_/n10_ye_sul_gong_ye_/ri_ko_deo_.png','http://220.69.171.28:8080/Symbol/Symbol/n3_hag_gyo_/n10_ye_sul_gong_ye_/dan_so_.png','http://220.69.171.28:8080/Symbol/Symbol/n5_nol_i_yeo_ga_/n5_eum_ag_/jing_002_.png','http://220.69.171.28:8080/Symbol/Symbol/n5_nol_i_yeo_ga_/n5_eum_ag_/peul_rus_002_.png','http://220.69.171.28:8080/Symbol/Symbol/n5_nol_i_yeo_ga_/n5_eum_ag_/teu_ra_i_aeng_geul_.png','피아노','바이올린','기타','드럼','리코더','단소','징','플룻','트라이앵글'),(11,'놀이','sungshin11','http://220.69.171.28:8080/Symbol/Symbol/n5_nol_i_yeo_ga_/n1_zcorez_/ga_wi_ba_wi_bo_.png','http://220.69.171.28:8080/Symbol/Symbol/n5_nol_i_yeo_ga_/n1_zcorez_/gong_nol_i_202_.png','http://220.69.171.28:8080/Symbol/Symbol/n5_nol_i_yeo_ga_/n1_zcorez_/gong_ryong_.png','http://220.69.171.28:8080/Symbol/Symbol/n5_nol_i_yeo_ga_/n1_zcorez_/nin_ten_do_ge_im_.png','http://220.69.171.28:8080/Symbol/Symbol/n5_nol_i_yeo_ga_/n1_zcorez_/gi_ca_nol_i_.png','http://220.69.171.28:8080/Symbol/Symbol/n5_nol_i_yeo_ga_/n1_zcorez_/bing_go_.png','http://220.69.171.28:8080/Symbol/Symbol/n5_nol_i_yeo_ga_/n1_zcorez_/so_ggub_nol_i_001_.png','http://220.69.171.28:8080/Symbol/Symbol/n5_nol_i_yeo_ga_/n1_zcorez_/su_su_gge_ggi_201_.png','http://220.69.171.28:8080/Symbol/Symbol/n5_nol_i_yeo_ga_/n1_zcorez_/in_hyeong_nol_i_.png','가위바위보','공놀이','공룡','닌텐도게임','기차놀이','빙고','소꿉놀이','수수께끼','인형놀이'),(15,'과일','parent','http://220.69.171.28:8080/Symbol/Symbol/n2_eum_sig_/n7_gan_sig_/sa_gwa_001_.png','http://220.69.171.28:8080/Symbol/Symbol/n2_eum_sig_/n7_gan_sig_/po_do_001_.png','http://220.69.171.28:8080/Symbol/Symbol/n2_eum_sig_/n4_gwa_il_cae_so_gog_sig_/mel_ron_201_.png','http://220.69.171.28:8080/Symbol/Symbol/n2_eum_sig_/n7_gan_sig_/bog_sung_a_004_.png','http://220.69.171.28:8080/Symbol/Symbol/n2_eum_sig_/n7_gan_sig_/gyul_.png','http://220.69.171.28:8080/Symbol/Symbol/n2_eum_sig_/n7_gan_sig_/ddal_gi_001_.png','http://220.69.171.28:8080/Symbol/Symbol/n2_eum_sig_/n7_gan_sig_/su_bag_.png','http://220.69.171.28:8080/Symbol/Symbol/n8_ji_yeog_sa_hoe_/n2_syu_peo_ma_teu_/cam_oe_.png','http://220.69.171.28:8080/Symbol/Symbol/n2_eum_sig_/n7_gan_sig_/ce_ri_.png','사과','포도','멜론','복숭아','귤','딸기','수박','참외','체리');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child`
--

DROP TABLE IF EXISTS `child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `child` (
  `name` varchar(45) NOT NULL,
  `id` varchar(45) NOT NULL,
  `parentId` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `birth` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child`
--

LOCK TABLES `child` WRITE;
/*!40000 ALTER TABLE `child` DISABLE KEYS */;
INSERT INTO `child` VALUES ('김성신','child','parent','1234','2019-10-03'),('박건후','hoo123','juho123','1234','2015-05-31'),('유지호','jiho12','youyou23','1234','2014-05-15'),('이수정','lee6565','sungshin11','1234','2015-05-01'),('유나은','naeun11','youyou23','1234','2016-07-14'),('박나은','naeun123','juho123','1234','2014-05-09'),('이시안','sian123','kkuk11','1234','2013-05-01'),('홍수아','sua33','gildong12','1234','2013-04-04'),('이수아','suaa35','kkuk11','1234','2011-02-03'),('이설아','sula55','kkuk11','1234','2011-02-02'),('홍진영','young11','gildong12','1234','2011-01-19');
/*!40000 ALTER TABLE `child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent`
--

DROP TABLE IF EXISTS `parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parent` (
  `name` varchar(45) NOT NULL,
  `id` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `birth` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent`
--

LOCK TABLES `parent` WRITE;
/*!40000 ALTER TABLE `parent` DISABLE KEYS */;
INSERT INTO `parent` VALUES ('홍길동','gildong12','1234','1977-06-26','01098765432'),('박주호','juho123','123','1976-03-14','01093848383'),('이동국','kkuk11','1234','1976-07-01','01098364521'),('김성신','parent','456','1983-08-08','01012341234'),('김성신','sungshin11','1234','1969-05-23','01045463843'),('유재석','youyou23','1234','1977-07-23','01023424324');
/*!40000 ALTER TABLE `parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `childId` varchar(45) NOT NULL,
  `boardId` int(11) NOT NULL,
  `one` int(11) NOT NULL,
  `two` int(11) NOT NULL,
  `three` int(11) NOT NULL,
  `four` int(11) NOT NULL,
  `five` int(11) NOT NULL,
  `six` int(11) NOT NULL,
  `seven` int(11) NOT NULL,
  `eight` int(11) NOT NULL,
  `nine` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES (1,'young11',1,0,1,1,1,1,0,1,1,0),(2,'young11',1,1,1,0,1,0,0,1,1,1),(3,'young11',1,0,1,1,1,1,1,1,0,1),(4,'young11',2,0,0,0,1,1,1,0,1,1),(5,'young11',2,1,1,1,1,1,1,1,1,1),(6,'young11',2,1,1,1,1,1,1,1,1,1),(7,'sua33',1,1,0,1,1,1,1,0,1,1),(8,'sua33',1,1,1,1,1,1,1,1,1,1),(9,'sua33',2,1,1,1,1,1,1,1,1,1),(10,'sua33',2,1,0,1,1,0,0,1,0,1),(11,'jiho12',3,0,1,0,1,1,0,1,1,0),(12,'jiho12',3,1,0,0,0,1,1,1,1,0),(13,'jiho12',3,0,1,1,0,0,1,1,1,1),(14,'jiho12',3,0,0,0,1,0,0,0,1,1),(15,'jiho12',4,0,0,1,0,0,1,1,1,0),(16,'jiho12',4,1,0,1,1,0,1,1,0,0),(17,'jiho12',5,1,0,0,1,0,0,0,0,0),(18,'jiho12',5,0,0,0,0,0,0,0,0,0),(19,'jiho12',4,0,0,1,0,0,0,1,1,1),(20,'jiho12',4,1,0,1,1,0,1,0,1,1),(21,'naeun11',3,0,0,0,0,0,0,0,0,0),(22,'naeun11',3,0,1,0,1,0,1,1,1,0),(23,'naeun11',3,0,1,0,0,0,1,1,0,0),(24,'naeun11',3,0,0,0,1,0,0,1,0,0),(25,'naeun11',4,0,0,0,0,0,0,1,0,0),(26,'naeun11',4,1,0,1,0,0,0,1,0,1),(27,'naeun11',4,0,1,0,1,0,1,1,0,1),(28,'naeun11',5,0,1,0,0,0,1,0,0,1),(29,'naeun11',5,0,1,1,0,0,1,0,0,1),(30,'naeun11',5,0,0,1,1,0,1,0,1,0),(31,'naeun123',6,0,0,0,0,0,0,0,0,0),(32,'naeun123',6,1,1,1,1,0,1,1,0,0),(33,'naeun123',7,0,1,1,0,0,0,0,0,0),(34,'naeun123',7,1,0,1,0,0,0,0,1,1),(35,'hoo123',6,0,0,1,1,0,0,0,0,0),(36,'hoo123',6,1,1,0,0,0,1,1,0,1),(37,'hoo123',7,0,1,0,1,1,0,0,0,0),(38,'hoo123',7,1,1,0,1,0,1,1,1,0),(39,'naeun123',6,0,1,1,0,0,0,1,1,1),(40,'naeun123',7,0,1,0,0,1,1,1,1,0),(41,'lee6565',11,0,1,1,0,0,1,0,0,0),(42,'lee6565',11,0,0,1,0,0,0,0,1,0),(43,'sula55',8,0,0,0,1,0,1,0,1,1),(44,'sula55',9,0,1,1,0,0,0,0,0,0),(45,'sula55',8,1,0,0,0,0,1,1,0,0),(46,'sula55',9,0,0,0,0,0,0,0,0,0),(47,'sula55',10,0,0,1,0,0,0,0,0,1),(48,'suaa35',8,0,0,0,0,0,0,1,1,0),(49,'suaa35',10,1,0,0,0,1,1,0,0,1),(50,'suaa35',10,0,0,0,0,1,0,0,0,0),(51,'sian123',8,0,0,0,0,0,0,1,0,0),(52,'sian123',9,1,0,0,1,0,0,0,0,0),(53,'kid',12,0,0,1,1,1,1,1,1,1),(54,'kid',12,1,0,1,1,1,1,1,1,1),(55,'kid',12,1,1,1,1,1,1,1,1,1),(56,'child',13,1,1,1,1,1,1,1,1,1),(57,'child',13,1,1,0,1,1,0,0,1,0),(58,'child',13,1,0,0,0,0,0,0,0,0),(59,'child',15,0,1,0,1,0,0,1,0,1),(60,'child',15,1,1,1,1,0,1,1,1,1),(61,'child',15,1,1,1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'webapp1'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-07 20:21:16
