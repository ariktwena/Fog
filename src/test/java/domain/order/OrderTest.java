package domain.order;

import domain.carport.Carport;
import domain.customer.Customer;
import domain.material.materials.Options;
import domain.material.materials.Tree;
import domain.partslist.Partslist;
import domain.user.User;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;


import java.sql.Timestamp;

import static org.junit.jupiter.api.Assertions.*;

class OrderTest {
    
    
    @Test
    void test(){
        Timestamp ts = new Timestamp(System.currentTimeMillis());
        
        User employee = new User(1,"email", User.Role.Employee);
        Customer customer = new Customer(1,"Navn","Addresse",1234,"Bynavn",12345678,"email@nu.dk");
        
        Partslist partslist = new Partslist();
        partslist.addItem(
                partslist.newPart(
                    new Tree("20x20 bjælke", 550, 20), 15 //total price: 300
                ));
        partslist.addItem(
                partslist.newPart(
                        new Tree("30x10 spær", 430, 12.5), 30 //total price: 375
                ));
        partslist.addItem(
                partslist.newPart(
                        new Options("Søm", 0.25), 200 //total price: 50
                ));
        
        //Total of parts: 725
        
        
        Carport carportOne = new Carport(1,6500, 3020, Carport.Roof.Flat, null, partslist);
        
        Order expectedOrder = new Order(1,3000,6500,ts, employee, customer, Order.Status.New, carportOne);
    
        Carport carportTwo = new Carport(1, expectedOrder.getLength(), expectedOrder.getWidth(), Carport.Roof.Flat, null, partslist);
        Order actualOrder = new Order(2,3000,6500,ts, employee, customer, Order.Status.New, carportOne);
        
        
        assertEquals(expectedOrder.getCarport().getLength(), actualOrder.getCarport().getLength());
        assertEquals(expectedOrder.getCarport().getWidth(), actualOrder.getCarport().getWidth());
        assertEquals(725.0, actualOrder.getCarport().getPrice());
    }
    
    
}