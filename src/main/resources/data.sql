TRUNCATE TABLE workouts;

INSERT IGNORE INTO workouts
(created_at, name, description, structure, target_zones)
VALUES
    ('2025-01-04 06:30:00', 'Morning Endurance', 'Steady early-morning ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 85)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-01-05 17:00:00', 'Hill Repeats', 'Climbing-focused intervals',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 5, 'targetCadence', 60),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 65),
             JSON_OBJECT('duration', 600, 'powerZone', 5, 'targetCadence', 60)
     ),
     JSON_ARRAY(4,5)
    ),
    ('2025-01-06 08:00:00', 'Sweet Spot Session', 'Moderate effort for building FTP',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 80)
     ),
     JSON_ARRAY(3)
    ),
    ('2025-01-07 07:00:00', 'VO2 Max Intervals', 'High-intensity short bursts',
     JSON_ARRAY(
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 85)
     ),
     JSON_ARRAY(4,5)
    ),
    ('2025-01-08 18:30:00', 'Recovery Spin', 'Easy spin to aid recovery',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1800, 'powerZone', 1, 'targetCadence', 85)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-01-09 06:45:00', 'Threshold Ride', 'Sustained efforts at threshold',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 4, 'targetCadence', 80),
             JSON_OBJECT('duration', 900, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 900, 'powerZone', 4, 'targetCadence', 80)
     ),
     JSON_ARRAY(4)
    ),
    ('2025-01-10 07:15:00', 'Endurance Long Ride', 'Build aerobic base with long ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1800, 'powerZone', 3, 'targetCadence', 80)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-01-11 08:30:00', 'Tempo Intervals', 'Sustained moderate efforts',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 85),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 90),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 80)
     ),
     JSON_ARRAY(3,4)
    ),
    ('2025-01-12 06:00:00', 'Pyramid Intervals', 'Increasing and decreasing intensity',
     JSON_ARRAY(
             JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 900, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 80)
     ),
     JSON_ARRAY(3,4,5)
    ),
    ('2025-01-13 17:00:00', 'Evening Recovery', 'Relaxed spin for recovery',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1800, 'powerZone', 1, 'targetCadence', 80)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-01-14 07:30:00', 'Over-Under Intervals', 'Alternating above and below threshold',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 80)
     ),
     JSON_ARRAY(3,4)
    ),
    ('2025-01-15 06:45:00', 'Steady Endurance', 'Long ride at steady pace',
     JSON_ARRAY(
             JSON_OBJECT('duration', 2400, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 85)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-01-16 18:00:00', 'High-Cadence Drill', 'Focus on spinning fast',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 100),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 95),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 100)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-01-17 07:15:00', 'Sweet Spot Builder', 'Long sweet spot efforts',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1500, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 1500, 'powerZone', 3, 'targetCadence', 85)
     ),
     JSON_ARRAY(3)
    ),
    ('2025-01-18 06:30:00', 'VO2 Max Challenge', 'Short, very hard intervals',
     JSON_ARRAY(
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 95),
             JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 85)
     ),
     JSON_ARRAY(4,5)
    ),
    ('2025-01-19 08:00:00', 'Threshold Plus', 'Extended efforts at threshold',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 1200, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 80)
     ),
     JSON_ARRAY(3,4)
    ),
    ('2025-01-20 18:45:00', 'Easy Spin', 'Relaxed ride to finish the day',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1800, 'powerZone', 1, 'targetCadence', 80)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-01-21 07:00:00', 'Endurance Mix', 'Combination of moderate and easy efforts',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 85),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 80)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-01-22 06:30:00', 'Pyramid VO2 Max', 'Increasing then decreasing high-intensity',
     JSON_ARRAY(
             JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 600, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 900, 'powerZone', 5, 'targetCadence', 95),
             JSON_OBJECT('duration', 600, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 85)
     ),
     JSON_ARRAY(4,5)
    ),
    ('2025-02-07 07:00:00', 'Morning Power Builder', 'Progressive power increases',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 900, 'powerZone', 4, 'targetCadence', 85)
     ),
     JSON_ARRAY(2,3,4)
    ),
    ('2025-02-08 08:30:00', 'Weekend Endurance', 'Long weekend base building',
     JSON_ARRAY(
             JSON_OBJECT('duration', 3000, 'powerZone', 2, 'targetCadence', 77),
             JSON_OBJECT('duration', 1500, 'powerZone', 3, 'targetCadence', 82)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-02-09 06:15:00', 'Anaerobic Capacity', 'Short intense efforts above threshold',
     JSON_ARRAY(
             JSON_OBJECT('duration', 240, 'powerZone', 6, 'targetCadence', 105),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 6, 'targetCadence', 105),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 6, 'targetCadence', 105)
     ),
     JSON_ARRAY(2,6)
    ),
    ('2025-02-10 17:45:00', 'Easy Commute', 'Light spinning commute home',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 83)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-02-11 07:30:00', 'Threshold Ladder', 'Ascending threshold intervals',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 82),
             JSON_OBJECT('duration', 900, 'powerZone', 4, 'targetCadence', 84),
             JSON_OBJECT('duration', 1200, 'powerZone', 4, 'targetCadence', 86)
     ),
     JSON_ARRAY(4)
    ),
    ('2025-02-12 06:00:00', 'High-Low Mix', 'Alternating high and low intensity',
     JSON_ARRAY(
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 92)
     ),
     JSON_ARRAY(2,5)
    ),
    ('2025-02-13 18:15:00', 'Gentle Recovery', 'Easy pedaling for recovery',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1800, 'powerZone', 1, 'targetCadence', 78)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-02-14 07:00:00', 'Sweet Spot Repeats', 'Multiple sweet spot blocks',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 81),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 81),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 81)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-02-15 08:00:00', 'Climbing Simulator', 'Sustained climbing efforts',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 4, 'targetCadence', 65),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 70),
             JSON_OBJECT('duration', 900, 'powerZone', 4, 'targetCadence', 65),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 70)
     ),
     JSON_ARRAY(3,4)
    ),
    ('2025-02-16 06:30:00', 'VO2 Pyramid', 'Pyramid structure at VO2 max',
     JSON_ARRAY(
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 88),
             JSON_OBJECT('duration', 360, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 480, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 360, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 88)
     ),
     JSON_ARRAY(5)
    ),
    ('2025-02-17 17:30:00', 'Active Rest', 'Very light active recovery',
     JSON_ARRAY(
             JSON_OBJECT('duration', 2400, 'powerZone', 1, 'targetCadence', 80)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-02-18 07:15:00', 'Tempo Cruise', 'Steady tempo effort',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1500, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 1500, 'powerZone', 3, 'targetCadence', 84)
     ),
     JSON_ARRAY(3)
    ),
    ('2025-02-19 06:45:00', 'Sprint Practice', 'Multiple sprint efforts',
     JSON_ARRAY(
             JSON_OBJECT('duration', 150, 'powerZone', 6, 'targetCadence', 115),
             JSON_OBJECT('duration', 450, 'powerZone', 1, 'targetCadence', 75),
             JSON_OBJECT('duration', 150, 'powerZone', 6, 'targetCadence', 115),
             JSON_OBJECT('duration', 450, 'powerZone', 1, 'targetCadence', 75),
             JSON_OBJECT('duration', 150, 'powerZone', 6, 'targetCadence', 115),
             JSON_OBJECT('duration', 450, 'powerZone', 1, 'targetCadence', 75)
     ),
     JSON_ARRAY(1,6)
    ),
    ('2025-02-20 18:00:00', 'Evening Easy', 'Easy evening spin',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1500, 'powerZone', 1, 'targetCadence', 81)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-02-21 07:30:00', 'Endurance Variation', 'Variable endurance efforts',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 82)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-02-22 08:15:00', 'Long Base Ride', 'Extended aerobic base building',
     JSON_ARRAY(
             JSON_OBJECT('duration', 4200, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1800, 'powerZone', 3, 'targetCadence', 80)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-02-23 06:00:00', 'Micro Intervals', 'Very short high-intensity bursts',
     JSON_ARRAY(
             JSON_OBJECT('duration', 30, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 30, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 30, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 30, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 30, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 30, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 30, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 30, 'powerZone', 2, 'targetCadence', 75)
     ),
     JSON_ARRAY(2,6)
    ),
    ('2025-02-24 17:45:00', 'Relaxed Spin', 'Relaxed easy spinning',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1800, 'powerZone', 1, 'targetCadence', 79)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-02-25 07:00:00', 'Over-Under Extended', 'Long over-under intervals',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 4, 'targetCadence', 84),
             JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 900, 'powerZone', 4, 'targetCadence', 84),
             JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 900, 'powerZone', 4, 'targetCadence', 84)
     ),
     JSON_ARRAY(3,4)
    ),
    ('2025-02-26 06:30:00', 'Cadence Focus', 'High cadence endurance work',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 95),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 100),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 95)
     ),
     JSON_ARRAY(2)
    ),
    ('2025-02-27 18:30:00', 'Recovery Roll', 'Easy recovery rolling',
     JSON_ARRAY(
             JSON_OBJECT('duration', 2100, 'powerZone', 1, 'targetCadence', 82)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-02-28 07:15:00', 'Threshold Blocks', 'Solid threshold blocks',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 4, 'targetCadence', 83),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 4, 'targetCadence', 83),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75)
     ),
     JSON_ARRAY(2,4)
    ),
    ('2025-03-01 08:00:00', 'Weekend Warrior', 'Big Saturday morning ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 2400, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 1800, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 1200, 'powerZone', 4, 'targetCadence', 86)
     ),
     JSON_ARRAY(2,3,4)
    ),
    ('2025-03-02 06:45:00', 'Hill Simulation', 'Simulated hill climbing',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 5, 'targetCadence', 62),
             JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 5, 'targetCadence', 62),
             JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 5, 'targetCadence', 62)
     ),
     JSON_ARRAY(3,5)
    ),
    ('2025-03-03 17:30:00', 'Light Recovery', 'Light spinning for recovery',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1500, 'powerZone', 1, 'targetCadence', 84)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-03-04 07:00:00', 'Sweet Spot Trio', 'Three sweet spot intervals',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 400, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 400, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 84)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-03-05 06:15:00', 'Power Intervals', 'High power short intervals',
     JSON_ARRAY(
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75)
     ),
     JSON_ARRAY(2,5)
    ),
    ('2025-03-06 18:00:00', 'Easy Evening Roll', 'Easy roll to end the day',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1800, 'powerZone', 1, 'targetCadence', 80)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-03-07 07:30:00', 'Tempo Progression', 'Progressive tempo intervals',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 1500, 'powerZone', 3, 'targetCadence', 86)
     ),
     JSON_ARRAY(3)
    ),
    ('2025-03-08 08:15:00', 'Aerobic Endurance', 'Long aerobic capacity ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 3600, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 81)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-03-09 06:00:00', 'VO2 Repeats', 'Repeated VO2 max efforts',
     JSON_ARRAY(
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 91),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 91),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 91),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 91)
     ),
     JSON_ARRAY(2,5)
    ),
    ('2025-03-10 17:45:00', 'Gentle Cruise', 'Gentle cruising pace',
     JSON_ARRAY(
             JSON_OBJECT('duration', 2100, 'powerZone', 1, 'targetCadence', 83)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-03-11 07:00:00', 'Threshold Builder', 'Building threshold capacity',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 4, 'targetCadence', 82),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 1500, 'powerZone', 4, 'targetCadence', 84)
     ),
     JSON_ARRAY(3,4)
    ),
    ('2025-03-12 06:30:00', 'Cadence Drills', 'Focus on cadence variation',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 70),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 85),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 100),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 85)
     ),
     JSON_ARRAY(2)
    ),
    ('2025-03-13 18:30:00', 'Recovery Pedal', 'Easy recovery pedaling',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1800, 'powerZone', 1, 'targetCadence', 81)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-03-14 07:15:00', 'Mixed Zones', 'Training across multiple zones',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 77),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 90)
     ),
     JSON_ARRAY(2,3,4,5)
    ),
    ('2025-03-15 08:00:00', 'Grand Fondo Prep', 'Long endurance for event prep',
     JSON_ARRAY(
             JSON_OBJECT('duration', 3000, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 1800, 'powerZone', 3, 'targetCadence', 81),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-03-16 06:45:00', 'Attack Intervals', 'Simulated race attacks',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 180, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 420, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 180, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 420, 'powerZone', 4, 'targetCadence', 85)
     ),
     JSON_ARRAY(3,4,6)
    ),
    ('2025-03-17 17:30:00', 'Easy Spin Down', 'Easy cool down ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1500, 'powerZone', 1, 'targetCadence', 78)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-03-18 07:00:00', 'Sweet Spot Stack', 'Stacked sweet spot intervals',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1500, 'powerZone', 3, 'targetCadence', 81),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1500, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1500, 'powerZone', 3, 'targetCadence', 85)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-03-19 06:15:00', 'Sprint Ladder', 'Increasing sprint durations',
     JSON_ARRAY(
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 108),
             JSON_OBJECT('duration', 480, 'powerZone', 1, 'targetCadence', 75),
             JSON_OBJECT('duration', 180, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 480, 'powerZone', 1, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 6, 'targetCadence', 112)
     ),
     JSON_ARRAY(1,6)
    ),
    ('2025-03-20 18:00:00', 'Soft Pedal', 'Very soft easy pedaling',
     JSON_ARRAY(
             JSON_OBJECT('duration', 2400, 'powerZone', 1, 'targetCadence', 79)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-03-21 07:30:00', 'Tempo Stack', 'Multiple tempo efforts',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 84),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 86)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-03-22 08:15:00', 'Steady State', 'Long steady state effort',
     JSON_ARRAY(
             JSON_OBJECT('duration', 2400, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 1800, 'powerZone', 3, 'targetCadence', 83)
     ),
     JSON_ARRAY(3)
    ),
    ('2025-03-23 06:00:00', 'High Intensity Mix', 'Mixed high-intensity work',
     JSON_ARRAY(
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 89),
             JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 240, 'powerZone', 6, 'targetCadence', 105),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 91)
     ),
     JSON_ARRAY(2,3,5,6)
    ),
    ('2025-03-24 17:45:00', 'Active Recovery Spin', 'Active recovery spinning',
     JSON_ARRAY(
             JSON_OBJECT('duration', 2100, 'powerZone', 1, 'targetCadence', 84)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-03-25 07:00:00', 'Threshold Pyramid', 'Pyramid structure at threshold',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 82),
             JSON_OBJECT('duration', 900, 'powerZone', 4, 'targetCadence', 84),
             JSON_OBJECT('duration', 1200, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 900, 'powerZone', 4, 'targetCadence', 84),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 82)
     ),
     JSON_ARRAY(4)
    ),
    ('2025-03-26 06:30:00', 'Cadence Sprint', 'High cadence sprint work',
     JSON_ARRAY(
             JSON_OBJECT('duration', 180, 'powerZone', 6, 'targetCadence', 115),
             JSON_OBJECT('duration', 420, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 180, 'powerZone', 6, 'targetCadence', 118),
             JSON_OBJECT('duration', 420, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 180, 'powerZone', 6, 'targetCadence', 120)
     ),
     JSON_ARRAY(2,6)
    ),
    ('2025-03-27 18:30:00', 'Easy Glide', 'Easy gliding pace',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1800, 'powerZone', 1, 'targetCadence', 82)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-03-28 07:15:00', 'Endurance Build', 'Building endurance capacity',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 77),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 77)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-03-29 08:00:00', 'Century Prep', 'Preparation for long century ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 3600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 2400, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 75)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-03-30 06:45:00', 'Hill Blasts', 'Short explosive hill efforts',
     JSON_ARRAY(
             JSON_OBJECT('duration', 240, 'powerZone', 6, 'targetCadence', 65),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 6, 'targetCadence', 65),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 6, 'targetCadence', 65)
     ),
     JSON_ARRAY(2,6)
    ),
    ('2025-03-31 17:30:00', 'Leisure Ride', 'Leisurely easy ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 2400, 'powerZone', 1, 'targetCadence', 80)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-04-01 07:00:00', 'Sweet Spot Long', 'Extended sweet spot work',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1800, 'powerZone', 3, 'targetCadence', 81),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1800, 'powerZone', 3, 'targetCadence', 83)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-04-02 06:15:00', 'Power Burst', 'Short power bursts',
     JSON_ARRAY(
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 92)
     ),
     JSON_ARRAY(3,5)
    ),
    ('2025-04-03 18:00:00', 'Recovery Cruise', 'Easy recovery cruising',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1800, 'powerZone', 1, 'targetCadence', 83)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-04-04 07:30:00', 'Tempo Endurance', 'Tempo-paced endurance ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1800, 'powerZone', 3, 'targetCadence', 81),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 84),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 87)
     ),
     JSON_ARRAY(3)
    ),
    ('2025-04-05 08:15:00', 'Saturday Long Ride', 'Long Saturday endurance',
     JSON_ARRAY(
             JSON_OBJECT('duration', 3000, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 2100, 'powerZone', 3, 'targetCadence', 81)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-04-06 06:00:00', 'VO2 Max Blast', 'Hard VO2 max intervals',
     JSON_ARRAY(
             JSON_OBJECT('duration', 360, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 360, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 360, 'powerZone', 5, 'targetCadence', 94)
     ),
     JSON_ARRAY(2,5)
    ),
    ('2025-04-07 17:45:00', 'Light Spin', 'Light spinning session',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1500, 'powerZone', 1, 'targetCadence', 81)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-04-08 07:00:00', 'Threshold Challenge', 'Challenging threshold work',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1500, 'powerZone', 4, 'targetCadence', 83),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 1500, 'powerZone', 4, 'targetCadence', 85)
     ),
     JSON_ARRAY(3,4)
    ),
    ('2025-04-09 06:30:00', 'Cadence Variation', 'Variable cadence training',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 65),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 95),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 110)
     ),
     JSON_ARRAY(2)
    ),
    ('2025-04-10 18:30:00', 'Evening Recovery', 'Evening recovery ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 2100, 'powerZone', 1, 'targetCadence', 80)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-04-11 07:15:00', 'Zone Progression', 'Progressive zone increases',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 81),
             JSON_OBJECT('duration', 900, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 600, 'powerZone', 5, 'targetCadence', 90)
     ),
     JSON_ARRAY(2,3,4,5)
    ),
    ('2025-04-12 08:00:00', 'Base Builder', 'Aerobic base building ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 2700, 'powerZone', 2, 'targetCadence', 77),
             JSON_OBJECT('duration', 1800, 'powerZone', 3, 'targetCadence', 82)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-04-13 06:45:00', 'Race Prep', 'Race preparation workout',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 600, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 300, 'powerZone', 6, 'targetCadence', 108)
     ),
     JSON_ARRAY(3,4,5,6)
    ),
    ('2025-04-14 17:30:00', 'Easy Roll Out', 'Easy roll out ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1800, 'powerZone', 1, 'targetCadence', 79)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-04-15 07:00:00', 'Sweet Spot Focus', 'Focused sweet spot training',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1500, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 1500, 'powerZone', 3, 'targetCadence', 84),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-04-16 06:15:00', 'Sprint Series', 'Series of sprint efforts',
     JSON_ARRAY(
             JSON_OBJECT('duration', 150, 'powerZone', 6, 'targetCadence', 112),
             JSON_OBJECT('duration', 450, 'powerZone', 1, 'targetCadence', 76),
             JSON_OBJECT('duration', 150, 'powerZone', 6, 'targetCadence', 114),
             JSON_OBJECT('duration', 450, 'powerZone', 1, 'targetCadence', 76),
             JSON_OBJECT('duration', 150, 'powerZone', 6, 'targetCadence', 116)
     ),
     JSON_ARRAY(1,6)
    ),
    ('2025-04-17 18:00:00', 'Relaxation Ride', 'Relaxed recovery ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 2400, 'powerZone', 1, 'targetCadence', 81)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-04-18 07:30:00', 'Tempo Rhythm', 'Rhythmic tempo intervals',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 77),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 85),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 77)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-04-19 08:15:00', 'Endurance Epic', 'Epic endurance ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 4200, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 2400, 'powerZone', 3, 'targetCadence', 80)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-04-20 06:00:00', 'VO2 Sets', 'Multiple VO2 max sets',
     JSON_ARRAY(
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 89),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 91),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 93)
     ),
     JSON_ARRAY(2,5)
    ),
    ('2025-04-21 17:45:00', 'Soft Recovery', 'Soft recovery spinning',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1500, 'powerZone', 1, 'targetCadence', 82)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-04-22 07:00:00', 'Threshold Mastery', 'Mastering threshold efforts',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 4, 'targetCadence', 84),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 79),
             JSON_OBJECT('duration', 1500, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 79)
     ),
     JSON_ARRAY(3,4)
    ),
    ('2025-04-23 06:30:00', 'High Cadence Work', 'High cadence focused work',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 98),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 95),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 100)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-04-24 18:30:00', 'Easy Pedaling', 'Easy pedaling session',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1800, 'powerZone', 1, 'targetCadence', 80)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-04-25 07:15:00', 'Multi-Zone Mix', 'Mixed zone training',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 87),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 91),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 78)
     ),
     JSON_ARRAY(2,3,4,5)
    ),
    ('2025-04-26 08:00:00', 'Foundation Ride', 'Foundation building ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 3300, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 1500, 'powerZone', 3, 'targetCadence', 81)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-04-27 06:45:00', 'Climb Repeats', 'Repeated climbing intervals',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 5, 'targetCadence', 63),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 5, 'targetCadence', 63),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 5, 'targetCadence', 63)
     ),
     JSON_ARRAY(2,5)
    ),
    ('2025-04-28 17:30:00', 'Gentle Roll', 'Gentle rolling ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 2100, 'powerZone', 1, 'targetCadence', 83)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-04-29 07:00:00', 'Sweet Spot Intensive', 'Intensive sweet spot work',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1500, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 1800, 'powerZone', 3, 'targetCadence', 84),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-04-30 06:15:00', 'Power Spikes', 'Short power spike intervals',
     JSON_ARRAY(
             JSON_OBJECT('duration', 240, 'powerZone', 6, 'targetCadence', 108),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 6, 'targetCadence', 112)
     ),
     JSON_ARRAY(2,6)
    ),
    ('2025-05-01 18:00:00', 'Recovery Spin Easy', 'Easy recovery spinning',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1800, 'powerZone', 1, 'targetCadence', 81)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-05-02 07:30:00', 'Tempo Distance', 'Distance ride at tempo',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1800, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 1500, 'powerZone', 3, 'targetCadence', 85),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 88)
     ),
     JSON_ARRAY(3)
    ),
    ('2025-05-03 08:15:00', 'Long Weekend Ride', 'Extended weekend ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 3600, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 2700, 'powerZone', 3, 'targetCadence', 81)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-05-04 06:00:00', 'VO2 Challenge', 'Challenging VO2 max work',
     JSON_ARRAY(
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 360, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 420, 'powerZone', 5, 'targetCadence', 94)
     ),
     JSON_ARRAY(2,5)
    ),
    ('2025-05-05 17:45:00', 'Light Active Recovery', 'Light active recovery ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 2100, 'powerZone', 1, 'targetCadence', 82)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-05-06 07:00:00', 'Threshold Power', 'Power-focused threshold work',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1500, 'powerZone', 4, 'targetCadence', 83),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 1500, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 78)
     ),
     JSON_ARRAY(3,4)
    ),
    ('2025-05-07 06:30:00', 'Pyramid Power Play', 'Complex pyramid with varied recovery',
     JSON_ARRAY(
             JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 180, 'powerZone', 1, 'targetCadence', 75),
             JSON_OBJECT('duration', 450, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 600, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 450, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 180, 'powerZone', 1, 'targetCadence', 75)
     ),
     JSON_ARRAY(1,2,3,4,5)
    ),
    ('2025-05-08 07:00:00', 'Wave Intervals', 'Undulating power waves',
     JSON_ARRAY(
             JSON_OBJECT('duration', 240, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 240, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 88),
             JSON_OBJECT('duration', 240, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 240, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 180, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 240, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 88),
             JSON_OBJECT('duration', 240, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 240, 'powerZone', 3, 'targetCadence', 82)
     ),
     JSON_ARRAY(2,3,4,5)
    ),
    ('2025-05-09 17:30:00', 'Micro-Macro Mix', 'Short bursts with long builds',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 60, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 540, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 60, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 540, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 60, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,3,6)
    ),
    ('2025-05-10 06:15:00', 'Alternating Threshold', 'Threshold with varying cadence',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 70),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 85),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 90),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 85),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 70),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 85),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 90)
     ),
     JSON_ARRAY(2,4)
    ),
    ('2025-05-11 08:00:00', 'Endurance Spikes', 'Long endurance with power spikes',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 120, 'powerZone', 5, 'targetCadence', 95),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 120, 'powerZone', 5, 'targetCadence', 95),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 120, 'powerZone', 5, 'targetCadence', 95),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 75)
     ),
     JSON_ARRAY(2,3,5)
    ),
    ('2025-05-12 07:15:00', 'Tempo Crescendo', 'Building tempo with micro-recoveries',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 120, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 720, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 120, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 840, 'powerZone', 3, 'targetCadence', 84),
             JSON_OBJECT('duration', 120, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 960, 'powerZone', 3, 'targetCadence', 86),
             JSON_OBJECT('duration', 120, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1080, 'powerZone', 3, 'targetCadence', 88)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-05-13 06:45:00', 'Double Pyramid Sprint', 'Two pyramids with sprint peaks',
     JSON_ARRAY(
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 240, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 240, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 480, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 240, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 240, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 82)
     ),
     JSON_ARRAY(2,3,4,5,6)
    ),
    ('2025-05-14 18:00:00', 'Recovery Cadence Play', 'Easy ride with cadence variation',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 1, 'targetCadence', 70),
             JSON_OBJECT('duration', 600, 'powerZone', 1, 'targetCadence', 85),
             JSON_OBJECT('duration', 600, 'powerZone', 1, 'targetCadence', 100),
             JSON_OBJECT('duration', 600, 'powerZone', 1, 'targetCadence', 85),
             JSON_OBJECT('duration', 600, 'powerZone', 1, 'targetCadence', 70)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-05-15 07:30:00', 'Sweet Spot Ladder', 'Progressive sweet spot with steps',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 84),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1500, 'powerZone', 3, 'targetCadence', 86),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 84),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 80)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-05-16 06:00:00', 'VO2 Max Cluster', 'Clustered VO2 intervals',
     JSON_ARRAY(
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 120, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 120, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 120, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 120, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 94),
             JSON_OBJECT('duration', 120, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 94),
             JSON_OBJECT('duration', 120, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 94)
     ),
     JSON_ARRAY(2,3,5)
    ),
    ('2025-05-17 08:30:00', 'Long Mixed Endurance', 'Extended ride with varied zones',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 75)
     ),
     JSON_ARRAY(2,3,4,5)
    ),
    ('2025-05-18 06:30:00', 'Threshold Sandwich', 'Threshold with tempo layers',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 1200, 'powerZone', 4, 'targetCadence', 84),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 1200, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 1200, 'powerZone', 4, 'targetCadence', 84),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 80)
     ),
     JSON_ARRAY(3,4)
    ),
    ('2025-05-19 17:45:00', 'Cadence Pyramid', 'Progressive cadence pyramid',
     JSON_ARRAY(
             JSON_OBJECT('duration', 480, 'powerZone', 2, 'targetCadence', 70),
             JSON_OBJECT('duration', 480, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 480, 'powerZone', 2, 'targetCadence', 90),
             JSON_OBJECT('duration', 480, 'powerZone', 2, 'targetCadence', 100),
             JSON_OBJECT('duration', 480, 'powerZone', 2, 'targetCadence', 110),
             JSON_OBJECT('duration', 240, 'powerZone', 1, 'targetCadence', 75),
             JSON_OBJECT('duration', 480, 'powerZone', 2, 'targetCadence', 110),
             JSON_OBJECT('duration', 480, 'powerZone', 2, 'targetCadence', 100),
             JSON_OBJECT('duration', 480, 'powerZone', 2, 'targetCadence', 90),
             JSON_OBJECT('duration', 480, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 480, 'powerZone', 2, 'targetCadence', 70)
     ),
     JSON_ARRAY(1,2)
    ),
    ('2025-05-20 07:00:00', 'Sprint Burst Complex', 'Multiple sprint patterns',
     JSON_ARRAY(
             JSON_OBJECT('duration', 150, 'powerZone', 6, 'targetCadence', 115),
             JSON_OBJECT('duration', 450, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 118),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 90, 'powerZone', 6, 'targetCadence', 120),
             JSON_OBJECT('duration', 270, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 90, 'powerZone', 6, 'targetCadence', 120),
             JSON_OBJECT('duration', 270, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 118),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 150, 'powerZone', 6, 'targetCadence', 115)
     ),
     JSON_ARRAY(2,6)
    ),
    ('2025-05-21 06:15:00', 'Over-Under Symphony', 'Complex over-under patterns',
     JSON_ARRAY(
             JSON_OBJECT('duration', 480, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 240, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 480, 'powerZone', 4, 'targetCadence', 87),
             JSON_OBJECT('duration', 240, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 360, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 360, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 480, 'powerZone', 4, 'targetCadence', 87),
             JSON_OBJECT('duration', 240, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 480, 'powerZone', 4, 'targetCadence', 85)
     ),
     JSON_ARRAY(3,4,5)
    ),
    ('2025-05-22 18:30:00', 'Active Recovery Waves', 'Recovery with gentle power waves',
     JSON_ARRAY(
             JSON_OBJECT('duration', 720, 'powerZone', 1, 'targetCadence', 78),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 82),
             JSON_OBJECT('duration', 720, 'powerZone', 1, 'targetCadence', 80),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 84),
             JSON_OBJECT('duration', 720, 'powerZone', 1, 'targetCadence', 82),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 82),
             JSON_OBJECT('duration', 720, 'powerZone', 1, 'targetCadence', 80)
     ),
     JSON_ARRAY(1,2)
    ),
    ('2025-05-23 07:30:00', 'Tempo Intervals Complex', 'Varied tempo work',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 81),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 180, 'powerZone', 4, 'targetCadence', 88),
             JSON_OBJECT('duration', 420, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 85),
             JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 88),
             JSON_OBJECT('duration', 420, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,3,4)
    ),
    ('2025-05-24 08:15:00', 'Endurance Staircase', 'Stepping endurance ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 84),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 80)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-05-25 06:00:00', 'Anaerobic Progression', 'Progressive anaerobic work',
     JSON_ARRAY(
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 88),
             JSON_OBJECT('duration', 420, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 6, 'targetCadence', 105),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 6, 'targetCadence', 108),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 180, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 420, 'powerZone', 2, 'targetCadence', 75)
     ),
     JSON_ARRAY(2,5,6)
    ),
    ('2025-05-26 17:30:00', 'Easy Tempo Touch', 'Recovery with tempo touches',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 80),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 85),
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 82),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 87),
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 84),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 85),
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 82)
     ),
     JSON_ARRAY(1,3)
    ),
    ('2025-05-27 07:00:00', 'Threshold Blocks Advanced', 'Advanced threshold structure',
     JSON_ARRAY(
             JSON_OBJECT('duration', 720, 'powerZone', 4, 'targetCadence', 83),
             JSON_OBJECT('duration', 240, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 900, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1080, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 900, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 240, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 720, 'powerZone', 4, 'targetCadence', 83)
     ),
     JSON_ARRAY(2,3,4,5)
    ),
    ('2025-05-28 06:30:00', 'Power Zone Circuit', 'Circuit through all power zones',
     JSON_ARRAY(
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 81),
             JSON_OBJECT('duration', 360, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 105),
             JSON_OBJECT('duration', 600, 'powerZone', 1, 'targetCadence', 75),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 81),
             JSON_OBJECT('duration', 360, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 105)
     ),
     JSON_ARRAY(1,2,3,4,5,6)
    ),
    ('2025-05-29 18:00:00', 'Soft Endurance Mix', 'Gentle endurance variation',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 78),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 82),
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 80),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 84),
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 82)
     ),
     JSON_ARRAY(1,2)
    ),
    ('2025-05-30 07:15:00', 'Sweet Spot Double Set', 'Two sweet spot sets',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 81),
             JSON_OBJECT('duration', 180, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 180, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1500, 'powerZone', 3, 'targetCadence', 85),
             JSON_OBJECT('duration', 600, 'powerZone', 1, 'targetCadence', 75),
             JSON_OBJECT('duration', 1500, 'powerZone', 3, 'targetCadence', 85),
             JSON_OBJECT('duration', 180, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 180, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 81)
     ),
     JSON_ARRAY(1,2,3)
    ),
    ('2025-05-31 08:30:00', 'Grand Endurance Challenge', 'Long varied endurance ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 2400, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 81),
             JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1800, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 2400, 'powerZone', 2, 'targetCadence', 75)
     ),
     JSON_ARRAY(2,3,4,5)
    ),
    ('2025-06-01 06:00:00', 'VO2 Triple Cluster', 'Three VO2 clusters',
     JSON_ARRAY(
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 89),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 91),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 93),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 94),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 360, 'powerZone', 5, 'targetCadence', 91),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 360, 'powerZone', 5, 'targetCadence', 93),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 360, 'powerZone', 5, 'targetCadence', 95)
     ),
     JSON_ARRAY(2,3,5)
    ),
    ('2025-06-02 17:45:00', 'Recovery Rhythm', 'Easy rhythmic recovery',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 1, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 1, 'targetCadence', 82),
             JSON_OBJECT('duration', 600, 'powerZone', 1, 'targetCadence', 89),
             JSON_OBJECT('duration', 600, 'powerZone', 1, 'targetCadence', 82),
             JSON_OBJECT('duration', 600, 'powerZone', 1, 'targetCadence', 75)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-06-03 07:00:00', 'Threshold Wave Pattern', 'Undulating threshold waves',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 82),
             JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 84),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 88),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 720, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 420, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 84),
             JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 82)
     ),
     JSON_ARRAY(2,3,4,5)
    ),
    ('2025-06-04 06:30:00', 'Micro-Burst Madness', 'Many short high-intensity bursts',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 45, 'powerZone', 6, 'targetCadence', 112),
             JSON_OBJECT('duration', 135, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 45, 'powerZone', 6, 'targetCadence', 115),
             JSON_OBJECT('duration', 135, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 45, 'powerZone', 6, 'targetCadence', 118),
             JSON_OBJECT('duration', 135, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 45, 'powerZone', 6, 'targetCadence', 120),
             JSON_OBJECT('duration', 135, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 45, 'powerZone', 6, 'targetCadence', 118),
             JSON_OBJECT('duration', 135, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 45, 'powerZone', 6, 'targetCadence', 115),
             JSON_OBJECT('duration', 135, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 45, 'powerZone', 6, 'targetCadence', 112),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,3,6)
    ),
    ('2025-06-05 18:15:00', 'Easy Cadence Flow', 'Easy flowing cadence work',
     JSON_ARRAY(
             JSON_OBJECT('duration', 720, 'powerZone', 1, 'targetCadence', 78),
             JSON_OBJECT('duration', 480, 'powerZone', 1, 'targetCadence', 88),
             JSON_OBJECT('duration', 720, 'powerZone', 1, 'targetCadence', 98),
             JSON_OBJECT('duration', 480, 'powerZone', 1, 'targetCadence', 88),
             JSON_OBJECT('duration', 720, 'powerZone', 1, 'targetCadence', 78)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-06-06 07:30:00', 'Tempo Triple Tier', 'Three-tiered tempo work',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 86),
             JSON_OBJECT('duration', 420, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 86),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 420, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 86)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-06-07 08:00:00', 'Endurance Power Sandwich', 'Long endurance with power filling',
     JSON_ARRAY(
             JSON_OBJECT('duration', 2100, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 105),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 105),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 2100, 'powerZone', 2, 'targetCadence', 75)
     ),
     JSON_ARRAY(2,3,4,5,6)
    ),
    ('2025-06-08 06:00:00', 'Anaerobic Ladder Climb', 'Ascending anaerobic ladder',
     JSON_ARRAY(
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 88),
             JSON_OBJECT('duration', 420, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 6, 'targetCadence', 105),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 6, 'targetCadence', 108),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 360, 'powerZone', 6, 'targetCadence', 110)
     ),
     JSON_ARRAY(2,5,6)
    ),
    ('2025-06-09 17:30:00', 'Light Recovery Flow', 'Flowing recovery session',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 76),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 82),
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 80),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 84),
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 82),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 82),
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 78)
     ),
     JSON_ARRAY(1,2)
    ),
    ('2025-06-10 07:00:00', 'Threshold Matrix', 'Complex threshold matrix',
     JSON_ARRAY(
             JSON_OBJECT('duration', 480, 'powerZone', 4, 'targetCadence', 82),
             JSON_OBJECT('duration', 240, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 480, 'powerZone', 4, 'targetCadence', 84),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 88),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 720, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 420, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 88),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 480, 'powerZone', 4, 'targetCadence', 84)
     ),
     JSON_ARRAY(2,3,4,5)
    ),
    ('2025-06-11 06:30:00', 'Cadence Complexity', 'Complex cadence variations',
     JSON_ARRAY(
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 65),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 85),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 95),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 105),
             JSON_OBJECT('duration', 240, 'powerZone', 1, 'targetCadence', 80),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 70),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 90),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 100),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 90),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 80)
     ),
     JSON_ARRAY(1,2,3)
    ),
    ('2025-06-12 18:00:00', 'Active Rest Intervals', 'Rest with gentle intervals',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 78),
             JSON_OBJECT('duration', 120, 'powerZone', 2, 'targetCadence', 85),
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 80),
             JSON_OBJECT('duration', 120, 'powerZone', 2, 'targetCadence', 87),
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 82),
             JSON_OBJECT('duration', 120, 'powerZone', 2, 'targetCadence', 85)
     ),
     JSON_ARRAY(1,2)
    ),
    ('2025-06-13 07:15:00', 'Sweet Spot Pyramid Double', 'Two sweet spot pyramids',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 86),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 81),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 84),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 87),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 84),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 81)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-06-14 08:30:00', 'Saturday Epic Mix', 'Epic mixed intensity ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 2400, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 81),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1800, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 480, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 240, 'powerZone', 6, 'targetCadence', 105),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 2400, 'powerZone', 2, 'targetCadence', 75)
     ),
     JSON_ARRAY(2,3,4,5,6)
    ),
    ('2025-06-15 06:00:00', 'VO2 Quad Set', 'Four VO2 max sets',
     JSON_ARRAY(
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 89),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 91),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 93),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 94),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 360, 'powerZone', 5, 'targetCadence', 91),
             JSON_OBJECT('duration', 360, 'powerZone', 5, 'targetCadence', 93),
             JSON_OBJECT('duration', 360, 'powerZone', 5, 'targetCadence', 95),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 420, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 420, 'powerZone', 5, 'targetCadence', 94),
             JSON_OBJECT('duration', 420, 'powerZone', 5, 'targetCadence', 96)
     ),
     JSON_ARRAY(2,5)
    ),
    ('2025-06-16 17:45:00', 'Recovery Wave Gentle', 'Gentle recovery waves',
     JSON_ARRAY(
             JSON_OBJECT('duration', 720, 'powerZone', 1, 'targetCadence', 77),
             JSON_OBJECT('duration', 360, 'powerZone', 1, 'targetCadence', 83),
             JSON_OBJECT('duration', 720, 'powerZone', 1, 'targetCadence', 89),
             JSON_OBJECT('duration', 360, 'powerZone', 1, 'targetCadence', 83),
             JSON_OBJECT('duration', 720, 'powerZone', 1, 'targetCadence', 77)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-06-17 07:00:00', 'Threshold Crescendo Build', 'Building threshold with peaks',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 82),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 88),
             JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 720, 'powerZone', 4, 'targetCadence', 84),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 840, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 420, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 720, 'powerZone', 4, 'targetCadence', 84),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 82)
     ),
     JSON_ARRAY(2,3,4,5)
    ),
    ('2025-06-18 06:30:00', 'Power Surge Complex', 'Complex power surge pattern',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 90, 'powerZone', 6, 'targetCadence', 108),
             JSON_OBJECT('duration', 270, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 112),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 150, 'powerZone', 6, 'targetCadence', 115),
             JSON_OBJECT('duration', 450, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 150, 'powerZone', 6, 'targetCadence', 115),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 112),
             JSON_OBJECT('duration', 270, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 90, 'powerZone', 6, 'targetCadence', 108),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 82)
     ),
     JSON_ARRAY(2,3,6)
    ),
    ('2025-06-19 18:15:00', 'Easy Zone Touch', 'Easy with zone touches',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 79),
             JSON_OBJECT('duration', 180, 'powerZone', 2, 'targetCadence', 83),
             JSON_OBJECT('duration', 120, 'powerZone', 3, 'targetCadence', 87),
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 81),
             JSON_OBJECT('duration', 180, 'powerZone', 2, 'targetCadence', 85),
             JSON_OBJECT('duration', 120, 'powerZone', 3, 'targetCadence', 89),
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 83)
     ),
     JSON_ARRAY(1,2,3)
    ),
    ('2025-06-20 07:30:00', 'Tempo Multi-Block', 'Multiple tempo blocks',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 81),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 84),
             JSON_OBJECT('duration', 240, 'powerZone', 4, 'targetCadence', 88),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 1500, 'powerZone', 3, 'targetCadence', 86),
             JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 89),
             JSON_OBJECT('duration', 420, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 84),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 81)
     ),
     JSON_ARRAY(2,3,4)
    ),
    ('2025-06-21 08:00:00', 'Endurance Odyssey', 'Long odyssey with variation',
     JSON_ARRAY(
             JSON_OBJECT('duration', 3000, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 81),
             JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1800, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 480, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 105),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 3000, 'powerZone', 2, 'targetCadence', 75)
     ),
     JSON_ARRAY(2,3,4,5,6)
    ),
    ('2025-06-22 06:00:00', 'Anaerobic Double Pyramid', 'Two anaerobic pyramids',
     JSON_ARRAY(
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 88),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 91),
             JSON_OBJECT('duration', 300, 'powerZone', 6, 'targetCadence', 105),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 91),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 88),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 300, 'powerZone', 6, 'targetCadence', 108),
             JSON_OBJECT('duration', 360, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 300, 'powerZone', 6, 'targetCadence', 108),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 90)
     ),
     JSON_ARRAY(2,5,6)
    ),
    ('2025-06-23 17:30:00', 'Soft Recovery Blend', 'Blended recovery ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 78),
             JSON_OBJECT('duration', 300, 'powerZone', 1, 'targetCadence', 85),
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 92),
             JSON_OBJECT('duration', 300, 'powerZone', 1, 'targetCadence', 85),
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 78)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-06-24 07:00:00', 'Threshold Triple Set', 'Three threshold sets',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 83),
             JSON_OBJECT('duration', 900, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 1200, 'powerZone', 4, 'targetCadence', 87),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 720, 'powerZone', 4, 'targetCadence', 84),
             JSON_OBJECT('duration', 960, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 1200, 'powerZone', 4, 'targetCadence', 88),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 840, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 1020, 'powerZone', 4, 'targetCadence', 87),
             JSON_OBJECT('duration', 1200, 'powerZone', 4, 'targetCadence', 89)
     ),
     JSON_ARRAY(2,4)
    ),
    ('2025-06-25 06:30:00', 'High-Low Cadence Mix', 'Mixed high and low cadence',
     JSON_ARRAY(
             JSON_OBJECT('duration', 480, 'powerZone', 3, 'targetCadence', 60),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 480, 'powerZone', 3, 'targetCadence', 100),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 480, 'powerZone', 3, 'targetCadence', 60),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 480, 'powerZone', 3, 'targetCadence', 100),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 480, 'powerZone', 3, 'targetCadence', 60)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-06-26 18:00:00', 'Easy Endurance Touch', 'Easy with endurance touches',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 79),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 83),
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 81),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 85),
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 83),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 83)
     ),
     JSON_ARRAY(1,2)
    ),
    ('2025-06-27 07:15:00', 'Sweet Spot Crescendo', 'Crescendo sweet spot pattern',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 180, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 84),
             JSON_OBJECT('duration', 240, 'powerZone', 4, 'targetCadence', 88),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1500, 'powerZone', 3, 'targetCadence', 86),
             JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 90)
     ),
     JSON_ARRAY(2,3,4)
    ),
    ('2025-06-28 08:30:00', 'Weekend Power Mix', 'Weekend mixed power ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 2700, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 81),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1800, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 2700, 'powerZone', 2, 'targetCadence', 75)
     ),
     JSON_ARRAY(2,3,4,5)
    ),
    ('2025-06-29 06:00:00', 'VO2 Descending Ladder', 'Descending VO2 ladder',
     JSON_ARRAY(
             JSON_OBJECT('duration', 420, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 360, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 94),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 96),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 98),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 120, 'powerZone', 5, 'targetCadence', 100)
     ),
     JSON_ARRAY(2,5)
    ),
    ('2025-06-30 17:45:00', 'Recovery Interval Light', 'Light recovery intervals',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 77),
             JSON_OBJECT('duration', 180, 'powerZone', 1, 'targetCadence', 90),
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 80),
             JSON_OBJECT('duration', 180, 'powerZone', 1, 'targetCadence', 93),
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 83)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-07-01 07:00:00', 'Threshold Wave Advanced', 'Advanced threshold waves',
     JSON_ARRAY(
             JSON_OBJECT('duration', 480, 'powerZone', 4, 'targetCadence', 82),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 84),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 88),
             JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 720, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 840, 'powerZone', 4, 'targetCadence', 87),
             JSON_OBJECT('duration', 360, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 420, 'powerZone', 2, 'targetCadence', 75)
     ),
     JSON_ARRAY(2,3,4,5)
    ),
    ('2025-07-02 06:30:00', 'Sprint Complexity Pro', 'Pro-level sprint complexity',
     JSON_ARRAY(
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 90, 'powerZone', 6, 'targetCadence', 115),
             JSON_OBJECT('duration', 270, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 60, 'powerZone', 6, 'targetCadence', 120),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 150, 'powerZone', 6, 'targetCadence', 112),
             JSON_OBJECT('duration', 450, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 116),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 90, 'powerZone', 6, 'targetCadence', 118),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75)
     ),
     JSON_ARRAY(2,3,6)
    ),
    ('2025-07-03 18:15:00', 'Easy Flow Session', 'Easy flowing session',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 76),
             JSON_OBJECT('duration', 600, 'powerZone', 1, 'targetCadence', 84),
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 92),
             JSON_OBJECT('duration', 600, 'powerZone', 1, 'targetCadence', 84),
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 76)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-07-04 07:30:00', 'Independence Power Ride', 'Celebratory power ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,3,4,5,6)
    ),
    ('2025-07-05 08:00:00', 'Endurance Marathon Prep', 'Marathon endurance preparation',
     JSON_ARRAY(
             JSON_OBJECT('duration', 3600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 81),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1800, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 3600, 'powerZone', 2, 'targetCadence', 75)
     ),
     JSON_ARRAY(2,3,4)
    ),
    ('2025-07-06 06:00:00', 'Anaerobic Triple Stack', 'Three anaerobic stacks',
     JSON_ARRAY(
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 88),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 6, 'targetCadence', 105),
             JSON_OBJECT('duration', 300, 'powerZone', 6, 'targetCadence', 108),
             JSON_OBJECT('duration', 360, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 360, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 420, 'powerZone', 5, 'targetCadence', 94)
     ),
     JSON_ARRAY(2,5,6)
    ),
    ('2025-07-07 17:30:00', 'Active Rest Rhythm', 'Rhythmic active rest',
     JSON_ARRAY(
             JSON_OBJECT('duration', 720, 'powerZone', 1, 'targetCadence', 78),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 84),
             JSON_OBJECT('duration', 720, 'powerZone', 1, 'targetCadence', 81),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 86),
             JSON_OBJECT('duration', 720, 'powerZone', 1, 'targetCadence', 84),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 84),
             JSON_OBJECT('duration', 720, 'powerZone', 1, 'targetCadence', 81)
     ),
     JSON_ARRAY(1,2)
    ),
    ('2025-07-08 07:00:00', 'Threshold Complex Pro', 'Pro threshold complexity',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 82),
             JSON_OBJECT('duration', 240, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 88),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 720, 'powerZone', 4, 'targetCadence', 84),
             JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 840, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 420, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 720, 'powerZone', 4, 'targetCadence', 84),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 90)
     ),
     JSON_ARRAY(2,3,4,5)
    ),
    ('2025-07-09 06:30:00', 'Cadence Power Fusion', 'Fused cadence and power work',
     JSON_ARRAY(
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 65),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 95),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 360, 'powerZone', 4, 'targetCadence', 70),
             JSON_OBJECT('duration', 360, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 360, 'powerZone', 4, 'targetCadence', 100),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 65),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 95)
     ),
     JSON_ARRAY(2,3,4)
    ),
    ('2025-07-10 18:00:00', 'Easy Multi-Cadence', 'Easy ride with cadence variety',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 72),
             JSON_OBJECT('duration', 600, 'powerZone', 1, 'targetCadence', 82),
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 92),
             JSON_OBJECT('duration', 600, 'powerZone', 1, 'targetCadence', 102),
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 82)
     ),
     JSON_ARRAY(1)
    ),('2025-05-07 06:30:00', 'Pyramid Power Play', 'Complex pyramid with varied recovery',
      JSON_ARRAY(
              JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 80),
              JSON_OBJECT('duration', 180, 'powerZone', 1, 'targetCadence', 75),
              JSON_OBJECT('duration', 450, 'powerZone', 4, 'targetCadence', 85),
              JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 78),
              JSON_OBJECT('duration', 600, 'powerZone', 5, 'targetCadence', 90),
              JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 78),
              JSON_OBJECT('duration', 450, 'powerZone', 4, 'targetCadence', 85),
              JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 78),
              JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 80),
              JSON_OBJECT('duration', 180, 'powerZone', 1, 'targetCadence', 75)
      ),
      JSON_ARRAY(1,2,3,4,5)
    ),
    ('2025-05-08 07:00:00', 'Wave Intervals', 'Undulating power waves',
     JSON_ARRAY(
             JSON_OBJECT('duration', 240, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 240, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 88),
             JSON_OBJECT('duration', 240, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 240, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 180, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 240, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 88),
             JSON_OBJECT('duration', 240, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 240, 'powerZone', 3, 'targetCadence', 82)
     ),
     JSON_ARRAY(2,3,4,5)
    ),
    ('2025-05-09 17:30:00', 'Micro-Macro Mix', 'Short bursts with long builds',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 60, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 540, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 60, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 540, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 60, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,3,6)
    ),
    ('2025-05-10 06:15:00', 'Alternating Threshold', 'Threshold with varying cadence',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 70),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 85),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 90),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 85),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 70),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 85),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 90)
     ),
     JSON_ARRAY(2,4)
    ),
    ('2025-05-11 08:00:00', 'Endurance Spikes', 'Long endurance with power spikes',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 120, 'powerZone', 5, 'targetCadence', 95),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 120, 'powerZone', 5, 'targetCadence', 95),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 120, 'powerZone', 5, 'targetCadence', 95),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 75)
     ),
     JSON_ARRAY(2,3,5)
    ),
    ('2025-05-12 07:15:00', 'Tempo Crescendo', 'Building tempo with micro-recoveries',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 120, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 720, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 120, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 840, 'powerZone', 3, 'targetCadence', 84),
             JSON_OBJECT('duration', 120, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 960, 'powerZone', 3, 'targetCadence', 86),
             JSON_OBJECT('duration', 120, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1080, 'powerZone', 3, 'targetCadence', 88)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-05-13 06:45:00', 'Double Pyramid Sprint', 'Two pyramids with sprint peaks',
     JSON_ARRAY(
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 240, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 240, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 480, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 240, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 240, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 82)
     ),
     JSON_ARRAY(2,3,4,5,6)
    ),
    ('2025-05-14 18:00:00', 'Recovery Cadence Play', 'Easy ride with cadence variation',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 1, 'targetCadence', 70),
             JSON_OBJECT('duration', 600, 'powerZone', 1, 'targetCadence', 85),
             JSON_OBJECT('duration', 600, 'powerZone', 1, 'targetCadence', 100),
             JSON_OBJECT('duration', 600, 'powerZone', 1, 'targetCadence', 85),
             JSON_OBJECT('duration', 600, 'powerZone', 1, 'targetCadence', 70)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-05-15 07:30:00', 'Sweet Spot Ladder', 'Progressive sweet spot with steps',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 84),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1500, 'powerZone', 3, 'targetCadence', 86),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 84),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 80)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-05-16 06:00:00', 'VO2 Max Cluster', 'Clustered VO2 intervals',
     JSON_ARRAY(
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 120, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 120, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 120, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 120, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 94),
             JSON_OBJECT('duration', 120, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 94),
             JSON_OBJECT('duration', 120, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 94)
     ),
     JSON_ARRAY(2,3,5)
    ),
    ('2025-05-17 08:30:00', 'Long Mixed Endurance', 'Extended ride with varied zones',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 75)
     ),
     JSON_ARRAY(2,3,4,5)
    ),
    ('2025-05-18 06:30:00', 'Threshold Sandwich', 'Threshold with tempo layers',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 1200, 'powerZone', 4, 'targetCadence', 84),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 1200, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 1200, 'powerZone', 4, 'targetCadence', 84),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 80)
     ),
     JSON_ARRAY(3,4)
    ),
    ('2025-05-19 17:45:00', 'Cadence Pyramid', 'Progressive cadence pyramid',
     JSON_ARRAY(
             JSON_OBJECT('duration', 480, 'powerZone', 2, 'targetCadence', 70),
             JSON_OBJECT('duration', 480, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 480, 'powerZone', 2, 'targetCadence', 90),
             JSON_OBJECT('duration', 480, 'powerZone', 2, 'targetCadence', 100),
             JSON_OBJECT('duration', 480, 'powerZone', 2, 'targetCadence', 110),
             JSON_OBJECT('duration', 240, 'powerZone', 1, 'targetCadence', 75),
             JSON_OBJECT('duration', 480, 'powerZone', 2, 'targetCadence', 110),
             JSON_OBJECT('duration', 480, 'powerZone', 2, 'targetCadence', 100),
             JSON_OBJECT('duration', 480, 'powerZone', 2, 'targetCadence', 90),
             JSON_OBJECT('duration', 480, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 480, 'powerZone', 2, 'targetCadence', 70)
     ),
     JSON_ARRAY(1,2)
    ),
    ('2025-05-20 07:00:00', 'Sprint Burst Complex', 'Multiple sprint patterns',
     JSON_ARRAY(
             JSON_OBJECT('duration', 150, 'powerZone', 6, 'targetCadence', 115),
             JSON_OBJECT('duration', 450, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 118),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 90, 'powerZone', 6, 'targetCadence', 120),
             JSON_OBJECT('duration', 270, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 90, 'powerZone', 6, 'targetCadence', 120),
             JSON_OBJECT('duration', 270, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 118),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 150, 'powerZone', 6, 'targetCadence', 115)
     ),
     JSON_ARRAY(2,6)
    ),
    ('2025-05-21 06:15:00', 'Over-Under Symphony', 'Complex over-under patterns',
     JSON_ARRAY(
             JSON_OBJECT('duration', 480, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 240, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 480, 'powerZone', 4, 'targetCadence', 87),
             JSON_OBJECT('duration', 240, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 360, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 360, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 480, 'powerZone', 4, 'targetCadence', 87),
             JSON_OBJECT('duration', 240, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 480, 'powerZone', 4, 'targetCadence', 85)
     ),
     JSON_ARRAY(3,4,5)
    ),
    ('2025-05-22 18:30:00', 'Active Recovery Waves', 'Recovery with gentle power waves',
     JSON_ARRAY(
             JSON_OBJECT('duration', 720, 'powerZone', 1, 'targetCadence', 78),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 82),
             JSON_OBJECT('duration', 720, 'powerZone', 1, 'targetCadence', 80),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 84),
             JSON_OBJECT('duration', 720, 'powerZone', 1, 'targetCadence', 82),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 82),
             JSON_OBJECT('duration', 720, 'powerZone', 1, 'targetCadence', 80)
     ),
     JSON_ARRAY(1,2)
    ),
    ('2025-05-23 07:30:00', 'Tempo Intervals Complex', 'Varied tempo work',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 81),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 180, 'powerZone', 4, 'targetCadence', 88),
             JSON_OBJECT('duration', 420, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 85),
             JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 88),
             JSON_OBJECT('duration', 420, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,3,4)
    ),
    ('2025-05-24 08:15:00', 'Endurance Staircase', 'Stepping endurance ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 84),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 80)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-05-25 06:00:00', 'Anaerobic Progression', 'Progressive anaerobic work',
     JSON_ARRAY(
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 88),
             JSON_OBJECT('duration', 420, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 6, 'targetCadence', 105),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 6, 'targetCadence', 108),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 180, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 420, 'powerZone', 2, 'targetCadence', 75)
     ),
     JSON_ARRAY(2,5,6)
    ),
    ('2025-05-26 17:30:00', 'Easy Tempo Touch', 'Recovery with tempo touches',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 80),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 85),
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 82),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 87),
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 84),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 85),
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 82)
     ),
     JSON_ARRAY(1,3)
    ),
    ('2025-05-27 07:00:00', 'Threshold Blocks Advanced', 'Advanced threshold structure',
     JSON_ARRAY(
             JSON_OBJECT('duration', 720, 'powerZone', 4, 'targetCadence', 83),
             JSON_OBJECT('duration', 240, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 900, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1080, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 900, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 240, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 720, 'powerZone', 4, 'targetCadence', 83)
     ),
     JSON_ARRAY(2,3,4,5)
    ),
    ('2025-05-28 06:30:00', 'Power Zone Circuit', 'Circuit through all power zones',
     JSON_ARRAY(
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 81),
             JSON_OBJECT('duration', 360, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 105),
             JSON_OBJECT('duration', 600, 'powerZone', 1, 'targetCadence', 75),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 81),
             JSON_OBJECT('duration', 360, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 105)
     ),
     JSON_ARRAY(1,2,3,4,5,6)
    ),
    ('2025-05-29 18:00:00', 'Soft Endurance Mix', 'Gentle endurance variation',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 78),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 82),
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 80),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 84),
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 82)
     ),
     JSON_ARRAY(1,2)
    ),
    ('2025-05-30 07:15:00', 'Sweet Spot Double Set', 'Two sweet spot sets',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 81),
             JSON_OBJECT('duration', 180, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 180, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1500, 'powerZone', 3, 'targetCadence', 85),
             JSON_OBJECT('duration', 600, 'powerZone', 1, 'targetCadence', 75),
             JSON_OBJECT('duration', 1500, 'powerZone', 3, 'targetCadence', 85),
             JSON_OBJECT('duration', 180, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 180, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 81)
     ),
     JSON_ARRAY(1,2,3)
    ),
    ('2025-05-31 08:30:00', 'Grand Endurance Challenge', 'Long varied endurance ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 2400, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 81),
             JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1800, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 2400, 'powerZone', 2, 'targetCadence', 75)
     ),
     JSON_ARRAY(2,3,4,5)
    ),
    ('2025-06-01 06:00:00', 'VO2 Triple Cluster', 'Three VO2 clusters',
     JSON_ARRAY(
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 89),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 91),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 93),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 94),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 360, 'powerZone', 5, 'targetCadence', 91),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 360, 'powerZone', 5, 'targetCadence', 93),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 360, 'powerZone', 5, 'targetCadence', 95)
     ),
     JSON_ARRAY(2,3,5)
    ),
    ('2025-06-02 17:45:00', 'Recovery Rhythm', 'Easy rhythmic recovery',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 1, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 1, 'targetCadence', 82),
             JSON_OBJECT('duration', 600, 'powerZone', 1, 'targetCadence', 89),
             JSON_OBJECT('duration', 600, 'powerZone', 1, 'targetCadence', 82),
             JSON_OBJECT('duration', 600, 'powerZone', 1, 'targetCadence', 75)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-06-03 07:00:00', 'Threshold Wave Pattern', 'Undulating threshold waves',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 82),
             JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 84),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 88),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 720, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 420, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 84),
             JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 82)
     ),
     JSON_ARRAY(2,3,4,5)
    ),
    ('2025-06-04 06:30:00', 'Micro-Burst Madness', 'Many short high-intensity bursts',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 45, 'powerZone', 6, 'targetCadence', 112),
             JSON_OBJECT('duration', 135, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 45, 'powerZone', 6, 'targetCadence', 115),
             JSON_OBJECT('duration', 135, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 45, 'powerZone', 6, 'targetCadence', 118),
             JSON_OBJECT('duration', 135, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 45, 'powerZone', 6, 'targetCadence', 120),
             JSON_OBJECT('duration', 135, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 45, 'powerZone', 6, 'targetCadence', 118),
             JSON_OBJECT('duration', 135, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 45, 'powerZone', 6, 'targetCadence', 115),
             JSON_OBJECT('duration', 135, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 45, 'powerZone', 6, 'targetCadence', 112),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,3,6)
    ),
    ('2025-06-05 18:15:00', 'Easy Cadence Flow', 'Easy flowing cadence work',
     JSON_ARRAY(
             JSON_OBJECT('duration', 720, 'powerZone', 1, 'targetCadence', 78),
             JSON_OBJECT('duration', 480, 'powerZone', 1, 'targetCadence', 88),
             JSON_OBJECT('duration', 720, 'powerZone', 1, 'targetCadence', 98),
             JSON_OBJECT('duration', 480, 'powerZone', 1, 'targetCadence', 88),
             JSON_OBJECT('duration', 720, 'powerZone', 1, 'targetCadence', 78)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-06-06 07:30:00', 'Tempo Triple Tier', 'Three-tiered tempo work',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 86),
             JSON_OBJECT('duration', 420, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 86),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 420, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 86)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-06-07 08:00:00', 'Endurance Power Sandwich', 'Long endurance with power filling',
     JSON_ARRAY(
             JSON_OBJECT('duration', 2100, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 105),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 105),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 2100, 'powerZone', 2, 'targetCadence', 75)
     ),
     JSON_ARRAY(2,3,4,5,6)
    ),
    ('2025-06-08 06:00:00', 'Anaerobic Ladder Climb', 'Ascending anaerobic ladder',
     JSON_ARRAY(
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 88),
             JSON_OBJECT('duration', 420, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 6, 'targetCadence', 105),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 6, 'targetCadence', 108),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 360, 'powerZone', 6, 'targetCadence', 110)
     ),
     JSON_ARRAY(2,5,6)
    ),
    ('2025-06-09 17:30:00', 'Light Recovery Flow', 'Flowing recovery session',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 76),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 82),
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 80),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 84),
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 82),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 82),
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 78)
     ),
     JSON_ARRAY(1,2)
    ),
    ('2025-06-10 07:00:00', 'Threshold Matrix', 'Complex threshold matrix',
     JSON_ARRAY(
             JSON_OBJECT('duration', 480, 'powerZone', 4, 'targetCadence', 82),
             JSON_OBJECT('duration', 240, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 480, 'powerZone', 4, 'targetCadence', 84),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 88),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 720, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 420, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 88),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 480, 'powerZone', 4, 'targetCadence', 84)
     ),
     JSON_ARRAY(2,3,4,5)
    ),
    ('2025-06-11 06:30:00', 'Cadence Complexity', 'Complex cadence variations',
     JSON_ARRAY(
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 65),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 85),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 95),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 105),
             JSON_OBJECT('duration', 240, 'powerZone', 1, 'targetCadence', 80),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 70),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 90),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 100),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 90),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 80)
     ),
     JSON_ARRAY(1,2,3)
    ),
    ('2025-06-12 18:00:00', 'Active Rest Intervals', 'Rest with gentle intervals',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 78),
             JSON_OBJECT('duration', 120, 'powerZone', 2, 'targetCadence', 85),
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 80),
             JSON_OBJECT('duration', 120, 'powerZone', 2, 'targetCadence', 87),
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 82),
             JSON_OBJECT('duration', 120, 'powerZone', 2, 'targetCadence', 85)
     ),
     JSON_ARRAY(1,2)
    ),
    ('2025-06-13 07:15:00', 'Sweet Spot Pyramid Double', 'Two sweet spot pyramids',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 86),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 81),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 84),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 87),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 84),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 81)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-06-14 08:30:00', 'Saturday Epic Mix', 'Epic mixed intensity ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 2400, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 81),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1800, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 480, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 240, 'powerZone', 6, 'targetCadence', 105),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 2400, 'powerZone', 2, 'targetCadence', 75)
     ),
     JSON_ARRAY(2,3,4,5,6)
    ),
    ('2025-06-15 06:00:00', 'VO2 Quad Set', 'Four VO2 max sets',
     JSON_ARRAY(
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 89),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 91),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 93),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 94),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 360, 'powerZone', 5, 'targetCadence', 91),
             JSON_OBJECT('duration', 360, 'powerZone', 5, 'targetCadence', 93),
             JSON_OBJECT('duration', 360, 'powerZone', 5, 'targetCadence', 95),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 420, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 420, 'powerZone', 5, 'targetCadence', 94),
             JSON_OBJECT('duration', 420, 'powerZone', 5, 'targetCadence', 96)
     ),
     JSON_ARRAY(2,5)
    ),
    ('2025-06-16 17:45:00', 'Recovery Wave Gentle', 'Gentle recovery waves',
     JSON_ARRAY(
             JSON_OBJECT('duration', 720, 'powerZone', 1, 'targetCadence', 77),
             JSON_OBJECT('duration', 360, 'powerZone', 1, 'targetCadence', 83),
             JSON_OBJECT('duration', 720, 'powerZone', 1, 'targetCadence', 89),
             JSON_OBJECT('duration', 360, 'powerZone', 1, 'targetCadence', 83),
             JSON_OBJECT('duration', 720, 'powerZone', 1, 'targetCadence', 77)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-06-17 07:00:00', 'Threshold Crescendo Build', 'Building threshold with peaks',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 82),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 88),
             JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 720, 'powerZone', 4, 'targetCadence', 84),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 840, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 420, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 720, 'powerZone', 4, 'targetCadence', 84),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 82)
     ),
     JSON_ARRAY(2,3,4,5)
    ),
    ('2025-06-18 06:30:00', 'Power Surge Complex', 'Complex power surge pattern',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 90, 'powerZone', 6, 'targetCadence', 108),
             JSON_OBJECT('duration', 270, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 112),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 150, 'powerZone', 6, 'targetCadence', 115),
             JSON_OBJECT('duration', 450, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 150, 'powerZone', 6, 'targetCadence', 115),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 112),
             JSON_OBJECT('duration', 270, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 90, 'powerZone', 6, 'targetCadence', 108),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 82)
     ),
     JSON_ARRAY(2,3,6)
    ),
    ('2025-06-19 18:15:00', 'Easy Zone Touch', 'Easy with zone touches',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 79),
             JSON_OBJECT('duration', 180, 'powerZone', 2, 'targetCadence', 83),
             JSON_OBJECT('duration', 120, 'powerZone', 3, 'targetCadence', 87),
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 81),
             JSON_OBJECT('duration', 180, 'powerZone', 2, 'targetCadence', 85),
             JSON_OBJECT('duration', 120, 'powerZone', 3, 'targetCadence', 89),
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 83)
     ),
     JSON_ARRAY(1,2,3)
    ),
    ('2025-06-20 07:30:00', 'Tempo Multi-Block', 'Multiple tempo blocks',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 81),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 84),
             JSON_OBJECT('duration', 240, 'powerZone', 4, 'targetCadence', 88),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 1500, 'powerZone', 3, 'targetCadence', 86),
             JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 89),
             JSON_OBJECT('duration', 420, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 84),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 81)
     ),
     JSON_ARRAY(2,3,4)
    ),
    ('2025-06-21 08:00:00', 'Endurance Odyssey', 'Long odyssey with variation',
     JSON_ARRAY(
             JSON_OBJECT('duration', 3000, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 81),
             JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1800, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 480, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 105),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 3000, 'powerZone', 2, 'targetCadence', 75)
     ),
     JSON_ARRAY(2,3,4,5,6)
    ),
    ('2025-06-22 06:00:00', 'Anaerobic Double Pyramid', 'Two anaerobic pyramids',
     JSON_ARRAY(
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 88),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 91),
             JSON_OBJECT('duration', 300, 'powerZone', 6, 'targetCadence', 105),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 91),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 88),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 300, 'powerZone', 6, 'targetCadence', 108),
             JSON_OBJECT('duration', 360, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 300, 'powerZone', 6, 'targetCadence', 108),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 90)
     ),
     JSON_ARRAY(2,5,6)
    ),
    ('2025-06-23 17:30:00', 'Soft Recovery Blend', 'Blended recovery ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 78),
             JSON_OBJECT('duration', 300, 'powerZone', 1, 'targetCadence', 85),
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 92),
             JSON_OBJECT('duration', 300, 'powerZone', 1, 'targetCadence', 85),
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 78)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-06-24 07:00:00', 'Threshold Triple Set', 'Three threshold sets',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 83),
             JSON_OBJECT('duration', 900, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 1200, 'powerZone', 4, 'targetCadence', 87),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 720, 'powerZone', 4, 'targetCadence', 84),
             JSON_OBJECT('duration', 960, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 1200, 'powerZone', 4, 'targetCadence', 88),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 840, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 1020, 'powerZone', 4, 'targetCadence', 87),
             JSON_OBJECT('duration', 1200, 'powerZone', 4, 'targetCadence', 89)
     ),
     JSON_ARRAY(2,4)
    ),
    ('2025-06-25 06:30:00', 'High-Low Cadence Mix', 'Mixed high and low cadence',
     JSON_ARRAY(
             JSON_OBJECT('duration', 480, 'powerZone', 3, 'targetCadence', 60),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 480, 'powerZone', 3, 'targetCadence', 100),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 480, 'powerZone', 3, 'targetCadence', 60),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 480, 'powerZone', 3, 'targetCadence', 100),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 480, 'powerZone', 3, 'targetCadence', 60)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-06-26 18:00:00', 'Easy Endurance Touch', 'Easy with endurance touches',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 79),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 83),
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 81),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 85),
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 83),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 83)
     ),
     JSON_ARRAY(1,2)
    ),
    ('2025-06-27 07:15:00', 'Sweet Spot Crescendo', 'Crescendo sweet spot pattern',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 180, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 84),
             JSON_OBJECT('duration', 240, 'powerZone', 4, 'targetCadence', 88),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1500, 'powerZone', 3, 'targetCadence', 86),
             JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 90)
     ),
     JSON_ARRAY(2,3,4)
    ),
    ('2025-06-28 08:30:00', 'Weekend Power Mix', 'Weekend mixed power ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 2700, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 81),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1800, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 2700, 'powerZone', 2, 'targetCadence', 75)
     ),
     JSON_ARRAY(2,3,4,5)
    ),
    ('2025-06-29 06:00:00', 'VO2 Descending Ladder', 'Descending VO2 ladder',
     JSON_ARRAY(
             JSON_OBJECT('duration', 420, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 360, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 94),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 96),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 98),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 120, 'powerZone', 5, 'targetCadence', 100)
     ),
     JSON_ARRAY(2,5)
    ),
    ('2025-06-30 17:45:00', 'Recovery Interval Light', 'Light recovery intervals',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 77),
             JSON_OBJECT('duration', 180, 'powerZone', 1, 'targetCadence', 90),
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 80),
             JSON_OBJECT('duration', 180, 'powerZone', 1, 'targetCadence', 93),
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 83)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-07-01 07:00:00', 'Threshold Wave Advanced', 'Advanced threshold waves',
     JSON_ARRAY(
             JSON_OBJECT('duration', 480, 'powerZone', 4, 'targetCadence', 82),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 84),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 88),
             JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 720, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 840, 'powerZone', 4, 'targetCadence', 87),
             JSON_OBJECT('duration', 360, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 420, 'powerZone', 2, 'targetCadence', 75)
     ),
     JSON_ARRAY(2,3,4,5)
    ),
    ('2025-07-02 06:30:00', 'Sprint Complexity Pro', 'Pro-level sprint complexity',
     JSON_ARRAY(
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 90, 'powerZone', 6, 'targetCadence', 115),
             JSON_OBJECT('duration', 270, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 60, 'powerZone', 6, 'targetCadence', 120),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 150, 'powerZone', 6, 'targetCadence', 112),
             JSON_OBJECT('duration', 450, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 116),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 90, 'powerZone', 6, 'targetCadence', 118),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75)
     ),
     JSON_ARRAY(2,3,6)
    ),
    ('2025-07-03 18:15:00', 'Easy Flow Session', 'Easy flowing session',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 76),
             JSON_OBJECT('duration', 600, 'powerZone', 1, 'targetCadence', 84),
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 92),
             JSON_OBJECT('duration', 600, 'powerZone', 1, 'targetCadence', 84),
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 76)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-07-04 07:30:00', 'Independence Power Ride', 'Celebratory power ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,3,4,5,6)
    ),
    ('2025-07-05 08:00:00', 'Endurance Marathon Prep', 'Marathon endurance preparation',
     JSON_ARRAY(
             JSON_OBJECT('duration', 3600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 81),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1800, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 3600, 'powerZone', 2, 'targetCadence', 75)
     ),
     JSON_ARRAY(2,3,4)
    ),
    ('2025-07-06 06:00:00', 'Anaerobic Triple Stack', 'Three anaerobic stacks',
     JSON_ARRAY(
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 88),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 6, 'targetCadence', 105),
             JSON_OBJECT('duration', 300, 'powerZone', 6, 'targetCadence', 108),
             JSON_OBJECT('duration', 360, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 360, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 420, 'powerZone', 5, 'targetCadence', 94)
     ),
     JSON_ARRAY(2,5,6)
    ),
    ('2025-07-07 17:30:00', 'Active Rest Rhythm', 'Rhythmic active rest',
     JSON_ARRAY(
             JSON_OBJECT('duration', 720, 'powerZone', 1, 'targetCadence', 78),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 84),
             JSON_OBJECT('duration', 720, 'powerZone', 1, 'targetCadence', 81),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 86),
             JSON_OBJECT('duration', 720, 'powerZone', 1, 'targetCadence', 84),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 84),
             JSON_OBJECT('duration', 720, 'powerZone', 1, 'targetCadence', 81)
     ),
     JSON_ARRAY(1,2)
    ),
    ('2025-07-08 07:00:00', 'Threshold Complex Pro', 'Pro threshold complexity',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 82),
             JSON_OBJECT('duration', 240, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 88),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 720, 'powerZone', 4, 'targetCadence', 84),
             JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 840, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 78),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 420, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 720, 'powerZone', 4, 'targetCadence', 84),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 90)
     ),
     JSON_ARRAY(2,3,4,5)
    ),
    ('2025-07-09 06:30:00', 'Cadence Power Fusion', 'Fused cadence and power work',
     JSON_ARRAY(
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 65),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 95),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 360, 'powerZone', 4, 'targetCadence', 70),
             JSON_OBJECT('duration', 360, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 360, 'powerZone', 4, 'targetCadence', 100),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 65),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 80),
             JSON_OBJECT('duration', 360, 'powerZone', 3, 'targetCadence', 95)
     ),
     JSON_ARRAY(2,3,4)
    ),
    ('2025-07-10 18:00:00', 'Easy Multi-Cadence', 'Easy ride with cadence variety',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 72),
             JSON_OBJECT('duration', 600, 'powerZone', 1, 'targetCadence', 82),
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 92),
             JSON_OBJECT('duration', 600, 'powerZone', 1, 'targetCadence', 102),
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 82)
     ),
     JSON_ARRAY(1)
    );

insert ignore into users (created_at, username, email, password, usertype) values
('2025-01-04 06:30:00','user', 'user@email.com', '$2a$10$/RHeVS4SViu1MxNkW9dIMugnqWuJLVWHK02rMogZ1Rxy3i/qBMfwK', 'USER'),
('2025-01-04 06:30:00','member', 'member@email.com', '$2a$10$/RHeVS4SViu1MxNkW9dIMugnqWuJLVWHK02rMogZ1Rxy3i/qBMfwK', 'MEMBER'),
('2025-01-04 06:30:00','admin', 'admin@email.com', '$2a$10$/RHeVS4SViu1MxNkW9dIMugnqWuJLVWHK02rMogZ1Rxy3i/qBMfwK', 'ADMIN');

