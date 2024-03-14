function denoised_image = noice(input_image)

filter_size = 3;

R = input_image(:, :, 1);
G = input_image(:, :, 2);
B = input_image(:, :, 3);

% Apply a median filter for denoising each channel
R_denoised = medfilt2(R, [filter_size filter_size]);
G_denoised = medfilt2(G, [filter_size filter_size]);
B_denoised = medfilt2(B, [filter_size filter_size]);

% Combine the denoised channels
denoised_image = cat(3, R_denoised, G_denoised, B_denoised);



end