
#Field ID	Description
#6159	Pain type(s) experienced in last month
#3799	Headaches for 3+ months
#4067	Facial pains for 3+ months
#3404	Neck/shoulder pain for 3+ months
#3571	Back pain for 3+ months
#3741	Stomach/abdominal pain for 3+ months
#3414	Hip pain for 3+ months
#3773	Knee pain for 3+ months
#2956	General pain for 3+ months
#



###
#1	Headache
#2	Facial pain
#3	Neck or shoulder pain
#4	Back pain
#5	Stomach or abdominal pain
#6	Hip pain
#7	Knee pain
#8	Pain all over the body
#-7	None of the above
#-3	Prefer not to answer



in1<-c("3799_0",	
"4067_0",	
"3404_0",	"3571_0",	
"3741_0",	
"3414_0",	
"3773_0",	
"2956_0")	

load("D:/UKB datasets/ukb4512_original+meds.RData")

p1<-data[,c(1,grep("6159_0",colnames(data)), 
  grep(in1[1],colnames(data)),
  grep(in1[2],colnames(data)),
  grep(in1[3],colnames(data)),
  grep(in1[4],colnames(data)),
  grep(in1[5],colnames(data)),
  grep(in1[6],colnames(data)),
  grep(in1[7],colnames(data)),
  grep(in1[8],colnames(data)))]
head(p1)       

save(p1, file = "D:/UKB datasets/all_pain_messy.RData")

rm(data)
rm(dat)
rm(in1)

#################

p1$x1<-rep(0,length(p1$n_eid))
p1$x2<-rep(0,length(p1$n_eid))
p1$x3<-rep(0,length(p1$n_eid))
p1$x4<-rep(0,length(p1$n_eid))
p1$x5<-rep(0,length(p1$n_eid))
p1$x6<-rep(0,length(p1$n_eid))
p1$x7<-rep(0,length(p1$n_eid))
p1$x8<-rep(0,length(p1$n_eid))

p1$x1[which(p1$n_6159_0_0 == 1 | 
        p1$n_6159_0_1==1 |
        p1$n_6159_0_2==1 |
        p1$n_6159_0_3==1 |
        p1$n_6159_0_4==1 |
        p1$n_6159_0_5==1 |
        p1$n_6159_0_6==1)]<-1

p1$x2[which(p1$n_6159_0_0 == 2 | 
              p1$n_6159_0_1==2 |
              p1$n_6159_0_2==2 |
              p1$n_6159_0_3==2 |
              p1$n_6159_0_4==2 |
              p1$n_6159_0_5==2 |
              p1$n_6159_0_6==2)]<-1
p1$x3[which(p1$n_6159_0_0 == 3 | 
              p1$n_6159_0_1==3 |
              p1$n_6159_0_2==3 |
              p1$n_6159_0_3==3 |
              p1$n_6159_0_4==3 |
              p1$n_6159_0_5==3 |
              p1$n_6159_0_6==3)]<-1
p1$x4[which(p1$n_6159_0_0 == 4 | 
              p1$n_6159_0_1==4 |
              p1$n_6159_0_2==4 |
              p1$n_6159_0_3==4 |
              p1$n_6159_0_4==4 |
              p1$n_6159_0_5==4 |
              p1$n_6159_0_6==4)]<-1
p1$x5[which(p1$n_6159_0_0 == 5 | 
              p1$n_6159_0_1==5 |
              p1$n_6159_0_2==5 |
              p1$n_6159_0_3==5 |
              p1$n_6159_0_4==5 |
              p1$n_6159_0_5==5 |
              p1$n_6159_0_6==5)]<-1
p1$x6[which(p1$n_6159_0_0 == 6 | 
              p1$n_6159_0_1==6 |
              p1$n_6159_0_2==6 |
              p1$n_6159_0_3==6 |
              p1$n_6159_0_4==6 |
              p1$n_6159_0_5==6 |
              p1$n_6159_0_6==6)]<-1
p1$x7[which(p1$n_6159_0_0 == 7 | 
              p1$n_6159_0_1==7 |
              p1$n_6159_0_2==7 |
              p1$n_6159_0_3==7 |
              p1$n_6159_0_4==7 |
              p1$n_6159_0_5==7 |
              p1$n_6159_0_6==7)]<-1
