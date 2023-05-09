orthogonal_one_factorisation_plot <- function() {
  
  g <- igraph::make_full_graph(6)
  
  igraph::V(g)$name <- LETTERS[1:6]
  igraph::E(g)$name <- 1:15
  
  f1 <- c(1, 11, 14)
  f2 <- c(3, 6, 15)
  f3 <- c(5, 8, 10)
  f4 <- c(2, 9, 13)
  f5 <- c(4, 7, 12)
  
  igraph::E(g)[f1]$onefactor <- "red"
  igraph::E(g)[f2]$onefactor <- "blue"
  igraph::E(g)[f3]$onefactor <- "green"
  igraph::E(g)[f4]$onefactor <- "orange"
  igraph::E(g)[f5]$onefactor <- "black"
  
  p1 <- ggraph::ggraph(g, layout = 'kk') + 
    ggraph::geom_node_text(ggplot2::aes(label = name), size = 4) +
    ggraph::geom_edge_link(ggplot2::aes(label = name, edge_colour = onefactor),
                           show.legend = FALSE,
                           angle_calc = 'along',
                           label_dodge = ggplot2::unit(2.5, 'mm'),
                           label_push = ggplot2::unit(-6.0, 'mm'),
                           start_cap = ggraph::circle(4, 'mm'),
                           end_cap = ggraph::circle(4, 'mm'),
                           label_colour = "blue") +
    ggraph::theme_graph(foreground = 'steelblue', fg_text_colour = 'white')
  
  p2 <- p1 + ggraph::facet_edges(~factor)
  
  p1

}