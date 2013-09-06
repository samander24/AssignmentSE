package another;

public class SqlCommand {
	
	public static String typeText(Object obj)
	{
		return String.format("'%s',",obj.toString() );
	}
	public static String typeTextEnd(Object obj)
	{
		return String.format("'%s')",obj.toString());
	}
	public static String typeNumber(Object obj)
	{
		return String.format("%s,", obj);
	}
	public static String typeNumberEnd(Object obj)
	{
		return String.format("%s)",obj);
	}
	
	public static String typeDate(int year,int month,int day)
	{
		return String.format("'%d-%d-%d',",year,month,day);
	}
	
	public static String typeDateEnd(int year,int month,int day)
	{
		return String.format("'%d-%d-%d')",year,month,day);
	}
	


}
