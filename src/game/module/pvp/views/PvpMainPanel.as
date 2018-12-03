package game.module.pvp.views
{
	import MornUI.pvpFight.pvpMainMeuUI;
	import MornUI.pvpFight.pvpMainViewUI;
	
	import game.common.DataLoading;
	import game.common.LayerManager;
	import game.common.SceneManager;
	import game.common.XFacade;
	import game.common.base.BaseDialog;
	import game.common.baseScene.SceneType;
	import game.global.GameLanguage;
	import game.global.GameSetting;
	import game.global.ModuleName;
	import game.global.consts.ServiceConst;
	import game.global.data.DBItem;
	import game.global.event.Signal;
	import game.global.vo.User;
	import game.module.bag.cell.showMoneyCell;
	import game.module.fighting.mgr.FightingManager;
	import game.module.pvp.controller.InitDataCommand;
	import game.module.pvp.controller.ModelCommand;
	import game.module.pvp.controller.ViewCommand;
	import game.module.pvp.event.LineupInfoEvent;
	import game.module.pvp.event.PvpBuyBuffInfoEvent;
	import game.module.pvp.event.PvpPiPeiEvent;
	import game.module.pvp.model.PvpProxy;
	import game.net.socket.WebSocketNetService;
	import game.module.mainScene.HomeScene;
	import game.common.ModuleManager;
	import game.global.data.DBBuilding;
	
	import laya.events.Event;
	import laya.events.MouseManager;
	import laya.ui.Box;
	import laya.ui.Image;
	import laya.utils.Handler;
	
	import mvc.Facade;
	import mvc.Notification;
	import mvc.support.NotificationCenter;
	
	public class PvpMainPanel extends BaseDialog
	{
		private var _bgImg:Image = new Image();
		private var _bgBox:Box = new Box();   //缩放层
		
		private var _contentBox:Box = new Box();  //不缩放层
		
		private var _bgUi:pvpMainViewUI;
		private var _ui:pvpMainMeuUI;
		
		private var _showMoneyCell1:showMoneyCell;
		private var _showMoneyCell2:showMoneyCell;
		private var _showMoneyCell3:showMoneyCell;
		
		public function PvpMainPanel()
		{
			super();
			m_iPositionType = LayerManager.LEFTUP;
		}
		
		public override function show(...args):void{
			super.show(args);
			checkShowType();
			WebSocketNetService.instance.sendData(ServiceConst.PVP_GETINFO,[]);
			
			onStageResize();
		}
		
		override public function onStageResize():void
		{
			super.onStageResize();
			
			this.size(Laya.stage.width , Laya.stage.height);
			var scaleNum:Number =  Laya.stage.width / __bgWidth; 
			
			if(GameSetting.IsRelease){
				var sy:Number = Laya.stage.height / __bgHeight;
				scaleNum = Math.max(scaleNum, sy);
			}
			
			_bgBox.scaleX = _bgBox.scaleY = scaleNum;
			_bgBox.y = ( Laya.stage.height - __bgHeight * scaleNum ) / 2;
			
			//针对页游处理
			if(GameSetting.IsRelease){
				_bgBox.x = ( Laya.stage.width - __bgWidth * scaleNum ) / 2;
			}
			
			resetPos();
		}
		
		private function resetPos():void
		{
			_ui.size(width,height);
			_ui.topLeftBox.pos(0,0);
			_ui.topBox.pos(width - _ui.topBox.width >>1 , 0);
			_ui.topRightBox.pos(width - _ui.topRightBox.width , 0);
			_ui.leftBottomBox.pos(0 , height - _ui.leftBottomBox.height);
			_ui.rightBottomBox.pos(width - _ui.rightBottomBox.width , height - _ui.rightBottomBox.height);
			_ui.buffContainer.pos(width - _ui.buffContainer.width >>1 , height - _ui.buffContainer.height >>1);
			_ui.myContainer.pos(-60,height - _ui.myContainer.height>>1);
			_ui.otherContainer.pos(width - _ui.otherContainer.width + 60,height - _ui.otherContainer.height>>1);
		}
		
		private function get __bgWidth():Number{
			return 1024;
		}
		
		private function get __bgHeight():Number{
			return 768;
		}
		
		override public function createUI():void
		{
			super.createUI();
		}
		
		override protected function initialize():void
		{
			var m:ModelCommand = new ModelCommand();
			var v:ViewCommand = new ViewCommand();
			var i:InitDataCommand = new InitDataCommand();
			var n:Notification = new Notification();
			n.notificationName = "PvpProxy";
			m.execute(null);
			v.execute(null);
			i.execute(n);
			
			addChild(_bgBox);
			_bgBox.addChild(_bgImg);
			
			_bgUi = new pvpMainViewUI();
			_bgBox.addChild(_bgUi);
			
			addChild(_contentBox);
			_contentBox.mouseEnabled = _contentBox.mouseThrough = true;
			
			_bgImg.skin = "appRes/fightingMapImg/pvpBg.jpg";
			
			_ui = new pvpMainMeuUI();
			_contentBox.addChild(_ui);
			
			_showMoneyCell1 = new showMoneyCell(DBItem.PVP_TOKEN,"#ffffff",XFacade.FT_Futura,18,0,9,false,60,"left");
			_showMoneyCell2 = new showMoneyCell(DBItem.FOOD,"#ffffff",XFacade.FT_Futura,18,0,9,false,60,"left");
			_showMoneyCell3 = new showMoneyCell(DBItem.WATER,"#ffffff",XFacade.FT_Futura,18,0,9,false,60,"left");
			_ui.showMoneyImg.addChild(_showMoneyCell1);
			_ui.showMoneyImg.addChild(_showMoneyCell2);
			_ui.showMoneyImg.addChild(_showMoneyCell3);
			_showMoneyCell1.scaleX = _showMoneyCell2.scaleX = _showMoneyCell3.scaleX = -1;
			_showMoneyCell1.pos(154,8);
			_showMoneyCell2.pos(154,38);
			_showMoneyCell3.pos(154,68);
			
			super.initialize();
		}
		
		public function showInfo(model_:PvpProxy):void
		{
			var pvpProxy:PvpProxy = model_;
			if( !pvpProxy ) 
			{
				return;
			}
			
			_ui.startTimeTxt.text = pvpProxy.time;
			
			_ui.hdImg.visible = pvpProxy.checkBtnPoint();
			_ui.hdNum.text = pvpProxy.rewardNum.toString();
			
			_ui.rankH.visible = pvpProxy.checkRankHPoint();
			
			_ui.buffContainer.setData();
			_ui.myContainer.setData(pvpProxy,pvpProxy.myVo);
			_ui.otherContainer.setData(pvpProxy,pvpProxy.otherVo,false);
		}
		
		private function updataOpp():void
		{
			_ui.otherContainer.matching();
			Laya.timer.once(2000,this,function ():void
			{
				var pvpProxy:PvpProxy = Facade.getInstance().retrieveProxy("PvpProxy") as PvpProxy;
				_ui.otherContainer.setData(pvpProxy,pvpProxy.otherVo,false);
			});
		}
		
		private function updataBuff():void
		{
			_ui.buffContainer.setData();
		}
		
		override public function close():void
		{
			super.close();
			gc();
			XFacade.instance.disposeView(this);
		}
		
		public override function addEvent():void
		{
			super.addEvent();
			PvpManager.intance.getMainInfoData();
			
			_ui.closeBtn.on(Event.CLICK,this,thisClose);
			_ui.rankBtn.on(Event.CLICK,this,onRankClick);
			_ui.shopBtn.on(Event.CLICK,this,onShopClick);
			_ui.helpBtn.on(Event.CLICK,this,helpClick);
			_ui.logBtn.on(Event.CLICK,this,logClick);
			_ui.rewardBtn.on(Event.CLICK,this,rewardClick);
			
			Signal.intance.on(PvpPiPeiEvent.PIPEIEVENT,this,updataOpp);
			Signal.intance.on(PvpBuyBuffInfoEvent.BUYBUFFINFOEVENT,this,updataBuff);
			Signal.intance.on(LineupInfoEvent.LINEUPINFOEVENT,this,showDefend);
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.TEAMCOPY_BATTLEFIELDREPORT),this,onResult,[ServiceConst.TEAMCOPY_BATTLEFIELDREPORT]);
		}
		
		public override function removeEvent():void
		{
			super.removeEvent();
			_ui.closeBtn.off(Event.CLICK,this,thisClose);
			_ui.helpBtn.off(Event.CLICK,this,helpClick);
			_ui.rankBtn.off(Event.CLICK,this,onRankClick);
			_ui.shopBtn.off(Event.CLICK,this,onShopClick);
			_ui.logBtn.off(Event.CLICK,this,logClick);
			_ui.rewardBtn.off(Event.CLICK,this,rewardClick);
			
			Signal.intance.off(PvpPiPeiEvent.PIPEIEVENT,this,updataOpp);
			Signal.intance.off(PvpBuyBuffInfoEvent.BUYBUFFINFOEVENT,this,updataBuff);
			Signal.intance.off(LineupInfoEvent.LINEUPINFOEVENT,this,showDefend);
			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.TEAMCOPY_BATTLEFIELDREPORT),this,onResult,[ServiceConst.TEAMCOPY_BATTLEFIELDREPORT]);
		}
		
		private var _intoNum:int = 0;
		private function onResult(cmd:int, ...args):void
		{
			if( _intoNum == 1 )
			{
				return;
			}
			switch(cmd)
			{
				case ServiceConst.TEAMCOPY_BATTLEFIELDREPORT:
				{
					_intoNum += 1;
					MouseManager.instance.disableMouseEvent = true;
					DataLoading.instance.close();
					Laya.timer.once(600,this,function():void
					{
						dispose();
						
						var obj:Object = {};
						obj.back =  function():void
						{
							_intoNum = 0;
							SceneManager.intance.setCurrentScene(null);
							XFacade.instance.openModule(ModuleName.PvpMainPanel);
						}
						User.getInstance().inToPvp = true;	
						FightingManager.intance.showPvpFightReport(args[1],args[2],Handler.create(obj,obj.back));
						this.close();
						MouseManager.instance.disableMouseEvent = false;
					});
					break;
				}
			}
		}
		
		/**进入防御布阵*/
		public function showDefend():void
		{
			MouseManager.instance.disableMouseEvent = true;
			Laya.timer.once(600,this,function():void
			{
				MouseManager.instance.disableMouseEvent = false;
				FightingManager.intance.getSquad(200, null, Handler.create(this, this.onFightOver));
			});
		}
		
		private function onFightOver():void{
			SceneManager.intance.setCurrentScene(null);
			XFacade.instance.openModule(ModuleName.PvpMainPanel);
		}
		
		private function completeReplayHandler():void
		{
			_intoNum = 0;
			SceneManager.intance.setCurrentScene(null);
			XFacade.instance.openModule(ModuleName.PvpMainPanel);
		}
		
		private function thisClose(e:Event):void
		{
			_intoNum = 0;
			XFacade.instance.closeModule(PvpMainPanel);
			SceneManager.intance.setCurrentScene(SceneType.M_SCENE_HOME);
			User.getInstance().inToPvp = false;
		}
		
		private function helpClick():void
		{
			var st:String = GameLanguage.getLangByKey("L_A_70055");
			st = st.replace(/##/g,"<br />");
			XFacade.instance.openModule(ModuleName.IntroducePanel,st);
		}
		
		private function onRankClick():void
		{
			XFacade.instance.openModule(ModuleName.PvpRankPanel);
		}
		
		private function onShopClick():void
		{
			XFacade.instance.openModule(ModuleName.PvpShopPanel);
		}
		
		private function logClick():void
		{
			XFacade.instance.openModule(ModuleName.PvpLogPanel);
		}
		
		private function rewardClick():void
		{
			XFacade.instance.openModule(ModuleName.PvpRewardPanel);
		}
		
		/**------检测是否处于预览模式--------*/
		public function checkShowType():void{
			setDisableShowType(!HomeScene(ModuleManager.intance.getModule(HomeScene)).isOpenBuild(DBBuilding.B_PVP));
		}
		
		/**------是否处于预览模式--------*/
		public function setDisableShowType(bool:Boolean):void{
			for(var i =0;i<this._ui.numChildren;i++){
				var node = this._ui.getChildAt(i);
				if(this._ui.getChildAt(i).name != "topLeftBox" && bool&&this._ui.getChildAt(i).name != "topRightBox"){
					(this._ui.getChildAt(i) as Box).disabled = true;
				}
				else{
					(this._ui.getChildAt(i) as Box).disabled = false;
				}
			}
		}
		
		override public function dispose():void
		{
			super.dispose();
			gc();
		}
		
		private function gc():void
		{
			Laya.timer.clearAll(this);
			_ui.myContainer.dispose();
			_ui.otherContainer.dispose();
			_ui.buffContainer.dispose();
			NotificationCenter.getInstance().removeObservers();
		}
		
		public override function destroy(destroyChild:Boolean=true):void
		{
			super.destroy(destroyChild);
		}
	}
}