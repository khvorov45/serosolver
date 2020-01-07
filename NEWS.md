# Changes from original

* Properly included datasets so that they can be accessed by name: `fonville_map`, `par_tab_base` and `titre_data_example`. Columns renamed from the origin.

* `antigenmap_predict` (`generate_antigenic_map` in origin) uses a linear model with multiple outcomes instead of the 2-step linear model to spline.

* `antigenmap_lengthen` transforms a map from smaller to greater number of epochs.
