Helpers = require './Helpers'
validator = require '../validator'

describe "Validator Spec",->

	# make jasmine wait 50 seconds before timing out..
	jasmine.asyncSpecWait.timeout = 60000

	it "validates mezumanim",->
		asyncSpecWait()
		validateRows("מזומנים","",[
			{asset : "Migdal_2013_3_414", rows : 27}
			{asset : "Migdal_2013_3_579", rows : 25}
			{asset : "Migdal_2013_3_99118", rows : 54}
			{asset : "harel_2013_3_153", rows : 22}
			{asset : "harel_2010_3_739", rows : 9}
			{asset : "Migdal_2012_4_1161", rows : 21}
			{asset : "psagot_2013_3_15312070", rows : 6}
			{asset : "harel_2013_3_171", rows: 29}
			{asset : "Menora_2014_1_532", rows: 1}
		])

	it "validates noyarot ereh shirim teudot hithayvot mimshaltiyot",->
		asyncSpecWait()
		validateRows("ניירות ערך סחירים","תעודות התחייבות ממשלתיות",[
			{asset : "Migdal_2013_3_414", rows : 26}
			{asset : "Migdal_2013_3_579", rows : 31}
			{asset : "Migdal_2013_3_99118", rows : 36}
			{asset : "harel_2013_3_153", rows : 41}
			{asset : "harel_2010_3_739", rows : 0}
			{asset : "Migdal_2012_4_1161", rows : 28}
			{asset : "psagot_2013_3_15312070", rows : 17}
			{asset : "Menora_2014_1_532", rows: 0}
		])

	it "validates noyarot ereh shirim teudot hov mishariyot",->
		asyncSpecWait()
		validateRows("ניירות ערך סחירים","תעודות חוב מסחריות",[
			{asset : "Migdal_2013_3_579", rows : 0}
			{asset : "Migdal_2013_3_99118", rows : 0}
			{asset : "harel_2013_3_153", rows : 0}
			{asset : "harel_2010_3_739", rows : 0}
			{asset : "Migdal_2012_4_1161", rows : 0}
			{asset : "psagot_2013_3_15312070", rows : 0}
			{asset : "Menora_2014_1_532", rows: 0}
		])
			
	it "validates noyarot ereh shirim agah konzerni",->
		asyncSpecWait()
		validateRows("ניירות ערך סחירים",'"אג""ח קונצרני"',[
			{asset : "Migdal_2013_3_414", rows : 192}
			{asset : "Migdal_2013_3_579", rows : 208}
			{asset : "Migdal_2013_3_99118", rows : 224}
			{asset : "harel_2013_3_153", rows : 388}
			{asset : "harel_2010_3_739", rows : 5}
			{asset : "Migdal_2012_4_1161", rows : 168}
			{asset : "psagot_2013_3_15312070", rows : 152}
			{asset : "Menora_2014_1_532", rows: 22}
		])

	it "validates noyarot ereh shirim menayot",->
		asyncSpecWait()
		validateRows("ניירות ערך סחירים",'מניות',[
			{asset : "Migdal_2013_3_414", rows : 149}
			{asset : "Migdal_2013_3_579", rows : 150}
			{asset : "Migdal_2013_3_99118", rows : 171}
			{asset : "harel_2013_3_153", rows : 213}
			{asset : "harel_2010_3_739", rows : 43}
			{asset : "Migdal_2012_4_1161", rows : 132}
			{asset : "psagot_2013_3_15312070", rows : 65}
			{asset : "Menora_2014_1_532", rows: 4}
		])

	it "validates noyarot ereh shirim teudot sal",->
		asyncSpecWait()
		validateRows("ניירות ערך סחירים",'תעודות סל',[
			{asset : "Migdal_2013_3_414", rows : 72}
			{asset : "Migdal_2013_3_579", rows : 75}
			{asset : "Migdal_2013_3_99118", rows : 62}
			{asset : "harel_2013_3_153", rows : 27}
			{asset : "harel_2010_3_739", rows : 17}
			{asset : "Migdal_2012_4_1161", rows : 71}
			{asset : "psagot_2013_3_15312070", rows : 41}
			{asset : "Menora_2014_1_532", rows: 0}
		])

	it "validates noyarot ereh shirim kranot neemanut",->
		asyncSpecWait()
		validateRows("ניירות ערך סחירים",'קרנות נאמנות',[
			{asset : "Migdal_2013_3_414", rows : 13}
			{asset : "Migdal_2013_3_579", rows : 34}
			{asset : "Migdal_2013_3_99118", rows : 38}
			{asset : "harel_2013_3_153", rows : 26}
			{asset : "harel_2010_3_739", rows : 11}
			{asset : "Migdal_2012_4_1161", rows : 17}
			{asset : "psagot_2013_3_15312070", rows : 20}
			{asset : "Menora_2014_1_532", rows: 0}
		])

	it "validates noyarot ereh shirim kitvei optziya",->
		asyncSpecWait()
		validateRows("ניירות ערך סחירים",'כתבי אופציה',[
			{asset : "Migdal_2013_3_414", rows : 9}
			{asset : "Migdal_2013_3_579", rows : 10}
			{asset : "Migdal_2013_3_99118", rows : 13}
			{asset : "harel_2013_3_153", rows : 13}
			{asset : "harel_2010_3_739", rows : 3}
			{asset : "Migdal_2012_4_1161", rows : 4}
			{asset : "psagot_2013_3_15312070", rows : 0}
			{asset : "Menora_2014_1_532", rows: 0}
		])

	it "validates noyarot ereh LO shirim teudot hithayvut mimshaltiyot",->
		asyncSpecWait()
		validateRows("ניירות ערך לא סחירים",'תעודות התחייבות ממשלתיות',[
			{asset : "Migdal_2013_3_414", rows : 126}
			{asset : "Migdal_2013_3_579", rows : 0}
			{asset : "harel_2013_3_153", rows : 0}
			{asset : "harel_2010_3_739", rows : 0}
			{asset : "Migdal_2012_4_1161", rows : 0}
			{asset : "psagot_2013_3_15312070", rows : 31}
			{asset : "Menora_2014_1_532", rows: 160}
		])

	it "validates noyarot ereh LO shirim agah konzerni",->
		asyncSpecWait()
		validateRows("ניירות ערך לא סחירים",'"אג""ח קונצרני"',[
			{asset : "Migdal_2013_3_414", rows : 23}
			{asset : "Migdal_2013_3_579", rows : 36}
			{asset : "Migdal_2013_3_99118", rows : 51}
			{asset : "harel_2013_3_153", rows : 57}
			{asset : "harel_2010_3_739", rows : 1}
			{asset : "Migdal_2012_4_1161", rows : 3}
			{asset : "psagot_2013_3_15312070", rows : 0}
			{asset : "Menora_2014_1_532", rows: 29}
		])

	it "validates noyarot ereh LO shirim menayot",->
		asyncSpecWait()
		validateRows("ניירות ערך לא סחירים",'מניות',[
			{asset : "Migdal_2013_3_579", rows : 2}
			{asset : "Migdal_2013_3_99118", rows : 33}
			{asset : "harel_2013_3_153", rows : 22}
			{asset : "harel_2010_3_739", rows : 1}
			{asset : "Migdal_2012_4_1161", rows : 0}
			{asset : "psagot_2013_3_15312070", rows : 0}
			# {asset : "Menora_2014_1_532", rows: 0}
		])

	it "validates noyarot ereh LO shirim kranot hashkaa",->
		asyncSpecWait()
		validateRows("ניירות ערך לא סחירים",'קרנות השקעה',[
			{asset : "Migdal_2013_3_414", rows : 1}
			{asset : "Migdal_2013_3_579", rows : 18}
			{asset : "Migdal_2013_3_99118", rows : 82}
			{asset : "harel_2013_3_153", rows : 64}
			{asset : "harel_2010_3_739", rows : 0}
			{asset : "Migdal_2012_4_1161", rows : 0}
			{asset : "psagot_2013_3_15312070", rows : 3}
		])

	it "validates noyarot ereh LO shirim kitvei optziya",->
		asyncSpecWait()
		validateRows("ניירות ערך לא סחירים",'כתבי אופציה',[
			{asset : "Migdal_2013_3_414", rows : 3}
			{asset : "Migdal_2013_3_579", rows : 1}
			{asset : "Migdal_2013_3_99118", rows : 5}
			{asset : "harel_2013_3_153", rows : 4}
			{asset : "harel_2010_3_739", rows : 0}
			{asset : "Migdal_2012_4_1161", rows : 0}
			{asset : "psagot_2013_3_15312070", rows : 0}
		])

	it "validates noyarot ereh LO shirim optiyot",->
		asyncSpecWait()
		validateRows("ניירות ערך לא סחירים",'אופציות',[
			{asset : "Migdal_2013_3_579", rows : 0}
			{asset : "Migdal_2013_3_99118", rows : 0}
			{asset : "harel_2013_3_153", rows : 0}
			{asset : "harel_2010_3_739", rows : 0}
			{asset : "Migdal_2012_4_1161", rows : 0}
			{asset : "psagot_2013_3_15312070", rows : 0}
		])

	it "validates noyarot ereh LO shirim hozim atidiim",->
		asyncSpecWait()
		validateRows("ניירות ערך לא סחירים",'חוזים עתידיים',[
			{asset : "Migdal_2013_3_414", rows : 19}
			{asset : "Migdal_2013_3_579", rows : 16}
			{asset : "Migdal_2013_3_99118", rows : 114}
			{asset : "harel_2013_3_153", rows : 179}
			{asset : "harel_2010_3_739", rows : 1}
			{asset : "Migdal_2012_4_1161", rows : 48}
			{asset : "psagot_2013_3_15312070", rows : 8}
		])

	it "validates halvaot",->
		asyncSpecWait()
		validateRows("הלוואות",'',[
			{asset : "Migdal_2013_3_414", rows : 44}
			{asset : "Migdal_2013_3_579", rows : 48}
			{asset : "Migdal_2013_3_99118", rows : 92}
			{asset : "harel_2013_3_153", rows : 189}
			{asset : "harel_2010_3_739", rows : 0}
			{asset : "Migdal_2012_4_1161", rows : 5}
			{asset : "psagot_2013_3_15312070", rows : 1}
		])

	it "validates pikdonot",->
		asyncSpecWait()
		validateRows("פקדונות",'',[
			{asset : "Migdal_2013_3_579", rows : 12}
			{asset : "Migdal_2013_3_99118", rows : 43}
			{asset : "harel_2013_3_153", rows : 0}
			{asset : "Migdal_2012_4_1161", rows : 0}
			{asset : "psagot_2013_3_15312070", rows : 0}
		])

	it "validates zhuyot mekarkeyin",->
		asyncSpecWait()
		validateRows("זכויות מקרקעין",'',[
			{asset : "Migdal_2013_3_414", rows : 1}
			{asset : "Migdal_2013_3_579", rows : 0}
			{asset : "Migdal_2013_3_99118", rows : 29}
			{asset : "harel_2013_3_153", rows : 4}
			{asset : "harel_2010_3_739", rows : 0}
			{asset : "Migdal_2012_4_1161", rows : 0}
			{asset : "psagot_2013_3_15312070", rows : 0}
		])

	# it "validates hashkaot aherot",->
	# 	asyncSpecWait()
	# 	validateRows("השקעות אחרות",'',[
			
	# 	])



validateRows = (instrumentType,instrumentSubType, assetToRows)->
	if (assetToRows.length == 0)
		asyncSpecDone()
	else
		atr = assetToRows.shift()
		Helpers.parseXLSX atr.asset, (pXlsx)->
			idx = Helpers.resolveIdx(instrumentType,instrumentSubType)
			pXlsxData = pXlsx.filter((r)-> idx == r.idx).pop()
			validated = validator.validate(pXlsxData.engMap, pXlsxData.data, idx)
			# console.log(JSON.stringify(validated));
			# process.exit();
			expect(validated.length).toEqual(atr.rows)
			validateRows(instrumentType,instrumentSubType,assetToRows)


