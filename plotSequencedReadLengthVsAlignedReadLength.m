function plotSequencedReadLengthVsAlignedReadLength
%% Function written by Eleni Christoforidou in MATLAB R2019b.

%This function creates a plot of Sequenced read length vs Aligned read length.

%This function requires a TXT file for each sample, containing the sequenced
%read lengths and the aligned read lengths (generated by running NanoPlot
%using BAM files).

%Run this section from inside the folder containing the TXT files.

%IMPORTANT: This function creates a plot for 6 samples. A lot of things are
%hardcoded so this code will need to be modified for use with new samples.

%INPUT ARGUMENTS: None.

%OUTPUT ARGUMENTS: None, but the plot is saved in 2 different formats in
%the working directory.

%%
%Supblot 1.
tdfread('NanoPlot-data_barcode07filtered.txt'); %load data.
clear mapQ percentIdentity readIDs
fig=figure('Position', get(0,'Screensize')); %make figure full-screen.
ax(1)=subplot(2,3,1);
R=corrcoef(aligned_lengths,lengths); %get correlation coefficients;
Rsq1=R(2)^2; %get R-squared value.
text(250,17500,['R^2=',num2str(Rsq1)]); %add value on plot.
hold on;
plot([0,18000],[0,18000],'b-','LineWidth',1); %plot bisection.
s1=scatter(aligned_lengths,lengths,1,[.5 .8 .7]); %create scatter plot.
clear lengths aligned_lengths;
title('Wildtype 1','FontSize',16); %add plot title.
ylabel('Sequenced read length','FontSize',14); %add y-axis label.
xlabel('Aligned read length','FontSize',14); %add x-axis label.
set(gca,'FontSize',12); %set fonstsize of axis values.
ax(1).XRuler.Exponent=0;
xlim([0 18000]);
hold off;

%Supblot 2.
tdfread('NanoPlot-data_barcode08filtered.txt'); %load data.
clear mapQ percentIdentity readIDs
ax(2)=subplot(2,3,2);
R=corrcoef(aligned_lengths,lengths); %get correlation coefficients;
Rsq2=R(2)^2; %get R-squared value.
text(250,17500,['R^2=',num2str(Rsq2)]); %add value on plot.
hold on;
plot([0,18000],[0,18000],'b-','LineWidth',1); %plot bisection.
s2=scatter(aligned_lengths,lengths,1,[.3 .6 .5]); %create scatter plot.
clear lengths aligned_lengths;
title('Wildtype 2','FontSize',16); %add plot title.
ylabel('Sequenced read length','FontSize',14); %add y-axis label.
xlabel('Aligned read length','FontSize',14); %add x-axis label.
set(gca,'FontSize',12); %set fonstsize of axis values.
ax(2).XRuler.Exponent=0;
xlim([0 18000]);
hold off;

%Supblot 3.
tdfread('NanoPlot-data_barcode09filtered.txt'); %load data.
clear mapQ percentIdentity readIDs
ax(3)=subplot(2,3,3);
R=corrcoef(aligned_lengths,lengths); %get correlation coefficients;
Rsq3=R(2)^2; %get R-squared value.
text(250,17500,['R^2=',num2str(Rsq3)]); %add value on plot.
hold on;
plot([0,18000],[0,18000],'b-','LineWidth',1); %plot bisection.
s3=scatter(aligned_lengths,lengths,1,[.1 .4 .3]); %create scatter plot.
clear lengths aligned_lengths;
title('Wildtype 3','FontSize',16); %add plot title.
ylabel('Sequenced read length','FontSize',14); %add y-axis label.
xlabel('Aligned read length','FontSize',14); %add x-axis label.
set(gca,'FontSize',12); %set fonstsize of axis values.
ax(3).XRuler.Exponent=0;
xlim([0 18000]);
hold off;

%Supblot 4.
tdfread('NanoPlot-data_barcode10filtered.txt'); %load data.
clear mapQ percentIdentity readIDs
ax(4)=subplot(2,3,4);
R=corrcoef(aligned_lengths,lengths); %get correlation coefficients;
Rsq4=R(2)^2; %get R-squared value.
text(250,17500,['R^2=',num2str(Rsq4)]); %add value on plot.
hold on;
plot([0,18000],[0,18000],'b-','LineWidth',1); %plot bisection.
s4=scatter(aligned_lengths,lengths,1,[.8 .5 .7]); %create scatter plot.
clear lengths aligned_lengths;
title('Mutant 1','FontSize',16); %add plot title.
ylabel('Sequenced read length','FontSize',14); %add y-axis label.
xlabel('Aligned read length','FontSize',14); %add x-axis label.
set(gca,'FontSize',12); %set fonstsize of axis values.
ax(4).XRuler.Exponent=0;
xlim([0 18000]);
hold off;

%Supblot 5.
tdfread('NanoPlot-data_barcode11filtered.txt'); %load data.
clear mapQ percentIdentity readIDs
ax(5)=subplot(2,3,5);
R=corrcoef(aligned_lengths,lengths); %get correlation coefficients;
Rsq5=R(2)^2; %get R-squared value.
text(250,17500,['R^2=',num2str(Rsq5)]); %add value on plot.
hold on;
plot([0,18000],[0,18000],'b-','LineWidth',1); %plot bisection.
s5=scatter(aligned_lengths,lengths,1,[.6 .3 .5]); %create scatter plot.
clear lengths aligned_lengths;
title('Mutant 2','FontSize',16); %add plot title.
ylabel('Sequenced read length','FontSize',14); %add y-axis label.
xlabel('Aligned read length','FontSize',14); %add x-axis label.
set(gca,'FontSize',12); %set fonstsize of axis values.
ax(5).XRuler.Exponent=0;
xlim([0 18000]);
hold off;

%Supblot 6.
tdfread('NanoPlot-data_barcode12filtered.txt'); %load data.
clear mapQ percentIdentity readIDs
ax(6)=subplot(2,3,6);
R=corrcoef(aligned_lengths,lengths); %get correlation coefficients;
Rsq6=R(2)^2; %get R-squared value.
text(250,17500,['R^2=',num2str(Rsq6)]); %add value on plot.
hold on;
plot([0,18000],[0,18000],'b-','LineWidth',1); %plot bisection.
s6=scatter(aligned_lengths,lengths,1,[.4 .1 .3]); %create scatter plot.
clear lengths aligned_lengths;
title('Mutant 3','FontSize',16); %add plot title.
ylabel('Sequenced read length','FontSize',14); %add y-axis label.
xlabel('Aligned read length','FontSize',14); %add x-axis label.
set(gca,'FontSize',12); %set fonstsize of axis values.
ax(6).XRuler.Exponent=0;
xlim([0 18000]);
hold off;

linkaxes(ax,'xy'); %link x-axis and y-axis limits of all subplots.

%Save plot.
savefig(fig,'SequencedReadLength_v_AlignedReadLength'); %save figure as a FIG file in the working directory.
fig.Renderer='painters'; %force MATLAB to render the image as a vector.
saveas(fig,'SequencedReadLength_v_AlignedReadLength.svg'); %save figure as an SVG file.
close
clear
end