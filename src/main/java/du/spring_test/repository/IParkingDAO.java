package du.spring_test.repository;

import du.spring_test.model.Parking;

import java.util.List;
import java.util.Optional;

public interface IParkingDAO {

    Parking getByParkingName(String name);

    void save(Parking parking);
}