p1$x8[which(p1$n_6159_0_0 == 8 | 
              p1$n_6159_0_1==8 |
              p1$n_6159_0_2==8 |
              p1$n_6159_0_3==8 |
              p1$n_6159_0_4==8 |
              p1$n_6159_0_5==8 |
              p1$n_6159_0_6==8)]<-1

p1$x1[which(p1$n_6159_0_0==-7)]<-0
p1$x2[which(p1$n_6159_0_0==-7)]<-0
p1$x3[which(p1$n_6159_0_0==-7)]<-0
p1$x4[which(p1$n_6159_0_0==-7)]<-0
p1$x5[which(p1$n_6159_0_0==-7)]<-0
p1$x6[which(p1$n_6159_0_0==-7)]<-0
p1$x7[which(p1$n_6159_0_0==-7)]<-0
p1$x8[which(p1$n_6159_0_0==-7)]<-0

p1$x1[which(p1$n_6159_0_0==-3)]<-NA
p1$x2[which(p1$n_6159_0_0==-3)]<-NA
p1$x3[which(p1$n_6159_0_0==-3)]<-NA
p1$x4[which(p1$n_6159_0_0==-3)]<-NA
p1$x5[which(p1$n_6159_0_0==-3)]<-NA
p1$x6[which(p1$n_6159_0_0==-3)]<-NA
p1$x7[which(p1$n_6159_0_0==-3)]<-NA
p1$x8[which(p1$n_6159_0_0==-3)]<-NA

#x1	Headache
#x2	Facial pain
#x3	Neck or shoulder pain
#x4	Back pain
#x5	Stomach or abdominal pain
#x6	Hip pain
#x7	Knee pain
#x8	Pain all over the body

#-7	None of the above
#-3	Prefer not to answer
p1$xc1<-rep(0, length(p1$n_eid))
p1$xc2<-rep(0, length(p1$n_eid))
p1$xc3<-rep(0, length(p1$n_eid))
p1$xc4<-rep(0, length(p1$n_eid))
p1$xc5<-rep(0, length(p1$n_eid))
p1$xc6<-rep(0, length(p1$n_eid))
p1$xc7<-rep(0, length(p1$n_eid))
p1$xc8<-rep(0, length(p1$n_eid))


p1$xc1[which(p1$x1 == 1 & p1$n_3799_0_0 ==1)]<-1
p1$xc2[which(p1$x2 == 1 & p1$n_4067_0_0 ==1)]<-1
p1$xc3[which(p1$x3 == 1 & p1$n_3404_0_0 ==1)]<-1
p1$xc4[which(p1$x4 == 1 & p1$n_3571_0_0 ==1)]<-1
p1$xc5[which(p1$x5 == 1 & p1$n_3741_0_0 ==1)]<-1
p1$xc6[which(p1$x6 == 1 & p1$n_3414_0_0 ==1)]<-1
p1$xc7[which(p1$x7 == 1 & p1$n_3773_0_0 ==1)]<-1
p1$xc8[which(p1$x8 == 1 & p1$n_2956_0_0 ==1)]<-1

p1$xc1[which(p1$n_6159_0_0==-3)]<-NA
p1$xc2[which(p1$n_6159_0_0==-3)]<-NA
p1$xc3[which(p1$n_6159_0_0==-3)]<-NA
p1$xc4[which(p1$n_6159_0_0==-3)]<-NA
p1$xc5[which(p1$n_6159_0_0==-3)]<-NA
p1$xc6[which(p1$n_6159_0_0==-3)]<-NA
p1$xc7[which(p1$n_6159_0_0==-3)]<-NA
p1$xc8[which(p1$n_6159_0_0==-3)]<-NA

#3799	Headaches for 3+ months
#4067	Facial pains for 3+ months
#3404	Neck/shoulder pain for 3+ months
#3571	Back pain for 3+ months
#3741	Stomach/abdominal pain for 3+ months
#3414	Hip pain for 3+ months
#3773	Knee pain for 3+ months
#2956	General pain for 3+ months

sites<-p1$xc1 + p1$xc2 + p1$xc3 + p1$xc4 + p1$xc5 + p1$xc6 + p1$xc7
p1$sites<-sites
p1$sites[which(p1$n_6159_0_0==-3)]<-NA
p1$sites[which(p1$n_6159_0_0==-7)]<-0
summary(p1$sites)
p1$sites[which(p1$xc8==1)]<-8

save(p1, file = "D:/UKB datasets/pain_full.RData")



