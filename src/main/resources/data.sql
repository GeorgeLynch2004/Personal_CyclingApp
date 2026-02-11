TRUNCATE TABLE workouts;

INSERT IGNORE INTO workouts
(created_at, name, description, structure, target_zones)
VALUES
    ('2025-07-11 06:00:00', 'Morning Recovery Spin', 'Easy recovery ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1800, 'powerZone', 1, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 1800, 'powerZone', 1, 'targetCadence', 75)
     ),
     JSON_ARRAY(1,2)
    ),
    ('2025-07-12 07:30:00', 'Sweet Spot Intervals', 'Classic sweet spot training',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 1200, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 4, 'targetCadence', 87),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,4)
    ),
    ('2025-07-13 08:00:00', 'VO2 Max Pyramid', 'Pyramidal VO2 max intervals',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 120, 'powerZone', 5, 'targetCadence', 95),
             JSON_OBJECT('duration', 180, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 96),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 97),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 96),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 120, 'powerZone', 5, 'targetCadence', 95),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 78)
     ),
     JSON_ARRAY(2,5)
    ),
    ('2025-07-14 17:00:00', 'Tempo Cruise Control', 'Sustained tempo effort',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 2400, 'powerZone', 3, 'targetCadence', 84),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 1800, 'powerZone', 3, 'targetCadence', 85),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 77)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-07-15 06:30:00', 'Sprint Power Builder', 'Short anaerobic sprints',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 30, 'powerZone', 6, 'targetCadence', 120),
             JSON_OBJECT('duration', 330, 'powerZone', 1, 'targetCadence', 70),
             JSON_OBJECT('duration', 30, 'powerZone', 6, 'targetCadence', 122),
             JSON_OBJECT('duration', 330, 'powerZone', 1, 'targetCadence', 70),
             JSON_OBJECT('duration', 30, 'powerZone', 6, 'targetCadence', 120),
             JSON_OBJECT('duration', 330, 'powerZone', 1, 'targetCadence', 70),
             JSON_OBJECT('duration', 30, 'powerZone', 6, 'targetCadence', 118),
             JSON_OBJECT('duration', 330, 'powerZone', 1, 'targetCadence', 70),
             JSON_OBJECT('duration', 30, 'powerZone', 6, 'targetCadence', 120),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 78)
     ),
     JSON_ARRAY(1,2,6)
    ),
    ('2025-07-16 07:00:00', 'Endurance Foundation', 'Long steady endurance',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 3600, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 78)
     ),
     JSON_ARRAY(2)
    ),
    ('2025-07-17 18:30:00', 'Active Recovery Plus', 'Recovery with brief tempo touches',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 72),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 74),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 85),
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 73)
     ),
     JSON_ARRAY(1,2,3)
    ),
    ('2025-07-18 06:00:00', 'Threshold Progression', 'Progressive threshold intervals',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 480, 'powerZone', 4, 'targetCadence', 84),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 720, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 840, 'powerZone', 4, 'targetCadence', 87),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,4)
    ),
    ('2025-07-19 09:00:00', 'Over-Under Intervals', 'Classic over-under work',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 120, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 120, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 120, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 120, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 120, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 120, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 120, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 120, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 120, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 120, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 120, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 120, 'powerZone', 5, 'targetCadence', 90),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,4,5)
    ),
    ('2025-07-20 07:30:00', 'Cadence Ladder', 'Gradual cadence progression',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 70),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 90),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 100),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 90),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 70)
     ),
     JSON_ARRAY(2)
    ),
    ('2025-07-21 17:00:00', 'Micro Burst Madness', 'Short on/off intervals',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 15, 'powerZone', 6, 'targetCadence', 115),
             JSON_OBJECT('duration', 45, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 15, 'powerZone', 6, 'targetCadence', 115),
             JSON_OBJECT('duration', 45, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 15, 'powerZone', 6, 'targetCadence', 115),
             JSON_OBJECT('duration', 45, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 15, 'powerZone', 6, 'targetCadence', 115),
             JSON_OBJECT('duration', 45, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 15, 'powerZone', 6, 'targetCadence', 115),
             JSON_OBJECT('duration', 45, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 15, 'powerZone', 6, 'targetCadence', 115),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,6)
    ),
    ('2025-07-22 06:30:00', 'Tempo Sandwich', 'Tempo with endurance bread',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 3000, 'powerZone', 3, 'targetCadence', 84),
             JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 78)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-07-23 08:00:00', 'Tabata Intervals', 'High intensity Tabata protocol',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 20, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 10, 'powerZone', 1, 'targetCadence', 70),
             JSON_OBJECT('duration', 20, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 10, 'powerZone', 1, 'targetCadence', 70),
             JSON_OBJECT('duration', 20, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 10, 'powerZone', 1, 'targetCadence', 70),
             JSON_OBJECT('duration', 20, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 10, 'powerZone', 1, 'targetCadence', 70),
             JSON_OBJECT('duration', 20, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 10, 'powerZone', 1, 'targetCadence', 70),
             JSON_OBJECT('duration', 20, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 10, 'powerZone', 1, 'targetCadence', 70),
             JSON_OBJECT('duration', 20, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 10, 'powerZone', 1, 'targetCadence', 70),
             JSON_OBJECT('duration', 20, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 78)
     ),
     JSON_ARRAY(1,2,6)
    ),
    ('2025-07-24 18:00:00', 'Easy Spin Recovery', 'Pure recovery ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 2700, 'powerZone', 1, 'targetCadence', 75),
             JSON_OBJECT('duration', 1800, 'powerZone', 1, 'targetCadence', 80),
             JSON_OBJECT('duration', 2700, 'powerZone', 1, 'targetCadence', 75)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-07-25 07:00:00', 'Race Simulation', 'Simulated race efforts',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 88),
             JSON_OBJECT('duration', 180, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 240, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 60, 'powerZone', 6, 'targetCadence', 115),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 95),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 96),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 78)
     ),
     JSON_ARRAY(2,3,4,5,6)
    ),
    ('2025-07-26 06:00:00', 'Hill Simulation Repeats', 'Simulated climbing intervals',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 70),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 68),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 72),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 70),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,4)
    ),
    ('2025-07-27 09:30:00', 'Sunday Long Ride', 'Extended endurance session',
     JSON_ARRAY(
             JSON_OBJECT('duration', 2400, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 3600, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 84),
             JSON_OBJECT('duration', 2400, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-07-28 17:30:00', 'Neuromuscular Power', 'Maximum neuromuscular recruitment',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 10, 'powerZone', 6, 'targetCadence', 130),
             JSON_OBJECT('duration', 350, 'powerZone', 1, 'targetCadence', 70),
             JSON_OBJECT('duration', 10, 'powerZone', 6, 'targetCadence', 130),
             JSON_OBJECT('duration', 350, 'powerZone', 1, 'targetCadence', 70),
             JSON_OBJECT('duration', 10, 'powerZone', 6, 'targetCadence', 130),
             JSON_OBJECT('duration', 350, 'powerZone', 1, 'targetCadence', 70),
             JSON_OBJECT('duration', 10, 'powerZone', 6, 'targetCadence', 130),
             JSON_OBJECT('duration', 350, 'powerZone', 1, 'targetCadence', 70),
             JSON_OBJECT('duration', 10, 'powerZone', 6, 'targetCadence', 130),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 78)
     ),
     JSON_ARRAY(1,2,6)
    ),
    ('2025-07-29 06:30:00', 'Threshold Triplets', 'Three sets of threshold work',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 900, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 900, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 900, 'powerZone', 4, 'targetCadence', 87),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,4)
    ),
    ('2025-07-30 07:00:00', 'Mixed Zone Medley', 'All zones workout',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 240, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 60, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 240, 'powerZone', 4, 'targetCadence', 87),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 93),
             JSON_OBJECT('duration', 60, 'powerZone', 6, 'targetCadence', 112),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,3,4,5,6)
    ),
    ('2025-07-31 18:00:00', 'Endurance Pace Builder', 'Progressive endurance ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 82),
             JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 80)
     ),
     JSON_ARRAY(2)
    ),
    ('2025-08-01 06:00:00', '40-20 Intervals', 'Hard 40s, easy 20s',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 40, 'powerZone', 5, 'targetCadence', 100),
             JSON_OBJECT('duration', 20, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 40, 'powerZone', 5, 'targetCadence', 100),
             JSON_OBJECT('duration', 20, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 40, 'powerZone', 5, 'targetCadence', 100),
             JSON_OBJECT('duration', 20, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 40, 'powerZone', 5, 'targetCadence', 100),
             JSON_OBJECT('duration', 20, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 40, 'powerZone', 5, 'targetCadence', 100),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 40, 'powerZone', 5, 'targetCadence', 100),
             JSON_OBJECT('duration', 20, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 40, 'powerZone', 5, 'targetCadence', 100),
             JSON_OBJECT('duration', 20, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 40, 'powerZone', 5, 'targetCadence', 100),
             JSON_OBJECT('duration', 20, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 40, 'powerZone', 5, 'targetCadence', 100),
             JSON_OBJECT('duration', 20, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 40, 'powerZone', 5, 'targetCadence', 100),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,5)
    ),
    ('2025-08-02 08:30:00', 'Tempo Pyramid', 'Pyramidal tempo progression',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 84),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-08-03 10:00:00', 'Gran Fondo Prep', 'Long mixed intensity ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 2400, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 1800, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 87),
             JSON_OBJECT('duration', 2400, 'powerZone', 2, 'targetCadence', 77)
     ),
     JSON_ARRAY(2,3,4)
    ),
    ('2025-08-04 17:00:00', 'Recovery Intervals', 'Active recovery with structure',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 74),
             JSON_OBJECT('duration', 180, 'powerZone', 2, 'targetCadence', 82),
             JSON_OBJECT('duration', 720, 'powerZone', 1, 'targetCadence', 76),
             JSON_OBJECT('duration', 180, 'powerZone', 2, 'targetCadence', 83),
             JSON_OBJECT('duration', 720, 'powerZone', 1, 'targetCadence', 75),
             JSON_OBJECT('duration', 180, 'powerZone', 2, 'targetCadence', 82),
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 74)
     ),
     JSON_ARRAY(1,2)
    ),
    ('2025-08-05 06:30:00', 'VO2 Max Blaster', 'Maximum aerobic power',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 95),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 96),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 97),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 96),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 95),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,5)
    ),
    ('2025-08-06 07:00:00', 'Threshold Extender', 'Extended threshold intervals',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 1500, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 480, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1500, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,4)
    ),
    ('2025-08-07 18:30:00', 'Cadence Drills', 'High cadence focus',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 420, 'powerZone', 2, 'targetCadence', 95),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 420, 'powerZone', 2, 'targetCadence', 100),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 420, 'powerZone', 2, 'targetCadence', 105),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 420, 'powerZone', 2, 'targetCadence', 100),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 420, 'powerZone', 2, 'targetCadence', 95),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 78)
     ),
     JSON_ARRAY(2)
    ),
    ('2025-08-08 06:00:00', 'Anaerobic Capacity Builder', 'Sustained anaerobic work',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 90, 'powerZone', 6, 'targetCadence', 108),
             JSON_OBJECT('duration', 270, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 90, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 270, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 90, 'powerZone', 6, 'targetCadence', 112),
             JSON_OBJECT('duration', 480, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 90, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 270, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 90, 'powerZone', 6, 'targetCadence', 108),
             JSON_OBJECT('duration', 270, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 90, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,6)
    ),
    ('2025-08-09 09:00:00', 'Endurance with Tempo Bursts', 'Endurance base with tempo sections',
     JSON_ARRAY(
             JSON_OBJECT('duration', 2400, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 84),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 85),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 84),
             JSON_OBJECT('duration', 2400, 'powerZone', 2, 'targetCadence', 77)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-08-10 07:30:00', 'Sweet Spot Extended', 'Long sweet spot work',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 1800, 'powerZone', 4, 'targetCadence', 84),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1800, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,4)
    ),
    ('2025-08-11 17:00:00', 'Easy Endurance', 'Simple endurance session',
     JSON_ARRAY(
             JSON_OBJECT('duration', 3600, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 2400, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 3600, 'powerZone', 2, 'targetCadence', 78)
     ),
     JSON_ARRAY(2)
    ),
    ('2025-08-12 06:30:00', 'Criterium Simulation', 'Race-style high intensity',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 85),
             JSON_OBJECT('duration', 45, 'powerZone', 6, 'targetCadence', 115),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 84),
             JSON_OBJECT('duration', 30, 'powerZone', 6, 'targetCadence', 118),
             JSON_OBJECT('duration', 240, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 60, 'powerZone', 6, 'targetCadence', 112),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 84),
             JSON_OBJECT('duration', 30, 'powerZone', 6, 'targetCadence', 120),
             JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 45, 'powerZone', 6, 'targetCadence', 115),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 78)
     ),
     JSON_ARRAY(2,3,6)
    ),
    ('2025-08-13 08:00:00', 'Progressive Overload', 'Incrementally harder intervals',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 4, 'targetCadence', 87),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 93),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,3,4,5)
    ),
    ('2025-08-14 18:30:00', 'Light Recovery Ride', 'Gentle recovery session',
     JSON_ARRAY(
             JSON_OBJECT('duration', 2400, 'powerZone', 1, 'targetCadence', 74),
             JSON_OBJECT('duration', 1800, 'powerZone', 1, 'targetCadence', 78),
             JSON_OBJECT('duration', 2400, 'powerZone', 1, 'targetCadence', 74)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-08-15 06:00:00', '30-30 Intervals', 'Classic 30 on/30 off',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 30, 'powerZone', 5, 'targetCadence', 98),
             JSON_OBJECT('duration', 30, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 30, 'powerZone', 5, 'targetCadence', 98),
             JSON_OBJECT('duration', 30, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 30, 'powerZone', 5, 'targetCadence', 98),
             JSON_OBJECT('duration', 30, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 30, 'powerZone', 5, 'targetCadence', 98),
             JSON_OBJECT('duration', 30, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 30, 'powerZone', 5, 'targetCadence', 98),
             JSON_OBJECT('duration', 30, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 30, 'powerZone', 5, 'targetCadence', 98),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 30, 'powerZone', 5, 'targetCadence', 98),
             JSON_OBJECT('duration', 30, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 30, 'powerZone', 5, 'targetCadence', 98),
             JSON_OBJECT('duration', 30, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 30, 'powerZone', 5, 'targetCadence', 98),
             JSON_OBJECT('duration', 30, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 30, 'powerZone', 5, 'targetCadence', 98),
             JSON_OBJECT('duration', 30, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 30, 'powerZone', 5, 'targetCadence', 98),
             JSON_OBJECT('duration', 30, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 30, 'powerZone', 5, 'targetCadence', 98),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,5)
    ),
    ('2025-08-16 10:00:00', 'Century Prep Long Ride', 'Ultra-endurance preparation',
     JSON_ARRAY(
             JSON_OBJECT('duration', 3600, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 3600, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 1800, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 2400, 'powerZone', 2, 'targetCadence', 77),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 3600, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-08-17 07:00:00', 'Tempo Threshold Mix', 'Combined tempo and threshold',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 900, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 87),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,3,4)
    ),
    ('2025-08-18 17:30:00', 'Active Rest Plus', 'Recovery with brief efforts',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 75),
             JSON_OBJECT('duration', 120, 'powerZone', 3, 'targetCadence', 85),
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 76),
             JSON_OBJECT('duration', 120, 'powerZone', 3, 'targetCadence', 86),
             JSON_OBJECT('duration', 900, 'powerZone', 1, 'targetCadence', 74),
             JSON_OBJECT('duration', 120, 'powerZone', 3, 'targetCadence', 85),
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 75)
     ),
     JSON_ARRAY(1,3)
    ),
    ('2025-08-19 06:30:00', 'Strength Endurance', 'Low cadence strength work',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 480, 'powerZone', 3, 'targetCadence', 60),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 480, 'powerZone', 3, 'targetCadence', 62),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 480, 'powerZone', 3, 'targetCadence', 58),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 480, 'powerZone', 3, 'targetCadence', 60),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-08-20 08:00:00', 'VO2 Descending Ladder', 'Descending VO2 intervals',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 95),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 96),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 97),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 120, 'powerZone', 5, 'targetCadence', 98),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,5)
    ),
    ('2025-08-21 18:00:00', 'Steady State Endurance', 'Consistent endurance pace',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 5400, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 78)
     ),
     JSON_ARRAY(2)
    ),
    ('2025-08-22 06:00:00', 'Anaerobic Repeats', 'Repeated anaerobic efforts',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 108),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 112),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 120, 'powerZone', 6, 'targetCadence', 108),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,6)
    ),
    ('2025-08-23 09:30:00', 'Weekend Warrior', 'Long mixed training ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 2400, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 300, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 2400, 'powerZone', 2, 'targetCadence', 77)
     ),
     JSON_ARRAY(2,3,4,5)
    ),
    ('2025-08-24 07:30:00', 'Polarized Training', 'Easy/hard polarized approach',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1800, 'powerZone', 1, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 95),
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 74),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 96),
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 95),
             JSON_OBJECT('duration', 1800, 'powerZone', 1, 'targetCadence', 74)
     ),
     JSON_ARRAY(1,5)
    ),
    ('2025-08-25 17:00:00', 'Threshold Quarters', 'Four threshold blocks',
     JSON_ARRAY(
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 87),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,4)
    ),
    ('2025-08-26 06:30:00', 'Mixed Intensity Fartlek', 'Random intensity changes',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 180, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 120, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 60, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 94),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 120, 'powerZone', 4, 'targetCadence', 87),
             JSON_OBJECT('duration', 90, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 30, 'powerZone', 6, 'targetCadence', 115),
             JSON_OBJECT('duration', 300, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,3,4,5,6)
    ),
    ('2025-08-27 08:00:00', 'Endurance Pace Variety', 'Varied endurance pacing',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 82),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 80)
     ),
     JSON_ARRAY(2)
    ),
    ('2025-08-28 18:30:00', 'Easy Recovery Flow', 'Flowing recovery session',
     JSON_ARRAY(
             JSON_OBJECT('duration', 2700, 'powerZone', 1, 'targetCadence', 76),
             JSON_OBJECT('duration', 1800, 'powerZone', 1, 'targetCadence', 80),
             JSON_OBJECT('duration', 2700, 'powerZone', 1, 'targetCadence', 76)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-08-29 06:00:00', 'Sprint Pyramid', 'Pyramidal sprint structure',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 15, 'powerZone', 6, 'targetCadence', 120),
             JSON_OBJECT('duration', 345, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 30, 'powerZone', 6, 'targetCadence', 118),
             JSON_OBJECT('duration', 330, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 45, 'powerZone', 6, 'targetCadence', 115),
             JSON_OBJECT('duration', 315, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 30, 'powerZone', 6, 'targetCadence', 118),
             JSON_OBJECT('duration', 330, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 15, 'powerZone', 6, 'targetCadence', 120),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,6)
    ),
    ('2025-08-30 10:00:00', 'Sportive Simulator', 'Event simulation ride',
     JSON_ARRAY(
             JSON_OBJECT('duration', 2400, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 1800, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 480, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 92),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 360, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 2400, 'powerZone', 2, 'targetCadence', 77)
     ),
     JSON_ARRAY(2,3,4,5)
    ),
    ('2025-08-31 07:30:00', 'Tempo Doubles', 'Two long tempo blocks',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 2100, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 2100, 'powerZone', 3, 'targetCadence', 84),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-09-01 17:00:00', 'Recovery Spin Easy', 'Ultra-easy recovery',
     JSON_ARRAY(
             JSON_OBJECT('duration', 3600, 'powerZone', 1, 'targetCadence', 74),
             JSON_OBJECT('duration', 2400, 'powerZone', 1, 'targetCadence', 76),
             JSON_OBJECT('duration', 3600, 'powerZone', 1, 'targetCadence', 74)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-09-02 06:30:00', 'VO2 Max Sets', 'Multiple VO2 sets',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 94),
             JSON_OBJECT('duration', 180, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 95),
             JSON_OBJECT('duration', 180, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 96),
             JSON_OBJECT('duration', 480, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 95),
             JSON_OBJECT('duration', 180, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 94),
             JSON_OBJECT('duration', 180, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 240, 'powerZone', 5, 'targetCadence', 96),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,5)
    ),
    ('2025-09-03 08:00:00', 'Threshold Builder Pro', 'Advanced threshold work',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 720, 'powerZone', 4, 'targetCadence', 84),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 900, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1080, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,4)
    ),
    ('2025-09-04 18:00:00', 'Cadence Variations', 'Multi-cadence endurance',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 72),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 84),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 90),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 96),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 90),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 84)
     ),
     JSON_ARRAY(2)
    ),
    ('2025-09-05 06:00:00', 'Anaerobic Power Max', 'Maximum anaerobic power',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 150, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 330, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 150, 'powerZone', 6, 'targetCadence', 112),
             JSON_OBJECT('duration', 330, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 150, 'powerZone', 6, 'targetCadence', 108),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 150, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 330, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 150, 'powerZone', 6, 'targetCadence', 112),
             JSON_OBJECT('duration', 330, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 150, 'powerZone', 6, 'targetCadence', 108),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,6)
    ),
    ('2025-09-06 09:00:00', 'Base Building Long', 'Aerobic base development',
     JSON_ARRAY(
             JSON_OBJECT('duration', 3000, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 3600, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 3000, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 3000, 'powerZone', 2, 'targetCadence', 78)
     ),
     JSON_ARRAY(2)
    ),
    ('2025-09-07 07:30:00', 'Sweet Spot Stacks', 'Stacked sweet spot intervals',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 900, 'powerZone', 4, 'targetCadence', 84),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 900, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 900, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 900, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,4)
    ),
    ('2025-09-08 17:00:00', 'Active Recovery Blend', 'Mixed recovery intensities',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1500, 'powerZone', 1, 'targetCadence', 74),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 82),
             JSON_OBJECT('duration', 1200, 'powerZone', 1, 'targetCadence', 76),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 83),
             JSON_OBJECT('duration', 1500, 'powerZone', 1, 'targetCadence', 75)
     ),
     JSON_ARRAY(1,2)
    ),
    ('2025-09-09 06:30:00', 'Over-Under Mastery', 'Extended over-under work',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 180, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 120, 'powerZone', 5, 'targetCadence', 91),
             JSON_OBJECT('duration', 180, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 120, 'powerZone', 5, 'targetCadence', 91),
             JSON_OBJECT('duration', 180, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 120, 'powerZone', 5, 'targetCadence', 91),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 180, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 120, 'powerZone', 5, 'targetCadence', 91),
             JSON_OBJECT('duration', 180, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 120, 'powerZone', 5, 'targetCadence', 91),
             JSON_OBJECT('duration', 180, 'powerZone', 4, 'targetCadence', 85),
             JSON_OBJECT('duration', 120, 'powerZone', 5, 'targetCadence', 91),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,4,5)
    ),
    ('2025-09-10 08:00:00', 'Hill Climb Repeats', 'Sustained climbing efforts',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 480, 'powerZone', 4, 'targetCadence', 68),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 70),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 720, 'powerZone', 4, 'targetCadence', 72),
             JSON_OBJECT('duration', 360, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 70),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,4)
    ),
    ('2025-09-11 18:30:00', 'Easy Pedal Session', 'Gentle easy spinning',
     JSON_ARRAY(
             JSON_OBJECT('duration', 2400, 'powerZone', 1, 'targetCadence', 75),
             JSON_OBJECT('duration', 1800, 'powerZone', 1, 'targetCadence', 78),
             JSON_OBJECT('duration', 2400, 'powerZone', 1, 'targetCadence', 76)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-09-12 06:00:00', 'Power Surge Intervals', 'Surging power efforts',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 60, 'powerZone', 5, 'targetCadence', 95),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 45, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 60, 'powerZone', 5, 'targetCadence', 96),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 45, 'powerZone', 6, 'targetCadence', 112),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 60, 'powerZone', 5, 'targetCadence', 95),
             JSON_OBJECT('duration', 180, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 45, 'powerZone', 6, 'targetCadence', 110),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,3,5,6)
    ),
    ('2025-09-13 10:00:00', 'Endurance Epic', 'Long sustained endurance',
     JSON_ARRAY(
             JSON_OBJECT('duration', 3600, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 4800, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 3600, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 3600, 'powerZone', 2, 'targetCadence', 78)
     ),
     JSON_ARRAY(2)
    ),
    ('2025-09-14 07:30:00', 'Tempo Power Focus', 'Tempo with power emphasis',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 1500, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 480, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1800, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 480, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 1500, 'powerZone', 3, 'targetCadence', 84),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-09-15 17:00:00', 'Recovery Zone One', 'Pure zone 1 recovery',
     JSON_ARRAY(
             JSON_OBJECT('duration', 3000, 'powerZone', 1, 'targetCadence', 74),
             JSON_OBJECT('duration', 2400, 'powerZone', 1, 'targetCadence', 77),
             JSON_OBJECT('duration', 3000, 'powerZone', 1, 'targetCadence', 75)
     ),
     JSON_ARRAY(1)
    ),
    ('2025-09-16 06:30:00', 'Threshold Climber', 'Threshold with low cadence',
     JSON_ARRAY(
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 720, 'powerZone', 4, 'targetCadence', 65),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 720, 'powerZone', 4, 'targetCadence', 68),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 720, 'powerZone', 4, 'targetCadence', 70),
             JSON_OBJECT('duration', 300, 'powerZone', 2, 'targetCadence', 80),
             JSON_OBJECT('duration', 720, 'powerZone', 4, 'targetCadence', 68),
             JSON_OBJECT('duration', 900, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,4)
    ),
    ('2025-09-17 08:00:00', 'VO2 Max Finisher', 'Final VO2 max push',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 94),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 95),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 96),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 97),
             JSON_OBJECT('duration', 240, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 180, 'powerZone', 5, 'targetCadence', 96),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,5)
    ),
    ('2025-09-18 18:00:00', 'Endurance Mix Plus', 'Endurance with variety',
     JSON_ARRAY(
             JSON_OBJECT('duration', 2400, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 77),
             JSON_OBJECT('duration', 600, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 2400, 'powerZone', 2, 'targetCadence', 78)
     ),
     JSON_ARRAY(2,3)
    ),
    ('2025-09-19 06:00:00', 'Sprint Finisher', 'Workout ending with sprints',
     JSON_ARRAY(
             JSON_OBJECT('duration', 1800, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 600, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 30, 'powerZone', 6, 'targetCadence', 118),
             JSON_OBJECT('duration', 330, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 30, 'powerZone', 6, 'targetCadence', 120),
             JSON_OBJECT('duration', 330, 'powerZone', 2, 'targetCadence', 75),
             JSON_OBJECT('duration', 30, 'powerZone', 6, 'targetCadence', 122),
             JSON_OBJECT('duration', 1200, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,3,6)
    ),
    ('2025-09-20 09:30:00', 'Century Training Ride', 'Long event preparation',
     JSON_ARRAY(
             JSON_OBJECT('duration', 4200, 'powerZone', 2, 'targetCadence', 76),
             JSON_OBJECT('duration', 3600, 'powerZone', 2, 'targetCadence', 78),
             JSON_OBJECT('duration', 1800, 'powerZone', 3, 'targetCadence', 82),
             JSON_OBJECT('duration', 2400, 'powerZone', 2, 'targetCadence', 77),
             JSON_OBJECT('duration', 1200, 'powerZone', 3, 'targetCadence', 83),
             JSON_OBJECT('duration', 600, 'powerZone', 4, 'targetCadence', 86),
             JSON_OBJECT('duration', 3600, 'powerZone', 2, 'targetCadence', 76)
     ),
     JSON_ARRAY(2,3,4)
    );


insert ignore into users (created_at, username, email, password, usertype) values
('2025-01-04 06:30:00','user', 'user@email.com', '$2a$10$/RHeVS4SViu1MxNkW9dIMugnqWuJLVWHK02rMogZ1Rxy3i/qBMfwK', 'USER'),
('2025-01-04 06:30:00','member', 'member@email.com', '$2a$10$/RHeVS4SViu1MxNkW9dIMugnqWuJLVWHK02rMogZ1Rxy3i/qBMfwK', 'MEMBER'),
('2025-01-04 06:30:00','admin', 'admin@email.com', '$2a$10$/RHeVS4SViu1MxNkW9dIMugnqWuJLVWHK02rMogZ1Rxy3i/qBMfwK', 'ADMIN');

