close all; clear all; clc;
j=0;b=2;w=5;%i is time
z=linspace(0,8,1000);
m=zeros(1,1000);

for j=1:0.01:5
    i=j-1;
    E1=cos(w*i-b*z);
    E2=cos(w*i-b*z+pi/2);
    E=E1+E2;
    axis([0 1 0 1 0 1])
    
    
    
    p1=plot3(z,E1,m,'r');
    hold on
    p2=plot3(z,m,E2,'k');
    hold on
    p3=plot3(z,E1,E2,'b');
    quiver3(0,0,0,0,0,cos(w*i+pi/2),'k','LineWidth',3);
    quiver3(0,0,0,0,cos(w*i),0,'r','LineWidth',3);
    quiver3(0,0,0,0,cos(w*i),cos(w*i+pi/2),'b','LineWidth',3);
    
    p1.LineWidth=1;
    p2.LineWidth=1;
    p3.LineWidth=3;
    
    hold on
    quiver3(0,0,-max(zlim),0,0,2*max(zlim),'b','LineWidth',1);
    quiver3(0,-max(ylim),0,0,2*max(ylim),0,'b','LineWidth',1);
    quiver3(0,0,0,max(xlim),0,0,'b','LineWidth',1);
    text(0,0,max(zlim),'Y','Color','b');
    text(0,max(ylim),0,'X','Color','b');
    text(max(xlim),0,0,'Z','Color','b');
    axis equal;
    view(30,30);
    set(gca, 'LineWidth',2, 'XGrid','on', 'GridLineStyle','--');

    zlabel("\color{black}E1(z)");
    ylabel("\color{red}E2(z)");
    xlabel("z");
    
    title('RHCP','Color','k','FontSize',20)
    
    
    
    if j==1
        text(0,0,0,'Initially starting with a phase difference of pi/2 with Ex leading ','Color','red','FontSize',14)
        pause(5);
    end
   hold off
    pause(0.05);
end
