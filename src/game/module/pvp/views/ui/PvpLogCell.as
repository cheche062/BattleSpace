package game.module.pvp.views.ui
{
	import MornUI.pvpFight.PvpLogCellUI;
	
	import game.common.SceneManager;
	import game.common.XFacade;
	import game.global.ModuleName;
	import game.global.consts.ServiceConst;
	import game.module.fighting.mgr.FightingManager;
	import game.module.pvp.views.PvpLogPanel;
	
	import laya.events.Event;
	import laya.events.MouseManager;
	import laya.utils.Handler;
	
	public class PvpLogCell extends PvpLogCellUI
	{
		protected var _data:Object;
		
		public function PvpLogCell()
		{
			super();
		}
		
		public override function set dataSource(value:*):void{
			super.dataSource = _data = value;
			if(_data)
			{
				this.isWinImg.skin = _data.isWin ? "pvpLog/icon_win.png":"pvpLog/icon_lose.png";
				this.levelLbl.text = _data.level;
				this.nameLbl.text= _data.name;
				var str:String = _data.addIntegral < 0 ? ""+_data.addIntegral : "-0";
				this.sChangeLbl.text = _data.isWin ? "+"+ _data.addIntegral : str;
				this.sChangeLbl.color = _data.isWin ? "#82ff88" :"#ff9f9f";
				this.rbtn.disabled = _data.reportId == "";
			}
		}
		
		override protected function createChildren():void {
			super.createChildren();
			this.rbtn.on(Event.CLICK,this,onReplayHandler);
		}
		
		private function onReplayHandler(e:Event):void
		{
			MouseManager.instance.disableMouseEvent = true;
			Laya.timer.once(600,this,function():void
			{
				MouseManager.instance.disableMouseEvent = false;
				XFacade.instance.closeModule(PvpLogPanel);
				FightingManager.intance.getFightReport([_data.reportId],null,Handler.create(this,completeReplayHandler),null,ServiceConst.getFightReport);
			});
		}
		
		private function completeReplayHandler():void
		{
			SceneManager.intance.setCurrentScene(null);
			XFacade.instance.openModule(ModuleName.PvpMainPanel);
			var obj:Object = {};
			obj.fun = function():void {
				XFacade.instance.openModule(ModuleName.pvpLogPanel);
			};
			timer.once(500,obj,obj.fun);
		}
		
		public override function destroy(destroyChild:Boolean=true):void{
			
			_data = null;
			this.rbtn.off(Event.CLICK,this,onReplayHandler);
			super.destroy(destroyChild);
		}
	}
}