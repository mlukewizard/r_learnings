library(profvis)

profvis({
  waste_time <- function(){
    print("Lets waste some time")
    Sys.sleep(0.02)
  }
  
  digits_loop <- function(tens){
    for (i in 0:9){
      print(tens + i)
      waste_time()
    }
    waste_time()
    
  }
  
  # digits_loop <- function(tens, int){
  #   print(tens + int)
  #   if (int == 9){
  #    return
  #   }else{
  #     digits_loop(tens, int + 1)
  #   }
  # }
  
  # tens_loop <- function(hundreds){
  #   for (i in 0:9){
  #    digits_loop(hundreds + i * 10)
  #    waste_time()
  #   }
  # }
  
  
  tens_loop <- function(hundreds){
    lapply(0:9, function(i){
      digits_loop(hundreds + i *10)
      waste_time()
    })
  }
  
  tens_loop(100)
})
