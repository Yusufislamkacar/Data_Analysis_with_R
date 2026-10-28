die <- c(1, 2, 3, 4, 5, 6)#atamik vektor deniliyor.
is.vector(die)
die <- 1:6
is.vector(die)
#6 cesit atomik vektor var. integer, double, char, logical, coumplex, raw.
#vektorler ayni turden verileri saklayabilir.

typeof(die)#vektorde saklanan verilerin turunu belirler.
#c() seklinde atama yapildiginda double cikiyor. num double demek(degisken tablosunda num yaziyor.)
int <- c(-2L, -1L, -0L, 1L, 2L, 3L)
typeof(int)

text <- c("name", "surname")
typeof(text)

attributes(text)
attributes(die)#attribute objeye atanmis meta datalardir.

names(die) <- c("one", "two", "three", "four", "five", "six")#die objesine names attributesi atadik.
names(die)
attributes(die)#artik names attributeye sahip

die#artik stun isimleri var.
names(die) <- NULL
die#name attributesini sildik.

dim(die) <- c(2, 3)#vektoru 2satir 3 stun olan matrise cevirdi.
die
class(die)#artik matrix ve array turunde.
#goruldugu gibi verilerin turu degismede ama objenin classi degisti.
typeof(die)

now <- Sys.time()
now()#buna bir fonksiyon atadigimiz icin parantezle cagirdik. yoksa sadece verisini doner.
attributes(now)#sonradan tanimli attributesleri dondugu icin null doner.
typeof(now)
class(now)
unclass(now)

gender <- factor(c("f", "m", "f"))
typeof(gender)#kategorik veri oldugu icin sayisal olarak kaydedildi. bu bellekten tasarruf saglar.
attributes(gender)#factor classinda oldugunu goruyoruz.
unclass(gender)#burda f =1 m = 2 olarak kodlandigini goruyoruz.

height <- factor(c("s", "m", "l", "l", "m", "s"))
height
unclass(height)# 3 2 1 seklinde kodlanmis.


m1 <- matrix(die, nrow = 2)#matrix olusturma.
m1

m2 <- matrix(die, nrow = 2, byrow = TRUE)#byrow satiri once doldurur. sonra alt satira iner.
m2

m3 <- matrix(c(2, 6, 3, "a", 3, "b", "e", 1, "c", "d", 9,"f"), nrow = 3)

array1 <- array(c(1:6, 11:16, 21:26), dim = c(2, 3, 3)) #2 satie 3 stun 3 adet matris.
array1

deneme <- c(1:6, 11:19)
deneme

array2 <- array(c(1:12, 24:35, 38:59),dim = c(4,3,3))#practice
array2
length(array2)

die_char <- c("one", "two", "three", "four", "five", "six")#practice
die_char
class(die_char)

list1 <- list(1:30, "R Language", list(TRUE, FALSE, TRUE))
list1

list2 <- list(11:21,array(c(1:9), dim = c(3,3)), c("hello", "world", "!"), c(TRUE, TRUE, FALSE, FALSE))#practice
#burda matrix(1:9, nrow = 3, ncol = 3) de kullanilabilirdi.

df <- data.frame(gender = c("male", "male", "female"), emotion = c("fear", "pride", "boredom"), value = c(6, 8, 5))
typeof(df)
class(df)
str(df)


write.csv(deck, file="cards.csv", row.names = FALSE)

m1 <- matrix(1:6, nrow = 2)
m2 <- matrix(1:6, nrow = 3)
inner_multiplacation <- m2 %*% m1#matris carpimi. Birinin stun sayisi digerinin satir sayisina esit olmali.
outher_multiplacation <- m1 %o% m2#vektorel carpim

roll <- function() {
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE)
  print(dice)
  sum(dice)
}
roll()

roll2 <- function(x){
  sequence <- sample(x, size = 2, replace = FALSE)#replace false ise ayni degerler alinmaz.
  print(sequence)
  sum(sequence)
}
roll2(4:7)#practice


adult2_subset <- adult2[1:10, 1:15]#adult2 nesnesi olmadigi icin calismaz.
adult2_subset2 <- adult2[1:10, 1]
adult2_subset2[1, c(TRUE, TRUE, FALSE)]#burda dongusel olarak degerleri alir. 1,2,4,5 alir
adult2_subset2[c(TRUE, FALSE), 1:3]
adult2_subset$age#stun secmek icin $ kullanilabilir.


