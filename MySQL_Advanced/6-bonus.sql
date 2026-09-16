DELIMITER $$

CREATE PROCEDURE AddBonus(
    IN user_id INT,
    IN project_name VARCHAR(255),
    IN score INT
)
BEGIN
    DECLARE proj_id INT;

    -- Kontrollo nëse projekti ekziston
    SELECT id INTO proj_id
    FROM projects
    WHERE name = project_name
    LIMIT 1;

    -- Nëse s'ekziston, krijoje
    IF proj_id IS NULL THEN
        INSERT INTO projects (name) VALUES (project_name);
        SET proj_id = LAST_INSERT_ID();
    END IF;

    -- Shto korrigjimin e ri
    INSERT INTO corrections (user_id, project_id, score)
    VALUES (user_id, proj_id, score);
END$$

DELIMITER ;