function AdalinePlot(x, t, figureCount, desc, weights)

figure(figureCount)
clf;
hold on;
grid on;
title(desc);
axis([-1 1 -1 1]);

for i=1:size(x,1)
    if t(i) == 1
        scatter(x(i,1),x(i,2), 'MarkerEdgeColor', [0.84 0.32 0.25]);
    else
        scatter(x(i,1),x(i,2), 'MarkerEdgeColor', [0.2 0.45 0.67]);
    end
end

plot([-3 3],[0 0], 'color', [0.3 0.3 0.3]);
plot([0 0],[-3 3], 'color', [0.3 0.3 0.3]);

xDomain = [-2 2];
yDomain = -(xDomain.*weights(1) + weights(3)) / weights(2);
plot(xDomain, yDomain);

end