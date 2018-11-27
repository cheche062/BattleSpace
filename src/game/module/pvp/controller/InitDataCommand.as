package game.module.pvp.controller
{
	import mvc.Command;
	import mvc.Notification;
	
	public class InitDataCommand extends Command
	{
		override public function execute(notification:Notification):void
		{
			this.facade.initData(notification.notificationName);
		}
	}
}