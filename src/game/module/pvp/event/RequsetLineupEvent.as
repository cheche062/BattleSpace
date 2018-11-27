package game.module.pvp.event
{
	import mvc.CustomEvent;
	
	public class RequsetLineupEvent extends CustomEvent
	{
		public static const REQUSETLINEUPEVENT:String = "requsetlineupevent";
		
		public function RequsetLineupEvent(data_:*)
		{
			super(data_);
		}
	}
}