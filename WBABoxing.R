fin <- read.csv(file.choose())
head(fin)
summary(fin)
fin[!complete.cases(fin),]
fin[complete.cases(fin),]
is.na(fin)
?rm
library(ggplot2)
p <- ggplot(data=fin)
p
?ggplot2
df <- data.frame(fin)
column_name
fin <- as.matrix(fin)
fin
colSum()
graph1 <- ggplot(data = fin, 
       aes(x = Location, fill = Punch))+
geom_bar(position = "dodge",
         alpha = 0.75)+
  theme_bw()+
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())+
  labs(title = "World Boxing Association KO's
       Knockouts Per Impact Location by Punch Type",
       x = "Impact Location",
       y = "Knockouts",
       fill = "Punch Type")
graph2 <- ggplot(data = fin, 
                 aes(x = Round, fill = Punch))+
  geom_bar(position = "dodge",
           alpha = 0.75)+
  theme_bw()+
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())+
  labs(title = "World Boxing Association
       Knockouts Per Round by Punch Type",
       x = "Round Number",
       y = "Knockouts",
       fill = "Punch Type")
graph2
graph1

graph3 <- ggplot(data = fin, 
                 aes(x = Hand, fill = Side))+
  geom_bar(position = "dodge",
           alpha = 0.75)+
  theme_bw()+
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())+
  labs(title = "World Boxing Association
       Knockouts by Hand Dominance by Impact Dominance",
       x = "Hand Dominance",
       y = "Knockouts",
       fill = "Impact Dominance")
graph3

graph4 <- ggplot(data = fin, 
                 aes(x = Punch, fill = Location))+
  geom_bar(position = "dodge",
           alpha = 0.75)+
  theme_bw()+
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())+
  labs(title = "World Boxing Association
       Knockouts by Punch Type by Impact Location",
       x = "Punch Type",
       y = "Knockouts",
       fill = "Impact Location")
graph4

graph5 <- ggplot(data = fin, 
                 aes(x = Location, fill = Location))+
  geom_bar(position = "dodge",
           alpha = 0.75)+
  theme_bw()+
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())+
  labs(title = "World Boxing Association
       Knockouts by Impact Location",
       x = "Impact Location",
       y = "Knockouts",
       fill = "Impact Location")
graph5
