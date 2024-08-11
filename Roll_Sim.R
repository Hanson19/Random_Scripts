#Title: 4 Sided dice Simulation
#Goal: Simulate 4 sided dice being rolled 231 time 1,000,000,000 times.
# Record how many times a 1 is rolled. 
# Time how long it takes to be done. 

#Read in function
pokemon_rolls <- function(){
  start_time <- Sys.time() #Recording when function starts
  highest_1 <- 0 #Create variable to record the highest number of rolled 1s
  for (s in 1:1000000000) { #Running 1,000,000,000
    result <- sample(c(1:4), 231, replace = TRUE) #Randomly select between 1-4 231 times, replacing picked value each time
    count_1 <- length(result[result[]==1]) #count how many times 1 appears in result list. Pulling out all the ones and then asking for length of that list
    if (count_1 > highest_1){ #If that count is higher then current highest number rolled
      highest_1 <- count_1 #replace highest number roll with new number
    }
  }
  print(highest_1) #After simulated 1,000,000,000 times print out highest recorded 1 rolls
  end_time <- Sys.time() #Record when task is complete
  print(end_time-start_time) #print out how much time it took to do. 
}

pokemon_rolls() #Run function
