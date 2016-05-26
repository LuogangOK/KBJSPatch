defineClass('ALJSPatchFile',{},{
            
            maxVersion : function() {
            
            return '2.3.0';
            },
            minVersion : function() {
            
            return '2.0.0';
            },
            //这个值是当前时间相对于2001年的时间,iOS代码为[NSDate timeIntervalSinceReferenceDate],每次上传fixBug.js前必须更改._$_SEPERATE_LINE_$_
            fixBugModifyTime : function() {
            
            return '485749873.291185';
            }
            });