h_fig = figure('Name', 'error_plot');
plot(out.pixel_error.Data(:,9),out.pixel_error.Data(:,1),'LineWidth',2.2,'LineStyle','-.');
hold on;
plot(out.pixel_error.Data(:,9),out.pixel_error.Data(:,2),'LineWidth',2.2,'LineStyle','-.');
hold on;
plot(out.pixel_error.Data(:,9),out.pixel_error.Data(:,3),'LineWidth',2.2,'LineStyle','-.');
hold on;
plot(out.pixel_error.Data(:,9),out.pixel_error.Data(:,4),'LineWidth',2.2,'LineStyle','-.');
hold on;
plot(out.pixel_error.Data(:,9),out.pixel_error.Data(:,5),'LineWidth',2.2,'LineStyle','-.');
hold on;
plot(out.pixel_error.Data(:,9),out.pixel_error.Data(:,6),'LineWidth',2.2,'LineStyle','-.');
hold on;
plot(out.pixel_error.Data(:,9),out.pixel_error.Data(:,7),'LineWidth',2.2,'LineStyle','-.');
hold on;
plot(out.pixel_error.Data(:,9),out.pixel_error.Data(:,8),'LineWidth',2.2,'LineStyle','-.');
hold on;
set(gca,'XLim',[0 out.pixel_error.Data(end,9)],'FontSize',16);
set(gca,'YLim',[-250, 250],'FontSize',16);
set(gca,'YTick',-250:50:250);
legend({'$eu_1$','$ev_1$','$eu_2$','$ev_2$','$eu_3$','$ev_3$','$eu_4$','$ev_4$'},'FontSize',16,'Interpreter','latex','NumColumns',4);
xlabel('Time (s)','FontSize',20,'Interpreter','tex');
ylabel('Error (pixel)','FontSize',20,'Interpreter','tex');
hold on;
saveas(h_fig, h_fig.Name, 'fig')
saveas(h_fig, h_fig.Name, 'svg')
