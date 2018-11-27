package game.module.pvp.controller
{
	import game.module.pvp.model.PvpProxy;
	
	import mvc.Command;
	import mvc.Notification;
	
	public class ModelCommand extends Command
	{
		override public function execute(notification:Notification):void
		{
			this.facade.registerProxy(new PvpProxy());
		}
	}
}