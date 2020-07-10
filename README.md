# IQR operator

##### Description

The `IQR` operator returns the interquartile range of a set of data points.

##### Usage

Input projection|.
---|---
`y-axis`        | numeric, input data, per cell 

Output relations|.
---|---
`iqr`        | numeric, median of the input data

##### Details

The operator takes all the values of a cell and returns the IQR value. The computation is done per cell and a single value is returned for each of the input cell.

#### References

https://en.wikipedia.org/wiki/Interquartile_range

##### See Also

[mean_operator](https://github.com/tercen/mean_operator)
[sd_operator](https://github.com/tercen/sd_operator)
[cv_operator](https://github.com/tercen/cv_operator)

