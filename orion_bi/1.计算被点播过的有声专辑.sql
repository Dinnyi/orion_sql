-- // 计算被点播过的有声专辑
SELECT
count(DISTINCT b_albumId)
FROM data_xy_b_content_asr_nlp_all
WHERE insert_time BETWEEN STR_TO_DATE('2018-04-20 00:00:00','%Y-%m-%d %H:%i:%s') AND STR_TO_DATE('2018-08-06 23:59:59','%Y-%m-%d %H:%i:%s')

-- 排查异常设备 START
and p_serial not in ('XY2017041500023','dc3333ab','XY201704150005D','TEST0006','XY2017041500082','XY2017041500035','XY2017051000018','XY201704150005F','XY2017041500020','XY2017041500002','XY20170415000AC','XY2017041500091','XY201704150007C','XY201704150006E','TEST951753','XY2017041500098','XY2017041500042','XY20170415000BB','XY2017041500062','XY2017041500063','XY2017041500064','XY2017041500089','XY20170415000A1','XY20170415000BA','XY2017041500001','XY201704150008D','SN:XY201705100000F','XY201704150008C','XY2017041500003','XY20170415000AB','XY2017041500055','XY20170415000A8','XY2017041500076','XY201704150004B','XY2017041500032','XY20170415000BF','XY2017051000016','XY20170415000A7','XY2017041500050','XY201705100001D','XY20170415000BD','XY201704150009F','XY2017041500040','XY201704150007F','XY201704150007B','XY2017041500096','XY2017041500049','SN:XY2017051000022','XY2017041500095','XY2017041500088','XY2017041500039','XY2017041500011','621QECQG4F4RQ','XY2017041500069','XY201704150002D','XY201704150002C','XY2017041500087','XY201704150004E','XY201704150000C','XY201704150001F','XY201704150000F','XY201706051552A','XY201704150004A','XY2017051000023','XY201705100001A','SN:XY2017051000004','XY201704150006B','XY2017041500083','XY2017041500000','XY20170415000B','XY2017041500085','XY2017051000029','XY201704150008E','XY2017041500048','XY2017041500057','SN:XY2017051000005','XY2017051000007','XY2017051000014','XY76200092','XY7620020E','XY76200077','123456789','XY762000A4','XY762002D5','XY76200155','XY76200040','XY76200113','XY762002DF','XY762002DC','XY76200135','XY76200002','XY762002D1','XY76200086','XY76200405','XY7620023F','XY7620007C','XY762000EE','XY762003D0','XY762000E0','XY7620004E','XY762000A6','XY762002D8','XY7620004D','XY762002CF','XY7620002A','XY762003B1','XY762000AB','XY76200062','XY762003EF','XY7620036A','XY76200108','XY2017051000022','XY762000AC','XY762002F3','XY762000F8','XY76200074','XY76200021','XY762002D9','XY76200026','XY7620033C','XY7620007B','XY76200342','XY76200222','XY762002AE','XY762002F4','XY762000B1','XY7620020B','XY7620002B','XY76200066','XY762002EE','XY7620007D','XY76200368','XY7620002C','XY76200296','XY2017041500084','XY76200157','XY76200014','XY762000B4','XY7620007F','XY7620010B','SN:XY2017051000024','XY762003F6','XY762002DE','XY76200047','XY762000AE','XY762001A8','XY7620006C','SN:XY2017051000003','XY762001F5','XY7620010F','XY76200129','XY7620001A','XY7620000C','XY20170415000FF','XY7620010E','XY20170415000B7','XY76200412','XY76200107','XY76200418','XY7620028B','XY7620005C','XY7620026B','XY7620023B','XY762000FB','XY2017041500041','XY762003DF','XY7620026D','XY762000D4','XY762000A0','XY762001F2','XY762002B4','XY7620001D','XY76200282','XY201704150009E','XY76200360','XY7620037B','XY762003D9','XY762002A1','XY76200071','XY76200199','XY76200148','XY76200015','XY7620003B','XY762000A7','XY7620034D','XY762003E8','XY7620017D','XY76200119','XY7620034E','XY7620022B','XY76200028','XY762001DA','XY762002D4','XY76200089','XY762001B2','XY762001D9','XY76200403','XY7620016D','XY76200279','XY762001D6','XY76200027','XY7620000D','XY76200326','XY76200064','XY76200144','XY2017041500009','XY76200132','XY76200436','XY7620038D','XY762003EB','XY76200152','XY76200207','XY762001B7','XY7620009F','XY762001FF','XY7620009D','XY76200401','XY76200255','XY762000C7','XY762002CD','XY7620033F','XY76200228','XY7620033E','XY762001A1','XY762003DC','XY7620014C','XY7620019C','XY762000E8','XY7620009C','XY7620005F','XY762002FD','XY7620006B','XY2017041500044','XY762000D6','XY76200286','XY76200007','XY7620027B','XY76200161','XY762000FA','XY762002A4','XY7620023D','XY76200323','XY76200115','XY76200384','XY76200387','XY7620013A','XY76200420','XY76200038','XY76200311','XY7620024F','XY76200245','XY76200180','XY762001C7','XY76200178','XY76200101','XY76200194','XY76200192','XY76200351','HT52DYJ00877','XY7620008B','XY762003F4','XY762002CE','XY201704150007D','XY7620029C','XY762000BE','XY76200408','XY76200170','XY76200358','XY762001B9','XY76200386','XY76200278','XY762002E0','XY7620023E','XY7620011A','XY76200413','XY76200370','XY76200434','XY76200004','XY762000F5','XY7620014F','XY762000CF','XY76200216','XY76200011','XY7620010D','XY762002E3','XY76200313','XY762000C5','XY76200068','XY76200003','XY76200076','XY76200029','XY76200055','XY7620039D','XY76200288','XY76200409','XY76200109','XY762001A0','XY7620030C','XY76200429','XY76200271','XY762003B7','XY762003D4','XY76200283','XY7620039C','XY76200127','XY762000A5','XY76200340','XY7620011D','XY762002B9','XY76200238','XY762001DF','XY7620036E','XY76200407','XY762001F3','XY762003F5','XY76200065','XY762000DD','XY76200388','XY762000BA','XY7620016C','XY7620032F','XY76200195','XY762002B1','XY7620019F','XY7620001C','XY762002BF','XY762003A5','XY762003A0','XY76200120','XY762001B8','XY76200197','XY7620027D','XY7620038A','XY762000E3','XY76200362','XY762003F7','XY76200293','XY7620022C','XY76200160','XY762003DA','XY762000E2','XY7620015C','XY762001D7','XY762003F3','XY7620025F','XY76200059','XY7620031F','XY7620041F','XY76200373','XY7620014D','XY7620000A','XY762002A3','XY2017041500060','XY7620012E','XY76200250','XY76200185','XY76200256','XY76200392','XY76200318','XY7620006E','XY762000C4','XY7620040F','XY762002A6','XY762000DE','XY762000A3','XY76200046','XY762003C5','XY7620008A','XY7620039A','XY762000CC','XY762003B9','XY7620011B','XY762003CB','XY7620038F','XY76200196','XY762000D2','XY76200106','XY76200398','XY76200381','XY762003C7','XY7620001F','XY762003C0','XY7620036C','XY76200218','XY76200227','XY762002C2','XY76200277','XY76200331','XY76200191','XY7620002E','XY7620011C','XY762000C3','XY76200006','XY76200130','XY76200072','XY7620020A','XY762000E4','XY7620005D','XY76200354','XY76200364','XY76200259','XY76200210','XY7620021A','XY7620005E','XY7620006D','XY76200335','XY7620035C','XY7620026F','XY7620008D','XY76200316','XY7620038C','XY76200049','XY7620028F','XY76200257','XY762002BB','XY76200219','XY762001C5','XY762001F1','XY76200100','XY76200440','XY76200240','XY762001ED','XY76200117','XY76200396','XY762001CD','XY762001A9','XY762003CD','XY762001BF','XY762003C9','XY76200158','XY7620033B','XY76E00088','XY7620015B','XY7620043F','XY762003E2','XY76200025','XY76200375','XY762002F8','XY762001BE','XY76200280','XY762000B3','XY76200154','XY76200327','XY762002BD','XY76200404','XY762001FA','XY762002A0','XY76200302','XY7620030D','XY762000F6','XY7620025C','XY762000DB','XY762000D7','XY762000C2','XY762003BF','XY76200441','XY76200341','XY7620035B','XY7620025A','XY762003EC','XY76D00144','XY762002F7','XY762001B5','XY762000CD','XY762003AA','XY7620007E','XY762002DD','XY7620001E','XY762001EF','XY7620024D','XY20170415000AA','XY762000E9','XY76200208','XY76200041','XY76200138','XY76200273','XY76200301','XY762001AF','XY762002D6','XY7620032C','XY762003F0','XY7620027E','XY76200044','XY7620002D','XY76200435','XY76200389','XY76200402','XY762002F9','XY76200079','XY76200295','XY76200304','XY7620021C','XY76200075','XY76200008','XY7620004B','XY762001CE','XY7620033A','XY76200122','XY7620030E','XY76200371','XY76200162','XY76200050','XY762100AA','XY7620019A','XY201704190004A','XY76200261','XY762002B6','XY762000C1','XY76200063','XY7620013E','XY7620010C','XY7620032A','XY76200212','XY762002AA','XY762003CA','XY762002C6','XY7620015F','XY76200437','XY762002E1','XY762002CB','XY762003AE','XY7620020C','XY762000D9','XY76200382','XY7620040E','XY7620008E','XY762002A5','XY7620017A','XY762000B8','XY7620029A','XY762001AB','XY7620039E','XY76200139','XY76200325','XY762002D7','XY76200415','XY76200225','XY76200254','XY762000CB','XY762002EA','XY7620034A','XY762001E5','XY762000B9','XY76200344','XY762001AA','XY762000FD','XY76200246','XY762003A1','XY76200167','XY7620041E','XY76200237','XY7620031E','XY76200260','XY7620006A','XY762000F7','SN:XY201705100001E','XY76200363','XY762002AB','XY76200022','XY76200284','XY76200411','XY7620002F','XY76200356','XY762000A8','XY76200039','XY762002CC','XY762003B5','XY762003FC','XY76200395','XY7620029F','XY76200189','XY762002D0','XY762001FE','XY762003AB','XY762002E4','XY762003E7','XY76200357','XY762002B0','XY76200174','XY76200377','XY762003B4','XY76200034','XY762003E9','XY76200209','XY76200151','XY7620025B','XY7620014A','XY76200204','XY762003FF','XY762003D7','XY76200125','XY76200168','XY76200391','XY76200328','XY762002AF','XY2017041500046','XY762000B7','XY762003C3','XY762003AD','XY7620014B','XY762003ED','XY7740041B','XY76200229','XY76200088','XY762003F2','XY76200267','XY77400337','XY7620003A','XY76200289','XY76200281','XY762000ED','XY76200213','XY762000EC','XY76200069','XY7620023C','XY762001AE','XY762002FE','XY76200348','XY76200177','XY7620018A','XY7620044A','XY20170415000F2','XY762000AA','XY762000FE','XY7620005A','XY76200030','XY762003B2','XY20170415000B4','XY76200337','XY762001DC','XY76200172','XY762001F4','XY76200159','XY7620008C','XY7620028A','XY7620005B','XY762001D5','XY762001E0','XY76200410','XY76200365','XY762003A3','XY76200430','XY76200385','XY762001DE','XY762003A8','XY76200226','XY76200355','XY76200268','XY762000AF','XY762000D3','XY7620040A','XY76200024','XY76200421','XY76200299','XY76200142','XY76200175','XY123456AB','XY7620020F','XY76200390','XY76200017','XY762001B0','XY762003BA','XY76200252','XY76200258','XY76200292','XY762003A6','XY762003E6','XY762001C0','XY762000BF','XY762001DB','XY76200164','XY762003EE','XY7620024C','XY762000FF','XY76200349','XY762003E4','XY76200123','SN:XY201705100000D','XY76200414','XY76200317','XY762001A7','XY76200352','XY76200272','XY76200424','XY76200137','XY762002CA','XY7620032E','XY762000D5','XY76200098','XY7620007A','XY2017041500007','XY76200020','XY76200118','XY7620017B','XY762002A9','CC76200154','CC7620029A','CC762000FD','XY762003B3','XY762001EA','XY77000172','XY774003C8','XY7730027E','XY7770032A','XY77D000AB','XY7620016A','XY20170731','XY776001B7','XY779003D4','XY201705100000F','XY2017051000004','XY2017051000005','XY2017051000024','XY2017051000003','XY201705100001E','XY201705100000D','010001748000001','010001748000003','010001748000009','010001748000016','010001748000018','010001748000019','010001748000021','010001748000023','010001748000024','010001748000029','010001748000030','010001748000034','010001748000036','010001748000037','010001748000038','010001748000044','010001748000050','05c32cd3004d176a','111001748000002','a84fd63','HT61BBE09950','P1QRM1AVG1','P1QRM2WCTH','P1QRM41KZA','P1QRM6KWGJ','P1QRM7MZXU','P1QRM97GIB','P1QRMGDGDK','P1QRMH5NWQ','P1QRMI4Z4O','P1QRMKA261','P1QRML5OIE','P1QRMO4MW1','P1QRMQYSH1','P1QRMRE9OA','P1QRMSUB4U','P1QRMW1MO4','P1QRMW1O4M','P1QRMXWA9U','P1QRMYGFDS','P1QRMYS4NO','unknown','XY2017041500003','XY2017041500010','XY201704150001F','XY201704150002F','XY201706081748XY','XY77200251','XY774003C8','XY7770032A','XY77B00017','010001748000076','010101803000125','010101803000136','010101803000227','010101803000229','032201809000112','032201809000288','032201809000320','032201809000326','KU1BY9M6JL','XY79400178','P1QRMARZTN','010001748000073','010001748000062','010001748000043','011101748000020','111001748000007','111001748000078','111001748000053','010101803000031','111001748000034','111001748000072','010001748000008','010001748000081','010001748000056','111001748000032','010101803000030','111001748000013','111001748000052','111001748000044','010101803000046','010101803000064','010101803000133','111001748000036','010001748000026','111001748000048','111001748000035','111001748000015','010101803000012','111001748000079','P1QRMSJY7B','010101803000010','P1QRMYC5CL','010001748000090','010101803000004','010001748000033','111001748000039','111001748000033','111001748000080','010101803000150','010001748000012','010001748000059','111001748000037','010101803000034','lingyunxiaoai','111001748000017','010001748000083','XY201704150003D','010101803000039','010101803000149','010101803000024','111001748000031','111001748000055','111001748000045','111001748000027','XY7740001C','111001748000075','111001748000062','33008db094a624f3','010001748000042','KU1BYCRVSO','010001748000061','020101805000084','111001748000073','010001748000045','020101805000014','020101805000039','020101805000055','020101805000006','020101805000031','020101805000069','020101805000043','020101805000067','020101805000049','020101805000025','020101805000073','020101805000050','020101805000044','020101805000047','011101748000025','020101805000045','020101805000058','010101803000186','020101805000070','020101805000078','020101805000071','020101805000068','020101805000012','020101805000072','020101805000061','020101805000062','111001748000005','020101805000093','010001748000080','020101805000090','020101805000088','020101805000038','020101805000046','010001748000048','020101805000036','020101805000089','020101805000035','020101805000092','020101805000010','020101805000008','020101805000015','020101805000001','020101805000023','111001748000026','020101805000074','020101805000020','020101805000029','111001748000024','020101805000091','020101805000033','020101805000009','010101803000020','010101803000017','010101803000029','010001748000011','111001748000056','020101805000064','020101805000056','020101805000002','020101805000054','020101805000065','020101805000042','020101805000085','020101805000024','020101805000079','020101805000059','020101805000004','111001748000082','020101805000095','020101805000081','020101805000102','020101805000101','020101805000098','020101805000103','010101803000096','010101803000048','010101803000095','010101803000198','010101803000237','010101803000210','010101803000196','010101803000222','111001748000009','010101803000111','010101803000116','010101803000050','P1QRMIGNYZ','010101803000218','111001748000028','P1QRM2PWWV','010001748000069','P1QRMCG2JJ','010101803000013','020101805000040','010101803000106','010101803000105','010101803000115','010101803000093','010101803000080','GB8ZAB73GY','010101803000094','010101803000061','010101803000091','010101803000112','010101803000077','010101803000103','010101803000089','111001748000012','010101803000045','010101803000090','010101803000084','010101803000170','010101803000195','010101803000219','010101803000121','010101803000169','010101803000014','010101803000194','010001748000005','111001748000022','010101803000129','XY7A400446','010101803000083','111001748000038','010101803000104','010101803000075','010101803000197','010101803000088','010101803000092','010101803000086','111001748000100','010001748000074','010101803000087','010101803000059','010101803000079','010101803000062','010101803000055','010101803000176','010101803000057','011001748000100','3SC5T16920006834','010101803000117','020101805000075','020101805000105','020101805000007','111001748000070','010101803000221','010101803000148','010001748000002','010101803000160','P1QRMTKPQ5','010101803000060','010101803000131','95cd3222','010001748000077','010101803000085','010001748000022','020101805000051','EBAZCY19L363','010101803000220','010101803000193','010101803000223','010101803000175','010101803000153','010101803000205','XY77D000AB','111001748000010','111001748000049','010101803000123','010101803000072','010101803000134','d303af42','010101803000152','HYEUNFFQ6DQ4SGUW','010101803000009','111001748000074','HT51FYC00971','010001748000020','111001748000025','111001748000018','111001748000041','010101803000247','010101803000063','020101805000041','010101803000016','010001748000004','010101803000236','010101803000025','010101803000192','010101803000179','010101803000158','010101803000180','111001748000046','010101803000142','010101803000230','010101803000155','010101803000135','010101803000231','010101803000234','010101803000165','010101803000130','010101803000067','010101803000151','010101803000182','010101803000139','010101803000156','010101803000159','010101803000128','010101803000225','010101803000069','010101803000241','010101803000181','010101803000002','020101805000017','010101803000071','020101805000082','020101805000013','010101803000120','XY762000FB','010101803000154','010101803000250','010101803000164','010101803000052','010101803000244','010101803000213','010101803000172','010101803000146','010101803000240','010101803000114','010101803000036','010101803000022','010101803000078','010101803000249','010101803000166','010101803000053','010101803000043','010101803000200','010101803000167','010101803000233','010101803000044','010101803000224','010101803000246','010101803000073','010101803000144','111001748000084','010101803000027','010101803000051','111001748000059','010101803000207','010101803000184','111001748000064','020101805000086','010101803000074','010101803000245','010101803000248','010101803000185','010101803000189','010101803000209','010101803000011','XY77900380','DU2TAN151F011601','010001748001040','KU1BYEFRI9','010101803000242','010101803000081','010101803000204','KU1BYASBGR','KU1BY8AL8P','KU1BY6W9H5','KU1BYMCGJ0','010101803000032','KU1BYKAEPA','010101803000187','KU1BY01HSN','010101803000140','010101803000082','010101803000215','010101803000239','010101803000217','010101803000177','010101803000049','010101803000208','010101803000201','010101803000206','010101803000202','010101803000132','010101803000056','010101803000118','010101803000119','010101803000008','010101803000101','010101803000251','010101803000026','010101803000168','010101803000102','010101803000199','010101803000070','010101803000124','010101803000228','010101803000171','010101803000178','010101803000174','010101803000147','010101803000190','010101803000163','010101803000126','010101803000243','010101803000226','010101803000188','010101803000191','010101803000212','010101803000238','010101803000054','KU1BYWKOUF','010101803000110','KU1BYYYLYK','020101805000034','Q4AAJ904HM','010101803000015','KU1BYMQ0NK','010101803000042','116001748000069','020101805000106','020101805000021','020101805000019','KU1BYW6OUG','010001748000035','010101803000138','010101803000216','010101803000162','KU1BYGCNII','KU1BYF16SI','KU1BYXO8GO','KU1BYLIFFC','KU1BYUJ4ZO','KU1BYN0A0C','KU1BYTGO4T','010101803000127','010101803000232','P1QRM4UNBF','010001748000060','032201809000001','032201809000010','UYT0218109001568','032201809000006','032201809000015','032201809000013','032201809000016','032201809000003','010001748000064','032201809000018','032201809000021','032201809000007','032201809000017','032201809000011','032201809000005','032201809000036','032201809000025','032201809000035','032201809000019','032201809000009','032201809000004','d08ddea7','032201809000030','032201809000047','032201809000037','032201809000020','032201809000032','010101803000173','032201809000008','KU1BYI08EB','010101803000137','12e1aa3e','010101803000108','032201809000040','032201809000034','032201809000014','032201809000022','032201809000012','KU1BYGONT1','KU1BYY7XUL','032201809000049','032201809000033','KU1BYMG55J','KU1BYM00QT','010101803000099','KU1BYMP9LI','KU1BYEV1NQ','KU1BYZR6QS','032201809000051','032201809000053','032201809000054','032201809000055','032201809000067','032201809000062','032201809000063','032201809000060','032201809000057','032201809000069','032201809000064','032201809000070','032201809000065','032201809000071','032201809000066','032201809000068','032201809000061','010101803000019','KU1BY0P6D1','KU1BYAZ4BW','KU1BYSAE1J','P1QRMU54S6','KU1BYXPOKV','032201809000078','032201809000072','032201809000045','032201809000041','KU1BYUW0OP','032201809000075','032201809000077','032201809000042','032201809000074','032201809000044','032201809000059','032201809000076','032201809000073','032201809000043','1234567890123111','032201809000050','032201809000058','KU1BYFRF12','KU1BYK3V74','020101805000037','KU1BYJ2FZU','KU1BYVWA6P','KU1BYXJVBJ','KU1BYBSCAT','032201809000056','XY20170415000B3','032201809000048','020101805000003','KU1BYHFRX3','KU1BY0H6ZM','KU1BY5R3BZ','KU1BY3W9F0','KU1BY3KT3Y','CJL7N16127002817','KU1BY9QB4G','032201809000080','032201809000052','KU1BYJPMC4','KU1BY8GP1Z','KU1BYD87Z3','KU1BYU9I83','KU1BYVNKIH','KU1BY8PH0O','010001748000025','KU1BYS9KP7','KU1BYWV2JQ','KU1BYIGFEF','010001748000053','020101805000005','111001748000011','KU1BY3FO3I','KU1BYCYVXZ','KU1BYG3QRF','KU1BY78O9X','KU1BYKZJET','KU1BYRJ27W','KU1BYZX4JG','032201809000101','032201809000105','032201809000106','032201809000120','032201809000148','032201809000180','032201809000109','032201809000181','032201809000178','032201809000136','032201809000169','032201809000151','032201809000046','032201809000179','032201809000144','032201809000124','032201809000153','KU1BYS9M95','032201809000197','032201809000194','032201809000238','032201809000224','032201809000192','032201809000209','032201809000117','032201809000118','032201809000215','032201809000196','032201809000203','032201809000262','032201809000236','032201809000235','032201809000253','032201809000114','032201809000119','032201809000152','032201809000110','032201809000107','032201809000190','032201809000115','032201809000108','032201809000217','032201809000228','032201809000103','111001748000067','032201809000221','032201809000213','032201809000276','032201809000267','032201809000298','032201809000245','032201809000281','032201809000195','032201809000294','032201809000233','032201809000239','032201809000229','032201809000256','032201809000273','032201809000167','032201809000220','032201809000261','032201809000139','032201809000131','032201809000214','032201809000198','032201809000193','032201809000210','032201809000191','032201809000138','032201809000263','032201809000259','032201809000222','032201809000237','032201809000297','032201809000231','032201809000279','032201809000234','032201809000204','032201809000299','032201809000290','032201809000349','032201809000393','032201809000394','032201809000385','032201809000412','032201809000347','032201809000367','032201809000366','032201809000355','032201809000380','032201809000391','032201809000361','032201809000254','032201809000330','032201809000211','032201809000219','032201809000232','6EB0217515002494','010101803000033','KU1BYR9WEI','032201809000168','032201809000328','032201809000202','032201809000307','032201809000207','032201809000174','032201809000364','032201809000225','032201809000399','032201809000408','032201809000388','032201809000291','032201809000342','032201809000258','032201809000249','032201809000160','032201809000406','032201809000313','032201809000422','032201809000339','032201809000336','032201809000357','032201809000377','032201809000317','032201809000409','032201809000345','032201809000314','032201809000350','032201809000143','032201809000272','032201809000403','032201809000356','032201809000226','032201809000104','032201809000182','032201809000407','032201809000405','032201809000421','032201809000309','032201809000113','032201809000306','032201809000149','032201809000310','032201809000150','032201809000227','032201809000176','032201809000329','032201809000286','032201809000352','020101805000052','032201809000247','032201809000384','020101805000053','032201809000338','020101805000104','020101805000066','020101805000027','020101805000083','032201809000164','032201809000188','020101805000080','020101805000016','020101805000063','020101805000026','020101805000060','020101805000030','020101805000097','020101805000048','020101805000094','020101805000096','032201809000177','032201809000111','111001785000010','032201809000208','032201809000334','032201809000316','032201809000302','032201809000242','KU1BYBAC3I','010101803000018','032201809000404','032201809000327','032201809000218','032201809000344','032201809000368','032201809000184','032201809000415','032201809000354','032201809000134','032201809000170','032201809000201','XY20170415000BD','XY7620015B','XY7730027E','XY76200050','XY76200446','XY77000172','LE67A06240078086','015b49763866ce88','XY76200170','Y9K0214C06001390','cd0ac2fe','XY76200189','XY10250YLJ','TDY5T17801020377','ENU7N15C29002195','XY762002E4','XY762002E1','XY2017041500022','111001748000008','111001748000003','0111001748000017','P1QRM4OR1T','P1QRM9CHHM','P1QRMS5E88','P1QRM4UKGS','DBX81DVT043','1eabd5f3','8326df64','0111001748000043','010001748000068','P1QRMM5S1A','P1QRMETHVV','0111001748000044','4572960e','010001748000070','P1QRMK7EVY','P1QRMR4YOC','P1QRMIELQ2','010001748000072','010001748000082','P1QRMPH6YQ','010001748000085','P1QRMX42GT','P1QRMROAE9','111001748000019','111001748000020','010001748000040','010001748000067','P1QRMOTL11','P1QRMN97LW','P1QRM7RAT7','P1QRMTLWLE','111001748000069','111001748000071','111001748000030','111001748000054','111001748000043','111001748000021','111001748000077','111001748000076','111001748000063','111001748000058','111001748000057','111001748000029','P1QRMFA9DO','111001748000050','111001748000066','111001748000042','111001748000088','111001748000087','111001748000051','111001748000023','111001748000040','111001748000081','91d69e61','010001748000078','111001748000061','111001748000085','111001748000089','111001748000090','111001748000060','111001748000083','111001748000086','111001748000065','111001748000006','111001748000004','111001748000092','111001748000068','111001748000091','GB8ZAWYD53','010001748000006','11001748000070 ','P1QRMOJ68I','P1QRMLTOV3','010001748000065','11672323addd','0111001748000001','0111001748000002','FA36KW911998','9fd95c7c','9d2c202c','0111001748000056','5HPQAIZ0NP','H3AZCY01S048WWG','06749dfd00608fc5','0111001748000011','011101748000004','P1QRMKUEAN','51ecaca4','011101748000006','ce071717f0bb3cdf0b7e','6e8e0ff5','139041a5','Y2J5T17410006343','P1QRMT5WPR','011101748000018','ac1de4f','ee299227d83','c0567366','P1QRMJIYM7','P1QRMYJECX','0727089d00752634','P1QRM9OPQ6','P1QRMPEJAF','P1QRMBP79S','P1QRMDS0MD','P1QRM5G44A','P1QRMZ65MH','010101803000001','010101803000003','P1QRM2YZE1','010101803000005','010101803000006','375013eb','P1QRMEXF3Z','010101803000007','010101803000040','P1QRMGALG2','KU1BY9HTUL','P1QRM882DI','010101803000035','123456789415625','010101803000068','010101803000098','010101803000113','032201809000251','032201809000359','032201809000277','032201809000398','032201809000341','032201809000397','032201809000303','032201809000323','032201809000305','032201809000269','032201809000240','032201809000163','010101803000425','032201809000154','032201809000156','032201809000166','032201809000183','032201809000206','032201809000230','032201809000301','032201809000312','032201809000322','032201809000376','032201809000386','032201809000425','032202815000002','032202815000004','032202815000007','032202815000008','032202815000010','032202815000013','032202815000016','032202815000018','032202815000019','032202815000024','032202815000030','032202815000041','032202815000043','032202815000048','032202815000052','032202815000054','032202815000055','032202815000063','032202815000083','032202815000096','032202815000098','032202815000105','032202815000112','032202815000114','032202815000117','032202815000125','032202815000134','032202815000135','032202815000142','032202815000147','032202815000148','032202815000155','032202815000157','032202815000178','032202815000187','032202815000195','032202815000196','032202815000197','032202815000199','032202815000200','032202815000205','032202815000206','032202815000224','032202815000225','032202815000228','032202815000231','032202815000232','032202815000234','032202815000235','032202815000238','032202815000240','032202815000241','032202815000242','032202815000243','032202815000245','032202815000246','032202815000247','032202815000248','032202815000249','032202815000251','032202815000252','032202815000254','032202815000255','032202815000257','032202815000258','032202815000259','032202815000260','032202815000261','032202815000262','032202815000263','032202815000267','032202815000268','032202815000269','032202815000270','032202815000271','032202815000273','032202815000274','032202815000276','032202815000279','032202815000280','032202815000284','032202815000285','032202815000286','032202815000287','032202815000289','032202815000290','032202815000298','032202815000304','032202815000306','032202815000308','032202815000312','032202815000316','032202815000318','032202815000319','032202815000320','032202815000321','032202815000325','032202815000326','032202815000331','032202815000344','032202815000345','032202815000348','032202815000349','032202815000350','032202815000351','032202815000352','032202815000354','032202815000355','032202815000357','032202815000359','032202815000361','032202815000362','032202815000366','032202815000372','032202815000373','032202815000375','032202815000377','032202815000378','032202815000379','032202815000380','032202815000381','032202815000384','032202815000385','032202815000388','032202815000395','032202815000400','032202815000404','032202815000407','032202815000410','032202815000411','032202815000417','032202815000422','032202815000426','032202815000428','032202815000429','032202815000430','032202815000440','032202815000441','032202815000442','032202815000446','032202815000447','032202815000454','032202815000466','032202815000471','032202815000474','032202815000475','032202815000476','032202815000477','032202815000481','032202815000488','032202815000498','032202815000503','032202815000516','032202815000530','032202815000535','032202815000536','032202815000538','032202815000539','032202815000541','032202815000542','032202815000543','032202815000548','032202815000549','032202815000550','032202815000551','032202815000552','032202815000560','032202815000583','032202815000619','032202815000661','KU1BY1RVCG','KU1BY3OA85','KU1BYB1YB6','KU1BYEYTAZ','KU1BYFLC2G','KU1BYFUKKX','KU1BYYSJJL')
and p_serial not like 'KU%'
and p_debug!='1'
and report_ip not in ('125.93.182.130','61.135.33.58','113.107.5.34','113.107.5.35','113.107.5.36','113.66.223.100','116.6.40.18')
and report_ip not in ('116.6.40.18','112.97.61.21','112.97.59.12','112.97.61.134','112.97.226.216','113.119.65.194','171.217.95.14','125.70.255.6','117.152.227.34','117.152.230.142','117.152.230.49','117.152.224.101','113.107.5.34','113.107.5.35')
and report_ip not like '10.100.%'
and p_uid NOT in ('618871','644157','600493','583441','306889','453497','402667','657009','455419','560623','653297','607081','551891','551905','607179','590697','590849','403853')
-- 排查异常设备 END

and p_prodid=3   -- // 小豹
and b_domain='fm'   -- // 有声
and b_query!=''
and b_query!='text'
and b_slots like '%album%'

