% Load matrix 'X'
load user_artist_matrix_with_nans.mat
missing_idxs = find(isnan(X));

% Now this is where the magic should happen!
%...
predictions = randi(2,length(missing_idxs),1)-1; % Random prediction

% Print the predictions to file
f = fopen('my_submission.csv', 'w');
fprintf(f,'Id,Prediction\n');
for i = 1:length(missing_idxs)
    fprintf(f,'%d,%d\n',missing_idxs(i),predictions(i));
end
fclose(f);