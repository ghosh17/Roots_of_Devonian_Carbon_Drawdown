clear all
close all
clc

[numbers, strings, raw] = xlsread('Ghosh-Kalderon all data.xlsx');
T_all = readtable('Ghosh-Kalderon all data.xlsx');
T = T_all(T_all.Age_Ga_ <= 0.541,:);%only for ages after the Cambrian 

T_Calcite = T(T.Minerology == "calcite",:);
T_Aragonite = T(T.Minerology == "aragonite",:);
T_Dolomite = T(T.Minerology == "dolomite",:);

T_Micrite = T(contains(T.Lithology_Fabric,'Micrite'),:);
T_FGL = T(T.Lithology_Fabric == "Fine grained limestone",:);
T_Brach = T(contains(T.Lithology_Fabric,'Brach'),:);
T_Wackestone = T(T.Lithology_Fabric == "Wackestone",:);
T_Marine_cement = T(T.Lithology_Fabric == "Marine cement",:);
T_FCMC = T(T.Lithology_Fabric == "Fibrous calcite marine cement",:);
T_Microbialite = T(T.Lithology_Fabric == "Microbialite",:);
T_SHGM = T(T.Lithology_Fabric == "Skeletal HCS grainstone and mudstone",:);
T_Lime_musdstone = T(T.Lithology_Fabric == "Lime musdstone",:);



figure_counter = 1;
%Plot all data3 by to now
figure(figure_counter)
scatter(T_all.Age_Ga_,T_all.x_7Li___, 'filled','b');
title('All Data Plot');
xlabel('Age (By)');
ylabel(' δ7Li (‰)');
set(gca,'Ydir','reverse')
set(gca,'Xdir','reverse')


figure_counter= figure_counter+1;

%Plot all data Phanerozoic
figure(figure_counter)
scatter(T.Age_Ga_,T.x_7Li___, 'filled','b');
title('Phanerozoic all data');
xlabel('Age (By)');
ylabel(' δ7Li (‰)');
set(gca,'Ydir','reverse')
set(gca,'Xdir','reverse')
xlim([0 0.541])
ylim([-10 70])

figure_counter= figure_counter+1;

%Plot only Brachiopods
figure(figure_counter)
scatter(T_Brach.Age_Ga_,T_Brach.x_7Li___, 'filled','r');
title('Phanerozoic Brachiopod');
xlabel('Age (By)');
ylabel(' δ7Li (‰)');
set(gca,'Ydir','reverse')
set(gca,'Xdir','reverse')
xlim([0 0.541])
ylim([-10 70])

figure_counter= figure_counter+1;

%Plot only Fine Grained Limestone
figure(figure_counter)
scatter(T_FGL.Age_Ga_,T_FGL.x_7Li___, 'filled','m');
title('Phanerozoic Fine Grained Limestone');
xlabel('Age (By)');
ylabel(' δ7Li (‰)');
set(gca,'Ydir','reverse')
set(gca,'Xdir','reverse')
xlim([0 0.541])
ylim([-10 70])

figure_counter= figure_counter+1;

%Plot only Calcite
figure(figure_counter)
scatter(T_Calcite.Age_Ga_,T_Calcite.x_7Li___, 'filled');
title('Phanerozoic All Calcite');
xlabel('Age (By)');
ylabel(' δ7Li (‰)');
set(gca,'Ydir','reverse')
set(gca,'Xdir','reverse')
xlim([0 0.541])
ylim([-10 70])

figure_counter= figure_counter+1;

%Plot only Aragonite
figure(figure_counter)
scatter(T_Aragonite.Age_Ga_,T_Aragonite.x_7Li___, 'filled');
title('Phanerozoic All Aragonite');
xlabel('Age (By)');
ylabel(' δ7Li (‰)');
set(gca,'Ydir','reverse')
set(gca,'Xdir','reverse')
xlim([0 0.541])
ylim([-10 70])

