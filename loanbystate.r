require(ggplot2)
require(maps)
require(plyr)
states <- map_data("state")

# 
# dat <- read.csv('LoanStatsNew.csv',header=TRUE)
# loan_state <- aggregate(loan_amnt~addr_state,dat,sum)
# names(loan_state)[1] <- 'state'
# loan_state$state <- tolower(loan_state$state)
# loan_state$state[1] <- 'nd'
# 
# state_name <- data.frame(tolower(state.abb),tolower(state.name))
# names(state_name) <- c('state','states')
# loanbystate <- join(loan_state,state_name,by='state')
# loanbystate <- loanbystate[,-1]
# names(loanbystate)[2] <- 'region'
# loanbystate[,1] <-loanbystate[,1]/1000000 
# write.table(loanbystate,'loanbystate.csv',row.names=F,sep=',')

loanbystate <- read.csv('loanbystate.csv',header=T)

choro <- merge(states, loanbystate, sort = FALSE, by = "region")
choro <- choro[order(choro$order), ]
q <- qplot(long, lat, data = choro, group = group, fill = loan_amnt,
      geom = "polygon",main='Loan Amount by State',xlab='',ylab='') + 
  theme(panel.background = element_blank(),axis.text = element_blank(),
        axis.ticks =element_blank()) 

q+  scale_fill_gradient2('Total Loan Amount \n(in Million $)',low = "#0000FF", mid = "#FFFFFF", high ="#FF0000",midpoint = median(choro$loan_amnt),
                         space = "rgb", guide = "colourbar") 

