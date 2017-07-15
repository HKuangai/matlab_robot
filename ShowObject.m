function ShowObject(j)
vert = uLINK(j).R * uLINK(j).vertex;%the conversion of spin
for k = 1:3
    vert(k,:) = vert(k,:) + uLINK(j).p(k);%the conversion of moving
end
newplot
h = patch('faces',uLINK(j).face','vertices',vert','FaceColor',[0.5 0.5 0.5]);
axis equal;view(3);grid on;xlim(AX);ylim(AY);zlim(AZ);
%text(0.25,-0.25,0.8,['time=',num2str(time(n),'%5.3f')]);
drawnow