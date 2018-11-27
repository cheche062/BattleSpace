package game.module.fighting.panel
{
	import MornUI.fightResults.PvpResultsUIUI;
	
	import game.common.ItemTips;
	import game.common.ResourceManager;
	import game.common.RewardList;
	import game.common.UIHelp;
	import game.global.StringUtil;
	import game.global.data.DBItem;
	import game.global.vo.PvpLevelVo;
	import game.module.fighting.cell.FightResultsSoldierCell;
	import game.module.pvp.views.PvpManager;
	
	import laya.events.Event;
	import laya.filters.ColorFilter;
	import laya.utils.Handler;
	import laya.utils.Tween;

	public class PvpResultsView extends BaseFightResultsView
	{
		protected var sList:RewardList;
		private var mV:PvpResultsUIUI;
		private var _showIntegral:Number = 0;
		public function PvpResultsView()
		{
			super();
		}
		
		public function get showIntegral():Number
		{
			return _showIntegral;
		}

		public function set showIntegral(value:Number):void
		{
			return;
			value = Math.ceil(value);
			if(value != _showIntegral)
			{
				_showIntegral = value;
				var vo:PvpLevelVo = PvpManager.intance.getPvpLevelByIntegral(value);
				var vo2:PvpLevelVo;
				if(vo.id > 1)
				{
					vo2 = PvpManager.intance.getPvpLevelVoByLevel(vo.id - 1);
				}
				var maxExp:Number = vo.up;
				var exp:Number = value;
				if(vo2)
				{
					maxExp = maxExp - vo2.up;
					exp = exp - vo2.up;
				}
				mV.scoreBar.value = exp / maxExp;
				
				mV.lRankFace.skin = vo.rankIcon;
				var vo3:PvpLevelVo = PvpManager.intance.getPvpLevelVoByLevel(vo.id + 1);
				if(vo3)
				{
					mV.rRankFace.skin = vo3.rankIcon;
				}else
				{
					mV.rRankFace.skin = vo.rankIcon;
				}
			}
			
			mV.lRankFace.skin = mV.rRankFace.skin = "";
		}

		public override function init():void
		{
			mV = new PvpResultsUIUI();
			addChild(mV);
			this.closeBtn = mV.closeBtn;
			this.tileImg = mV.tileImg;
			this.tileImg.y = -15;
			this.bgImg = mV.bgImg;
			
			sList = new RewardList();
			sList.itemRender = FightResultsSoldierCell;
			sList.itemWidth = FightResultsSoldierCell.itemWidth;
			sList.itemHeight = FightResultsSoldierCell.itemHeight;
			mV.pi2.parent.addChild(sList);
			sList.y = mV.pi2.y;
			mV.pi2.removeSelf();
			mV.scoreBar.value = 0;
			
			mV.iconImg.on(Event.CLICK,this,showTipFun);
		}
		
		protected function showTipFun(e:Event):void
		{
			var itemId:String = "" + DBItem.PVP_TOKEN;
			ItemTips.showTip(itemId);	
		}
		
		public override function bindData():void
		{
			closeBtn.label =  data.turnCard ? "Lucky":"BACK";
			bgImg.filters = data.isWin ? null: [ColorFilter.GRAY];
			
			tileImg.graphics.clear();
			tileImg.loadImage(
				ResourceManager.instance.getLangImageUrl(data.isWin ? "victory.png":"lose.png")
				,0,0,0,0,
				Handler.create(this,tileLoadeBack)
			);
			mV.scoreBar.visible = false;
			mV.lRankFace.skin = mV.rRankFace.skin = "";
			mV.adDaibiLbl.text = "+"+data.fightRewards;
//			mV.scoreLbl2.text= data.integral;
//			mV.scoreLbl2.color = data.addIntegral ? "#69fa6e":"#9cd4ff";
//			
//			mV.scoreadLbl.text = data.addIntegral ? data.addIntegral : "";
			
			mV.scoreadImg.visible = Boolean(data.addIntegral);
			mV.scoreLbl2.color = data.addIntegral ? "#69fa6e":"#9cd4ff";
			if(!data.addIntegral)
			{
				mV.scoreLbl2.text = StringUtil.substitute("{0}(--)",data.integral);
				mV.scoreadLbl.visible = false;
				showIntegral = data.newGrades;
			}else
			{
				mV.scoreLbl2.text = StringUtil.substitute("{0}(",data.integral);
				mV.scoreadLbl.visible = true;
				mV.scoreadLbl.text = StringUtil.substitute("{0})", data.addIntegral);
				if( data.addIntegral >= 0 )
				{
					mV.scoreadImg.visible = true;
					mV.jscoreadImg.visible = false;
					mV.scoreadImg.x = mV.scoreLbl2.x + mV.scoreLbl2.textField.textWidth+2;
					mV.scoreadLbl.x = mV.scoreadImg.x + mV.scoreadImg.width+2;
				}
				else
				{
					mV.scoreadImg.visible = false;
					mV.jscoreadImg.visible = true;
					mV.jscoreadImg.x = mV.scoreLbl2.x + mV.scoreLbl2.textField.textWidth+2;
					mV.scoreadLbl.x = mV.jscoreadImg.x + mV.jscoreadImg.width+2;
				}
				
				showIntegral = data.newGrades;
				Tween.to(this,{showIntegral:data.integral},2000);
			}
			
//			UIHelp.crossLayout(mV.ppBox,true,0,0,0,0,0,90);
			mV.ppBox.x = mV.width - mV.ppBox.width >> 1;
			
			sList.array = [];
			
			sList.array = BaseFightResultsView.filterSoldierData(data.soldierData);
			sList.x = width - sList.width >> 1;
			
			mV.noDie.visible = !sList.array.length;
		}
		
		override public function destroy(destroyChild:Boolean=true):void{
			mV.iconImg.off(Event.CLICK,this,showTipFun);
			sList = null;
			mV = null;
			super.destroy(destroyChild);
		}
	}
}