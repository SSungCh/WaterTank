function localRenew()

  pozyx = 500;
  
  scatter(pozyx, pozyx, 150, 'p', 'r', 'filled');
  hold on
  scatter(0, pozyx, 150, 'p', 'r', 'filled');
  hold on
  scatter(0, 0, 150, 'p', 'r', 'filled');
  hold on
  scatter(pozyx, 0, 150, 'p', 'r', 'filled');
  hold on
  set(gca,'XTICK', [0:10:pozyx], 'YTICK', [0:10:pozyx], 'XTickLabel',[],'YTickLabel',[], 'Color', [1, 1, 1], 'XLim',[0,pozyx], 'YLim',[0,pozyx]);
  grid on
  axis square


end

