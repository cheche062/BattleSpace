package game.module.pvp.event
{
	import mvc.CustomEvent;
	
	public class LineupInfoEvent extends CustomEvent
	{
		public static const LINEUPINFOEVENT:String = "lineupinfoevent";
		
		public function LineupInfoEvent(data_:*)
		{
			super(data_);
		}
	}
}