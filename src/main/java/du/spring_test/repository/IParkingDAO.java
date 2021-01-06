package du.spring_test.repository;

import du.spring_test.model.Parking;

public interface IParkingDAO {

    Parking view(String name);

    void save(Parking parking);
}
