table=readtable('coral_m3_angles_v3.xlsx');

                        %%% Isolating data %%%
% E_coil to E_coil
N_terminus_and_N_teminus=table(:,14);

%D_coil to alpha C
C_terminus_and_alpha_C_domain=table(:,5);
C_terminus_and_alpha_C_domain1=table(:,10);

%E coil to D coil
N_terminus_and_C_terminus=table(:,4);
N_terminus_and_C_terminus1=table(:,9); 

%Beta alpha to pdules coiled
D_Coil_fixed_domain1= table(:,16);
D_Coil_fixed_domain2= table(:,17);

                     %%% converting to vector %%%

%E_coil to E_coil
N_terminus_and_N_teminus=N_terminus_and_N_teminus{:,:};
N_terminus_and_N_teminus_makeup= 360-N_terminus_and_N_teminus;
N_terminus_and_N_teminus_total=sort([N_terminus_and_N_teminus;N_terminus_and_N_teminus_makeup]);

%D_coil to alpha C
C_terminus_and_alpha_C_domain=C_terminus_and_alpha_C_domain{:,:};
C_terminus_and_alpha_C_domain1=C_terminus_and_alpha_C_domain1{:,:};
D_coil_to_alpha_C=[C_terminus_and_alpha_C_domain;C_terminus_and_alpha_C_domain1];
D_coil_to_alpha_C_makeup= 360-D_coil_to_alpha_C;
D_coil_to_alpha_C_total=[D_coil_to_alpha_C;D_coil_to_alpha_C_makeup];
%E coil to D coil
N_terminus_and_C_terminus=N_terminus_and_C_terminus{:,:};
N_terminus_and_C_terminus1=N_terminus_and_C_terminus1{:,:};
E_coil_to_D_coil=[N_terminus_and_C_terminus;N_terminus_and_C_terminus1];
E_coil_to_D_coil_makeup= 360-E_coil_to_D_coil;
E_coil_to_D_coil_total=[E_coil_to_D_coil;E_coil_to_D_coil_makeup];

%Beta alpha to pdules coiled

D_Coil_fixed_domain1= D_Coil_fixed_domain1{:,:};
D_Coil_fixed_domain2=D_Coil_fixed_domain2{:,:};
D_coil_to_beta_gama_module=[D_Coil_fixed_domain1;D_Coil_fixed_domain2];



figure(1) 
h=histogram(N_terminus_and_N_teminus,'FaceColor','#0072BD');
alpha(.80);
h.BinWidth=3;
hold on
x1=(100:1:180);
%pd1=fitgmdist(N_terminus_and_N_teminus_total,3);
n1=makedist('Normal',178.0314160226039,sqrt(191.6944));
n2=makedist('Normal',132.2285131250540,sqrt(124.5796));


y=700*(0.727069575988753*pdf(n1,x1)+0.074810405723011*pdf(n2,x1));

plot(x1,y,'LineWidth',2.5,'Color','#000000','LineStyle','--')
plot(x1,700*0.727069575988753*pdf(n1,x1),'LineWidth',2,'Color','#FF00FF')
plot(x1,700*0.074810405723011*pdf(n2,x1),'LineWidth',2,'Color','#00FF00')
hold on
xline(178.0314160226039-sqrt(191.6944), 'LineWidth',1,'LineStyle','--','Color','#FF00FF')
xline(178.0314160226039-0*sqrt(191.6944), 'LineWidth',2,'LineStyle','--','Color','#FF00FF')
xline(132.2285131250540-0*sqrt(124.5796), 'LineWidth', 2,'LineStyle','--','Color','#77AC30')
xline(132.2285131250540-sqrt(124.5796), 'LineWidth', 1,'LineStyle','--','Color','#77AC30')
xline(132.2285131250540+sqrt(124.5796), 'LineWidth', 1,'LineStyle','--','Color','#77AC30')

title('E-region to E-region')
xlabel('angle')
ylabel('recurrent')
%legend('Location','northwest');

