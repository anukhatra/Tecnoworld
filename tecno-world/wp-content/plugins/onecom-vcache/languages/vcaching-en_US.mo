��    n      �  �   �      P	  D   Q	     �	     �	  u   �	  �   9
  �   �
  �   l  5    �   N            	         *  �   1  A   �  B     �   ]     	       �   &  
   �  &   �                    &  
   -     8     Q  p   ^  \   �     ,     K     T  9   l     �     �     �  �   �  O   a     �  <  �  
   �     �  S     =   b     �     �  '   �     �  �   	  E   �  A   �     *     2  >   B     �     �     �  	   �  .   �     �  7   �     6  a   ;     �     �     �  :   �  H   �  9   H  
   �     �     �  ?   �  W   �  ~   I  U   �  ;        Z    r  (   �  5   �  v   �  :   `     �  	   �     �     �     �  &   �       �   !  �   �  %   g  %   �     �     �     �     �  >   �     3      ;   �   H   �  �   +   �"  c   �"  T   O#  �   �#  "  m$  D   �%     �%     �%  u   &  �   x&  �   �&  �   �'  ;  W(  �   �)     W*     \*  	   e*     o*  �   v*  A   +  B   _+  �   �+     N,     c,  �   k,  
   -  &   "-     I-     U-     ^-     k-  
   r-     }-     �-  p   �-  \   .     q.     �.     �.  9   �.     �.     �.     /  �   /  O   �/     �/  <  �/  
   71     B1  S   S1  =   �1     �1     �1  '   2     <2  �   N2  E   �2  A   -3     o3     w3  >   �3     �3     �3     �3  	   �3  .   4     04  7   C4     {4  a   �4     �4     �4     �4  :   	5  H   D5  8   �5  
   �5     �5     �5  ?   �5  W   56  ~   �6  U   7  ;   b7     �7    �7  (   �8  5   �8  v   -9  :   �9     �9  	   �9     :     :     :  &   $:     K:  �   e:  �   ;  %   �;  %   �;     �;     <     <     "<  >   8<     w<     <  �   �<  �  =  +   ?  c   /?  T   �?  �   �?         R   U      h   :       8   S   !   "   l   n   E   X   i      J   .   L   H   3                      B                 =           Q                 P       Z   k   )               #   m       7       ?   /   F   5   e           f         j   +   ]      9   c   -   M   $               *              V   0           ;   %       ,   &   ^   >   	   `      <         6   b      2              d           _   T   \   C   K       
       a   '       g   W   N      I   O   A   1              D                Y                     G   (   4   @   [               %1$s /path/to/the/wordpress/root/varnishstat.json # every 3 minutes. %s is purged successfully. /varnishstat.json /varnishstat/server1_3389398cd359cfa443f85ca040da069a.json,/varnishstat/server2_3389398cd359cfa443f85ca040da069a.json <a href="%1$s">Performance Cache</a> automatically purges your posts when published or updated. Sometimes you need a manual flush. <strong>Long story</strong><br />On every Varnish Cache server setup a cronjob that generates the JSON stats file :<br /> %1$s /path/to/be/set/filename.json # every 3 minutes. <strong>Short story</strong><br />You must generate by cronjob the JSON stats file. The generated files must be copied on the backend servers in the wordpress root folder. A content delivery network is a system of distributed servers that deliver pages and other web content to a user, <br/>based on the geographic locations of the user, the origin of the webpage and the content delivery server. <br>This is especially useful if you have a lot of visitors spread across the globe. A custom URL or permalink structure is required for the Performance Cache plugin to work correctly. Please go to the <a href="options-permalink.php">Permalinks Options Page</a> to configure them. ACLs Backends Cache TTL Cancel Comma separated hostnames. Varnish uses the hostname to create the cache hash. For each IP, you must set a hostname.<br />Use this option if you use multiple domains. Comma separated ip/ip range. Example : 192.168.0.2,192.168.1.1/24 Comma separated ip/ip:port. Example : 192.168.0.2,192.168.0.3:8080 Comma separated relative URLs. One for each IP. <a href="%1$s/wp-admin/index.php?page=vcaching-plugin&tab=stats&info=1">Click here</a> for more info on how to set this up. Connection timed out Console Copy the files on the backend servers in /path/to/wordpress/root/varnishstat/ folder. Then fill in the relative path to the files in Statistics JSONs on the Settings tab : Deactivate Deactivated the One.com Varnish plugin Description Download Dynamic host Enable Enable CDN Enable Performance Cache Enable debug Example 1 <br />If you have a single server, both Varnish Cache and the backend on it, use the folowing cronjob: Example 2 <br />You have 2 Varnish Cache Servers, and 3 backend servers. Setup the cronjob : Fetching stats for server %1$s Generate Get configuration files Hello, We've deactivated the One.com Varnish plugin from  Homepage cache TTL Hosts IPs If you cannot enable the ZIP extension, please use the provided Varnish Cache configuration files located in /wp-content/plugins/vcaching/varnish-conf folder It seems that %s is already purged. There is no resource in the cache to purge. Key Key used to purge Varnish cache. It is sent to Varnish as X-VC-Purge-Key header. Use a SHA-256 hash.<br />If you can't use ACL's, use this option. You can set the `purge key` in lib/purge.vcl.<br />Search the default value ff93c3cb929cee86901c7eefc8088e9511c005492c6502a930360c02221cf8f4 to find where to replace it. Learn more Logged in cookie Not required. If filled in overrides default TTL of %s seconds. 0 means no caching. One.com Performance Cache improves your website's performance One.com performance tools Override default TTL Override default TTL on each post/page. Performance Cache Performance Cache requires you to use custom permalinks. Please go to the <a href="options-permalink.php">Permalinks Options Page</a> to configure them. Performance cache works with domains which are hosted on %sone.com%s. Please upgrade to a subscription with access to Premium features. Premium Premium feature Press the button below to force it to purge your entire cache. Purge Purge Performance Cache Purge from Varnish Purge key Purge menu related pages when a menu is saved. Purge on save menu Relative URL to purge. Example : /wp-content/uploads/.* Save Send all debugging headers to the client. Also shows complete response from Varnish on purge all. Server %1$s Settings Setup information Some error occurred, please reload the page and try again. Sorry, no compatible themes found for your version of WordPress and PHP. Speed up your website with fast content delivery network. Statistics Statistics JSONs Stats generated on The chosen theme is not available in your current subscription. The generated files must be copied on the backend servers in the wordpress root folder. The time that website data is stored in the Varnish cache. After the TTL expires the data will be updated, 0 means no caching. Then fill in the relative path to the files in Statistics JSONs on the Settings tab : This feature is not available in your current subscription. This is a Premium Theme This module sets a special cookie to tell Varnish that the user is logged in. Use a SHA-256 hash. You can set the `logged in cookie` in default.vcl.<br />Search the default value <i>flxn34napje9kwbwr4bjwz5miiv9dhgj87dct4ep0x3arr7ldif73ovpxcgm88vs</i> to find where to replace it. Time to live in seconds in Varnish cache Time to live in seconds in Varnish cache for homepage To get the best out of One.com Performance Cache, kindly deactivate the existing "Varnish Caching" plugin.&nbsp;&nbsp; Truncate message activated. Showing only first 3 messages. Truncate notice message Try again Trying to purge URL :  URL Upgrade Use SSL (https://) for purge requests. Use SSL on purge requests Use a different filename for each Varnish Cache server. After this is done, fill in the relative path to the files in Statistics JSONs on the Settings tab. Uses the $_SERVER['HTTP_HOST'] as hash for Varnish. This means the purge cache action will work on the domain you're on.<br />Use this option if you use only one domain. VC Server 1 : %1$s # every 3 minutes. VC Server 2 : %1$s # every 3 minutes. VCLs Generator Value Varnish Cache version Varnish configuration Varnish environment not present for Performance cache to work. Version View details When using multiple Varnish Cache servers, VCaching shows too many `Trying to purge URL` messages. Check this option to truncate that message. With One.com Performance Cache enabled your website loads a lot faster. We save a cached copy of your website on a Varnish server, that will then be served to your next visitors. <br/>This is especially useful if you have a lot of visitors. It may also help to improve your SEO ranking. If you would like to learn more, please read our help article: <a href="https://help.one.com/hc/en-us/articles/360000080458" target="_blank">How to use the One.com Performance Cache for WordPress</a>. You cannot download the configuration files You do not have permission to purge the cache for the whole site. Please contact your adminstrator. You have chosen a Premium feature that is not included in your current subscription. You server's PHP configuration is missing the ZIP extension (ZipArchive class is used by VCaching). Please enable the ZIP extension. For more information click <a href="%1$s" target="_blank">here</a>. Project-Id-Version: 
POT-Creation-Date: 2019-12-24 16:48+0530
PO-Revision-Date: 
Last-Translator: 
Language-Team: 
Language: en_US
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Poedit 2.2.1
 %1$s /path/to/the/wordpress/root/varnishstat.json # every 3 minutes. %s is purged successfully. /varnishstat.json /varnishstat/server1_3389398cd359cfa443f85ca040da069a.json,/varnishstat/server2_3389398cd359cfa443f85ca040da069a.json <a href="%1$s">Performance Cache</a> automatically purges your posts when published or updated. Sometimes you need a manual flush. <strong>Long story</strong><br />On every Varnish Cache server setup a cronjob that generates the JSON stats file :<br /> %1$s /path/to/be/set/filename.json # every 3 minutes. <strong>Short story</strong><br />You must generate by cronjob the JSON stats file. The generated files must be copied on the backend servers in the wordpress root folder. A content delivery network (CDN) is a system of distributed servers that deliver pages and other web content to a user, <br/>based on the geographic locations of the user, the origin of the webpage and the content delivery server. <br>This is especially useful if you have a lot of visitors spread across the globe. A custom URL or permalink structure is required for the Performance Cache plugin to work correctly. Please go to the <a href="options-permalink.php">Permalinks Options Page</a> to configure them. ACLs Backends Cache TTL Cancel Comma separated hostnames. Varnish uses the hostname to create the cache hash. For each IP, you must set a hostname.<br />Use this option if you use multiple domains. Comma separated ip/ip range. Example : 192.168.0.2,192.168.1.1/24 Comma separated ip/ip:port. Example : 192.168.0.2,192.168.0.3:8080 Comma separated relative URLs. One for each IP. <a href="%1$s/wp-admin/index.php?page=vcaching-plugin&tab=stats&info=1">Click here</a> for more info on how to set this up. Connection timed out Console Copy the files on the backend servers in /path/to/wordpress/root/varnishstat/ folder. Then fill in the relative path to the files in Statistics JSONs on the Settings tab : Deactivate Deactivated the One.com Varnish plugin Description Download Dynamic host Enable Enable CDN Enable Performance Cache Enable debug Example 1 <br />If you have a single server, both Varnish Cache and the backend on it, use the folowing cronjob: Example 2 <br />You have 2 Varnish Cache Servers, and 3 backend servers. Setup the cronjob : Fetching stats for server %1$s Generate Get configuration files Hello, We've deactivated the One.com Varnish plugin from  Homepage cache TTL Hosts IPs If you cannot enable the ZIP extension, please use the provided Varnish Cache configuration files located in /wp-content/plugins/vcaching/varnish-conf folder It seems that %s is already purged. There is no resource in the cache to purge. Key Key used to purge Varnish cache. It is sent to Varnish as X-VC-Purge-Key header. Use a SHA-256 hash.<br />If you can't use ACL's, use this option. You can set the `purge key` in lib/purge.vcl.<br />Search the default value ff93c3cb929cee86901c7eefc8088e9511c005492c6502a930360c02221cf8f4 to find where to replace it. Learn more Logged in cookie Not required. If filled in overrides default TTL of %s seconds. 0 means no caching. One.com Performance Cache improves your website's performance one.com performance tools Override default TTL Override default TTL on each post/page. Performance Cache Performance Cache requires you to use custom permalinks. Please go to the <a href="options-permalink.php">Permalinks Options Page</a> to configure them. Performance cache works with domains which are hosted on %sone.com%s. Please upgrade to a subscription with access to Premium features. Premium Premium feature Press the button below to force it to purge your entire cache. Purge Purge Performance Cache Purge from Varnish Purge key Purge menu related pages when a menu is saved. Purge on save menu Relative URL to purge. Example : /wp-content/uploads/.* Save Send all debugging headers to the client. Also shows complete response from Varnish on purge all. Server %1$s Settings Setup information Some error occurred, please reload the page and try again. Sorry, no compatible themes found for your version of WordPress and PHP. Speed up your website with fast content delivery network Statistics Statistics JSONs Stats generated on The chosen theme is not available in your current subscription. The generated files must be copied on the backend servers in the wordpress root folder. The time that website data is stored in the Varnish cache. After the TTL expires the data will be updated, 0 means no caching. Then fill in the relative path to the files in Statistics JSONs on the Settings tab : This feature is not available in your current subscription. This is a Premium Theme This module sets a special cookie to tell Varnish that the user is logged in. Use a SHA-256 hash. You can set the `logged in cookie` in default.vcl.<br />Search the default value <i>flxn34napje9kwbwr4bjwz5miiv9dhgj87dct4ep0x3arr7ldif73ovpxcgm88vs</i> to find where to replace it. Time to live in seconds in Varnish cache Time to live in seconds in Varnish cache for homepage To get the best out of One.com Performance Cache, kindly deactivate the existing "Varnish Caching" plugin.&nbsp;&nbsp; Truncate message activated. Showing only first 3 messages. Truncate notice message Try again Trying to purge URL :  URL Upgrade Use SSL (https://) for purge requests. Use SSL on purge requests Use a different filename for each Varnish Cache server. After this is done, fill in the relative path to the files in Statistics JSONs on the Settings tab. Uses the $_SERVER['HTTP_HOST'] as hash for Varnish. This means the purge cache action will work on the domain you're on.<br />Use this option if you use only one domain. VC Server 1 : %1$s # every 3 minutes. VC Server 2 : %1$s # every 3 minutes. VCLs Generator Value Varnish Cache version Varnish configuration Varnish environment not present for Performance cache to work. Version View details When using multiple Varnish Cache servers, VCaching shows too many `Trying to purge URL` messages. Check this option to truncate that message. With One.com Performance Cache enabled your website loads a lot faster. We save a cached copy of your website on a Varnish server, that will then be served to your next visitors. <br/>This is especially useful if you have a lot of visitors. It may also help to improve your SEO ranking. If you would like to learn more, please read our help article: <a href="https://help.one.com/hc/en-us/articles/360000080458" target="_blank">How to use the One.com Performance Cache for WordPress</a>. You cannot download the configuration files You do not have permission to purge the cache for the whole site. Please contact your adminstrator. You have chosen a Premium feature that is not included in your current subscription. You server's PHP configuration is missing the ZIP extension (ZipArchive class is used by VCaching). Please enable the ZIP extension. For more information click <a href="%1$s" target="_blank">here</a>. 