public class showCammand
{
 public String name {get; set;}
 public String inpVal {get; set;}
 
 public void displayName()
 {
   name = ApexPages.CurrentPage().getParameters().get('Name');
   //inpVal = ApexPages.CurrentPage().getParameters().get('inputVal');
 }
}