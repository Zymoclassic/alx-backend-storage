-- This SQL script select origin column, and sum of fans column as nb_fans, grouped by origin and ordered by nb_fans descending from 'metal_bands' table.

-- Create a temporary table to store the rankings
CREATE TEMPORARY TABLE temp_ranking AS
SELECT origin, SUM(nb_fans) AS total_fans
FROM metal_bands
GROUP BY origin;

-- Add a rank column based on the total number of fans
ALTER TABLE temp_ranking
ADD COLUMN rank INT AUTO_INCREMENT PRIMARY KEY;

-- Select the final ranking
SELECT origin, total_fans AS nb_fans, rank
FROM temp_ranking
ORDER BY total_fans DESC;

-- Drop the temporary table
DROP TEMPORARY TABLE IF EXISTS temp_ranking;