mu=mean(N_terminus_and_N_teminus);
mi=std(N_terminus_and_N_teminus);



%mylegend = 'Mean: ' + string(mu) + '  Std: ??' + string(mi);
%legend(mylegend);
hold off
figure(5) 
h=histogram(N_terminus_and_N_teminus,'FaceColor','#0072BD');
alpha(.80);
h.BinWidth=3;
hold on
x1=(0:1:180);
%pd1=fitgmdist(N_terminus_and_N_teminus_total,3);
n1=makedist('Normal',178.0314160226039,sqrt(191.6944));
n2=makedist('Normal',132.2285131250540,sqrt(124.5796));


y=700*(0.727069575988753*pdf(n1,x1)+0.074810405723011*pdf(n2,x1));

plot(x1,y,'LineWidth',2.5,'Color','#000000','LineStyle','--')
plot(x1,700*0.727069575988753*pdf(n1,x1),'LineWidth',2,'Color','#FF00FF')
plot(x1,700*0.074810405723011*pdf(n2,x1),'LineWidth',2,'Color','#00FF00')
hold on
xline(178.0314160226039-sqrt(191.6944), 'LineWidth',1,'LineStyle','--','Color','#FF00FF')
xline(178.0314160226039-0*sqrt(191.6944), 'LineWidth',2,'LineStyle','--','Color','#FF00FF')
xline(132.2285131250540-0*sqrt(124.5796), 'LineWidth', 2,'LineStyle','--','Color','#77AC30')
xline(132.2285131250540-sqrt(124.5796), 'LineWidth', 1,'LineStyle','--','Color','#77AC30')
xline(132.2285131250540+sqrt(124.5796), 'LineWidth', 1,'LineStyle','--','Color','#77AC30')

title('E-region to E-region')
xlabel('angle')
ylabel('recurrent')
%legend('Location','northwest');

mu=mean(N_terminus_and_N_teminus);
mi=std(N_terminus_and_N_teminus);



%mylegend = 'Mean: ' + string(mu) + '  Std: ??' + string(mi);
%legend(mylegend);
hold off
figure(2)
h2=histogram(D_coil_to_alpha_C,'FaceColor','#0072BD');
alpha(.80);
h2.BinWidth=5;
hold on


n1=makedist('Normal',180,sqrt(914.6532));
n2=makedist('Normal',101.2664180546399,sqrt(942.4305));

x2=(0:1:180);
y2=1500*(0.541474149994141*pdf(n1,x2)+0.235405468003058*pdf(n2,x2));

plot(x2,y2,'LineWidth',2.5,'Color','#000000', 'LineStyle','--')
plot(x2,1500*0.541474149994141*pdf(n1,x2),'LineWidth',2, 'Color','#FF00FF')
plot(x2,1500*0.235405468003058*pdf(n2,x2),'LineWidth',2,'Color','#00FF00')

xline(180-sqrt(914.6532), 'LineWidth',1,'LineStyle','--','Color','#FF00FF')
xline(180-0*sqrt(914.6532), 'LineWidth',2,'LineStyle','--','Color','#FF00FF')
xline(101.2664180546399-0*sqrt(942.4305), 'LineWidth', 2,'LineStyle','--','Color','#77AC30')
xline(101.2664180546399-sqrt(942.4305), 'LineWidth', 1,'LineStyle','--','Color','#77AC30')
xline(101.2664180546399+sqrt(942.4305), 'LineWidth', 1,'LineStyle','--','Color','#77AC30')



title('D-region to alpha C domain')
xlabel('Angle')
ylabel('Recurrence')
%legend('Location','northwest');

mu=mean(D_coil_to_alpha_C);
mi=std(D_coil_to_alpha_C);

%mylegend = 'Mean: ' + string(mu) + '  Std: ??' + string(mi);
%legend(mylegend);
hold off


