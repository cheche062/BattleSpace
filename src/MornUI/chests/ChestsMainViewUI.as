/**Created by the LayaAirIDE,do not modify.*/
package MornUI.chests {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.chests.ChestMainCardItemUI;
	import laya.display.Text;
	import MornUI.chests.ChestsMainShowViewUI;
	import MornUI.chests.ChestItemDropViewUI;
	import MornUI.chests.ChestsRuleViewUI;

	public class ChestsMainViewUI extends View {
		public var bg:Image;
		public var middle_box:Box;
		public var cardItem01:ChestMainCardItemUI;
		public var cardItem03:ChestMainCardItemUI;
		public var cardItem02:ChestMainCardItemUI;
		public var NextLevelTipsText:Text;
		public var NextLevelBtn:Button;
		public var NextLevelText:Text;
		public var PreviousLevelBtn:Button;
		public var PreviousLevelText:Text;
		public var dom_type_box:Box;
		public var CostImage0:Image;
		public var CostImage1:Image;
		public var CostImage3:Image;
		public var PayCostText:Text;
		public var freeCostText:Text;
		public var chargeCostText:Text;
		public var showBgBox:Box;
		public var ShowBgImage:Image;
		public var OnceBgImage:Image;
		public var ChannelBtn:Button;
		public var TenTimeBtn:Button;
		public var OnceBtn:Button;
		public var TenTimeImage:Image;
		public var OnceImage:Image;
		public var iconImage:Image;
		public var iconImage1:Image;
		public var itemList:List;
		public var specialItemList:List;
		public var OnceitemList:List;
		public var OnceCostTxt:Text;
		public var TenTimesCostTxt:Text;
		public var ShowPlayerBox:ChestsMainShowViewUI;
		public var ChestItemDrop:ChestItemDropViewUI;
		public var DrawRuleView:ChestsRuleViewUI;
		public var NextNumText:Text;
		public var dom_times_box:Box;
		public var scheduleImage09:Image;
		public var scheduleImage08:Image;
		public var scheduleImage07:Image;
		public var scheduleImage06:Image;
		public var scheduleImage05:Image;
		public var scheduleImage04:Image;
		public var scheduleImage03:Image;
		public var scheduleImage02:Image;
		public var scheduleImage01:Image;
		public var scheduleImage00:Image;
		public var top_box:Box;
		public var ReturnBtn:Button;
		public var closeBtn:Button;
		public var TitleText:Label;
		public var bottom_box:Box;
		public var TipImage:Image;
		public var BaseImage:Image;
		public var TextTips:Text;

		override protected function createChildren():void {
			View.regComponent("MornUI.chests.ChestMainCardItemUI",ChestMainCardItemUI);
			View.regComponent("Text",Text);
			View.regComponent("MornUI.chests.ChestsMainShowViewUI",ChestsMainShowViewUI);
			View.regComponent("MornUI.chests.ChestItemDropViewUI",ChestItemDropViewUI);
			View.regComponent("MornUI.chests.ChestsRuleViewUI",ChestsRuleViewUI);
			super.createChildren();
			loadUI("chests/ChestsMainView");

		}

	}
}