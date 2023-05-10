one_factorisation_plot <- function() {

  g <- igraph::make_full_graph(6)
  
  gt <- tidygraph::as_tbl_graph(g) %>%
    tidygraph::activate(edges) %>%
    dplyr::mutate(label = rep(1, 15))
  
  gtc <- gt %>%
    tidygraph::activate(edges) %>%
    dplyr::mutate(
      f = c(1, 4, 2, 5, 3, 2, 5, 3, 4, 3, 1, 5, 4, 1, 2)
    )
  
  ggraph::ggraph(gtc, layout = 'circle') +
    ggraph::geom_node_point(size = 4) +
    ggraph::geom_edge_link(
           mapping = ggplot2::aes(label = f, edge_colour = f),
       show.legend = FALSE,
        angle_calc = 'along',
       label_dodge = ggplot2::unit(3.5, 'mm'),
        label_push = ggplot2::unit(-6.0, 'mm'),
         start_cap = ggraph::circle(4, 'mm'),
           end_cap = ggraph::circle(4, 'mm'),
      label_colour = "blue", 
        edge_width = 2,
        label_size = 6
    ) +
    ggraph::facet_edges(~f)
  
} 
