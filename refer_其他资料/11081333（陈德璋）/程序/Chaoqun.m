
Rwavelength=0.632;Gwavelength=0.529;Bwavelength=0.488;
VertorR=[];VertorG=[];VertorB=[];
for rad=0.01:0.01:3
    K0=2*pi./Rwavelength;
    x=K0.*rad;m=1.5+0*i;
    HereIsRed=Mie(m,x);  
    VertorR=[VertorR;HereIsRed(5)];    
end
for rad=0.01:0.01:3
    K0=2*pi./Gwavelength;
    x=K0.*rad;m=1.50+0*i;
    HereIsGreen=Mie(m,x);  
    VertorG=[VertorG;HereIsGreen(5)];    
end
for rad=0.01:0.01:3
    K0=2*pi./Bwavelength;
    x=K0.*rad;m=1.50+0*i;
    HereIsBlue=Mie(m,x);  
    VertorB=[VertorB;HereIsBlue(5)];    
end
figure;
igure1 = figure('Color',[1 1 1]);
 %plot(VertorR  ,'MarkerSize',10)
plot(VertorG  ,'MarkerSize',10)
%plot(VertorB  ,'MarkerSize',10)
xlabel('粒子间距/um ');
ylabel('后向散射光强 ');























