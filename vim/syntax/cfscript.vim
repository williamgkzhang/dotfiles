" Language:     CFScript
" Maintainer:   Dave Long <http://davejlong.com>
" URL:          http://github.com/davejlong/coldfusion.vim
" License:      WTFPL

" Bail out if syntax is already loaded
"if exists('b:current_syntax') && b:current_syntax == 'cfscript'
"  finish
"endif

syn case ignore

" Comments
syn keyword cfCommentTodo   contained TODO FIXME XXX TBD
syn match   cfLineComment   /\/\/.*/ contains=cfCommentTodo
syn region  cfComment       start="/\*" end="\*/" contains=cfCommentTodo

" Definitions
syn keyword cfComponent     component
syn keyword cfFunction	    function
syn match	  cfBraces	      "[{}\[\]]"
syn match	  cfParens	      "[()]"
syn keyword cfFunctionScope public private protected package
syn keyword cfType          any array binary boolean component date
syn keyword cfType          guid numeric query string struct uuid
syn keyword cfType          void xml

" Statements
syn keyword cfStatement     return var param

" Strings
syn region  cfHash          contained start=+#+ end=+#+
syn region  cfStringD       start=+"+ end=+"+ contains=cfHash
syn region  cfStringS       start=+'+ end=+'+ contains=cfHash
syn keyword cfBoolean       true false

" Scopes
syn keyword cfScope         application arguments attributes caller cgi client
syn keyword cfScope         cookie flash form request server session this
syn keyword cfScope         thread url variables

" Conditionals
syn keyword cfCondition     if else switch case for while

