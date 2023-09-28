h_fig = figure('Name', 'joint_vel_plot');
plot(out.mpc_output.Data(:,7),out.mpc_output.Data(:,1),'LineWidth',2.2,'LineStyle','-.');
hold on;
plot(out.mpc_output.Data(:,7),out.mpc_output.Data(:,2),'LineWidth',2.2,'LineStyle','-.');
hold on;
plot(out.mpc_output.Data(:,7),out.mpc_output.Data(:,3),'LineWidth',2.2,'LineStyle','-.');
hold on;
plot(out.mpc_output.Data(:,7),out.mpc_output.Data(:,4),'LineWidth',2.2,'LineStyle','-.');
hold on;
plot(out.mpc_output.Data(:,7),out.mpc_output.Data(:,5),'LineWidth',2.2,'LineStyle','-.');
hold on;
plot(out.mpc_output.Data(:,7),out.mpc_output.Data(:,6),'LineWidth',2.2,'LineStyle','-.');
hold on;
set(gca,'XLim',[0 out.mpc_output.Data(end,7)],'FontSize',16);%325
set(gca,'YLim',[-0.5, 0.5],'FontSize',16);%650
set(gca,'YTick',-0.5:0.1:0.5);
legend({'$joint1_v$','$joint2_v$','$joint3_v$','$joint4_v$','$joint5_v$','$joint6_v$'},'FontSize',16,'Interpreter','latex','NumColumns',4);
xlabel('时间(s)','FontSize',20,'Interpreter','tex');
ylabel('关节速度(rad/s)','FontSize',20,'Interpreter','tex');
hold on;
saveas(h_fig, h_fig.Name, 'fig')
saveas(h_fig, h_fig.Name, 'svg')
