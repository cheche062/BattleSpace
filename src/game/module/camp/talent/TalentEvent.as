package game.module.camp.talent
{
	import mvc.CustomEvent;
	
	public class TalentEvent extends CustomEvent
	{
		public static var GETINFO:String = "getInfo";
		
		public function TalentEvent(data_:*)
		{
			super(data_);
		}
	}
}