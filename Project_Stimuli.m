
bkgd = ones(32);
length = 15;
angle1 = 0;
angle2 = 0;

line1x1 = 0;
line1y1 = 0;

line2x1 = 0;
line2y1 = 0;

mkdir('Stimuli');
%coordsindex = 1;

stimIndex = 1;
for i = 1:12
    line1x2 = line1x1 + (length*cosd(angle1));
    line1y2 = line1y1 + (length*sind(angle1));
    angle1 = angle1 - 30;
   
    %line([line1x1 line1x2],[line1y1 line1y2], 'Color', 'r', 'LineWidth', 2)
    
    %line1coords(i, 1:4) = [line1x1 line1y1 line1x2 line1y2];
    
    for j = 1:12
        line2x2 = line2x1 + (length*cosd(angle2));
        line2y2 = line2y1 + (length*sind(angle2));
        
        angle2 = angle2 - 30;
        %line2coords(j, 1:4) = [line2x1 line2y1 line2x2 line2y2];
        
        %fprintf('%d %d %d %d %d %d %d %d \n', line1x1, line1y1, line1x2, line1y2, line2x2, line2y2, line2x2, line2y2)
        
        tempStimulus = insertShape(bkgd, 'Line', [line1x1+16, line1y1+16, line1x2+16, line1y2+16], 'LineWidth', 1, 'Color', 'black');
        stimulus = insertShape(tempStimulus, 'Line', [line2x1+16, line2y1+16, line2x2+16, line2y2+16], 'LineWidth', 1, 'Color', 'black');
        

        %stimuliarray{stimIndex} = stimulus;
        
        % To save only the valid stimuli, remove this to get all 144
        if i - j >= 0
            continue 
        end
        
        filename = strcat('Stimuli/', 'stimulus', num2str(stimIndex));
        save(filename, 'stimulus');
        
        
%          figure;
%          imshow(stimulus)
%          title(filename);
     
        stimIndex = stimIndex + 1;
    end
end

% ind = 1;
% uniquestims = unique(cellstr(stimuliarray));
% for k = 1:size(uniquestims, 2)   
%     filename = strcat('Stimuli/', 'stimulus', num2str(ind));
%     save(filename, 'stimulus');
%     ind = ind + 1
% end