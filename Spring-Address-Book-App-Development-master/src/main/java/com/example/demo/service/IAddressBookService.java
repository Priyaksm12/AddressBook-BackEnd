package com.example.demo.service;

import com.example.demo.dto.AddressBookDTO;
import com.example.demo.model.Address;

import java.util.List;

//Created interface for all service methods to achieve abstraction
public interface IAddressBookService {

    public String getWelcome();
    public String saveDataToRepo(AddressBookDTO addressBookDTO);
    public List<Address> getAddressBookDataToken(String token);
    public Address getRecordOfIdFromToken(String token);
    public Address updateRecordByToken(String token, AddressBookDTO addressBookDTO);
    public Address deleteRecordByToken(String token);
    public List<Address> SortByCity();
    public List<Address> SortByState();
    public List<Address> SortByZip();

    //public List<Address> findProductsWithSorting(String Field);

//    public Address sortByCity(AddressBookDTO addressBookDTO);
}