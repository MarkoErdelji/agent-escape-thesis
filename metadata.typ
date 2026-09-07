#let format_strane = "a4"         // могуће вредности: iso-b5, a4
#let naslov = "Аутономна експлоатација рањивости контејнерске изолације применом LLM агената"
#let autor = "Марко Ердељи"

// На енглеском
#let naslov_eng = "Autonomous Exploitation of Container Isolation Vulnerabilities Using LLM Agents"
#let autor_eng = "Marko Erdelji"

#let indeks = "R2 4/2024" // TODO: уписати индекс

// Име и презиме ментора
#let mentor = "Горан Сладић"
// Звање: редовни професор, ванредни професор, доцент
#let mentor_zvanje = "редовни професор"

// Скинути коментаре са одговарајућих линија
#let studijski_program = "Софтверско инжењерство и информационе технологије"
//#let studijski_program = "Рачунарство и аутоматика"
#let stepen = "Мастер академске студије"
//#let stepen = "Основне академске студије"

#let godina = [#datetime.today().year()]

#let kljucne_reci = "LLM агенти, контејнерска безбедност, експлоатација рањивости, аутономни агенти, Docker"
#let apstrakt = [
     У овом раду испитана је способност аутономних агената заснованих на великим језичким моделима да аутономно наруше изолацију контејнера и издвоје тајни податак из меморије процеса жртве. Развијен је евалуациони оквир са три лабораторијска сценарија растуће сложености, а евалуација је спроведена на моделима различитих нивоа способности. Резултати показују да савремени агенти представљају практично оствариву претњу контејнерској изолацији.
]

// На енглеском
#let kljucne_reci_eng = "LLM agents, container security, vulnerability exploitation, autonomous agents, Docker"
#let apstrakt_eng = [
     This thesis examines the ability of autonomous agents based on large language models to autonomously escape container isolation and extract a secret from the memory of a victim process. An evaluation framework with three laboratory scenarios of increasing complexity was developed, and the evaluation was conducted on models of varying capability levels. The results show that contemporary agents pose a practically viable threat to container isolation.
]

// TODO: Текст задатка добијате од ментора. Заменити доле #lorem(100) са текстом задатка.
#let zadatak = [
     Испитати способност аутономних агената заснованих на великим језичким моделима да самостално открију и искористе рањивости контејнерске изолације. 
     Потребно је спровести евалуацију на моделима различитих нивоа способности и анализирати у којој мери успешност зависи од категорије рањивости и величине модела. 
     Верификација резултата заснива се на аутономном издвајању тајног податка из меморије суседног контејнера на истом домаћину.

     Детаљно документовати резултате истраживања.
]

// TODO: Датум одбране и чланове комисије добијате од ментора
#let datum_odbrane = "00.00.0000" // TODO: уписати стварни датум одбране
#let komisija_predsednik = "Петар Петровић" // TODO: уписати председника комисије
#let komisija_predsednik_zvanje = "ванредни професор"
#let komisija_clan = "Марко Марковић" // TODO: уписати члана комисије
#let komisija_clan_zvanje = "доцент"

// На енглеском уписати чланове на латиници
#let komisija_predsednik_eng = "Petar Petrović"
#let komisija_clan_eng = "Marko Marković"
#let mentor_eng = "Goran Sladić"


// Ово даље углавном не треба мењати.

#let zvanje_eng = (
     "редовни професор": "full professor",
     "ванредни професор": "assoc. professor",
     "доцент": "asist. professor",
)
#let komisija_predsednik_zvanje_eng = zvanje_eng.at(komisija_predsednik_zvanje)
#let komisija_clan_zvanje_eng = zvanje_eng.at(komisija_clan_zvanje)
#let mentor_zvanje_eng = zvanje_eng.at(mentor_zvanje)


#let vrsta_rada = if stepen == "Мастер академске студије" {
    "Дипломски - мастер рад"
} else {
    "Дипломски - бечелор рад"
}

#let oblast = "Електротехничко и рачунарско инжењерство"
#let oblast_eng = "Electrical and Computer Engineering"
#let disciplina = "Примењене рачунарске науке и информатика"
#let disciplina_eng = "Applied computer science and informatics"

#import "funkcije.typ": *
// Поглавља/страна/цитата/табела/слика/графика/прилога
#let fizicki_opis = physical()
