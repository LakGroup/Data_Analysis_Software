function image_flip_color(data)
for k=1:length(data)
    for j = 1:length(data{k}.image)
        data{k}.image{j} = abs(max(data{k}.image{j})-data{k}.image{j});
    end
end
image_plot(data)
end