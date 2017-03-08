function [t, x, Fs] = get_NCSN_Calaveras_7ch_1wk()

% Read in data from NCSN Calaveras, 5 stations, 7 channels, decimated 5 times
% Band pass 4-10 Hz on CCOB, 2-10 Hz for other stations
path(path,'./MatSAC');
nch = 7;
[t, x(:,1), SAChdr] = fget_sac('../data/ncsn/1week.2011.008.00.00.00.0000.deci5.NC.CCOB..EHE.D.SAC.bp4to10');
[t, x(:,2), SAChdr] = fget_sac('../data/ncsn/1week.2011.008.00.00.00.0000.deci5.NC.CCOB..EHN.D.SAC.bp4to10');
[t, x(:,3), SAChdr] = fget_sac('../data/ncsn/1week.2011.008.00.00.00.0000.deci5.NC.CCOB..EHZ.D.SAC.bp4to10');
[t, x(:,4), SAChdr] = fget_sac('../data/ncsn/1week.2011.008.00.00.00.0000.deci5.NC.CADB..EHZ.D.SAC.bp2to10');
[t, x(:,5), SAChdr] = fget_sac('../data/ncsn/1week.2011.008.00.00.00.0000.deci5.NC.CAO..EHZ.D.SAC.bp2to10');
[t, x(:,6), SAChdr] = fget_sac('../data/ncsn/1week.2011.008.00.00.00.0000.deci5.NC.CHR..EHZ.D.SAC.bp2to10');
[t, x(:,7), SAChdr] = fget_sac('../data/ncsn/1week.2011.008.00.00.00.0000.deci5.NC.CML..EHZ.D.SAC.bp2to6');
Fs = 20; % sampling rate

end