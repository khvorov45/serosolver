# Fonville map visualisation
# Arseniy Khvorov
# Created 2020-01-07
# Last edit 2020-01-07

library(serosolver)
library(plotly)
library(dplyr)

save_plot <- function(pl, plname) {
  plname <- paste0(plname, ".html")
  htmlwidgets::saveWidget(as_widget(pl), plname)
  # htmlwidgets wants to change the working directory for no reason
  file.copy(plname, file.path("antigenic-map", plname), overwrite = TRUE)
  file.remove(plname)
  invisible(NULL)
}

pl <- plot_ly(fonville_map, x = ~x, y = ~y, z = ~epoch) %>%
  add_markers()

save_plot(pl, "fonville-map") # Fairly flat surface

preds <- predict_antigenic_map(
  fonville_map, epochs = min(fonville_map$epoch):max(fonville_map$epoch)
)

pl_pred <- pl %>%
  add_markers(x = ~x, y = ~y, z = ~epoch, data = preds)

save_plot(pl_pred, "fonville-map-pred")
