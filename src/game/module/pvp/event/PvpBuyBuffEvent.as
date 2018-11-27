package game.module.pvp.event
{
	import mvc.CustomEvent;
	
	public class PvpBuyBuffEvent extends CustomEvent
	{
		public static const BUYBUFFEVENT:String = "buybuffevent";
		
		public function PvpBuyBuffEvent(data_:*)
		{
			super(data_);
		}
	}
}