SELECT "schools"."city", COUNT(*) AS "school_count"
FROM "schools"
WHERE "schools"."type" = 'Public School'
GROUP BY "schools"."city"
HAVING COUNT(*) <= 3
ORDER BY "school_count" DESC, "schools"."city" ASC;
