

SELECT tblUye.UYE_ID, tblUye.AD_Üye, tblUye.SOYAD_Üye , COUNT(DISTINCT tblOyuna_puan_verir.ID) as Puan_Verme_Sayisi
FROM tblUye
LEFT JOIN tblKoleksiyon ON tblUye.UYE_ID = tblKoleksiyon.UYE_ID
LEFT JOIN tblOyuna_puan_verir ON tblKoleksiyon.KOLEKSIYON_ID = tblOyuna_puan_verir.KOLEKSIYON
GROUP BY tblUye.UYE_ID, tblUye.AD_Üye , tblUye.SOYAD_Üye ;


SELECT 
    tblUye.UYE_ID, 
    tblUye.AD_Üye, 
    tblUye.SOYAD_Üye,   
    COUNT(CASE WHEN tbloyun_koleksiyon.OYUN_SAHIP_OLMA_TARIHI IS NOT NULL THEN tbloyun_koleksiyon.OYUN_ASILAD END) as Oyun_Sayısı 
FROM 
    tblUye
JOIN 
    tblKoleksiyon ON tblUye.UYE_ID = tblKoleksiyon.UYE_ID
JOIN 
    tbloyun_koleksiyon ON tblKoleksiyon.KOLEKSIYON_ID = tbloyun_koleksiyon.KOLEKSIYON_ID
GROUP BY 
    tblUye.UYE_ID, 
    tblUye.AD_Üye, 
    tblUye.SOYAD_Üye;


