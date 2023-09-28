h_fig = figure('Name', 'image_plane_plot');
a_an_1 = out.x.Data;
uv0_start=[a_an_1(1,1),a_an_1(1,2)];
uv1_start=[a_an_1(1,3),a_an_1(1,4)];
uv2_start=[a_an_1(1,5),a_an_1(1,6)];
uv3_start=[a_an_1(1,7),a_an_1(1,8)];
uv_ustart=[uv0_start(1),uv1_start(1),uv2_start(1),uv3_start(1),uv0_start(1)];
uv_vstart=[uv0_start(2),uv1_start(2),uv2_start(2),uv3_start(2),uv0_start(2)];
plot(uv_ustart,uv_vstart,'k--','LineWidth',1.2);
hold on;
uv0_end=[a_an_1(end,1),a_an_1(end,2)];
uv1_end=[a_an_1(end,3),a_an_1(end,4)];
uv2_end=[a_an_1(end,5),a_an_1(end,6)];
uv3_end=[a_an_1(end,7),a_an_1(end,8)];
uv_uend=[uv0_end(1),uv1_end(1),uv2_end(1),uv3_end(1),uv0_end(1)];
uv_vend=[uv0_end(2),uv1_end(2),uv2_end(2),uv3_end(2),uv0_end(2)];
plot(uv_uend,uv_vend,'k','LineWidth',1.2);
hold on;
plot(a_an_1(:,1),a_an_1(:,2),'Color',[246/255 83/255 20/255],'LineWidth',2.2);%the pixel trajectory line
hold on;
plot(a_an_1(1,1),a_an_1(1,2),'Color',[246/255 83/255 20/255],'Marker','*');%start point
plot(a_an_1(end,1),a_an_1(end,2),'Color',[246/255 83/255 20/255],'Marker','o');%start point
hold on;
plot(a_an_1(:,3),a_an_1(:,4),'Color',[124/255 187/255 0],'LineWidth',2.2);
plot(a_an_1(1,3),a_an_1(1,4),'Color',[124/255 187/255 0],'Marker','*');
plot(a_an_1(end,3),a_an_1(end,4),'Color',[124/255 187/255 0],'Marker','o');
hold on;
plot(a_an_1(:,5),a_an_1(:,6),'Color',[0 161/255 241/255],'LineWidth',2.2);
plot(a_an_1(1,5),a_an_1(1,6),'Color',[0 161/255 241/255],'Marker','*');
plot(a_an_1(end,5),a_an_1(end,6),'Color',[0 161/255 241/255],'Marker','o');
hold on;
plot(a_an_1(:,7),a_an_1(:,8),'Color',[1 187/255 0],'LineWidth',2.2);
plot(a_an_1(1,7),a_an_1(1,8),'Color',[1 187/255 0],'Marker','*');
plot(a_an_1(end,7),a_an_1(end,8),'Color',[1 187/255 0],'Marker','o');
axis ij;
xlabel('pixels','FontSize',20,'Interpreter','tex');
ylabel('pixels','FontSize',20,'Interpreter','tex');
set(gca,'XLim',[-320 320],'FontSize',16);
set(gca,'YLim',[-240, 240],'FontSize',16);
set(gca,'XTick',-320:80:320);
set(gca,'YTick',-240:80:240);
hold off;
saveas(h_fig, h_fig.Name, 'fig')
saveas(h_fig, h_fig.Name, 'svg')
