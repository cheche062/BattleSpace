/**Created by the LayaAirIDE,do not modify.*/
package MornUI.chargeView {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ActChargeViewUI extends View {
		public var closeBtn:Button;
		public var CountryCombo:ComboBox;
		public var PayList:List;
		public var FaceBookTipsText:Text;
		public var adImg:Image;
		public var buyBtn:Button;
		public var actInfo:Text;
		public var actTitle:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("chargeView/ActChargeView");

		}

	}
}