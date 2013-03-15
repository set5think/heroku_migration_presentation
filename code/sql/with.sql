#START:with
WITH hassan_cards AS (
  SELECT id, member_ids FROM postrello.cards WHERE
  ARRAY[(SELECT id FROM postrello.members WHERE full_name = 'Hassan Shahid')] <@ member_ids
), active_hassan_cards AS (
  SELECT id, member_ids FROM hassan_cards WHERE active IS TRUE
) SELECT id, member_ids FROM active_hassan_cards WHERE
  NOT ARRAY[(SELECT id FROM postrello.members WHERE full_name = 'Lukas Eklund')] <@ member_ids;
#END:with

#START:recursive
WITH RECURSIVE t(n) AS (
    VALUES (1) UNION ALL SELECT n+1 FROM t WHERE n < 100
) SELECT sum(n) FROM t;
#END:recursive
