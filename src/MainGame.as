package
{
	import game.App;
	import game.common.XFacade;
	import game.global.GameSetting;
	import game.global.GlobalRoleDataManger;
	import game.global.ModuleName;
	import game.global.RegistClass;
	import game.global.consts.ServiceConst;
	import game.global.util.ComUtil;
	import game.global.util.DCCUtil;
	import game.global.util.ExtraJS;
	import game.net.socket.WebSocketNetService;
	
	import laya.debug.DebugPanel;
	import laya.debug.DebugTool;
	import laya.display.Sprite;
	import laya.display.Stage;
	import laya.display.Text;
	import laya.events.Event;
	import laya.net.Loader;
	import laya.resource.ResourceManager;
	import laya.utils.Browser;
	import laya.utils.Handler;
	import laya.webgl.WebGL;

	public class MainGame extends Sprite 
	{
		// mainGame
		public function MainGame()
		{		
			Laya.init(1136, 640,WebGL);
			Laya.stage.bgColor="#232628";
			Laya.stage.alignV=Stage.ALIGN_MIDDLE;
			Laya.stage.alignH=Stage.ALIGN_CENTER;
			Laya.stage.screenMode = Stage.SCREEN_HORIZONTAL;
			
			if(Browser.onMobile || Browser.window['conch']){
				if(Browser.window['conch'])
				{
					__JS__('conch.showAssistantTouch(false)');
				}
			}
			Laya.stage.scaleMode = Stage.SCALE_FIXED_WIDTH;
			//显示FPS
			//Stat.show(0,0)
			//附加js处理
			ExtraJS.exe();
			initTF();
			
			if (Browser.window.location && Browser.window.location.hash == "#debugPanel") {
				DebugPanel.init();
			}
			if (Browser.window.location && Browser.window.location.hash == "#debugTool") {
				DebugTool.init();
			}
		}
		
		
		private function initTF():void{
			var fonts:Array = [{url:"appRes\\font\\BigNoodleToo.ttf",type:Loader.BUFFER},{url:"appRes\\font\\Futura.ttf", type:Loader.BUFFER}]
			Laya.loader.load(fonts,Handler.create(this, this.onTFLoaded));
		}
		
		private function onTFLoaded():void{
			if(Browser.window['conch']){
				var arr:ArrayBuffer=Laya.loader.getRes("appRes\\font\\BigNoodleToo.ttf");
				Browser.window.conch.setFontFaceFromBuffer(XFacade.FT_BigNoodleToo,arr);
				
				arr=Laya.loader.getRes("appRes\\font\\Futura.ttf");
				Browser.window.conch.setFontFaceFromBuffer(XFacade.FT_Futura,arr);
			}else{
				var text:Text=new Text();
				text.font=XFacade.FT_BigNoodleToo;
				text.text = "A";
				text=new Text();
				text.font=XFacade.FT_Futura;
				text.text = "C";
			}
			init();
		}

		private function init():void
		{
			
			ComUtil.initParms();
			Config.isAntialias = true;
			//修改最大线程
			Laya.loader.maxLoader = 8;
			Laya.alertGlobalError=false;
			
			//注册类管理器
			RegistClass.intance.init();
			if(GameSetting.isApp){
				XFacade.instance.init(App,"rw");
			}else{//版本控制
				DCCUtil.updateDcc(Handler.create(XFacade.instance,XFacade.instance.init,[App,"rw"]));
			}
//			Laya.stage.on(Event.MOUSE_DOWN,this,stageClick);
		}
		
		private function stageClick(e:Event):void{
			trace("clickEvent:",e.target); 
			laya.resource.ResourceManager.systemResourceManager.check();
		}
		
		/**对外接口-打开页游支付*/  
		public static function openCharge():void{
			XFacade.instance.openModule(ModuleName.ChargeView);
		}
		
		/**对外接口-支付回调*/
		public static function chargeBack():void{
			GlobalRoleDataManger.instance.WebItemPayHandler();
		}
		
		/**对外接口*/
		public static function open(mName:String, param:Array):void{
			XFacade.instance.openModule(mName, param);
		}
		
		//以下接口非必要接口--------------------------;
		/**测试接口-买东西*/
		public static function buy(type:*, id:*):void{
			WebSocketNetService.instance.sendData(ServiceConst.S_BUY,[type,id]);
		}
		
		/**测试接口-训练*/ 
		public static function train(id:*):void{
			WebSocketNetService.instance.sendData(ServiceConst.T_TRAIN, id)
		}
		/**发送命令*/
		public static function sendData(cmdId:int, param:Array):void{
			WebSocketNetService.instance.sendData(cmdId, param);
		}
	}
}


