/* 
GAdemo: a short demonstrations of the basics of GA

GABLE+, Copyright (c) 1999-2003, University of Amsterdam
Copying, use and development for non-commercial purposes permitted.
         All rights for commercial use reserved; for more information
         contact Leo Dorst (leo@science.uva.nl).

          This software is unsupported.
*/
          
batch GAprompt();
batch init_gable();
function GAorbiter();
function GAorbiter(e3ga angle);
function GAorbiter(e3ga angle, e3ga duration);

batch GAdemo () {
	init_gable();
	clf(); clc();
	
	cprint("Welcome to the GABLE demonstration!");cprint(" ");
	cprint("This batch demonstrates some of the basic features of GABLE.");
	cprint("At any prompt, you may hit return to continue the demo or type");
	cprint("a GABLE+ or GAViewer command.");
	cprint(" ");
	cprint("This brief demonstration is intended to introduce you to the");
	cprint("the basic geometric elements of our geometric algebra (vectors,");
	cprint("bivectors, and trivector) and introduce the three basic products:");
	cprint("the outer product, the inner product, and the geometric product.");
	cprint("For a discussion of what these products are useful for, see our");
	cprint("tutorial.");
	cprint(" ");GAprompt();cprint(" ");

	cprint("GAViewer contains an implementation of a Geometric Algebra (Cl 3,0)");
	cprint("with graphical representations of the geometrical objects. The defining");
	cprint("objects of a Geometric Algebra are a basis of vectors. In GAViewer,");
	cprint("we use a vector basis of {e1,e2,e3}");

	cprint(" ");GAprompt();cprint(" ");

	cprint("We will now draw e1, e2, and e3, in the graphics window.");
	cprint("As we draw things, we will list the corresponding commands");
	cprint("on lines starting with '' >> ''");
	cprint(" ");
	cprint("In our software, variables are drawn immediatelly whenever");
	cprint("they are assigned a value, as long as:");
	cprint("-the value is geometrically interpretable,");
	cprint("-the assignment is terminated with a comma,");
	cprint("-the assignment is in the global scope.");
	
	cprint(" ");GAprompt();cprint(" ");
	
	cprint("Here we go:.");
	cprint(" >> clf();");
	clf();
	cprint(" >> a = red(e1),");
	a = red(e1),
	cprint(" >> b = magenta(e2),");
	b = magenta(e2),
	cprint(" >> c = blue(e3),");
	c = blue(e3),

	cprint("In the graphics window, you should see three arrows.  The red one");
	cprint("represents e1, the magenta one e2, and the blue one e3.");
	cprint("You can ctrl-click (left mouse button) the arrows to see their name");
	cprint("in the status bar at the bottom of the window.");

	cprint(" ");GAprompt();cprint(" ");

	clc();

	cprint("There are three products in a Geometric Algebra, the first of which");
	cprint("we will look at being the outer product.  In GAViewer, we use");
	cprint("the circumflex symbol (^) to take the outer product of two objects.");
	cprint("The outer product of two vectors is a bivector, which can be thought");
	cprint("of as a directed area element in the plane spanned by the two bivectors.");

	cprint(" ");GAprompt();cprint(" ");

	cprint("As an example of a bivector, we will draw e1^e2.");
	cprint(" >> d = e1^e2;");
	d = green(e1 ^ e2),
	cprint(" ");
	cprint("We have drawn a circle to represent this bivector.  Note that");
	cprint("the bivector drawn for e1^e2 lies in the plane defined by");
	cprint("e1 and e2");

	cprint(" ");GAprompt();cprint(" ");

	cprint("To give a better feeling of the 3D relationships of the objects,");
	cprint("we have implemented a routine called GAorbiter() that rotates the");
	cprint("scene.  We will run it now to allow you a better view of the");
	cprint("three vectors and the bivector.");

	cprint(" >> GAorbiter(-180)");
	GAorbiter(-180, 5);
	GAprompt();

	cprint(" ");
	cprint("At prompts, you may also find it useful to use the three ");
	cprint("mouse buttons to rotate and translate the viewpoint. Try that now.");

	cprint(" ");GAprompt();cprint(" ");
	cprint("The outer product of two objects yields a higher dimensional");
	cprint("object only if the two objects are linearly independent.  Thus,");
	cprint("the outer product e1^e1 is zero.  Type 'd = e1^e1' in now and see");
	cprint("for yourself.");

	cprint(" ");GAprompt();cprint(" ");
	cprint(" ");
	cprint("In addition to vectors and bivectors, there are trivectors, which ");
	cprint("are formed as the outer product of three independent vectors.");
	cprint("We will now draw the trivector e1^e2^e3 (which has a special");
	cprint("name, 'I3') on the screen...");

	cprint(" >> A = I3,");
	A = I3,

	cprint(" ");GAprompt();cprint(" ");
	cprint("Because trivectors can occlude a lot of other objects, we usually,");
	cprint("draw them partially transparent.");
		
	cprint(" ");GAprompt();cprint(" ");
	
	cprint(" ");

	cprint("In our space, the trivector is the highest dimensional object, ");
	cprint("and the outer product of the trivector with any other element ");
	cprint("in our space gives us zero, since the two objects must be linearly ");
	cprint("dependent.");

	cprint(" ");GAprompt();cprint(" ");

	cprint("Visualizing bivectors as circles and trivectors as spheres is not");
	cprint("the usual way to visualize them.  See the tutorial for another method");
	cprint("of visualization.");

	cprint(" ");GAprompt();clc();

	cprint("The second product in a Geometric Algebra is the inner product,");
	cprint("which is similar to the dot product on vectors.  However, on");
	cprint("objects of different dimensions, it finds the object lying in");
	cprint("the higher dimensional space that is perpendicular to the lower");
	cprint("dimensional object.");

	cprint(" ");GAprompt();cprint(" ");
	cprint(" ");


	cprint("In GAViewer, we use the dot symbol (.) to take the inner product of two");
	cprint("objects. As an example of the inner product, we draw the vector e1 + e3");
	cprint("and the bivector e1 ^ e2.");
	cprint(" >> clf();");
	clf();
	
	cprint(" >> a = e1 + e3,");
	a = blue(e1+e3),
	cprint(" >> b = e1 ^ e2,");
	b = green(e1 ^ e2),
	
	cprint(" ");
	cprint("(In GAViewer, the command 'clf()' clears the display.)");

	cprint(" ");GAprompt();cprint(" ");

	cprint("Next, we will draw in red the inner product of these two ");
	cprint("objects, (e1+e3) . e1^e2.");
	
	cprint(" >> c = red(a . b),");
	c = red(a . b),

	cprint(" ");GAprompt();cprint(" ");

	clc();
	

	cprint("The third and most important product of a Geometric Algebra is the");
	cprint("Geometric Product.  Unfortunately, the geometric product is not");
	cprint("easily visualized in general. However, one nice property it has, ");
	cprint("that the other two products do not have, is an inverse.");  
	cprint("The inverse allows you to divide by vectors, bivectors, etc.");

	cprint(" ");GAprompt();cprint(" ");

	cprint("Rather than visualize an object created by the geometric product, it");
	cprint("is better to think of it as creating an operator, and to visualize");
	cprint("this operator being applied to an object.  For example, if you have");
	cprint("a vector b and want to rotate it to vector a, you are looking for");
	cprint("an operator R such that b = Ra.  This suggests that R = b/a, which");
	cprint("we can compute with the geometric product.");

	cprint(" ");GAprompt();cprint(" ");

	cprint("So try this out.  We'll clear the screen and create the vectors for you:");
	cprint(" >> clf();");
	clf();
	cprint(" >> a = (e1+e2)/sqrt(2),");
	a = blue((e1+e2)/sqrt(2)),
	cprint(" >> b = e2,");
	b = blue(e2),
	
	cprint("Now at the prompt create R.");
	cprint("To get a 2D perspective on your picture, type camori = 1 after drawing");

	cprint(" ");GAprompt();cprint(" ");

	cprint("Now draw R*a in green. Use the green() function to get the green. ");
	cprint("E.g. c = green(R * a);");

	cprint(" ");GAprompt();cprint(" ");

	cprint("What you see is that the red vector (R*a) overwrote the green b vector");
	cprint("as desired, since R is suppose to rotate a into b");
	cprint("Try rotating a second and third time by drawing R*R*a and R*R*R*a.");
	cprint("In GAViewer, a space means geometric product. So alternatively, try");
	cprint("R R a and R R R a");

	cprint(" ");GAprompt();cprint(" ");

	cprint("This method of representation of rotations has some draw-backs that");
	cprint("we won't discuss here; see the tutorial for a discussion of those ");
	cprint("draw-backs and a better representation of rotations.");

	cprint(" ");

	cprint("This is the end of our brief introduction to GABLE.");
	cprint("For a further discussion on Geometric Algebra, see our tutorial,");
	cprint("which investigates other visualizations of bivectors and trivectors,");
	cprint("and shows how to compute useful geometric calculations using");
	cprint("the three products described in this demonstration.");
	
	cprint(" ");GAprompt();cprint(" ");
	cprint(" >> clf();");
	clf();	
}