# Q1: Root Sum of Squares Function
Root_sum_squares <- function(a, b) {
  return(sqrt(a^2 + b^2))
}

# Q2: Distance Function
Distance <- function(p1 = c(3, 0), p2 = c(0, 4)) {
  if (length(p1) != 2 || length(p2) != 2) {
    stop('The length of either p1 or p2 is not two')
  }
  return(Root_sum_squares(p1[1] - p2[1], p1[2] - p2[2]))
}

# Q3: Distance Matrix Function
Distance_matrix <- function(m, n) {
  output <- matrix(0, nrow = nrow(m), ncol = nrow(n))
  for (i in 1:nrow(m)) {
    for (j in 1:nrow(n)) {
      output[i, j] <- Distance(as.numeric(m[i, ]), as.numeric(n[j, ]))
    }
  }
  return(output)
}

# Example data frames for Q3
m1 <- data.frame(x = c(0, 0, 12), y = c(0, 3, 0))
m2 <- data.frame(x = c(0, 0, 4), y = c(0, 5, 0))

# Example usage of Distance_matrix
Distance_matrix(m1, m2)

# Q4: Check if Three Points Lay on One Line
is_one_line <- function(p1, p2, p3) {
  if (all(p1 == p2) | all(p2 == p3) | all(p3 == p1)) {
    return(TRUE)
  }
  
  points <- rbind(p1, p2, p3)
  d <- Distance_matrix(points, points)
  
  d1 <- d[1, 2]
  d2 <- d[1, 3]
  d3 <- d[2, 3]
  
  if (d1 + d2 > d3 & d3 + d2 > d1 & d1 + d3 > d2) {
    return(FALSE)
  }
  
  return(TRUE)
}

# Example usage of is_one_line
is_one_line(c(0, 0), c(0, 1), c(0, 2))

# Q5: Utilizing Distance and mapply Function
is_one_line_2 <- function(p1, p2, p3) {
  if (all(p1 == p2) | all(p2 == p3) | all(p3 == p1)) {
    return(TRUE)
  }
  
  l1 <- list(p1, p1, p3)
  l2 <- list(p2, p3, p2)
  d <- mapply(Distance, l1, l2)
  
  if (max(d) == sum(d[!d == max(d)])) {
    return(TRUE)
  }
  
  return(FALSE)
}

# Example usage of is_one_line_2
is_one_line_2(c(0, 0), c(0, 1), c(0, 2))
