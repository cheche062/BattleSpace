package game.module.pvp.event
{
	import mvc.CustomEvent;
	
	public class PvpFightEvent extends CustomEvent
	{
		public static const PVPFIGHTEVENT:String = "pvpfightevent";
		
		public function PvpFightEvent(data_:*)
		{
			super(data_);
		}
	}
}