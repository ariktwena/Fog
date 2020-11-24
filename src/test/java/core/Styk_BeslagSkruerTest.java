package core;

import core.materialer.Options;

import static org.junit.jupiter.api.Assertions.*;

class Styk_BeslagSkruerTest {

    @org.junit.jupiter.api.Test
    void calculate_subtotal() {
        Options materielBeslagSkruer = new Options("test_product",20);

        String styk_bes = "Skal bruges til...";
        int antal = 2;
        Styk_BeslagSkruer styk_beslagSkruer = new Styk_BeslagSkruer(materielBeslagSkruer, styk_bes, antal);
        assertEquals(40, styk_beslagSkruer.getStyk_subtotal());
    }


}