package com.example.demo.repository;

import com.example.demo.model.Address;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

//Created AddressBookRepository extending JpaRepository so that we perform CRUD and can implement custom query methods
public interface AddressRepository extends JpaRepository<Address, Integer> {
//    @Query(value = "select * from address_book where first_name = :first_name", nativeQuery = true)
//    public List<Address> findByFirstName(@Param(value = "first_name") String firstName);
//
//    @Query(value = "select * from address_book ", nativeQuery = true)
//    public List<Address> findAllData();

    @Query(value = "select * from address order by city", nativeQuery = true)
    public List<Address> SortByCity();
    //public List<Address> findByFirstName(@Param(value = "first_name") String firstName);

    @Query(value = "select * from address order by state", nativeQuery = true)
    public List<Address> SortByState();
    //public List<Address> findByFirstName(@Param(value = "first_name") String firstName);

    @Query(value = "select * from address order by zip", nativeQuery = true)
    public List<Address> SortByZip();
    //public List<Address> findByFirstName(@Param(value = "first_name") String firstName);



}
