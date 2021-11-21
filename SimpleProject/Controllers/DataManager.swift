//
//  DataManager.swift
//  SimpleProject
//
//  Created by Ekaterina Kugeneva on 20.11.2021.
//

class DataManager {
    
    static let shared = DataManager()
        
    let names = [
        "Аспирин® (Aspirin®)",
        "Бадяга (порошок) (Spongilla)",
        "Женьшеня настойка (Ginseng tinctura)",
        "Магне B6® (Magne B6®)",
        "Називин® (Nasivin)",
        "Осетрон® (Osetron)",
        "Слабилен® (Slabilen)",
        "Эфлоран (Efloran)",
        "Юникпеф® (Unikpef®)",
        "Валокордин® (Valocordin)"
    ]
    
    let photos = ["aspirin", "badyaga", "женьшень",
                 "magne b6", "nasivin", "osetron",
                 "slabilen", "efloran-rastvor", "nophoto2",
                 "valokordin"]
    
    let manufacturers = [
        "BAYER BITTERFELD, GmbH (Германия)",
        "ТУЛЬСКАЯ ФАРМАЦЕВТИЧЕСКАЯ ФАБРИКА, ООО (Россия)",
        "КАМЕЛИЯ НПП, ООО (Россия)",
        "SANOFI WINTHROP INDUSTRIE (Франция)",
        "P&G HEALTH GERMANY, GmbH (Германия)",
        "Dr. Reddy`s Laboratories, LTD (Индия)",
        "ВЕРОФАРМ, ООО (Россия)",
        "KRKA, d.d. (Словения)",
        "UNIQUE PHARMACEUTICAL Laboratories (Индия)",
        "КРЕВЕЛЬ МОЙЗЕЛЬБАХ, ООО (Россия)"
    ]
    
    let dosages = [
        "Таб. 500 мг: 10, 20 или 100 шт.",
        "Порошок д/пригот. сусп. д/наружн. прим.: пакетик 2.5 г",
        "Настойка 100 г/1 л: фл. 25 мл, 30 мл, 50 мл или 100 мл.",
        "Таб., покр. оболочкой: 60 или 100 шт.",
        "Капли назальные 0.05%: фл. 10 мл с крышкой-пипеткой",
        "Р-р д/в/в и в/м введения 2 мг/1 мл: амп. 2 мл 2, 10 или 50 шт.",
        "Капли д/приема внутрь 7.5 мг/1 мл: фл. 15 мл или 30 мл",
        "Р-р д/инф. 500 мг/100 мл: фл. 1, 10 или 70 шт.",
        "Р-р д/инф. 400 мг/100 мл: фл. 1 шт.",
        "Таб. 7.544 мг+7.544 мг: 10, 20, 30 или 50 шт"
    ]
    
    let prices = [
        "286", "161", "26",
        "489", "150", "455",
        "198", "350", "248",
        "139"
    ]
    
    let substances = [
        "ацетилсалициловая кислота",
        "бадяга порошок",
        "Женьшеня настойка",
        "магния лактата дигидрат    470 мг, что эквивалентно содержанию Mg2+    48 мг; пиридоксина гидрохлорид    5 мг",
        "оксиметазолин (oxymetazoline) 500мг",
        "ондансетрон (ondansetron)",
        "натрия пикосульфат (sodium picosulfate)",
        "метронидазол (metronidazole)",
        "пефлоксацин (pefloxacin)",
        "этилбромизовалерианат (ethylbromisovalerinate), фенобарбитал (phenobarbital) Rec.INN зарегистрированное ВОЗ"
    ]
    
