package game.module.pvp.event
{
	import mvc.CustomEvent;
	
	public class PvpPiPeiEvent extends CustomEvent
	{
		public static const PIPEIEVENT:String = "pipeievent";
		
		public function PvpPiPeiEvent(data_:*)
		{
			super(data_);
		}
	}
}