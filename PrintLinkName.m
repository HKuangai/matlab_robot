function PrintLinkName(j)
global uLINK
%if j~= 0
   % fprintf('j = %d : %s\n',j,uLINK(j).name);
   % PrintLinkName(uLINK(j).sister);
    %PrintLinkName(uLINK(j).child);
%end
% fprintf('%f',uLINK(j).mass);
%MakeRigidBody(1,[0.4 0.1 0.8],36.0,[0.0 0.0 1.0]');%draw the body
%uLINK(j).p = uLINK(j).p;
%uLINK(j).R = uLINK(j).R;
%uLINK(j).mass = uLINK(j).mass;
ShowObject(j);
hold on;