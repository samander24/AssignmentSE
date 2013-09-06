package another;

public class ChangeString {
	
	public static String changeQutoe(String message)
	{
		message=message.replaceAll("'", "☺");
		message=message.replaceAll("\"", "☻");
		return message;
	}
	
	public static String reChangeQutoe(String message)
	{
		message=message.replaceAll("☺", "'");
		message=message.replaceAll("☻", "\"");
		return message;
	}

}
