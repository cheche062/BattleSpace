package game.module.pvp.event
{
	import mvc.CustomEvent;
	
	public class PvpChangeEvent extends CustomEvent
	{
		public static const EVENT_ID:String = "pvpchangeevent";
		
		public function PvpChangeEvent(data_:*)
		{
			super(data_);
		}
	}
}