figure_counter= figure_counter+1;

%Plot only Dolomite
figure(figure_counter)
scatter(T_Dolomite.Age_Ga_,T_Dolomite.x_7Li___, 'filled');
title('Phanerozoic All Dolomite');
xlabel('Age (By)');
ylabel(' δ7Li (‰)');
set(gca,'Ydir','reverse')
set(gca,'Xdir','reverse')
xlim([0 0.541])
ylim([-10 70])

figure_counter= figure_counter+1;

%Plot only Micrite
figure(figure_counter)
scatter(T_Micrite.Age_Ga_,T_Micrite.x_7Li___, 'filled');
title('Phanerozoic Micrite');
xlabel('Age (By)');
ylabel(' δ7Li (‰)');
set(gca,'Ydir','reverse')
set(gca,'Xdir','reverse')
xlim([0 0.541])
ylim([-10 70])

figure_counter= figure_counter+1;


%Plot only wackestones
figure(figure_counter)
scatter(T_Wackestone.Age_Ga_,T_Wackestone.x_7Li___, 'filled');
title('Phanerozoic Wackestones');
xlabel('Age (By)');
ylabel(' δ7Li (‰)');
set(gca,'Ydir','reverse')
set(gca,'Xdir','reverse')
xlim([0 0.541])
ylim([-10 70])

figure_counter= figure_counter+1;


%Plot only Marine cement
figure(figure_counter)
scatter(T_Marine_cement.Age_Ga_,T_Marine_cement.x_7Li___, 'filled');
title('Phanerozoic Marine cement');
xlabel('Age (By)');
ylabel(' δ7Li (‰)');
set(gca,'Ydir','reverse')
set(gca,'Xdir','reverse')
xlim([0 0.541])
ylim([-10 70])

figure_counter= figure_counter+1;

%Plot only Fibrous calcite marine cement
figure(figure_counter)
scatter(T_FCMC.Age_Ga_,T_FCMC.x_7Li___, 'filled');
title('Phanerozoic Fibrous calcite marine cement');
xlabel('Age (By)');
ylabel(' δ7Li (‰)');
set(gca,'Ydir','reverse')
set(gca,'Xdir','reverse')
xlim([0 0.541])
ylim([-10 70])

figure_counter= figure_counter+1;

%Plot only Microbialite
figure(figure_counter)
scatter(T_Microbialite.Age_Ga_,T_Microbialite.x_7Li___, 'filled');
title('Phanerozoic Microbialite');
xlabel('Age (By)');
ylabel(' δ7Li (‰)');
set(gca,'Ydir','reverse')
set(gca,'Xdir','reverse')
xlim([0 0.541])
ylim([-10 70])

figure_counter= figure_counter+1;

%Plot only Skeletal HCS grainstone and mudstone
figure(figure_counter)
scatter(T_SHGM.Age_Ga_,T_SHGM.x_7Li___, 'filled');
title('Phanerozoic Skeletal HCS grainstone and mudstone');
xlabel('Age (By)');
ylabel(' δ7Li (‰)');
set(gca,'Ydir','reverse')
set(gca,'Xdir','reverse')
xlim([0 0.541])
ylim([-10 70])

figure_counter= figure_counter+1;

%Plot only Lime musdstone
figure(figure_counter)
scatter(T_Lime_musdstone.Age_Ga_,T_Lime_musdstone.x_7Li___, 'filled');
title('Phanerozoic Lime mudstone');
xlabel('Age (By)');
ylabel(' δ7Li (‰)');
set(gca,'Ydir','reverse')
set(gca,'Xdir','reverse')
xlim([0 0.541])
ylim([-10 70])

figure_counter= figure_counter+1;


%Mn/Ca ratio of Brachiopod
figure(figure_counter)
scatter(T_Brach.Age_Ga_,(T_Brach.Mn_ppm_./T_Brach.Ca_ppm_), 'filled','r');
title('Diagenetic alteration: Brach Mn/Ca');
xlabel('Age (By)');
ylabel(' Mn/Ca');
set(gca,'Xdir','reverse')
xlim([0 0.541])


