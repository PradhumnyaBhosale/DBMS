mysql> create function func(rad INT)
    -> returns INT
    -> DETERMINISTIC
    -> BEGIN
    -> DECLARE ar INT;
    -> SET ar = 0;
    -> SET ar = 3*rad*rad;
    -> return ar;
    -> END;
    -> //
