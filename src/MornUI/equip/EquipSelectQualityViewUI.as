/**Created by the LayaAirIDE,do not modify.*/
package MornUI.equip {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class EquipSelectQualityViewUI extends View {
		public var CloseBtn:Button;
		public var QualityBtn0:Image;
		public var QualityBtn2:Image;
		public var QualityBtn1:Image;
		public var QualityBtn3:Image;
		public var ConfirmBtn:Button;
		public var QualityBtn5:Image;
		public var QualityBtn4:Image;
		public var GouImage0:Image;
		public var GouImage2:Image;
		public var GouImage1:Image;
		public var GouImage5:Image;
		public var GouImage3:Image;
		public var GouImage4:Image;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("equip/EquipSelectQualityView");

		}

	}
}