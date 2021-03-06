% Generating Feature Matrix

% IMU_EMG_eating = [IMU_fork_sampled_eating_200(:,3:12)  EMG_fork_sampled_eating_200(:,3:end)];
% 
% IMU_EMG_non_eating = [IMU_fork_sampled_non_eating_200(:,3:12)   EMG_fork_sampled_non_eating_200(:,3:end)];
% 
% full_feature_matrix = [IMU_EMG_eating ; IMU_EMG_non_eating];

%[coeff,score,latent,tsquared,explained,mu] = pca(full_feature_matrix(:,1:end-1));

% reconstructed_matrix = full_feature_matrix(:,1:end-1) * coeff(:,1:4);



% hold on
% pc =4 ;
% xlabel("Sample")
% ylabel("Value")
% title("PCA4")
% 
% plot(1:201,reconstructed_matrix(1:201,pc))
% plot(1:201,reconstructed_matrix(202:end,pc))
% legend('Eating','Not Eating')
% hold off
hold on
title('Analysis of PCA')
ylabel("Percentage Variance")
xlabel("Principal Component")
bar(1:18,explained)

hold off