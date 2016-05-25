VERSION_SEPERATE_2.2.0
require('UIView, UIColor, UILabel')
defineClass('ViewController', {
            viewWillAppear: function(value) {
            self.super().viewWillAppear(value);
            self.view().setBackgroundColor(UIColor.blueColor())
            console.log('run viewController.js file ' + value);
            },
            getPerson_age_gender:function(name,age,gender) {
            
            console.log('getPersonAgeGender:'+name+','+age+','+gender);
            console.log('第一次修改，取数据:');
            console.log(self+','+self.dic()+','+self.isChanged()+','+self.number()+','+self.valueForKey('_firstIndex'));
            }
            });


defineClass('NSObject',{
            noParamsFunction:function() {
                console.log("this methods is call JSPatch log.noParamsFunction ");
            },
            haveMultiParamsFunction_p2_p3_p4:function(p1,p2,p3,p4) {
            
            console.log('the params is :'+p1+','+p2+','+p3+','+p4);
            }
            });

defineClass('AppDelegate',{

            boardView : function() {

                  var view = self.ORIGboardView();
            view.setBackgroundColor(UIColor.whiteColor());
                  return view;
            },
            A :function() {
            
            }
      });

VERSION_SEPERATE_2.2.1
require('UIView, UIColor, UILabel')
defineClass('ViewController', {
                                    viewWillAppear: function(value) {
                                    self.super().viewWillAppear(value);
                                    self.view().setBackgroundColor(UIColor.redColor())
                                    console.log('run viewController.js file ' + value);
                                    },
                                    getPerson_age_gender:function(name,age,gender) {
                                    
                                    console.log('getPersonAgeGender:'+name+','+age+','+gender);
                                    console.log('2-2-1版本');
                                    console.log(self+','+self.dic()+','+self.isChanged()+','+self.number()+','+self.valueForKey('_firstIndex'));
                                    }
                                    });
