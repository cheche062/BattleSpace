/**Created by the LayaAirIDE,do not modify.*/
package MornUI.train {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;
	import MornUI.train.TrainingItemUI;
	import MornUI.componets.SkillComUI;
	import MornUI.train.DataComUI;

	public class TrainViewUI extends View {
		public var goldIcon2:Image;
		public var timeIcon:Image;
		public var puIcon2:Image;
		public var speedBtn:Button;
		public var trainBtn:Button;
		public var conTF:Text;
		public var timeTF:Text;
		public var trainTimeTF:Text;
		public var costTF:Text;
		public var poNumTF:Text;
		public var titleTF:Text;
		public var list:List;
		public var nowList:List;
		public var exItem:TrainingItemUI;
		public var timeBar:ProgressBar;
		public var skillCom:SkillComUI;
		public var puIcon:Image;
		public var btn_0:Button;
		public var btn_1:Button;
		public var btn_3:Button;
		public var btn_4:Button;
		public var editBtn:Button;
		public var dataInfo:DataComUI;
		public var btn_2:Button;
		public var closeBtn:Button;
		public var confirmBtn:Button;
		public var totalTimeTF:Text;
		public var kpiIcon:Image;
		public var powerTF:Text;
		public var goldIcon:Image;
		public var totalGoldTF:Text;
		public var maxIcon:Image;
		public var maxTF:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			View.regComponent("MornUI.train.TrainingItemUI",TrainingItemUI);
			View.regComponent("MornUI.componets.SkillComUI",SkillComUI);
			View.regComponent("MornUI.train.DataComUI",DataComUI);
			super.createChildren();
			loadUI("train/TrainView");

		}

	}
}