package game.module.camp.talent
{
	import game.common.XFacade;
	import game.global.consts.ServiceConst;
	import game.module.camp.NewUnitInfoView;
	import game.net.socket.WebSocketNetService;
	
	import mvc.Mediator;
	import mvc.Notification;
	
	public class TalentMediator extends Mediator
	{
		public function TalentMediator()
		{
			this.mediatorName = "TalentMediator";
			super();
		}
		
		override protected function listNotificationInterests():Vector.<String>
		{
			// TODO Auto Generated method stub
			var vec:Vector.<String> = new Vector.<String>();
			vec.push(TalentEvent.GETINFO);
			vec.push(ServiceConst.getServerEventKey(ServiceConst.TALENT_GETINFO));
			return vec;
		}
		
		override protected function handleNotification(notification:Notification):void
		{
			switch (notification.notificationName) 
			{
				case TalentEvent.GETINFO:
				{
					WebSocketNetService.instance.sendData(ServiceConst.TALENT_GETINFO,[notification.body[0]]);
					break;
				}
				case ServiceConst.getServerEventKey(ServiceConst.TALENT_GETINFO):
				{
					XFacade.instance.getView(NewUnitInfoView).getView().showTalentInfo();
					break;
				}
			}
		}
	}
}