figure(3)
h3=histogram(E_coil_to_D_coil,'FaceColor','#0072BD');
alpha(.80);
h3.BinWidth=3;
hold on

%pd3=fitgmdist(E_coil_to_D_coil_total,5);
n1=makedist('Normal',177.09987667524514,sqrt(500.8));
n2=makedist('Normal',130,sqrt(200));
%n3=makedist('Normal',pd3.mu(3),sqrt(pd3.Sigma(3)));
n4=makedist('Normal',94.5,sqrt(139));
%n5=makedist('Normal',pd3.mu(5),sqrt(pd3.Sigma(5)));
%n6=makedist('Normal',pd3.mu(6),sqrt(pd3.Sigma(6)));
%n7=makedist('Normal',pd3.mu(7),sqrt(pd3.Sigma(7)));

%p=pd3.ComponentProportion;
x3=(35:1:180);
y3=2100*(0.300742305341801*pdf(n1,x3)+0.039841871484796*pdf(n4,x3))+1000*0.258639052312525*pdf(n2,x3);



plot(x3,y3,'LineWidth',2.5,'Color','#000000', 'LineStyle','--');
plot(x3,2100*0.300742305341801*pdf(n1,x3),'LineWidth',2,'Color','#FF00FF');
plot(x3,1000*0.258639052312525*pdf(n2,x3),'LineWidth',2,'Color','#77AC30' );
%plot(x3,1500*p(3)*pdf(n3,x3),'LineWidth',5);
plot(x3,2100*0.039841871484796*pdf(n4,x3),'LineWidth',2,'Color','r');
%plot(x3,1500*p(5)*pdf(n5,x3),'LineWidth',5);



title('E-region to D-region')
xlabel('Angle')
ylabel('Recurrence')
%legend('Location','northwest');

%mu=mean(E_coil_to_D_coil);
%mi=std(E_coil_to_D_coil);

%mylegend = 'Mean: ' + string(mu) + '  Std: ??' + string(mi);
%legend(mylegend);
hold off
xline(177.09987667524514-sqrt(500.8), 'LineWidth',1,'LineStyle','--','Color','#FF00FF')
xline(177.09987667524514-0*sqrt(500.8), 'LineWidth',2,'LineStyle','--','Color','#FF00FF')
xline(130-0*sqrt(200), 'LineWidth', 2,'LineStyle','--','Color','#77AC30')
xline(130-sqrt(200), 'LineWidth', 1,'LineStyle','--','Color','#77AC30')
xline(130+sqrt(200), 'LineWidth', 1,'LineStyle','--','Color','#77AC30')
xline(94.5+0*sqrt(139), 'LineWidth', 2,'LineStyle','--','Color','r')
xline(94.5-1*sqrt(139), 'LineWidth', 1,'LineStyle','--','Color','r')
xline(94.5+1*sqrt(139), 'LineWidth', 1,'LineStyle','--','Color','r')
figure(4)

h4=histogram(D_coil_to_beta_gama_module);
alpha(.80);
x4=[0:1:180]
h4.BinWidth=5;
mu=mean(D_coil_to_beta_gama_module);
mi=std(D_coil_to_beta_gama_module);

y4= 1000*pdf(makedist('Normal',mean(D_coil_to_beta_gama_module),mi),x4);
hold on
plot(x4,y4,'LineWidth',2.5,'Color','#000000', 'LineStyle','-');

xlabel('Angle')
ylabel('Recurrence')
title('D-coil to beta gama nodule')
xline(mean(D_coil_to_beta_gama_module), 'LineWidth',2,'LineStyle','--','Color','#000000')
xline(mean(D_coil_to_beta_gama_module)-mi, 'LineWidth',1,'LineStyle','--','Color','#000000')
xline(mean(D_coil_to_beta_gama_module)+mi, 'LineWidth',1,'LineStyle','--','Color','#000000')
%legend('Location','northwest');



%mylegend = 'Mean: ' + string(mu) + '  Std: ??' + string(mi);
%legend(mylegend);