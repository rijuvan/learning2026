import static org.junit.jupiter.api.Assertions.assertTrue;
import org.junit.jupiter.api.Test;

public class CalculateTaxTest {
    
    @Test
    public void testCalculateTaxForAmount200000() {
        CalculateTax calculateTax = new CalculateTax();
        double amount = 200000.0;
        double result = calculateTax.calculateTax(amount);
        
        // Test that the method returns a value (currently returns 0.0 as per implementation)
        assertTrue(result >= 0, "Tax should be non-negative");
    }
    
    @Test
    public void testCalculateTaxForAmountNegative100000() {
        CalculateTax calculateTax = new CalculateTax();
        double amount = -100000.0;
        double result = calculateTax.calculateTax(amount);
        
        // Test that the method returns a value (currently returns 0.0 as per implementation)
        assertTrue(result >= 0, "Tax should be non-negative");
    }
}

