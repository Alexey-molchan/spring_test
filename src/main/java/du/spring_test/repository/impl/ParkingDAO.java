package du.spring_test.repository.impl;

import du.spring_test.model.Parking;
import du.spring_test.model.User;
import du.spring_test.repository.IParkingDAO;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class ParkingDAO implements IParkingDAO {

    @PersistenceContext
    private EntityManager manager;

    @Override
    public Parking view(String name) {
        TypedQuery<Parking> query = manager.createQuery("SELECT pp from ParkingPlace pp where pp.parkingArea.id = (SELECT pa FROM ParkingArea pa where pa.parking.id = (select p.id FROM Parking p where p.name='" + name + "')", Parking.class);
        List<Parking> parkings = query.getResultList();
        if (parkings.size() > 0) {
            return parkings.get(0);
        }
        return null;
    }


    @Override
    public void save(Parking parking) {
        manager.persist(parking);
    }
}
