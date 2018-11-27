package game.module.pvp.event
{
	import mvc.CustomEvent;
	
	public class PvpBuyBuffInfoEvent extends CustomEvent
	{
		public static const BUYBUFFINFOEVENT:String = "buybuffinfoevent";
		
		public function PvpBuyBuffInfoEvent(data_:*)
		{
			super(data_);
		}
	}
}