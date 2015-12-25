app.addMenuItem({cName:"org-capture", 
                cParent:"Tools", 
                cExec:"app.launchURL('org-protocol://capture://' + 
                                      encodeURIComponent(this.URL) + 
                                      '/' + 
                                      encodeURIComponent(this.info.Title) + 
                                      '/');"});
