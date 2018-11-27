package game.module.pvp.event
{
	import mvc.CustomEvent;
	
	public class PvpMatchEvent extends CustomEvent
	{
		public static const MATCHEVENT:String = "matchevent";
		
		public function PvpMatchEvent(data_:*)
		{
			super(data_);
		}
	}
}