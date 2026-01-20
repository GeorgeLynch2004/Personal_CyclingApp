# INSERT IGNORE INTO workouts
# (created_at, name, description, structure, target_zones)
# VALUES
#     ('2025-01-04 06:30:00', 'Morning Endurance', 'Steady early-morning ride',
#      JSON_ARRAY(
#              JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 80),
#              JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 85)
#      ),
#      JSON_ARRAY(2,3)
#     ),
#     ('2025-01-05 17:00:00', 'Hill Repeats', 'Climbing-focused intervals',
#      JSON_ARRAY(
#              JSON_OBJECT('duration', 600, 'powerZone', 5, 'targetCadence', 60),
#              JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 65),
#              JSON_OBJECT('duration', 600, 'powerZone', 5, 'targetCadence', 60)
#      ),
#      JSON_ARRAY(4,5)
#     ),
#     ('2025-01-06 08:00:00', 'Sweet Spot Session', 'Moderate effort for building FTP',
#      JSON_ARRAY(
#              JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 75),
#              JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 80)
#      ),
#      JSON_ARRAY(3)
#     ),
#     ('2025-01-07 07:00:00', 'VO2 Max Intervals', 'High-intensity short bursts',
#      JSON_ARRAY(
#              JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 90),
#              JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 90),
#              JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 90),
#              JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 85)
#      ),
#      JSON_ARRAY(4,5)
#     ),
#     ('2025-01-08 18:30:00', 'Recovery Spin', 'Easy spin to aid recovery',
#      JSON_ARRAY(
#              JSON_OBJECT('duration', 1800, 'powerZone', 1, 'targetCadence', 85)
#      ),
#      JSON_ARRAY(1)
#     ),
#     ('2025-01-09 06:45:00', 'Threshold Ride', 'Sustained efforts at threshold',
#      JSON_ARRAY(
#              JSON_OBJECT('duration', 900, 'powerZone', 4, 'targetCadence', 80),
#              JSON_OBJECT('duration', 900, 'powerZone', 4, 'targetCadence', 85),
#              JSON_OBJECT('duration', 900, 'powerZone', 4, 'targetCadence', 80)
#      ),
#      JSON_ARRAY(4)
#     ),
#     ('2025-01-10 07:15:00', 'Endurance Long Ride', 'Build aerobic base with long ride',
#      JSON_ARRAY(
#              JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 75),
#              JSON_OBJECT('duration', 1800, 'powerZone', 3, 'targetCadence', 80)
#      ),
#      JSON_ARRAY(2,3)
#     ),
#     ('2025-01-11 08:30:00', 'Tempo Intervals', 'Sustained moderate efforts',
#      JSON_ARRAY(
#              JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 85),
#              JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 90),
#              JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 80)
#      ),
#      JSON_ARRAY(3,4)
#     ),
#     ('2025-01-12 06:00:00', 'Pyramid Intervals', 'Increasing and decreasing intensity',
#      JSON_ARRAY(
#              JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 80),
#              JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 85),
#              JSON_OBJECT('duration', 900, 'powerZone', 5, 'targetCadence', 90),
#              JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 85),
#              JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 80)
#      ),
#      JSON_ARRAY(3,4,5)
#     ),
#     ('2025-01-13 17:00:00', 'Evening Recovery', 'Relaxed spin for recovery',
#      JSON_ARRAY(
#              JSON_OBJECT('duration', 1800, 'powerZone', 1, 'targetCadence', 80)
#      ),
#      JSON_ARRAY(1)
#     ),
#     ('2025-01-14 07:30:00', 'Over-Under Intervals', 'Alternating above and below threshold',
#      JSON_ARRAY(
#              JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 85),
#              JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 80),
#              JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 85),
#              JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 80)
#      ),
#      JSON_ARRAY(3,4)
#     ),
#     ('2025-01-15 06:45:00', 'Steady Endurance', 'Long ride at steady pace',
#      JSON_ARRAY(
#              JSON_OBJECT('duration', 2400, 'powerZone', 2, 'targetCadence', 80),
#              JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 85)
#      ),
#      JSON_ARRAY(2,3)
#     ),
#     ('2025-01-16 18:00:00', 'High-Cadence Drill', 'Focus on spinning fast',
#      JSON_ARRAY(
#              JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 100),
#              JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 95),
#              JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 100)
#      ),
#      JSON_ARRAY(2,3)
#     ),
#     ('2025-01-17 07:15:00', 'Sweet Spot Builder', 'Long sweet spot efforts',
#      JSON_ARRAY(
#              JSON_OBJECT('duration', 1500, 'powerZone', 3, 'targetCadence', 80),
#              JSON_OBJECT('duration', 1500, 'powerZone', 3, 'targetCadence', 85)
#      ),
#      JSON_ARRAY(3)
#     ),
#     ('2025-01-18 06:30:00', 'VO2 Max Challenge', 'Short, very hard intervals',
#      JSON_ARRAY(
#              JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 90),
#              JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 90),
#              JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 95),
#              JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 85)
#      ),
#      JSON_ARRAY(4,5)
#     ),
#     ('2025-01-19 08:00:00', 'Threshold Plus', 'Extended efforts at threshold',
#      JSON_ARRAY(
#              JSON_OBJECT('duration', 1200, 'powerZone', 4, 'targetCadence', 85),
#              JSON_OBJECT('duration', 1200, 'powerZone', 4, 'targetCadence', 85),
#              JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 80)
#      ),
#      JSON_ARRAY(3,4)
#     ),
#     ('2025-01-20 18:45:00', 'Easy Spin', 'Relaxed ride to finish the day',
#      JSON_ARRAY(
#              JSON_OBJECT('duration', 1800, 'powerZone', 1, 'targetCadence', 80)
#      ),
#      JSON_ARRAY(1)
#     ),
#     ('2025-01-21 07:00:00', 'Endurance Mix', 'Combination of moderate and easy efforts',
#      JSON_ARRAY(
#              JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 80),
#              JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 85),
#              JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 80)
#      ),
#      JSON_ARRAY(2,3)
#     ),
#     ('2025-01-22 06:30:00', 'Pyramid VO2 Max', 'Increasing then decreasing high-intensity',
#      JSON_ARRAY(
#              JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 85),
#              JSON_OBJECT('duration', 600, 'powerZone', 5, 'targetCadence', 90),
#              JSON_OBJECT('duration', 900, 'powerZone', 5, 'targetCadence', 95),
#              JSON_OBJECT('duration', 600, 'powerZone', 5, 'targetCadence', 90),
#              JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 85)
#      ),
#      JSON_ARRAY(4,5)
#     );

insert ignore into users (created_at, username, email, password, usertype) values
('2025-01-04 06:30:00','user', 'user@email.com', '$2a$10$/RHeVS4SViu1MxNkW9dIMugnqWuJLVWHK02rMogZ1Rxy3i/qBMfwK', 'USER'),
('2025-01-04 06:30:00','member', 'member@email.com', '$2a$10$/RHeVS4SViu1MxNkW9dIMugnqWuJLVWHK02rMogZ1Rxy3i/qBMfwK', 'MEMBER'),
('2025-01-04 06:30:00','admin', 'admin@email.com', '$2a$10$/RHeVS4SViu1MxNkW9dIMugnqWuJLVWHK02rMogZ1Rxy3i/qBMfwK', 'ADMIN');

