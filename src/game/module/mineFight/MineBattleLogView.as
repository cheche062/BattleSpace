package game.module.mineFight 
{
	import MornUI.mineFight.mineLogUI;
	
	import game.common.AnimationUtil;
	import game.common.XFacade;
	import game.common.base.BaseDialog;
	import game.global.consts.ServiceConst;
	import game.global.event.Signal;
	import game.module.invasion.InvasionMenuView;
	import game.net.socket.WebSocketNetService;
	
	import laya.events.Event;
	
	/**
	 * ...
	 * @author ...
	 */
	public class MineBattleLogView extends BaseDialog 
	{
		
		public function MineBattleLogView() 
		{
			super();
			
		}
		/**获取服务器消息*/
		private function serviceResultHandler(cmd:int, ...args):void
		{
			//trace("arenaShopResult: ", args);
			var len:int = 0;
			var i:int=0;
			switch(cmd)
			{
				case ServiceConst.MINE_FIGHT_LOG:
					view.logList.dataSource = args[1].reports;
					/*len = args[1].length;
					for (i = 0; i < len ; i++)
					{
						updateGetState(args[1][i].id, args[1][i].num);
					}
					view.rewardList.refresh();*/
					break;
				default:
					break;
			}
		}		
		
		private function onClick(e:Event):void
		{
			var str:String = "";
			switch(e.target)
			{
				case view.attTab:
					view.defTab.selected = false;
					view.attTab.selected = true;
					WebSocketNetService.instance.sendData(ServiceConst.MINE_FIGHT_LOG, [1]);
					break;
				case view.defTab:
					view.defTab.selected = true;
					view.attTab.selected = false;
					WebSocketNetService.instance.sendData(ServiceConst.MINE_FIGHT_LOG, [2]);
					break;
				case view.closeBtn:
				{					
					close();
				}
					break;
				default:
					break;
			}
		}
		override public function show(...args):void
		{
			super.show();
			AnimationUtil.flowIn(this);
			view.defTab.selected = false;
			view.attTab.selected = true;
			var p_view:MineFightView = XFacade.instance.getView(MineFightView) as MineFightView;
			p_view.remove_MINE_FIGHT_LOG();
			WebSocketNetService.instance.sendData(ServiceConst.MINE_FIGHT_LOG, [1]);
		}
		
		override public function close():void
		{
			AnimationUtil.flowOut(this, onClose);
		}
		
		private function onClose():void
		{
			var p_view:MineFightView = XFacade.instance.getView(MineFightView) as MineFightView;
			p_view.add_MINE_FIGHT_LOG();
			super.close();
		}
		
		override public function dispose():void
		{
			super.dispose();
		}
		
		override public function createUI():void
		{
			this._view = new mineLogUI();
			this.addChild(_view);
			
			view.logList.itemRender = MineLogItem;
			view.logList.vScrollBarSkin = "";
			view.logList.repeatY = 5;
			/*view.rewardList.itemRender = ArenaRDItem;
			view.rewardList.dataSource = GameConfigManager.arena_point_vec;*/
			
		}
		
		override public function addEvent():void
		{
			view.on(Event.CLICK, this, this.onClick);
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.MINE_FIGHT_LOG),this,serviceResultHandler,[ServiceConst.MINE_FIGHT_LOG]);
			
			super.addEvent();
		}
		
		override public function removeEvent():void{
			view.off(Event.CLICK, this, this.onClick);
			
			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.MINE_FIGHT_LOG),this,serviceResultHandler);
			
			super.removeEvent();
		}
		
		
		
		private function get view():mineLogUI{
			return _view;
		}
		
	}

}