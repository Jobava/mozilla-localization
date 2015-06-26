# mozilla-localization
Multi-repo for Romanian language Mozilla localization projects

### Guides

* [i18n ghidul traducătorului de software](http://www.i18n.ro/Ghidul_traducatorului_de_software)
* [i18n ce nu trebuie tradus](http://www.i18n.ro/Recunoasterea_secventelor_de_text_ce_nu_trebuie_traduse)
* [i18n greșeli frecvente](http://www.i18n.ro/Greseli_frecvente)
* [Ghid localizare Ubuntu](https://wiki.ubuntu.com/RomanianTeam/Proiecte/Localizare/Ghid)
* [Glosar i18n](http://i18n.ro/Glosar)
* [Google translate](https://translate.google.com/#en/ro/)
* [Transvision](https://transvision.mozfr.org)
* [Localizare Microsoft - pentru comparații](https://www.microsoft.com/Language/en-US/Search.aspx?langID=ro-ro)
* [Exemplu de document localizat - Google Chrome](https://www.google.com/intl/ro/chrome/browser/privacy/whitepaper.html)
* [Exemplu 2 - Google Chrome](https://www.google.com/intl/ro/chrome/browser/privacy/)

### Main resources

* [Web dashboard](https://l10n.mozilla-community.org/webdashboard/?locale=ro)
* [Web dashboard view #2](https://l10n.mozilla-community.org/~flod/webstatus/?locale=ro)
* [Web dashboard view #3](https://l10n.mozilla.org/teams/ro#webdashboard)
* [Marketplace dashboard](https://l10n.mozilla-community.org/~flod/webstatus/mpstats/)
* [Graphic for web localization](https://l10n.mozilla-community.org/~pascalc/web_l10n_stats/?locale=ro)
* [Localization errors](https://l10n.mozilla-community.org/~pascalc/langchecker/?action=errors)
* [Mozilla wiki for Web Parts](https://wiki.mozilla.org/L10n:Web_parts)

### Romanian L10N

* [Romanian localization team](https://wiki.mozilla.org/L10n:Teams:ro)
* [Mozilla Romania Google group] (http://groups.google.com/group/mozilla-ro)
* [Locamotion (Pootle) Romanian] (http://mozilla.locamotion.org/ro/)
* [Verbatim (older Pootle) Romanian](https://localize.mozilla.org/ro/)
 
### Staging for www-mozilla-org

https://www-dev.allizom.org/ro/

### Review checklist
* What type of doc am I reviewing?
* Who is the target audience?
* What need is this doc trying to fill?
* Does what I read successfully address and satisfy the target audience's needs?
* Does the doc's structure help to make the doc easy to read?
* Does the language in the doc make it easy to read and understand?
* Does the doc contain any navigational links to promote a specific information flow? If so, where do they lead?
* Do the styles (bold, italics, etc.) guide you to key pieces of information in the doc? If not, how could they be better used?
* Are all of the links functional? If not, please identify those that are not functional.
* Is the information contained within the doc accurate and up-to-date?
* Are there any specific details that are missing from the doc? If so, please identify those details.
* Please rate what you have read on a scale of 1-5 (1=best doc I've ever read; 5=big pile of uselessness) and explain the reason for your rating.
 
### Locale Inspector

There is a command line tool to check locales. The following items can be verified:
* byte order mark (BOM)
* entities
* placeholders (%S, #1, $var$ ...)
* access keys
* keybindings

The application also allows merging a locale into the en-US one. So, a valid translation can be created in seconds. See the "merge" line in the .ini file.

Download the application here: http://downloads.mozdev.org/br/locale-inspector.zip

This is a .NET application, therefore the Microsoft .NET Framework 1.1 or Mono is required in order to run it.

The application can be controlled with an .ini file.

### Working repositories (trunk)
* [mozilla.com](https://svn.mozilla.org/projects/mozilla.com/trunk/locales/ro/)
* [start.mozilla.org](https://svn.mozilla.org/projects/l10n-misc/trunk/fx36start/locale/ro/)
* [about-healthreport](https://svn.mozilla.org/projects/l10n-misc/trunk/firefoxhealthreport/locale/ro/)
* [slogans](https://svn.mozilla.org/projects/granary/slogans/ro/)
* [snippets](https://svn.mozilla.org/projects/l10n-misc/trunk/snippets/ro/)
* [firefoxos-marketing](https://svn.mozilla.org/projects/l10n-misc/trunk/firefoxos-marketing/ro/)
* [firefox-tiles](https://svn.mozilla.org/projects/l10n-misc/trunk/firefoxtiles/ro/)
* [google-play](https://svn.mozilla.org/projects/l10n-misc/trunk/googleplay/ro/)
* [contribute-autoreplies](https://svn.mozilla.org/projects/mozilla.com/trunk/locales/ro/)

### Other resources
* https://rospell.wordpress.com/
* [Mozilla release schedule](https://www.google.com/calendar/embed?src=bW96aWxsYS5jb21fZGJxODRhbnI5aTh0Y25taGFiYXRzdHY1Y29AZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ)
* [L10n blog](https://blog.mozilla.org/l10n/)
* [Twitter](https://twitter.com/mozilla_l10n)

### Common terminology

Format: English - Romanian

* tab - filă / file
* tile - panou / panouri
* extension - extensie / extensii
* add-on - supliment / suplimente
* plugin - modul / module
* Sync - Sincronizare
* click - clic / clicuri
* byte - octet / octeți
* share - impărtășeșiți, distribuiți, dați de veste, spuneți ( și altora | prietenilor )
* tweet(noun) - ciripeală
* tweet(verb) - ciripiți

### Quick svn tips (use your own query parameters)

* [Web view](https://viewvc.svn.mozilla.org/vc/?view=query&dir=&file=&file_match=exact&who=jobava&who_match=regex&comment=&comment_match=exact&querysort=date&hours=2&date=month&mindate=&maxdate=&limit_changes=100)
* svn log ro | grep yourname
* svn2git https://github.com/nirvdrum/svn2git

### Misc (the great Romanian terminology debate)

*  https://romania.etherpad.mozilla.org/7?
*  https://groups.google.com/forum/#!topic/mozilla-ro/nyToBI32yb8

### Other resources

* [gettext documentation](https://www.gnu.org/software/gettext/manual/gettext.html)

