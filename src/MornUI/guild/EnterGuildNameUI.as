/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class EnterGuildNameUI extends View {
		public var closeBtn:Button;
		public var iconImg:Image;
		public var createBtn:Button;
		public var costImg:Image;
		public var priceTF:Text;
		public var inputNameTF:TextInput;
		public var helpBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("guild/EnterGuildName");

		}

	}
}