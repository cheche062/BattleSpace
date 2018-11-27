package game.module.pvp.views
{
	import MornUI.pvpFight.PvpRankViewUI;
	
	import game.common.AnimationUtil;
	import game.common.base.BaseDialog;
	import game.global.GameLanguage;
	import game.global.StringUtil;
	import game.global.consts.ServiceConst;
	import game.global.event.Signal;
	import game.module.pvp.views.ui.PvpRankCell;
	import game.module.pvp.model.PvpProxy;
	import game.net.socket.WebSocketNetService;
	
	import laya.events.Event;
	
	import mvc.Facade;
	
	public class PvpRankPanel extends BaseDialog
	{
		public static const RANK_PAGE_NUM:uint = 5;
		
//		private var myRank:PvpRankCell;
		private var _pageIdx:Number = 1;
		private var _maxPage:Number = 1;
		private var _model:PvpProxy;

		private var obj_:Object;
		
		public function PvpRankPanel()
		{
			super();
			closeOnBlank = true;
		}
		
		override public function close():void{
			AnimationUtil.flowOut(this, this.onClose);
		}
		
		private function onClose():void{
			super.close();
		}
		
		public function get view():PvpRankViewUI{
			if(!_view)
				_view = new PvpRankViewUI();
			return _view as PvpRankViewUI;
		}
		
		override public function createUI():void
		{
			super.createUI();
			addChild(view);
			
			view.rankList.repeatX = 1;
			view.rankList.repeatY = RANK_PAGE_NUM;
			view.rankList.itemRender = PvpRankCell;
			view.rankList.spaceY = 10;
//			myRank = new PvpRankCell();
//			view.addChild(myRank);
//			myRank.pos(view.p1.x,view.p1.y);
//			view.p1.removeSelf();
		}
		
		public override function show(...args):void{
			super.show(args);
			AnimationUtil.flowIn(this);
			
			_model = Facade.getInstance().retrieveProxy("PvpProxy") as PvpProxy;
		}
		
		public override function addEvent():void{
			super.addEvent();
			view.closeBtn.on(Event.CLICK,this,close);
			view.leftBtn.on(Event.CLICK,this,pageChang);
			view.rightBtn.on(Event.CLICK,this,pageChang);
			view.claimBtn.on(Event.CLICK,this,getReward);
			Signal.intance.on(
				ServiceConst.getServerEventKey(ServiceConst.PVP_GETINFO),
					this,changeBtnState);
			
			getPageData(1);
		}
		
		public override function removeEvent():void{
			super.removeEvent();
			view.closeBtn.off(Event.CLICK,this,close);
			view.leftBtn.off(Event.CLICK,this,pageChang);
			view.rightBtn.off(Event.CLICK,this,pageChang);
			view.claimBtn.off(Event.CLICK,this,getReward);
			
			Signal.intance.on(
				ServiceConst.getServerEventKey(ServiceConst.PVP_GETINFO),
				this,changeBtnState);
		}
		
		private function pageChang(e:Event):void
		{
			switch(e.target)
			{
				case view.leftBtn:
				{
					getPageData(_pageIdx - 1);
					break;
				}
					
				case view.rightBtn:
				{
					getPageData(_pageIdx + 1);
					break;
				}
			}
		}
		
		private function getPageData(p:Number):void
		{
			_pageIdx = p;
			
			Signal.intance.on(
				ServiceConst.getServerEventKey(ServiceConst.PVP_RANK),
				this,getPageDataBack);
			WebSocketNetService.instance.sendData(ServiceConst.PVP_RANK,[_pageIdx,RANK_PAGE_NUM]);
		}
		
		private function getPageDataBack(... args):void{
			Signal.intance.off(
				ServiceConst.getServerEventKey(args[0]),
				this,getPageDataBack);
			var rankAr:Array = args[1];
			var myRankdata:Object = args[2];
			var maxNum:Object = args[3];
			_maxPage = Math.max(1, Math.ceil(maxNum / RANK_PAGE_NUM));
			view.leftBtn.disabled = _pageIdx <= 1;
			view.rightBtn.disabled = _pageIdx >= _maxPage;
			view.pageLbl.text = _pageIdx + "/" + _maxPage;
			view.rankList.array = hsArrary(rankAr);
//			myRank.dataSource = myRankdata;
			setMyRank(myRankdata);
			changeBtnState();
		}
		
		private function setMyRank(obj:Object):void
		{
			if(!obj)
			{
				return;
			}
			view.myScoreTxt.text = obj.integral;
			view.myRankTxt.text = StringUtil.substitute("{0}",obj.rank);
			
			var arr:Array;
			
			obj_ = _model.getRankRewardData(obj.rank);
			
			if( obj_ )
			{
				if( obj_.reward.indexOf("|") != -1 )
				{
					arr = obj_.reward.split("|");
				}
				else
				{
					arr = [];
					arr.push(obj_.reward);
				}
				
				view.rewardList.array = arr;
			}
			else
			{
				view.rewardList.array = [null];
			}
		}
		
		private function hsArrary(ar:Array):Array{
			while(ar.length < RANK_PAGE_NUM){
				ar.push(null);
			}
			return ar;
		}
		
		private function getReward():void
		{
			PvpManager.intance.getReward();
		}
		
		public function changeBtnState():void
		{
			if( !obj_ )
			{
				view.claimBtn.disabled = true;
				view.claimBtn.label = GameLanguage.getLangByKey("L_A_54008");
				return;
			}
			
			if( !_model )
				_model = Facade.getInstance().retrieveProxy("PvpProxy") as PvpProxy;
			
			var vstate:Boolean = false;
			if( _model.state == 1 )
			{
				vstate = true;
			}
			else
			{
				if( _model.rankRewards == 1 )
				{
					vstate = true;
				}
				else
				{
					vstate = false;
				}
			}
			
			view.claimBtn.disabled = vstate;
			view.claimBtn.label = _model.rankRewards > 0 ? GameLanguage.getLangByKey("L_A_3008") : GameLanguage.getLangByKey("L_A_54008");
		}
		
		public override function destroy(destroyChild:Boolean=true):void{
			trace(1,"destroy pvpRankPanel");
//			myRank = null;
			_model.isGetRank = false;
			_model = null;
			
			super.destroy(destroyChild);
		}
	}
}