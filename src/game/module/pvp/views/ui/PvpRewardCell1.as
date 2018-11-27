package game.module.pvp.views.ui
{
	import MornUI.pvpFight.PvpRewardCell1UI;
	
	import game.module.pvp.views.PvpManager;
	import game.module.pvp.model.IntegralItemVo;
	
	import laya.events.Event;
	import laya.ui.UIUtils;
	
	public class PvpRewardCell1 extends PvpRewardCell1UI
	{
		public function PvpRewardCell1()
		{
			super();
		}
		
		override protected function createChildren():void {
			super.createChildren();
			
			this.rBtn.on(Event.CLICK,this,rBtnClick);
		}
		
		override public function set dataSource(value:*):void{
			super.dataSource = value;
			var vo:IntegralItemVo = value as IntegralItemVo;
			if(vo)
			{
				itemList.array = vo.dataList;
				
				this.scoreTxt.text = vo.integral.toString();
				this.filters = vo.state == 0 ? [UIUtils.grayFilter] : null;
				this.overLbl.visible = vo.state == 2;
				this.rBtn.visible = !overLbl.visible;
				this.rBtn.disabled = vo.state != 1;
			}
		}
		
		private function rBtnClick(e:Event):void
		{
			if(dataSource)
			{
				PvpManager.intance.getIntegralReward(dataSource.id);
			}
		}
		
		override public function destroy(destroyChild:Boolean=true):void
		{
			this.rBtn.off(Event.CLICK,this,rBtnClick);
			super.destroy(destroyChild);
		}
		
	}
}