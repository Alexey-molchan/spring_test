package du.spring_test.repository.impl;

import du.spring_test.model.*;
import du.spring_test.repository.IParkingDAO;
import org.hibernate.Hibernate;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Repository
@Transactional
public class ParkingDAO implements IParkingDAO {

    @PersistenceContext
    private EntityManager manager;

//    @Override
//    public Parking view(String name) {
//        TypedQuery<Parking> query = manager.createQuery("select p.id FROM Parking p where p.name='" + name + "')", Parking.class);
//        List<Parking> parkings = query.getResultList();
//        if (parkings.size() > 0) {
//            return parkings.get(0);
//        }
//        return null;
//    }


    @Override
    public Parking getByParkingName(String name) {
                TypedQuery<Parking> query = manager.createQuery("select p FROM Parking p where p.name='" + name + "'", Parking.class);
        List<Parking> parkings = query.getResultList();
        initLazyParking(parkings);
        if (parkings.size() > 0) {
            return parkings.get(0);
        }
        return null;

//        Parking p = manager.find(Parking.class, name);
//        if (p != null){
//            p.getParkingAreas().forEach(area -> {
//                Hibernate.initialize(area);
//                area.getPlaces().forEach(Hibernate::initialize);
//            });
//        }
//        return Optional.of(p);

    }

    private void initLazyParking(List<Parking> parkings) {
        for (Parking parking : parkings) {
            for (ParkingArea parkingArea : parking.getParkingAreas()) {
                for (ParkingPlace parkingPlace : parkingArea.getPlaces())
                Hibernate.initialize(parkingPlace);
            }
        }
    }

    @Override
    public void save(Parking parking) {
        manager.persist(parking);
    }
}
