public class LineChartController {

  public List<LineData> getLineData()
  {
     return LineChartController.getChartData();
  }

  @RemoteAction
  public static List<LineData> getLineRemoteData()
  {
     return LineChartController.getChartData();
  }

  public static List<LineData> getChartData()
  {
     List<LineData> data = new List<LineData>();
     data.add(new LineData('Jan',30, 90, 55));
     data.add(new LineData('Feb',44, 15, 65));
     data.add(new LineData('Mar',25, 32, 75));
     return data;
  }
  
  
  public class LineData
  {
      public String name {get; set;}
      public Integer data1 {get; set;}
      public Integer data2 {get; set;}
      public Integer data3 {get; set;}
      public LineData(String name, Integer data1,Integer data2,Integer data3)
      {
         this.name= name;
         this.data1 = data1;
         this.data2 = data2;
         this.data3 = data3;         
      }
  }
  



}