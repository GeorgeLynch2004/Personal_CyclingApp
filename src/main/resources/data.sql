SET FOREIGN_KEY_CHECKS =0;
TRUNCATE TABLE workouts;

INSERT IGNORE INTO workouts
(created_at, name, description, structure, target_zones)
VALUES
    (
        '2025-01-01 08:00:00',
        'Sweet Spot Intervals',
        'Classic sweet spot workout',
        JSON_ARRAY(
                JSON_OBJECT('duration', 600, 'powerZone', 88, 'targetCadence', 70),
                JSON_OBJECT('duration', 600, 'powerZone', 88, 'targetCadence', 70),
                JSON_OBJECT('duration', 600, 'powerZone', 88, 'targetCadence', 70)
        ),
        JSON_ARRAY(3, 4)
    ),
    (
        '2025-01-02 09:00:00',
        'VO2 Max Repeats',
        'Short high-intensity intervals',
        JSON_ARRAY(
                JSON_OBJECT('duration', 600, 'powerZone', 88, 'targetCadence', 70),
                JSON_OBJECT('duration', 600, 'powerZone', 88, 'targetCadence', 70),
                JSON_OBJECT('duration', 600, 'powerZone', 88, 'targetCadence', 70)
        ),
        JSON_ARRAY(5)
    ),
    (
        '2025-01-03 07:30:00',
        'Endurance Ride',
        'Long steady endurance session',
        JSON_ARRAY(
                JSON_OBJECT('duration', 600, 'powerZone', 88, 'targetCadence', 70),
                JSON_OBJECT('duration', 600, 'powerZone', 88, 'targetCadence', 70),
                JSON_OBJECT('duration', 600, 'powerZone', 88, 'targetCadence', 70)
        ),
        JSON_ARRAY(2)
    );
