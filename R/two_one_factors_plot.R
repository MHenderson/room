two_one_factors_plot <- function() {

  gm <- matrix( c(1, 2, 3, 4), nc = 2, byrow = TRUE)
  hm <- matrix( c(1, 3, 2, 4), nc = 2, byrow = TRUE)
  
  g <- igraph::graph_from_edgelist(gm, directed = FALSE)
  h <- igraph::graph_from_edgelist(hm, directed = FALSE)
  
  gp <- ggraph::ggraph(g, layout = 'circle') +
    ggraph::geom_edge_link() +
    ggraph::geom_node_point()
  
  hp <- ggraph::ggraph(h, layout = 'circle') +
    ggraph::geom_edge_link() +
    ggraph::geom_node_point()
  
  gp + hp
  
}

