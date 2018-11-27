/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fackBookChange {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class FaceBookChargeViewUI extends View {
		public var BgImage:Image;
		public var TitleText:Text;
		public var chargeList:List;
		public var CountryCombo:ComboBox;
		public var PayList:List;
		public var vipBox:Box;
		public var chargeInfoTxt:Text;
		public var NextChargeText:Text;
		public var NextVipText:Text;
		public var ChargeMoreText:Text;
		public var VipText:Text;
		public var VipBar:ProgressBar;
		public var FaceBookTipsText:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("fackBookChange/FaceBookChargeView");

		}

	}
}