figure_counter= figure_counter+1;


%Mn/Ca ratio of Fine Grained Limestone
figure(figure_counter)
scatter(T_FGL.Age_Ga_,(T_FGL.Mn_ppm_./T_FGL.Ca_ppm_), 'filled','g');
title('Diagenetic alteration: Fine Grained Limestone Mn/Ca');
xlabel('Age (By)');
ylabel(' Mn/Ca');
set(gca,'Xdir','reverse')
xlim([0 0.541])


figure_counter= figure_counter+1;

%d7Li/Li ratio of Brachiopods
figure(figure_counter)
scatter((T_Brach.Li_ppm_./T_Brach.Ca_ppm_),T_Brach.x_7Li___, 'filled','r');
title('Brachiopod Limestone δ7Li/[Li/Ca]');
xlabel('[Li]/[Ca]');
ylabel(' δ7Li');



figure_counter= figure_counter+1;

%d7Li/Li ratio of Fine Grained Limestone
figure(figure_counter)
scatter((T_FGL.Li_ppm_./T_FGL.Ca_ppm_),T_FGL.x_7Li___, 'filled','m');
title('Fine Grained Limestone δ7Li/[Li/Ca]');
xlabel('[Li]/[Ca]');
ylabel(' δ7Li');


figure_counter= figure_counter+1;

%Metal rich fluid overprinting: Pb/Ca ratio of Fine Grained Limestone
figure(figure_counter)
scatter(T_FGL.Age_Ga_,(T_FGL.Pb_ppm_./T_FGL.Ca_ppm_), 'filled','m');
title('Metal rich fluid overprinting: Fine Grained Limestone Pb/Ca');
xlabel('Age (By)');
ylabel(' Pb/Ca');
set(gca,'Xdir','reverse')
xlim([0 0.541])

figure_counter= figure_counter+1;

%Detrital input: Rb/Ca ratio of Fine Grained Limestone
figure(figure_counter)
scatter(T_FGL.Age_Ga_,(T_FGL.Rb_ppm_./T_FGL.Ca_ppm_), 'filled','m');
title('Detrital input: Fine Grained Limestone Rb/Ca');
xlabel('Age (By)');
ylabel(' Rb/Ca');
set(gca,'Xdir','reverse')
xlim([0 0.541])

figure_counter= figure_counter+1;

%AlSi dissolution during leaching: Al/Ca ratio of Fine Grained Limestone
figure(figure_counter)
scatter(T_FGL.Age_Ga_,(T_FGL.Al_ppm_./T_FGL.Ca_ppm_), 'filled','m');
title('AlSi dissolution during leaching: Fine Grained Limestone Al/Ca');
xlabel('Age (By)');
ylabel(' Al/Ca');
set(gca,'Xdir','reverse')
xlim([0 0.541])

figure_counter= figure_counter+1;


%Mg/Ca ratio of Fine Grained Limestone
figure(figure_counter)
scatter(T_FGL.Age_Ga_,(T_FGL.Mg_ppm_./T_FGL.Ca_ppm_), 'filled','m');
title('Fine Grained Limestone Mg/Ca');
xlabel('Age (By)');
ylabel(' Mg/Ca');
set(gca,'Xdir','reverse')
xlim([0 0.541])

figure_counter= figure_counter+1;

%Sr/Ca ratio of Fine Grained Limestone
figure(figure_counter)
scatter(T_FGL.Age_Ga_,(T_FGL.Sr_ppm_./T_FGL.Ca_ppm_), 'filled','m');
title('Fine Grained Limestone Sr/Ca');
xlabel('Age (By)');
ylabel(' Sr/Ca');
set(gca,'Xdir','reverse')
xlim([0 0.541])

figure_counter= figure_counter+1;

