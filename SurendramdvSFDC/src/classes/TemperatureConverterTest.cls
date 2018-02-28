@isTest
public with sharing class TemperatureConverterTest {
    
    public static testmethod void testWarmTemp()
    {
        Decimal d = TemperatureConverter.FahrenheitToCelsius(70);
        System.assertEquals(21.11,d);
    }
    
    public static testmethod void testFreezingTemp()
    {
        Decimal d = TemperatureConverter.FahrenheitToCelsius(32);
        System.assertEquals(0,d);
    }
    
    public static testmethod void testBoilingTemp()
    {
        Decimal d = TemperatureConverter.FahrenheitToCelsius(210);
        System.assertEquals(100,d,'Boiling Temp not expected');
    }
    
}