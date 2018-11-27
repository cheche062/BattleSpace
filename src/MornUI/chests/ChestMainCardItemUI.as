/**Created by the LayaAirIDE,do not modify.*/
package MornUI.chests {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ChestMainCardItemUI extends View {
		public var CardImage:Image;
		public var TipsText:Text;
		public var CardText:Text;
		public var DrawCardBox:Box;
		public var BgImage:Image;
		public var OnceBtn:Button;
		public var TenTimeBtn:Button;
		public var OnceCostTxt:Text;
		public var TenTimesCostTxt:Text;
		public var OnceImage:Image;
		public var TenTimeImage:Image;
		public var OriginalTenCostText:Text;
		public var OriginalTenImage:Image;
		public var LineTenImage:Image;
		public var OffITenmage:Image;
		public var OffTenText:Text;
		public var OffTenTimeText:Text;
		public var OriginalOneCostText:Text;
		public var OriginalOneImage:Image;
		public var LineOneImage:Image;
		public var OffIOnemage:Image;
		public var OffOneText:Text;
		public var CardScheduleBox:Box;
		public var scheduleImage00:Image;
		public var scheduleImage01:Image;
		public var scheduleImage02:Image;
		public var scheduleImage03:Image;
		public var scheduleImage04:Image;
		public var scheduleImage05:Image;
		public var scheduleImage06:Image;
		public var scheduleImage07:Image;
		public var scheduleImage08:Image;
		public var scheduleImage09:Image;
		public var NextNumText:Text;
		public var CostImage:Image;
		public var CostText:Text;
		public var CostImage1:Image;
		public var CostText1:Text;
		public var OrText:Text;
		public var imgTipDiscount:Image;
		public var lbTipDiscount:Text;
		public var CheckBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("chests/ChestMainCardItem");

		}

	}
}