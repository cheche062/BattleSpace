package game.module.pvp.views.ui
{
	import MornUI.pvpFight.RoleContainerUI;
	
	import game.common.base.BaseView;
	import game.global.GameConfigManager;
	import game.global.util.TimeUtil;
	import game.global.util.UnitPicUtil;
	import game.global.vo.User;
	import game.module.pvp.event.PvpChangeEvent;
	import game.module.pvp.event.PvpFightEvent;
	import game.module.pvp.event.PvpMatchEvent;
	import game.module.pvp.event.RequsetLineupEvent;
	import game.module.pvp.model.PvpProxy;
	import game.module.pvp.model.RoleVo;
	
	import laya.events.Event;
	
	import mvc.Facade;
	
	public class UnitRoleInfoContainer extends BaseView
	{
		private var _ui:RoleContainerUI;
		private var _model:PvpProxy;
		
		public function UnitRoleInfoContainer()
		{
			super();
		}
		
		override protected function initialize():void
		{
			_ui = new RoleContainerUI();
			this.addChild(_ui);
		}
		
		override public function show():void
		{
			super.show();
		}
		
		public function setData(model:PvpProxy,vo:RoleVo,isMySelf:Boolean=true):void
		{
			_model = model;
			
			_ui.myContainer.visible = _ui.otherContainer.visible = _ui.nobodyC.visible = false;
			if( isMySelf )
			{
				_ui.myContainer.visible = true;
				var skinId:String = vo.topUnit != 0 ? vo.topUnit.toString() : "0000";
				_ui.myRoleImg.skin = UnitPicUtil.getUintPic(skinId,UnitPicUtil.PIC_FULL);
				_ui.myNameTxt.text = User.getInstance().name;
				_ui.myScoreTxt.text = vo.integral.toString();
				_ui.myBpTxt.text = vo.power.toString();
				_ui.myWinsTxt.text = vo.winTimes.toString();
				_ui.myRankIcon.skin = "";//model.getRankIcon(model.getPvpRankConfig(vo.grade).icon);
//				_ui.mySp.x = (_ui.myBg.width-(_ui.myRankIcon.width+_ui.myNameTxt.textField.textWidth))*.5;
			}
			else
			{
				_ui.otherContainer.visible = true;
				_ui.otherRoleImg.scaleX = -1;
				_ui.otherRoleImg.x = 490;
				if( vo.topUnit != 0 )
				{
					clearTime();
					_ui.selectRole.visible = true;
					_ui.nobodyC.visible = false;
//					_ui.ocSp.x = (_ui.selectRole.width-(_ui.otherRankIcon.width+_ui.otherNameTxt.textField.textWidth))*.5;
					
					_ui.otherRoleImg.skin = UnitPicUtil.getUintPic(vo.topUnit,UnitPicUtil.PIC_FULL);
					_ui.otherNameTxt.text = vo.name;
					_ui.otherWinTxt.text = "+" + _model.getPvpRankConfig(_model.grade).win;
					_ui.otherBpTxt.text = vo.power.toString();
					_ui.otherLoseTxt.text = "" + _model.getPvpRankConfig(_model.grade).defeat;
					_ui.otherRankIcon.skin = "";//model.getRankIcon(model.getPvpRankConfig(vo.grade).icon);
				}
				else
				{
					if( vo.topUnit == null )
					{
						clearTime();
					}
					
					changeBtnState(true);
					resetData();
				}
			}
			
			addEvent();
		}
		
		private function resetData():void
		{
			_ui.piPeiBtn.disabled = _model.state == 2;
			_ui.matchTxt.visible = false;
			_ui.typeIcon.visible = _ui.xhTxt.visible = true;
			_ui.otherRoleImg.skin = "appRes/icon/unitPic/0000.png";
			_ui.selectRole.visible = false;
			_ui.nobodyC.visible = true;
			var tempTimes:Boolean = _model.freeTimes - _model.matchTimes > 0;
			_ui.freeWord.visible = tempTimes;
			_ui.typeIcon.visible = _ui.xhTxt.visible = !tempTimes;
			if( tempTimes )
			{
				_ui.freeWord.text = "free:" + parseInt((_model.freeTimes - _model.matchTimes).toString()) + "/" + _model.freeTimes;
			}
			else
			{
				_ui.typeIcon.skin = GameConfigManager.getItemImgPath(_model.myVo.consItemId);
				_ui.typeIcon.width = _ui.typeIcon.height = 48;
				_ui.xhTxt.text = _model.myVo.consume.toString();
			}
		}
		
		private var _btnState:Boolean;
		private function changeBtnState(value:Boolean):void
		{
			_btnState = value;
//			_ui.changeBtn.label = value ? GameLanguage.getLangByKey("L_A_3029") : GameLanguage.getLangByKey("L_A_14024");
			_ui.changeBtn.disabled = !value;
		}
		
		override public function addEvent():void
		{
			_ui.lineupBtn.on(Event.CLICK,this,lineup);
			
			_ui.piPeiBtn.on(Event.CLICK,this,pipeiClick);
			_ui.changeBtn.on(Event.CLICK,this,changeClick);
			_ui.fightBtn.on(Event.CLICK,this,fightClick);
		}
		
		override public function removeEvent():void
		{
			_ui.lineupBtn.off(Event.CLICK,this,lineup);
			
			_ui.piPeiBtn.off(Event.CLICK,this,pipeiClick);
			_ui.changeBtn.off(Event.CLICK,this,changeClick);
			_ui.fightBtn.off(Event.CLICK,this,fightClick);
		}
		
		private function lineup():void
		{
			Facade.getInstance().sendNotification(RequsetLineupEvent.REQUSETLINEUPEVENT,[]);
		}
		
		private function pipeiClick():void
		{
			Facade.getInstance().sendNotification(PvpMatchEvent.MATCHEVENT,[]);
		}
		
		private function changeClick():void
		{
			changeBtnState(false);
			Facade.getInstance().sendNotification(PvpChangeEvent.EVENT_ID,[]);
//			if( _btnState )
//			{
//				changeBtnState(false);
//				Facade.getInstance().sendNotification(PvpChangeEvent.EVENT_ID,[]);
//			}
//			else
//			{
//				changeBtnState(true);
//				resetData();
//			}
		}
		
		private function fightClick():void
		{
			Facade.getInstance().sendNotification(PvpFightEvent.PVPFIGHTEVENT,[]);
		}
		
		private var _time:Number = 0;
		public function matching():void
		{
			_ui.matchTxt.visible = true;
			_ui.freeWord.visible = _ui.typeIcon.visible = _ui.xhTxt.visible = false;
			_ui.matchTxt.text = "00:00";
			changeRightRankFace();
			Laya.timer.loop(1000, this, timeCountHandler);
		}
		
		private function timeCountHandler():void
		{
			_time += 1000;
			_ui.matchTxt.text = TimeUtil.formatStopwatch(_time);
		}
		
		private function changeRightRankFace():void
		{
			var faceAr:Array = [];
			var temp:Array = _model.getParamData(8).value.split(";");
			for (var i:int = 0; i < temp.length; i++) 
			{
				var str:String = UnitPicUtil.getUintPic(temp[i],UnitPicUtil.PIC_FULL);
				faceAr.push(str);
			}
			
			showFace(faceAr);
		}
		
		private function showFace(ar:Array):void
		{
			var idx:Number = Math.floor(1+(ar.length-1+1)*Math.random());
			idx--;
			
			_ui.otherRoleImg.skin = ar[idx];
			Laya.timer.once(1000,this,showFace,[ar]);
		}
		
		private function clearTime():void
		{
			_time = 0;
			Laya.timer.clear(this, timeCountHandler);
			Laya.timer.clear(this, showFace);
		}
		
		override public function dispose():void
		{
			super.dispose();
			
			_ui.otherRoleImg.skin = "";
			_ui.myRoleImg.skin = "";
			
			clearTime();
			removeEvent();
		}
	}
}