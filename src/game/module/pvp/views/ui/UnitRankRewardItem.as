package game.module.pvp.views.ui
{
	import MornUI.pvpFight.RankItemRenderUI;
	
	import game.common.ItemTips;
	import game.common.base.BaseView;
	import game.global.GameConfigManager;
	import game.global.data.bag.ItemData;
	import game.global.vo.equip.EquipmentListVo;
	import game.module.equip.EquipTipsView;
	
	import laya.events.Event;
	
	public class UnitRankRewardItem extends BaseView
	{
		private var _ui:RankItemRenderUI;
		
		private var _data:ItemData;
		
		public function UnitRankRewardItem()
		{
			super();
		}
		
		override protected function initialize():void
		{
			_ui = new RankItemRenderUI();
			this.addChild(_ui);
		}
		
		override public function set dataSource(value):void
		{
			super.dataSource = value;
			
			if( !value || value.indexOf("=") == -1 ) 
			{
				_ui.icon.skin = "";
				_ui.counTxt.text = "--";
				this.off(Event.CLICK,this,showTipFun);
				return;
			}
			
			this.on(Event.CLICK,this,showTipFun);
			
			var arr:Array = value.split("=");
			var imgId:int = arr[0];
			var num:int = arr[1];
			
			_data = new ItemData();
			_data.iid = imgId;
			_data.inum = num;
			
			_ui.icon.skin = GameConfigManager.getItemImgPath(imgId);
			_ui.counTxt.text = num.toString();
		}
		
		protected function showTipFun(e:Event):void
		{
			if(!_data)return ;
			
			var l_equipVo:EquipmentListVo=GameConfigManager.EquipmentList[_data.iid];
			if(l_equipVo==null||l_equipVo==undefined)
			{
				ItemTips.showTip(_data.iid);	
			}
			else
			{
				EquipTipsView.showTip(_data);
			}
		}
		
		override public function dispose():void
		{
			super.dispose();
			
			this.off(Event.CLICK,this,showTipFun);
			_ui = null;
		}
	}
}