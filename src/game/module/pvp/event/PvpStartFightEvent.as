package game.module.pvp.event
{
	import mvc.CustomEvent;
	
	public class PvpStartFightEvent extends CustomEvent
	{
		public static const EVENT_ID:String = "pvpstartfightevent";
		
		public function PvpStartFightEvent(data_:*)
		{
			super(data_);
		}
	}
}