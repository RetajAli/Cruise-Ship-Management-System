DELIMITER $$

CREATE TRIGGER update_bill_amount_after_reservation_update
AFTER UPDATE ON Reservation
FOR EACH ROW
BEGIN
    UPDATE Bill
    SET Amount = (SELECT Amount FROM FlightPrice WHERE ReservationId = OLD.ReservationId)
    WHERE ReservationId = OLD.ReservationId;
END $$

DELIMITER ;




