# Changes from original

* Properly included datasets so that they can be accessed by name: `fonville_map`, `par_tab_base` and `titre_data_example`. Columns renamed from the origin.

* `predict_antigenic_map` (`generate_antigenic_map` in origin) uses a linear model with multiple outcomes instead of the 2-step linear model to spline.
