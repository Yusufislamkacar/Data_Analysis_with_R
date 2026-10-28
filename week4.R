?mtcars
mtcars_df <- mtcars
summary(mtcars_df)

cylinder1 <- mtcars_df[2]#2. stunu sectik ve cylinder1 e atadik. kutusuyla teslim etti.
typeof(cylinder1)#goruldugu gibi list oldu.
class(cylinder1)#classi listin ozel yapi tipi olan data.frame olarak belirlendi.

Mazda_RX4 <- mtcars_df[1,]#1. satiri sectik
typeof(Mazda_RX4)
class(Mazda_RX4)

cylinder2 <- mtcars_df[1:32,2]#tum cylinderlari sectik. ama usttekinden farkli olarak numeric veri turunde oldu.
typeof(cylinder2)
class(cylinder2)
print(cylinder2)

cylinder3 <- mtcars_df[c(1:32),2]
typeof(cylinder3)
class(cylinder3)
print(cylinder3)

cylinder4 <- mtcars_df[[2]]
typeof(cylinder4)
class(cylinder4)
print(cylinder4)

#virgulli secimde r sadece degerleri cikartir. tabloyu bozar.


# page 7 ------------------------------------------------------------------

dim(mtcars_df)#boyutu
nrow(mtcars_df)#satir sayisi
ncol(mtcars_df)#stun sayisi
length(mtcars_df)#uzunluk. bu genel bir sayicidir. eger cok boyutlu bir array olsaydi ncol ile ayni sonucu vermezdi. 


# 9.packages --------------------------------------------------------------

install.packages("tidyverse")
library(tidyverse)
library()#hangi kutuphaneler indirilmis?
?sqrt#her kutuphane kendi yardim sayfalariyla gelir.
??log#fonksiyon isminin sadece belli bir kismini hatirliyorsak ?? kullanilir.

# 15.tibbles --------------------------------------------------------------

#tibble tidyverse paketiyle gelir.

my_tibble1 <- tibble(a = 1:5, 
                     b = c("a", "b", "c", "d", "e"), 
                     c = seq(2, 10, by = 2),
                     d = a*c)#tibble olusturma tipki dfe benziyor.
my_tibble2 <- tibble(x = 1:3, y = list(1:5, 1:10, 1:20))
my_tibble3 <- tibble(x = sample(letters, size = 5), 
                     y = list(x, 6:10, 11:15, 16:20, 21:25))#hucreye liste ekleyebiliyoruz.


?iris
iris
typeof(iris)
class(iris)
attributes(iris)

iris_tbl <- as_tibble(iris)#list olan iris yapisini tibble olarak kaydettik.
typeof(iris_tbl)
class(iris_tbl)


# 18.key Differences between tibbles and data farames ---------------------

my_tibble <- tibble(x = -5:100, y = 123.456 * (3 ^ x))
my_tibble

my_df <- as.data.frame(my_tibble)
my_df#ekrana yazis bakiminda farklilik var. tibble verilerin turunu gosterir.

df1 <- data.frame(x = 1:3, y = 3:1)
class(df1[, 1:2])
class(df1[, 1])

df2 <- tibble(x = 1:3, y = 3:1)
class(df2[, 1:2])
class(df2[, 1])#tibble subsetting konusunda kati. geriye her zaman tibble doner.
class(df2[[2]])#herzaman degilmis.
class(df2$x)#buda integer dondu

df <- data.frame(abc = 1)
df$a

tb <- tibble(abx=1)
tb$a#hata verdi. df ise a harfinden abc yi anlamisti.

mtcars
attributes(mtcars)#goruldugu gibi row.names attributesi eklenmis durumda.
mtcars_tbl <- as_tibble(mtcars)#tibble satir isimlerini(row.names) kaldirdi.
mtcars_tbl

models <- rownames(mtcars)
mtcars_new <- cbind(model = models, mtcars)#cbind(colomn-bind) 2 dfi birbirine baglar.
mtcars_tbl <- as_tibble(mtcars_new)
mtcars_tbl#tibble row.name attributesini sildigi icin manuel stun ekleme ile ekledik.
attributes(mtcars_tbl)#row.names attribute bozuldu.

tibble(a = 1, b = 1:4)#yanlizca tek eleman tekrarli kullanilir.
tibble(a = 1:4, c = 1:2)#bu tibble icin hatali bir kullanimdir. DF de gecerli.


# 24.nycflights13 ---------------------------------------------------------

install.packages("nycflights13")
library(nycflights13)
head(flights)
class(flights)#tibble turudne bir dataset

#doply major fonksiyonlar:
#mutate() adds new variables that are functions of existing variables
#select() picks variables based on their names.
#filter() picks cases based on their values.
#summarize() reduces multiple values down to a single summary.
#arrange() changes the ordering of the rows.


# 29.practice -------------------------------------------------------------

grade_checker <- function(ds, colname, value){
  ds %>%
    filter(colname == value)#gecersizmis
}

grade_checker <- function(ds, colname, value) {
  ds[ds[, colname] == value, ]
}






