clear

mdl_puma560;

center = [0.5 -0.3 0];
II = imread('car.jpg'); 
BW = im2bw(II); 
B = bwboundaries(BW); 
imshow(II); 
hold on; 
targetBoundary = B{2}; 
plot(targetBoundary(:, 2), targetBoundary(:, 1), 'm', 'LineWidth', 2); 
points = ([targetBoundary(:, 2), targetBoundary(:, 1)])';
height = linspace(center(3),center(3),length(points));
points = [points;height];
imgsize=size(II);
points(1,:)=0.5*(points(1,:)/imgsize(1)-0.5)+center(1);%长
points(2,:)=0.5*(points(2,:)/imgsize(2)-0.5)+center(2);%宽


PointCount = 300;
pic_num = 1;      %%初始化gif

figure
leap = fix(size(points,2)/PointCount) %取点个数
for i = 1:leap:size(points,2)
    pause(0.01)
    bx = points(1,i); 
    by = points(2,i);
    bz = points(3,i);
    targetPos = [bx by bz];
    TR=transl(targetPos);
    if i-leap>1 %后序点用切线做角度旋转
        dx = points(1,i) - points(1,i-leap);
        dy = points(2,i) - points(2,i-leap);
        dz = points(3,i) - points(3,i-leap);
        TR = TR*trotz(-atan2(dx,dy));
    end
    hold on
    grid on
    plot3(bx,by,bz,'r.','linewidth',10);   %%红色点点
    q=p560.ikine6s(TR)
    if isempty(q)
        warning("point not reachable");
    else
        p560.plot(q);
    end
   
    %%保存成gif
    F=getframe(gcf);
    II=frame2im(F);
    [II,map]=rgb2ind(II,256);
    if pic_num == 1
    imwrite(II,map,'r_car.gif','gif','Loopcount',inf,'DelayTime',0.2);
    else
    imwrite(II,map,'r_car.gif','gif','WriteMode','append','DelayTime',0.2);
    end
    pic_num = pic_num + 1;
end
