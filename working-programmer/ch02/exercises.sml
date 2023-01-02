structure M = Math;
fun fspl_dB (d_m, f_MHz) : real =
    20.0 * (M.log10 d_m) 
    + 20.0 * (M.log10 f_MHz)
    - 27.55
;
