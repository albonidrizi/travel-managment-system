package TravelMngSys.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ClientData {

    private int id;
    private String name;
    private String surname;
    private String country;
    private String city;
    private String phone;
    private String email;

}