    let descriptions = [
        "НПВС. Оказывает противовоспалительное, анальгезирующее и жаропонижающее действие, а также угнетает агрегацию тромбоцитов. Механизм действия связан с угнетением активности ЦОГ - основного фермента метаболизма арахидоновой кислоты, являющейся предшественником простагландинов, которые играют главную роль в патогенезе воспаления, боли и лихорадки. Снижение содержания простагландинов (преимущественно Е1) в центре терморегуляции приводит к снижению температуры тела вследствие расширения сосудов кожи и возрастания потоотделения. Анальгезирующий эффект обусловлен как центральным, так и периферическим действием. Уменьшает агрегацию, адгезию тромбоцитов и тромбообразование за счет подавления синтеза тромбоксана А2 в тромбоцитах.",
        "Местнораздражающее средство, которое получают из пресноводной губки бадяги, представляет собой колонии кишечнополостных животных – Spongilla lacustris fragilis, Ephydatia fliviatilis.Губка живет только в исключительно чистых пресноводных водоемах с проточной водой и при определенных температурах.Скелет бадяги состоит из петлистой сети игл кремнезема, связанных между собой органическим веществом – спонгином. В него входят также фосфаты, карбонаты и органические вещества.Действие бадяги основано на механическом раздражении кожи, обусловленном содержанием кремниевых иголок.Показания активных веществ препарата Бадяга (порошок)Радикулит, артрит, ревматизм, кровоподтеки.",
        "Средство растительного происхождения. Комплекс биологически активных веществ женьшеня (в основном, сапониновые гликозиды-гинсенозиды, а также эфирные масла, стирол, пептиды, витамины и минералы) оказывает общетонизирующее, гипертензивное и гипогликемическое действие; повышает умственную и физическую работоспособность, стимулирует половую функцию, снижает содержание холестерина в крови, активирует деятельность коры надпочечников.Показания активных веществ препарата Женьшеня настойка: Астенические состояния различной этиологии; период реконвалесценции; длительные физические и психические перегрузки; для повышения уровня работоспособности и сопротивляемости организма (особенно у лиц пожилого возраста); нейроциркуляторная дистония по гипотоническому типу, в составе комплексной терапии при ослаблении половой функций на почве неврастении.",
        "Магний является жизненно важным элементом, который находится во всех тканях организма и необходим для нормального функционирования клеток, участвует в большинстве реакций обмена веществ. В частности, участвует в регуляции передачи нервных импульсов и в сокращении мышц.Организм получает магний вместе с пищей. Недостаток магния в организме может наблюдаться при нарушении режима питания (диета), при увеличении потребности в магнии или при дисбалансе поступления, метаболизма и выведения магния (например, при повышенной физической и умственной нагрузке, стрессе, в период беременности, при применении диуретиков).Пиридоксин (витамин В6) участвует во многих метаболических процессах, в регуляции метаболизма нервной системы. Витамин В6 улучшает всасывание магния из ЖКТ и его проникновение в клетки.",
        "Адреномиметическое средство для местного применения. Оказывает сосудосуживающее действие. При интраназальном применении уменьшается отечность слизистой оболочки верхних отделов дыхательных путей. Фармакокинетика: При интраназальном применении T1/2 составляет 35 ч. Показания активных веществ препарата Називин®: Затруднение носового дыхания при простудных заболеваниях, воспалении носовых пазух, евстахиите, сенной лихорадке, аллергических ринитах. Для устранения отека перед диагностическими манипуляциями в носовых ходах.",
        "Противорвотное средство. Эффективно предупреждает и устраняет тошноту и рвоту, возникающие на фоне противоопухолевой химиотерапии или лучевой терапии, а также в послеоперационном периоде. Механизм действия обусловлен способностью ондансетрона селективно блокировать серотониновые 5-HT3-рецепторы. Полагают, что в возникновении тошноты и рвоты при проведении противоопухолевой терапии важную роль играет стимуляция афферентных волокон блуждающего нерва серотонином, выделяющимся из энтерохромаффинных клеток слизистой оболочки ЖКТ. Блокируя 5-HT3-рецепторы, ондансетрон предупреждает возникновение рвотного рефлекса. Кроме того, ондансетрон угнетает центральные звенья рвотного рефлекса, блокируя 5-HT3-рецепторы дна IV желудочка (area postrema).",
        "Слабительное средство. Под действием кишечных микроорганизмов гидролизуется с образованием активной формы, которая вызывает раздражение рецепторов слизистой оболочки кишечника и усиление его перистальтики. Способствует накоплению воды и электролитов в толстом кишечнике, что приводит к стимуляции акта дефекации, уменьшению времени эвакуации и размягчению стула.",
        "Противопротозойное средство с антибактериальной активностью, производное 5-нитроимидазола. Механизм действия заключается в биохимическом восстановлении 5-нитрогруппы метронидазола внутриклеточными транспортными протеинами анаэробных микроорганизмов и простейших. Восстановленная 5-нитрогруппа метронидазола взаимодействует с ДНК клетки микроорганизмов, ингибируя синтез нуклеиновых кислот, что ведет к гибели микроорганизмов.Активен в отношении Trichomonas vaginalis, Entamoeba hystolitica, а также грамотрицательных анаэробов Bacteroides spp. (в т.ч. Bacteroides fragilis, Bacteroides ovatus, Bacteroides distasonis, Bacteroides thetaiotaomicron, Bacteroides vulgatus), Fusobacterium spp. и некоторых грамположительных анаэробов (чувствительные штаммы Eubacterium spp., Clostridium spp., Peptococcus niger, Peptostreptococcus spp.). МПК для этих штаммов составляет 0.125-6.25 мкг/мл. В сочетании с амоксициллином проявляет активность в отношении Helicobacter pylori (амоксициллин подавляет развитие резистентности к метронидазолу). К метронидазолу нечувствительны аэробные микроорганизмы и факультативные анаэробы, но в присутствии смешанной флоры (аэробы и анаэробы) метронидазол действует синергично с антибиотиками, эффективными против обычных аэробов.",
        "Противомикробный препарат широкого спектра действия из группы фторхинолонов. Действует бактерицидно. Препарат ингибирует фермент ДНК-гиразу бактерий, вследствие чего нарушаются репликация ДНК и синтез клеточных белков бактерий. К пефлоксацину обычно чувствительны грамотрицательные аэробные бактерии: Escherichia coli, Salmonella spp., Shigella spp., Citrobacter spp., Klebsiella spp., Enterobacter spp., Proteus mirabilis, Proteus vulgaris, Serratia marcescens, Neisseria gonorrhoeae; внутриклеточные возбудители: Chlamydia spp., Mycoplasma spp.; грамположительные аэробные бактерии: Streptococcus spp., Clostridium perfringens. Умеренно чувствительны: Acinetobacter spp. К препарату резистентны грамотрицательные анаэробные бактерии Bacteroides spp. (за исключением B. fragilis), Spirochaetaceae, Mycobacterium tuberculosis.",
        "Комбинированный препарат, действие которого обусловлено фармакологическими свойствами компонентов, входящих в его состав. Оказывает седативное и спазмолитическое действие. Фенобарбитал обладает седативным (в низких дозах), снотворным, миорелаксирующим и спазмолитическим действием. Способствует снижению возбуждения ЦНС и облегчает наступление сна, усиливает седативное действие другого действующего вещества.Этилбромизовалерианат обладает седативным (подобно эффекту валерианы) и спазмолитическим действием, обусловленным раздражением преимущественно рецепторов полости рта и носоглотки, снижением рефлекторной возбудимости в центральных отделах нервной системы и усилением торможения в нейронах коры и подкорковых структурах головного мозга, а также снижением активности сосудодвигательного центра и прямым местным спазмолитическим действием на гладкую мускулатуру."
    ]
    
    private init() {}
    
}