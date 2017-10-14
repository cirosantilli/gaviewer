// Copyright (c) 2007 -- Leo Dorst, Daniel Fontijne, Stephen Mann
// This GAviewer file generates one or more figures from the book
// Geometric Algebra for Computer Science, ISBN 0-12-369465-5.
// Use of the output of this file in presentations is permitted, with 
// reference to its source. Use of the generated figures is subject to the
// same conditions as material from the book itself.


batch FIG_6_5()
// Created 20070425 LD
// Original title FIGorthogonalization() 
{
    function GAorbiter(); // just a function declaration
    function init();
    batch pantilt();
    function factored_bivector();
    function factored_trivector();

    set_window_title("FIG(6,5)abcdef: Gram-Schmidt orthogonalization");

    init(0);
    pantilt(0.42,0.25,0);
    campos = 3.836000e-001*e1 + 8.158000e-001*e2 + 8.600000e+000*e3;
    v1 = alpha(blue( e1+e2 ), 0.7),
    label(v1,"\black{\eqn{\bold{v}_{1}}}");
    
    v2 = alpha(blue(0.3*e1 + 0.6*e2 - 0.8*e3),0.7),
    label(v2,"\black{\eqn{\bold{v}_{2}}}");
    
    v3 = alpha(blue(e1 -0.2*e2 + 0.5*e3),0.7),
    label(v3,"\black{\eqn{\bold{v}_{3}}}");
    
    prompt(" >> Orthogonalize the v1,v2,v3 basis >> ");
    suspend;
    
    v1=v1;
    dynamic{b1: b1 = red( v1 ), b1plus = 1.1 b1;};
    label(b1plus,"\black{\eqn{\bold{b}_{1}}}");
    prompt(" >> Pick b1 to be v1 >> ");
    suspend;

    dynamic{b12: b12 = alpha(red( factored_bivector(v2,b1) ),0.4), };
    prompt(" >> Consider the b1^v2 plane >> ");
    suspend;
    dynamic{b2: b2 = red( (v2^b1)/b1 ),};
    dynamic{b12: b12 = alpha(red( factored_bivector(b2,b1) ),0.4), };
    label(b2,"\black{\eqn{\bold{b}_{2}}}");
    prompt(" >> Pick b2 to be the rejection of v2 by b1 >> ");
    suspend;

    dynamic{b123: b123 = alpha(red( factored_trivector(b1,b2,v3) ),0.4), };
    prompt(" >> Consider the b1^b2^v3 space >> ");
    suspend;
    dynamic{b3: b3 = red( (v3^b2^b1)/(b2^b1) ),};
    dynamic{b123: b123 = alpha(red( factored_trivector(b1,b2,b3) ),0.4), };
    label(b3,"\black{\eqn{\bold{b}_{3}}}");
    prompt(" >> Pick b3 to be the rejection of v3 by b1^b2 >> ");
    prompt();
}
