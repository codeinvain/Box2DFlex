package
{
	import flash.external.ExternalInterface;
	
	import mx.core.mx_internal;
	import mx.logging.LogEvent;
	import mx.logging.LogEventLevel;
	import mx.logging.targets.LineFormattedTarget;
	use namespace mx_internal;
	
	public class FirebugTarget extends LineFormattedTarget{
		
		
		private var _logMap:Object;
		public function FirebugTarget() {
			super(); 
			_logMap = new Object();
			_logMap[LogEventLevel.ALL]="console.log";
			_logMap[LogEventLevel.DEBUG]="console.debug";
			_logMap[LogEventLevel.INFO]="console.info";
			_logMap[LogEventLevel.WARN]="console.warn";
			_logMap[LogEventLevel.ERROR]="console.error";
			_logMap[LogEventLevel.FATAL]="console.error";
		}
		
		
		/**
		 * overriding this method instead of logEvent so we can laverage 
		 * TargetTrace as well.
		 */  
		override mx_internal function internalLog(message:String):void{
			trace(message);
		}
		
		public override function logEvent(event:LogEvent):void{
			//this will call our internalLog function .
			super.logEvent(event);
			
			// call firebug
			ExternalInterface.call(_logMap[event.level],event.message);
		}
		
	}
}