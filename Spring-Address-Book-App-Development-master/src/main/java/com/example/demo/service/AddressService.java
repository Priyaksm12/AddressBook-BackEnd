package com.example.demo.service;

import com.example.demo.dto.AddressBookDTO;
import com.example.demo.exception.AddressBookException;
import com.example.demo.model.Address;
import com.example.demo.repository.AddressRepository;
import com.example.demo.util.EmailSenderService;
import com.example.demo.util.TokenUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
//Slf4j generates logger instance
@Service
@Slf4j
public class AddressService implements IAddressBookService {

    //Autowired repository class to inject its dependency
    @Autowired
    AddressRepository repository;

    //Autowired Tokenutil  to inject its dependency
    @Autowired
    TokenUtil tokenutil;

    //Autowired EmailSenderService  to inject its dependency
    @Autowired
    private EmailSenderService sender;

    //Created service method which serves controller api to return welcome message
    public String getWelcome() {
        return "Welcome to Address Book !";
    }

    //Created service method which serves controller api to post data
    public String saveDataToRepo(AddressBookDTO addressBookDTO) {
        Address newAddress = new Address(addressBookDTO);
        repository.save(newAddress);
        String token = tokenutil.createToken(newAddress.getId());
        sender.sendEmail(newAddress.getEmail(), "Test Email", "Registered SuccessFully, Hi "
                + newAddress.getFirstName() + " click here -> " +
                "http://localhost:8085/addressbook/getAll/" + token);
        return token;
    }


    //Created service method which serves controller api to get record by token
    @Override
    public List<Address> getAddressBookDataToken(String token) {
        int id = tokenutil.decodeToken(token);
        Optional<Address> isContactPresent = repository.findById(id);
        if (isContactPresent.isPresent()) {
            List<Address> addressList = repository.findAll();
            return addressList;
        } else {
            System.out.println("Exception ...Token not found!");
            return null;
        }
    }

    //Created  method which serves controller api to get record by token
    @Override
    public Address getRecordOfIdFromToken(String token) {
        Integer id = tokenutil.decodeToken(token);
        Optional<Address> address = repository.findById(id);
        if (address.isPresent()) {
            repository.getById(id);
        } else {
            throw new AddressBookException("Specific id not found");
        }
        return address.get();
    }


    //Created service method which serves controller api to update record by token
    @Override
    public Address updateRecordByToken(String token, AddressBookDTO addressBookDTO) {
        Integer id = tokenutil.decodeToken(token);
        Optional<Address> addressBook = repository.findById(id);
        if (addressBook.isEmpty()) {
            throw new AddressBookException("AddressBook details for id not found");
        }
        Address newBook = new Address(id, addressBookDTO);
        repository.save(newBook);
        sender.sendEmail(newBook.getEmail(), "Test Email", "Updated SuccessFully "
                + newBook.getFirstName() + " click here -> " +
                "http://localhost:8080/addressbook/getAll/" + token);
        return newBook;
    }

    //Created service method which serves controller api to delete record by token
    @Override
    public Address deleteRecordByToken(String token) {
        Integer id = tokenutil.decodeToken(token);
        Optional<Address> newAddressBook = repository.findById(id);
        if (newAddressBook.isEmpty()) {
            throw new AddressBookException("Address Book Details not found");
        } else {
            repository.deleteById(id);
            sender.sendEmail(newAddressBook.get().getEmail(), "Test Email", "Deleted SuccessFully.. "
                    + newAddressBook.get() + " click here -> " +
                    "http://localhost:8085/addressbook/getAll/" + token);
        }
        return newAddressBook.get();
    }
    public List<Address> SortByCity() {
        List<Address> listOfCity = repository.SortByCity();
        return listOfCity;
    }
    public List<Address> SortByState() {

        List<Address> listOfState = repository.SortByState();
        return listOfState;
    }
    public List<Address> SortByZip() {

        List<Address> listOfZip = repository.SortByZip();
        return listOfZip;
    }

//    public List<Address> findProductsWithSorting(String Field){
//        return repository.findAll(Sort.by(Sort.Direction.ASC,Field));
//
//    }


    //Created service method which serves controller api to sort in ascending order
//    @Override
//    public List<Address> sortByPriceAscending() {
//        List<Address> getBookList = repository.getSortedReverseListOfBooks();
//        return getBookList;
//    }
//
//    //Created service method which serves controller api to sort in descending order
//    @Override
//    public List<Book> sortByPriceDescending() {
//        List<Book> getBookList = bookRepository.getSortedListOfBooks();
//        return getBookList;
//    }




//    public List<Address> getSortedBook(String searchQuery, String sortOrder) {
//        List<Address> AddressData;
//        if (sortOrder != null && !sortOrder.isEmpty()) {
//            if (sortOrder.equalsIgnoreCase("asc")) {
//                AddressData.sort((o1, o2) -> o1.getPrice().compareTo(o2.getPrice()));
//            } else if (sortOrder.equalsIgnoreCase("desc")) {
//                bookData.sort((o1, o2) -> o2.getPrice().compareTo(o1.getPrice()));
//            }
//        }
//        return bookData;
//    }
//    public Address sortByCity(AddressBookDTO addressBookDTO)
//    {
//
//
////        list<AddressBookDTO> List = new list<AddressBookDTO>();
////
////        for (:) {
////
//        }
}


/*
<dependency>
<groupId>com.auth0</groupId>
<artifactId>java-jwt</artifactId>
<version>3.9.0</version>
</dependency>

<dependency>
<groupId>org.springframework.boot</groupId>
<artifactId>spring-boot-starter-mail</artifactId>
</dependency>
 */

