#Dasrurchi:Ahrorjon Ibrohimjonov(axrorback)
#2025-yil,5-oktabr
#Shunday SQL so‘rov yozingki, u faqat takrorlangan email manzillarni qaytarsin.
#Natijaviy jadvalda faqat Email degan ustun bo‘lishi kerak.


#Yechim



SELECT email AS Email
FROM Person
GROUP BY email
HAVING COUNT(email) > 1;



#Tushuntirish:

# 1⃣ SELECT email AS Email →
# email ustunini tanlaymiz va natijada ustun nomi Email deb chiqsin.
#
# 2⃣ FROM Person →
# Ma’lumotni Person jadvalidan olamiz.
#
# 3⃣ GROUP BY email →
# Bir xil email manzillarni guruhlaymiz (takrorlar bir joyga tushadi).
#
# 4⃣ HAVING COUNT(email) > 1 →
# Faqat 2 marta yoki undan ko‘p marta uchragan email’larni chiqaramiz.