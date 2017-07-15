clc
clear all
global uLINK
R1 = [0 -1 0;
       1 0 0;
       0 0 1];


uLINK(1).name = 'BODY';
uLINK(1).sister = 0;
uLINK(1).child = 2;
uLINK(1).p = [0 0 0]';
uLINK(1).R = eye(3);
uLINK(1).mass = 36.0;
MakeRigidBody(1,[0.4 0.1 0.8],36.0,[0.0 0.0 1.0]');%draw the body

uLINK(2).name = 'RARM';
uLINK(2).sister = 4;
uLINK(2).child = 3;
uLINK(2).p = [0 0 0]';
uLINK(2).R = eye(3);
[vertex_2,face_2] = MakeZcylinder([-0.16 0.0 0.53]',0.03,0.1);%draw RLEG_J0
uLINK(2).vertex = vertex_2;
uLINK(2).face = face_2;

uLINK(3).name = 'RHAND';
uLINK(3).sister = 0;
uLINK(3).child = 0;
uLINK(3).R = [1  0 0;
              0  0 1;
              0 -1 0];
uLINK(3).p = [-0.16 -0.17 0.46]';
[vertex_3,face_3] = MakeZcylinder([0 0 0.17]',0.03,0.1);%draw RLEG_J1
uLINK(3).vertex = vertex_3;
uLINK(3).face = face_3;

uLINK(4).name = 'LARM';
uLINK(4).sister = 6;
uLINK(4).child = 5;
uLINK(4).R = [1  0 0;
              0  0 1;
              0 -1 0];
uLINK(4).R = R1*uLINK(1).R;
uLINK(4).p = [0.01 0 0.46]';
[vertex_4,face_4] = MakeZcylinder([0 0 0.17]',0.03,0.1);%draw RLEG_J2
uLINK(4).vertex = vertex_4;
uLINK(4).face = face_4;

uLINK(5).name = 'LHAND';
uLINK(5).sister = 0;
uLINK(5).child = 0;
uLINK(5).R = [1 0 0;
              0 0 1;
              0 -1 0];
uLINK(5).R = R1*uLINK(5).R;
uLINK(5).p = [0.01 -0.18 0.08]';
[vertex_5,face_5] = MakeZcylinder([0 0 0.17]',0.03,0.1);%draw RLEG_J3
uLINK(5).vertex = vertex_5;
uLINK(5).face = face_5;

uLINK(6).name = 'RLEG';
uLINK(6).sister = 8;
uLINK(6).child = 7;
uLINK(6).R = [1  0 0;
              0  0 1;
              0 -1 0];
uLINK(6).R = R1*uLINK(6).R;
uLINK(6).p = [0.01 0 -0.32]';
[vertex_6,face_6] = MakeZcylinder([0 0 0.17]',0.03,0.1);%draw RLEG_J4
uLINK(6).vertex = vertex_6;
uLINK(6).face = face_6;

uLINK(7).name = 'RFOOT';
uLINK(7).sister = 0;
uLINK(7).child = 0;
uLINK(7).R = [1  0 0;
              0  0 1;
              0 -1 0];
uLINK(7).p = [-0.16 -0.17 -0.32]';
[vertex_7,face_7] = MakeZcylinder([0 0 0.17]',0.03,0.1);%draw RLEG_J5
uLINK(7).vertex = vertex_7;
uLINK(7).face = face_7;

uLINK(8).name = 'LLEG';
uLINK(8).sister = 0;
uLINK(8).child = 9;
uLINK(8).p = [0 0 0]';
uLINK(8).R = eye(3);
[vertex_8,face_8] = MakeZcylinder([ 0.16 0.0 0.53]',0.03,0.1);
uLINK(8).vertex = vertex_8;
uLINK(8).face = face_8;

uLINK(9).name = 'LFOOT';
uLINK(9).sister = 0;
uLINK(9).child = 0;



