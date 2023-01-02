(* 
    Loading standard basis for mathematical functions, case sensitive
    cf. https://www.cs.tufts.edu/comp/105-2019s/readings/ml.html#basis-i-the-option-type

*)
structure M = Math;

fun fspl_dB (d_m, f_MHz) : real =
    (*
        Compute free space path loss for distance in meters and
        frequency in MHz

        cf. https://en.wikipedia.org/wiki/Free-space_path_loss

        Note here: all functions are 1-arity... and this one accepts a 2-tuple
        of type real, real, as in:

        fn : real * real -> real

        Note the multiplication operator...
        
        _Freyja would be pleased. To birth an algebra into the world is a beautiful thing._
        cf. https://aphyr.com/posts/342-typing-the-technical-interview

    *)
    20.0 * (M.log10 d_m) 
    + 20.0 * (M.log10 f_MHz)
    - 27.55
;

(*
    One other thing: what about type aliases? One of the things I long for with a good typing system
    is making dimensions/units out of types... so you can unlock DIMENSIONAL ANALYSIS

    cf. https://mitpress.mit.edu/9780262514293/
*)
