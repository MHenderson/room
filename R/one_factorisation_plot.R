one_factorisation_plot <- function() {

  g <- igraph::make_full_graph(6)
  
  ggraph::ggraph(g, layout = 'circle') +
    ggraph::geom_edge_link() +
    ggraph::geom_node_point()
    
} 