" CF Functions
syn keyword cfFunctions     abs acos addsoaprequestheader addsoapresponseheader ajaxlink ajaxonload applicationstop arrayappend arrayavg arrayclear arraycontains arraydelete arraydeleteat arrayfind arrayfindnocase arrayinsertat arrayisdefined arrayisempty arraylen arraymax arraylen arraynew arrayprepend arrayresize arrayset arraysort arraysum arrayswap arraytolist asc asin atn authenticatedcontext authenticateduser
syn keyword cfFunctions     binarydecode binaryencode bitand bitmastclear bitmaskread bitmaskset bitnot bitor bitshln bitshrn bitxor
syn keyword cfFunctions     cacheget cachegetallids cachegetmetadata cachegetsession cacheput cacheremove cachesetproperties ceiling charsetdecode charsetencode chr cjustify compare comparenocase cos createdate createdatatime createobject createodbcdate createodbcdatetime createodbctime createtime createtimespan createuuid dateadd
syn keyword cfFunctions     datecompare dateconvert datediff dateformat datepart day dayofweek dayofweekasstring dayofyear daysinmonth daysinyear de decimalformat decrementvalue decrypt decryptbinary deleteclientvariable deserializejson directorycreate directorydelete directoryexists directorylist directoryrename dollarformat dotnettocftype duplicate
syn keyword cfFunctions     encrypt encryptbinary entitydelete entityloadbyexample entityloadbypk entitymerge entitynew entityreload entitysave entitytoquery evaluate exp expandpath
syn keyword cfFunctions     fileclose filecopy filedelete fileexists fileiseof filemove fileopen fileread filereadbinary filereadline fileseek filesetaccessmode filesetattribute filesetlastmodified fileskipbytes fileupload fileuploadall filewrite filewriteline find findnocase findoneof firstdayofmonth fix formatbasen
syn keyword cfFunctions     generatesecretkey getauthuser getbasetagdata getbasetaglist getbasetemplatepath getclientvariableslist getcomponentmetadata getcontextroot getcurentemplatepath getdirectoryfrompath getencoding getexception getfilefrompath getfileinfo getfunctioncalledname getfunctionlist getgatewayhelper gethttprequestdata gethttptimestring getk2serverdoccount getk2serverdoccountlimit getlocale getlocaledisplayname getlocalhostip getmetadata getmetricdata getpagecontext getprinterinfo getprinterlist getprofilesections getprofilestring getreadableimageformats getsoaprequest getsoaprequestheader getsoapresponse getsoapresponseheader gettempdirectory gettempfile gettickcount gettimezoneinfo gettoken getuserroles getvfsmetadata getwriteableimageformats
syn keyword cfFunctions     hash hour htmlcodeformat htmleditformat
syn keyword cfFunctions     iif imageaddborder imageblur imageclearrect imagecopy imagecrop imagedrawarc imagedrawbeveledrect imagedrawcubiccurve imagedrawline imagedrawlines imagedrawoval imagedrawpoint imagedrawquadraticcurve iamgedrawrect imagedrawroundrect imagedrawtext imageflip imagegetblob imagegetbufferedimage imagegetexifdata imagegetheight imagegetiptcmetadata imagegetiptctag imagegetwidth imagegrayscale imageinfo imagenegative imagenew imageoverlay imagepaste imageread imagereadbase64 imageresize imagerotate imagerotatedrawingaxis imagescaletofit imagesetantialiasing imagesetbackgroundcolor imagesetdrawingcolor imagesetdrawingstroke imagesetdrawingtransparency iamgesharpen imageshear imagesheardrawingacis imagetranslate imagetranslatedrawingaxis imagewrite imagewritebase64 imagexordrawingmode
syn keyword cfFunctions     incrementvalue inputbasen insert int isarray isauthenticated isauthorized isbinary isboolean iscustomfunctions isdate isddx isdebugmode isdefined isimage isimagefile isinstancteof isipv8 isjson isk2serverabroker isk2serverdoccountexceeded isk2serveronline isleapyear islocalhost isnull isnumeric isnumericdate isobject ispdffile isprotected isquery issimplevalue issoaprequest isspreadsheetfile isspreadsheetobject isstruct isuserinanyrole isuserinrole isuserloggedin isvalid iswddx isxml isxmlattribute isxmldoc isxmlelem isxmlnode isxmlroot
syn keyword cfFunctions     javacast jsstringformat
syn keyword cfFunctions     lcase left len listappend listchangedelims listcontains listcontainsnocase listdeleteat listfind listfindnocase listfirst listgetat listinsertat listlast listlen listprepend listqualify listrest listsetat listsort listtoarray listvaluecount listvaluecountnocase ljustify location log log10 lscurrencyformat lsdateformat lseurocurrencyformat lsiscurrency lsisdate lsisnumeric lsnumberformat lsparsecurrency lsparsedatetime lsparseeurocurrency lsparsenumber lstimeformat ltrim
syn keyword cfFunctions     max mid min minute month monthasstring now numberformat
syn keyword cfFunctions     objectequals objectload objectsave ormclearsession ormclosesession ormcloseallsessions ormevictcollection ormvictentity ormevictqueries ormexecutequery ormflush ormgetsession ormgetsessionfactory ormreload
syn keyword cfFunctions     paragraphformat parameterexists parsedatetime pi precisionevaluate preservesinglequotes
syn keyword cfFunctions     quarter queryaddcolumn queryaddrow queryconvertforgrid querynew querysetcell quotedvaluelist
syn keyword cfFunctions     rand randomize randrange refind refindnocase rematch rematchnocase releasecomobject removechars repeatstring replace replacelist rereplace rereplacenocase reverse right rjustify round rtrim
syn keyword cfFunctions     second sendgatewaymessage serializejson setencoding setlocale setprofilestring setvariable sgn sin sleep spanexcluding spanincluding spreadsheetaddcolumn spreadsheetaddimage spreadsheetaddfreezepane spreadsheetaddinfo spreadsheetaddrow spreadsheetaddrows spreadsheetaddsplitpane spreadsheetcreatesheet spreadsheetdeletecolumn spreadsheetdeletecolumns spreadsheetdeleterow spreadsheetdeleterows spreadsheetformatcell spreadsheetformatcolumn spreadsheetformatcellrange spreadsheetformatcolumns spreadsheetformatrow spreadsheetformatrows spreadsheetgetcellcomment spreadsheetgetcellformula spreadsheetgetcellvalue spreadsheetinfo spreadsheetmergecells spreadsheetnew spreadsheetread spreadsheetreadbinary spreadsheetremovesheet spreadsheetsetactivesheet spreadsheetsetactivesheetnumber spreadsheetsetcellcomment spreadsheetsetcellformula spreadsheetsetcellvalue spreadsheetsetcolumnwidth spreadsheetsetfooter spreadsheetsetheader spreadsheetsetrowheight spreadsheetshiftcolumns spreadsheetshiftrows spreadsheetwrite sqr stringcr structappend structclear structcopy structcount structdelete structfind structfindkey structfindvalue structget structinsert structisempty structkeyarray structkeyexists structkeylist structnew structsort structupdate
syn keyword cfFunctions     tan threadjoin threadterminate throw timeformat tobase64 tobinary toscript tostring trace transactioncommit transactionrollback transactionsetsavepoint trim
syn keyword cfFunctions     ucase urldecodeurlencodedformat urlsessionformat val valuelist verifyclient week wrap writeDump writeLog writeOutput
syn keyword cfFunctions     xmlchildpos xmlelemnew xmlformat xmlgetnodetype xmlnew xmlparse xmlsearch xmltransform xmlvalidate year yesnoformat



" Define default highlighting
if version >= 508
  if version < 508
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  " Comments
  HiLink cfComment        comment
  HiLink cfLineComment    comment
  HiLink cfCommentTodo    Todo

  " Definitions
  HiLink cfComponent      StorageClass
  HiLink cfFunction       Function
  HiLink cfBraces         Function
  HiLink cfFunctionScope  StorageClass
  HiLink cfType           Type

  " Statements
  HiLink cfStatement      Statement

  " Strings
  HiLink cfStringD        String
  HiLink cfStringS        String
  HiLink cfHash           PreProc
  HiLink cfBoolean        Boolean

  " Scopes
  HiLink cfScope          Keyword

  " Conditional
  HiLink cfCondition      Conditional

  " CF Functions
  HiLink cfFunctions      Function
  delcommand HiLink
endif

" Set the syntax
if !exists('b:current_syntax')
  let b:current_syntax = 'cfscript'
endif
