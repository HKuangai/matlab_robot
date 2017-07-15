function MakeRigidBody(j,wdh,mass,p)
global uLINK
uLINK(j).m = mass;%the mass of rigid body
uLINK(j).c = [0 0 0];%the certer of mass
uLINK(j).R = eye(3);
uLINK(j).p = p;
uLINK(j).I = [1/12*(wdh(2)^2 + wdh(3)^2) 0 0;
              0 1/12*(wdh(1)^2 + wdh(3)^2) 0;
              0 0 1/12*(wdh(1)^2 + wdh(2)^2)]*uLINK(j).m;%the quantity of inertance
uLINK(j).vertex = 0.5*[
    -wdh(1) -wdh(2) -wdh(3);
    -wdh(1)  wdh(2) -wdh(3);
     wdh(1)  wdh(2) -wdh(3);
     wdh(1) -wdh(2) -wdh(3);
    -wdh(1) -wdh(2)  wdh(3);
    -wdh(1)  wdh(2)  wdh(3);
     wdh(1)  wdh(2)  wdh(3);
     wdh(1) -wdh(2)  wdh(3);
     ]';%the coordinate point of peaks
 vertex = uLINK(j).vertex;
 uLINK(j).face = [
     1 2 3 4; 2 6 7 3; 4 3 7 8; 1 5 8 4; 1 2 6 5; 5 6 7 8;
     ]';%polygon
 face = uLINK(j).face;