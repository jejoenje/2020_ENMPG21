lgFunc <- function(K, N0, r, t) {
  N_t <- (K*N0) / ( (K-N0)*exp(-r*t) + N0 )
  return(N_t)
}

