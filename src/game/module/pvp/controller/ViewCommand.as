package game.module.pvp.controller
{
	import game.module.pvp.mediator.PvpMediator;
	
	import mvc.Command;
	import mvc.Notification;
	
	public class ViewCommand extends Command
	{
		override public function execute(notification:Notification):void 
		{
			this.facade.registerMediator(new PvpMediator());
		}
	}
}