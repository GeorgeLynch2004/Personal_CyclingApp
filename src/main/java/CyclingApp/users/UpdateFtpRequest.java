package CyclingApp.users;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import lombok.Data;

@Data
public class UpdateFtpRequest {
    @Min(80)@Max(600)
    private int ftp;

}
