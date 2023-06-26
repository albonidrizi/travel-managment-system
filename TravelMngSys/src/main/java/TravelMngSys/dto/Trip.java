package TravelMngSys.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Trip {
    private int id;
    private String TripName;
    private String About;
    private String travelTime;
    private int price;
    private int Itinerary_id;
}
