<cfoutput>
	<div id="main-content" class="content span9">
        	<div id="inside">
                <div class="row">
                    <div id="delbox" class="content-menu-box span2">
                        #linkTo(text="delivery", action="delivery", key="private")#
                        <p>Delivery box</p>
                    </div>
                    <div id="wallet" class="content-menu-box span2">
                        #linkTo(text="wallet", action="wallet", key="private")#
                        <p>Wallet</p>
                    </div>
                    <div id="message" class="content-menu-box span2">
                        #linkTo(text="message", action="message", key="private")#
                        <p>Messages</p>
                    </div>
                </div>
                <div class="row">
                    <div id="market" class="content-menu-box span2">
                        #linkTo(text="market", action="market", key="private")#
                        <p>Market</p>
                    </div>
                    <div id="advanced" class="content-menu-box span2">
                        #linkTo(text="advanced", action="advanced", key="private")#
                        <p>Advanced</p>
                    </div>
                    <div id="ls" class="content-menu-box span2">
                        #linkTo(text="ls", action="ls", key="private")#
                        <p>Light Square</p>
                    </div>
                </div>
                <div class="row">
                    <div id="cc" class="content-menu-box span2">
                        #linkTo(text="cc", action="cc", key="private")#
                        <p>Community Center</p>
                    </div>
                </div>
            </div>
        </div>
</cfoutput>