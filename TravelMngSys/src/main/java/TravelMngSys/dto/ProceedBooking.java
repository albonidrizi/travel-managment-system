package TravelMngSys.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProceedBooking {

    private int id;
    private String nameTravel;
    private int price;
    private int numberOfPersones;
    private int totalPrice;
    private int TripId;
    private int ClientData;

}
