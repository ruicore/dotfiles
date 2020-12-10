var V2Ray = "SOCKS5 127.0.0.1:1081; SOCKS 127.0.0.1:1081; DIRECT;";

var domains = [

	//slack
	"||slack.com",
	"||slack-imgs.com",
	"||slack-edge.com",
	"||slack-msgs.com",
	"||global.ssl.fastly.net",
	"||amazonaws.com",
	"||livecoding.tv",
	"||atlassian.com",
	"confluence-v1.prod.atl-paas.net",
	"teletraan.atlassian.net",
	"atl-paas.net",
	"prod.atl-paas.net",
	"cloudfront.net",
	"api.media.atlassian.com",

	
	"tl-paas.net",
	"cloud.google.com",
	"gcr.io",
	"discuss.elastic.co",
	"elastic.co",
	"vultr.com",
	"starlette.io",
	"github.githubassets.com",
	"camo.githubusercontent.com",
	"github.map.fastly.net",
	"github.global.ssl.fastly.net",
	"github.com",
	"api.github.com",
	"raw.githubusercontent.com",
	"avatars5.githubusercontent.com",
	"avatars4.githubusercontent.com",
	"avatars3.githubusercontent.com",
	"avatars2.githubusercontent.com",
	"avatars1.githubusercontent.com",
	"avatars0.githubusercontent.com",   

	"pypi.org",
	"oreilly.com",
	"||mega.nz",
	"vpngate.net",
	"greatfire.org",
	"tox.im",
	"proxifier.com",
	"dnscrypt.org",
	"atgfw.org",
	"chinagfw.org",
	"whatismyip.com",
	"goagentplus.com",
	"shadowsocks.org",
	"falcop.com",
	"getlantern.org",
	"furbo.org",
	"goagentx.com",
	"sourceforge.net",
	"torproject.org",
	"hideme.io",
	"mozilla.org",
	"shadowx.work",
	"v2ray.com",
	"astrill.com",

	//Design
	"deviantart.com",

	"disqus.com",
	"disquscdn.com",
	"tumblr.com", 
	"flickr.com",
	"imgur.com",

	"evozi.com",
	"live.com",
	"1drv.com",
	"evernote.com",

	//blog
	"wp.com",
	"yam.com",
	"ashchan.com",
	"zuckclub.com",
	"blogspot.com",
	"blogspot.jp",
	"zalex2014.tk",
	"coreygilmore.com",
	"wordpress.com",
	"blogimg.jp",
	"leaskh.com",
	"blogger.com",
	"hexo.io",
	"medium.com",

	//GeneralNews
	"rfi.my",
	"rfi.fr",
	"washingtonpost.com",
	"tmagazine.com",
	"nytimes.com",
	"nytimg.com",
	"imrworldwide.com",
	"rankingsandreviews.com",
	"usnews.com",
	"bbc.co.uk",
	"bbci.co.uk",
	"bbc.com",
	"on-match.com",
	"solidot.org",

	//TechNews
	"engadget.com", 

	//Network
	"amazonaws.com",
	"fastly.net",
	"akamaihd.net", 
	"blogsmithmedia.com", 
	"bit.ly",
	"d.pr",
	"ow.ly",
	"ift.tt",

	"nateparrott.com",
	
	"stacksocial.com",
	"feedly.com",
	"acgtea.com",

	//academy and develop
	"ieee.org",
	"mathoverflow.net",
	"tex.stackexchange.com",
	"academia.edu",
	"geogebra.org",
	"golang.org",
	"netspeak.org",
	"endreslab.com",

	//Universities
	"illinois.edu",
	"berkeley.edu",
	"wisc.edu",
	"cmu.edu",
	"rochester.edu",
	"purdue.edu",
	"technolutions.net",

	"netflix.com",

	//Online Dictionary
	"ldoceonline.com",
	"freedicts.com",

	//Softwares
	"formacx.com",
	"trionworlds.com",
	"line.me",

	//otaku
	"e-hentai.org",
	"nhentai.net",
	"nicovideo.jp",
	"nimg.jp",
	"pixnet.net",
	"fc2.com",
	"nyaatorrents.org",
	"nyaa.se",
	"share.dmhy.org",
	"loli.us",

	//facebook
	"facebook.net",
	"instagram.com",
	"facebook.com",
	"fb.me", 
	"cdninstagram.com",
	"fbcdn.net", 

	"booth.pm",

	"telegram.org",
	"telegram.me",

	"wikipedia.org",
	"pixiv.net",
	"twitch.tv",

	//Twitter
	"twitter.com",  
	"t.co", 
	"twimg.com",

	//Google
	"gmail.com", 
	"googlemail.com",
	"mailchimp.com", 
	"mail-archive.com", 
	"google.com", 
	"goo.gl",
	"google.com.hk", 
	"google.com.tw", 
	"google.co.jp",
	"googlecode.com",
	"googleapis.com", 
	"ggpht.com",
	"youtube.com", 
	"youtu.be",
	"ytimg.com",
	"youtube-nocookie.com",
	"googlevideo.com",
	"sketchup.com",
	"gstatic.com",
	"google-analytics.com",
	"googleusercontent.com",
	"chrome.com", 
	"g.co", 
	"googledrive.com", 
	"googletagmanager.com", 
	"googleadservices.com",
	"abc.xyz",

	//Dropbox
	"dropbox.com",
	"dropboxusercontent.com",
	"dropboxwiki.com",

	//iTuens
	"mzstatic.com",
	"itunes.apple.com",

	//cdn
	"cloudfront.net",
	"colwiz.com",
	"||*.http://gmail.com",
	"imap.gmail.com",
	"smtp.gmail.com",
	"||gmail.com"
];

function FindProxyForURL(url, host) {
    for (var i = domains.length - 1; i >= 0; i--) {
    	if (dnsDomainIs(host, domains[i])) {
            return V2Ray;
    	}
    }
    return "DIRECT";
}
