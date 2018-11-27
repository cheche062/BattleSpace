package game.module.pvp.mediator
{
	import game.common.XFacade;
	import game.global.consts.ServiceConst;
	import game.global.event.Signal;
	import game.module.pvp.event.PvpBuyBuffEvent;
	import game.module.pvp.event.PvpBuyBuffInfoEvent;
	import game.module.pvp.event.PvpChangeEvent;
	import game.module.pvp.event.PvpFightEvent;
	import game.module.pvp.event.PvpMatchEvent;
	import game.module.pvp.event.PvpPiPeiEvent;
	import game.module.pvp.event.PvpStartFightEvent;
	import game.module.pvp.event.RequsetLineupEvent;
	import game.module.pvp.model.PvpProxy;
	import game.module.pvp.views.PvpMainPanel;
	import game.module.pvp.views.PvpRankPanel;
	import game.module.pvp.views.PvpRewardPanel;
	import game.net.socket.WebSocketNetService;
	
	import mvc.Mediator;
	import mvc.Notification;
	
	public class PvpMediator extends Mediator
	{
		public function PvpMediator()
		{
			this.mediatorName = "PvpMediator";
			super();
		}
		
		override protected function listNotificationInterests():Vector.<String>
		{
			// TODO Auto Generated method stub
			var vec:Vector.<String> = new Vector.<String>();
			//服务器消息
			vec.push(ServiceConst.getServerEventKey(ServiceConst.PVP_GETINFO));
			vec.push(ServiceConst.getServerEventKey(ServiceConst.PVP_MATCH));
			vec.push(ServiceConst.getServerEventKey(ServiceConst.PVP_BUYBUFF));
			vec.push(ServiceConst.getServerEventKey(ServiceConst.PVP_FIGHTSTART));
			//自定义消息
			vec.push(PvpMatchEvent.MATCHEVENT);
			vec.push(PvpBuyBuffEvent.BUYBUFFEVENT);
			vec.push(RequsetLineupEvent.REQUSETLINEUPEVENT);
			vec.push(PvpFightEvent.PVPFIGHTEVENT);
			vec.push(PvpChangeEvent.EVENT_ID);
			return vec;
		}
		
		override protected function handleNotification(notification:Notification):void
		{
			var data:PvpProxy = this.facade.retrieveProxy("PvpProxy") as PvpProxy;
			switch (notification.notificationName) 
			{
				//自定义
				case PvpMatchEvent.MATCHEVENT:
				{
					WebSocketNetService.instance.sendData(ServiceConst.PVP_MATCH,[]);
					break;
				}
				case PvpBuyBuffEvent.BUYBUFFEVENT:
				{
					WebSocketNetService.instance.sendData(ServiceConst.PVP_BUYBUFF,[notification.body]);
					break;
				}
				case RequsetLineupEvent.REQUSETLINEUPEVENT:
				{
					XFacade.instance.getView(PvpMainPanel).showDefend();
					break;
				}
				case PvpFightEvent.PVPFIGHTEVENT:
				{
					WebSocketNetService.instance.sendData(ServiceConst.PVP_FIGHTSTART,[]);
					break;
				}
				case PvpChangeEvent.EVENT_ID:
				{
					data.otherVo.topUnit = 0;
					WebSocketNetService.instance.sendData(ServiceConst.PVP_GETINFO,[]);
					break;
				}
				//服务器
				case ServiceConst.getServerEventKey(ServiceConst.PVP_GETINFO):
				{
					data.updata(notification.body);
					XFacade.instance.getView(PvpMainPanel).showInfo(data);
					
					if( data.isGetRank && XFacade.instance.getView(PvpRankPanel))
					{
						data.isGetRank = false;
						XFacade.instance.getView(PvpRankPanel).changeBtnState();
					}
					if( data.isGetIntegral && XFacade.instance.getView(PvpRewardPanel) )
					{
						data.isGetIntegral = false;
						XFacade.instance.getView(PvpRewardPanel).showIntegralBack();
					}
					break;
				}
				case ServiceConst.getServerEventKey(ServiceConst.PVP_MATCH):
				{
					data.updataOpp(notification.body);
					Signal.intance.event(PvpPiPeiEvent.PIPEIEVENT);
					break;
				}
				case ServiceConst.getServerEventKey(ServiceConst.PVP_BUYBUFF):
				{
					data.updataBuff(notification.body);
					Signal.intance.event(PvpBuyBuffInfoEvent.BUYBUFFINFOEVENT);
					break;
				}
				case ServiceConst.getServerEventKey(ServiceConst.PVP_FIGHTSTART):
				{
					var arr:Array = notification.body[1];
					data.pvp_data = arr[0];
					Signal.intance.event(PvpStartFightEvent.EVENT_ID);
					break;
				}
			}
		}
	}
}