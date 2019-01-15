%% Initialize Figure
nTrials = 2000;
figure(1)
set(gcf,'Position',[0 0 1200 600]);

%% Null Model
load('../data/model_outputs/simulations/sim_traj/null.mat');

% Trajectory
subplot(6,6,[7:8])
hold on
plot(traj(:,1:20),'LineWidth', 1.2)
axis([0, 4000, 0, 2.4]);
set(gca,'xtick',0:500:4000,'xticklabel',0:0.5:4);
set(gca,'ytick',1.2:1.2:2.4);

set(gca,'fontsize', 12);
box on; set(gca,'TickLength',[0 0]);

% Histogram 1
subplot(6,6,[1:2])
histfit(resp(resp(:,2) == 1), 20, 'kernel');
axis([0, 4, 0, nTrials/10]);
set(gca,'xtick',[])
set(gca,'fontsize', 12);
box on; set(gca,'TickLength',[0 0]);

% Histogram 2
subplot(6,6,[13:14])
histfit(resp(resp(:,2) == 2), 20, 'kernel');
axis([0, 4, 0, nTrials/10]);
set(gca,'Ydir','reverse')
set(gca,'xtick',[])
set(gca,'fontsize', 12);
box on; set(gca,'TickLength',[0 0]);

% Mean Response
subplot(6,6,[3,9,15])
meanResp(1,1) = mean(resp(:,2) == 1);
meanResp(1,2) = mean(resp(:,2) == 2);
bar(meanResp);
axis([0, 3, 0, 1])
ylabel('P(Response)')
set(gca,'xtick',[1,2],'xticklabel',{'Scene','Face'})
box off; set(gca,'TickLength',[0 0]);
set(gca,'fontsize', 12);



%% Bias Model
load('../data/model_outputs/simulations/sim_traj/bias.mat');

% Trajectory
subplot(6,6,[10:11])
hold on
plot(traj(:,1:20),'LineWidth', 1.2)
axis([0, 4000, 0, 2.4]);
set(gca,'xtick',0:500:4000,'xticklabel',0:0.5:4);
set(gca,'ytick',1.2:1.2:2.4);

set(gca,'fontsize', 12);
box on; set(gca,'TickLength',[0 0]);

% Histogram 1
subplot(6,6,[4:5])
histfit(resp(resp(:,2) == 1), 20, 'kernel');
axis([0, 4, 0, nTrials/10]);
set(gca,'xtick',[])
set(gca,'fontsize', 12);
box on; set(gca,'TickLength',[0 0]);

% Histogram 2
subplot(6,6,[16:17])
histfit(resp(resp(:,2) == 2), 20, 'kernel');
axis([0, 4, 0, nTrials/10]);
set(gca,'Ydir','reverse')
set(gca,'xtick',[])
set(gca,'fontsize', 12);
box on; set(gca,'TickLength',[0 0]);

% Mean Response
subplot(6,6,[6,12,18])
meanResp(1,1) = mean(resp(:,2) == 1);
meanResp(1,2) = mean(resp(:,2) == 2);
bar(meanResp);
axis([0, 3, 0, 1])
ylabel('P(Response)')
set(gca,'xtick',[1,2],'xticklabel',{'Scene','Face'})
box off; set(gca,'TickLength',[0 0]);
set(gca,'fontsize', 12);

%% Drift Model
load('../data/model_outputs/simulations/sim_traj/drift.mat');

% Trajectory
subplot(6,6,[25:26])
hold on
plot(traj(:,1:20),'LineWidth', 1.2)
axis([0, 4000, 0, 2.4]);
set(gca,'xtick',0:500:4000,'xticklabel',0:0.5:4);
set(gca,'ytick',1.2:1.2:2.4);

set(gca,'fontsize', 12);
box on; set(gca,'TickLength',[0 0]);


% Histogram 1
subplot(6,6,[19:20])
histfit(resp(resp(:,2) == 1), 20, 'kernel');
axis([0, 4, 0, nTrials/10]);
set(gca,'xtick',[])
set(gca,'fontsize', 12);
box on; set(gca,'TickLength',[0 0]);

% Histogram 2
subplot(6,6,[31:32])
histfit(resp(resp(:,2) == 2), 20, 'kernel');
axis([0, 4, 0, nTrials/10]);
set(gca,'Ydir','reverse')
set(gca,'xtick',[])
set(gca,'fontsize', 12);
box on; set(gca,'TickLength',[0 0]);

% Mean Response
subplot(6,6,[21,27,33])
meanResp(1,1) = mean(resp(:,2) == 1);
meanResp(1,2) = mean(resp(:,2) == 2);
bar(meanResp);
axis([0, 3, 0, 1])
ylabel('P(Response)')
set(gca,'xtick',[1,2],'xticklabel',{'Scene','Face'})
box off; set(gca,'TickLength',[0 0]);
set(gca,'fontsize', 12);

%% Full Model
load('../data/model_outputs/simulations/sim_traj/full.mat');

% Trajectory
subplot(6,6,[28:29])
hold on
plot(traj(:,1:20),'LineWidth', 1.2)
axis([0, 4000, 0, 2.4]);
set(gca,'xtick',0:500:4000,'xticklabel',0:0.5:4);
set(gca,'ytick',1.2:1.2:2.4);

set(gca,'fontsize', 12);
box on; set(gca,'TickLength',[0 0]);


% Histogram 1
subplot(6,6,[22:23])
histfit(resp(resp(:,2) == 1), 20, 'kernel');
axis([0, 4, 0, nTrials/10]);
set(gca,'xtick',[])
set(gca,'fontsize', 12);
box on; set(gca,'TickLength',[0 0]);

% Histogram 2
subplot(6,6,[34:35])
histfit(resp(resp(:,2) == 2), 20, 'kernel');
axis([0, 4, 0, nTrials/10]);
set(gca,'Ydir','reverse')
set(gca,'xtick',[])
set(gca,'fontsize', 12);
box on; set(gca,'TickLength',[0 0]);

% Mean Response
subplot(6,6,[24,30,36])
meanResp(1,1) = mean(resp(:,2) == 1);
meanResp(1,2) = mean(resp(:,2) == 2);
bar(meanResp);
axis([0, 3, 0, 1])
ylabel('P(Response)')
set(gca,'xtick',[1,2],'xticklabel',{'Scene','Face'})
box off; set(gca,'TickLength',[0 0]);
set(gca,'fontsize', 12);

fig_dest = sprintf('../data/model_outputs/simulations/sim_traj/sim_traj.eps');
set(gcf,'paperpositionmode','auto');
print('-depsc',fig_dest);