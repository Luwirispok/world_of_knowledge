import 'package:flutter/material.dart';
import 'package:world_of_knowledge/models/story_model.dart';
import 'package:world_of_knowledge/quiz/models/model.dart';

class DataTransferProvider extends ChangeNotifier {
  StoryModel? storyModel;
  String history_for_boy =
      ''' Жили-были двое братьев и сестер — мальчик и девочка. Они любили играть и учиться вместе. Они были очень любопытны и всегда хотели узнать больше об этом мире. Однажды, когда они играли в лесу, появилась злая Ведьма и похитила сестру мальчика!

Ведьма сказала, что вернет сестру мальчика, только если он станет достаточно сильным, чтобы победить ее. Мальчик был очень расстроен, но знал, что должен что-то сделать. Он решил начать очень усердно учиться, чтобы стать сильнее и спасти свою сестру.

Мальчик узнал все о числах, формах и узорах. Он также практиковался в сложении и вычитании и даже научился умножать! С каждым днем он становился сильнее и умнее. Наконец, он был готов встретиться с Ведьмой и спасти свою сестру.

Когда наступил день, мальчик храбро отправился в логово Ведьмы. Она пыталась остановить его, но он использовал все полученные знания, чтобы победить ее. Он спас свою сестру, и они снова воссоединились.

Мальчик понял, что обучение и учеба могут сделать его сильнее и помочь преодолеть любое препятствие. С тех пор он всегда стремился узнать больше и стать еще сильнее.
''';

  String history_for_girl =
      '''Жили-были двое братьев и сестер — мальчик и девочка. Они любили играть и учиться вместе. Они были очень любопытны и всегда хотели узнать больше об этом мире. Однажды, когда они играли в лесу, появилась злая Ведьма и похитила брата девушки!

Ведьма сказала, что вернет брата девушки только в том случае, если она станет достаточно сильной, чтобы победить ее. Девушка была очень расстроена, но знала, что должна что-то делать. Она решила начать очень усердно учиться, чтобы стать сильнее и спасти своего брата.

Девочка узнала все о буквах, звуках и словах. Она также практиковалась в чтении и письме и даже научилась рифмовать! С каждым днем она становилась сильнее и умнее. Наконец, она была готова встретиться с Ведьмой и спасти своего брата.

Когда наступил день, девушка смело отправилась в логово Ведьмы. Она пыталась остановить ее, но использовала все полученные знания, чтобы победить ее. Она спасла своего брата, и они снова воссоединились.

Девушка поняла, что обучение и учеба могут сделать ее сильнее и помочь преодолеть любое препятствие. С тех пор она всегда стремилась узнать больше и стать еще сильнее.
''';

  List<QuizQuestion> firstList = [
    QuizQuestion(
      title: 'Какова форма сердца?',
      options: {
        'Круг': false,
        'Треугольник': false,
        'Сердце': true,
        'Квадрат': false,
      },
    ),
    QuizQuestion(
      title: 'Сколько сторон у треугольника?',
      options: {
        '4': false,
        '3': true,
        '5': false,
        '6': false,
      },
    ),
    QuizQuestion(
      title: 'Какое число предшествует пяти?',
      options: {
        '4': true,
        '5': false,
        '6': false,
        '7': false,
      },
    ),
    QuizQuestion(
      title: 'Сколько пальцев у вас на обеих руках вместе?',
      options: {
        '8': false,
        '12': false,
        '10': true,
        '14': false,
      },
    ),
    QuizQuestion(
      title: 'Как называется фигура, у которой восемь сторон?',
      options: {
        'Восьмиугольник': true,
        'Шестиугольник': false,
        'Пентагон': false,
        'Семиугольник': false,
      },
    ),
    QuizQuestion(
      title: 'Какое число больше, десять или пять?',
      options: {
        'Пять': false,
        'Десять': true,
        'Они равны': false,
      },
    ),
    QuizQuestion(
      title: 'Сколько сторон у пятиугольника?',
      options: {
        '4': false,
        '5': true,
        '6': false,
        '7': false,
      },
    ),
  ];
  List<QuizQuestion> secondList = [
    QuizQuestion(
      title:
          'Если у вас есть одно яблоко, и вы получите еще два, сколько яблок у вас сейчас?',
      options: {
        '1': false,
        '2': false,
        '3': true,
        '4': false,
      },
    ),
    QuizQuestion(
      title:
          'Как называется фигура, у которой четыре равные стороны и четыре равных угла?',
      options: {
        'Прямоугольник': false,
        'Квадрат': true,
        'Ромб': false,
        'Трапеция': false,
      },
    ),
    QuizQuestion(
      title: 'Какое число идет после девяти?',
      options: {
        '8': false,
        '10': true,
        '11': false,
        '12': false,
      },
    ),
    QuizQuestion(
      title: 'Сколько углов у круга?',
      options: {
        '0': true,
        '1': false,
        '2': false,
        '4': false,
      },
    ),
    QuizQuestion(
      title: 'Как называется фигура, у которой три стороны?',
      options: {
        'Прямоугольник': false,
        'Квадрат': false,
        'Ромб': false,
        'Треугольник': true,
      },
    ),
    QuizQuestion(
      title: 'Какое число меньше, четыре или восемь?',
      options: {
        'Четыре': true,
        'Восемь': false,
        'Они равны': false,
      },
    ),
    QuizQuestion(
      title: 'Сколько дней в году?',
      options: {
        '364': false,
        '365': true,
        '366': false,
        '367': false,
      },
    ),
    QuizQuestion(
      title:
          'Если у вас есть два воздушных шара и вы получаете еще один, сколько у вас сейчас воздушных шаров?',
      options: {
        '1': false,
        '2': false,
        '3': true,
        '4': false,
      },
    ),
    QuizQuestion(
      title: 'Как называется фигура, похожая на бриллиант?',
      options: {
        'Ромб': true,
        'Квадрат': false,
        'Прямоугольник': false,
        'Пентагон': false,
      },
    ),
  ];
  List<QuizQuestion> thirdList = [
    QuizQuestion(
      title: 'Какая первая буква в слове "яблоко"?',
      options: {
        'a': false,
        'b': false,
        'c': false,
        'd': false,
        'в': true,
      },
    ),
    QuizQuestion(
      title: 'Какое слово рифмуется со словом "кошка"?',
      options: {
        'собака': false,
        'летучая мышь': true,
        'рыба': false,
        'птица': false,
      },
    ),
    QuizQuestion(
      title: 'Сколько букв в слове "книга"?',
      options: {
        '3': false,
        '4': true,
        '5': false,
        '6': false,
      },
    ),
    QuizQuestion(
      title: 'Какое слово означает противоположность слову "большой"?',
      options: {
        'маленький': true,
        'высокий': false,
        'короткий': false,
        'длинный': false,
      },
    ),
    QuizQuestion(
      title: 'Какая последняя буква в слове "лягушка"?',
      options: {
        'g': false,
        'р': false,
        'о': false,
        'f': false,
        'а': true,
      },
    ),
    QuizQuestion(
      title: 'Какое слово начинается с того же звука, что и слово "солнце"?',
      options: {
        'луна': false,
        'бег': true,
        'веселье': false,
        'нет': false,
      },
    ),
    QuizQuestion(
      title: 'Какое слово означает противоположность слову "счастливый"?',
      options: {
        'грустный': true,
        'глупый': false,
        'смешной': false,
        'серьезный': false,
      },
    ),
    QuizQuestion(
      title: 'Какая средняя буква в слове "кот"?',
      options: {
        'a': true,
        'т': false,
        'с': false,
        'ни одна из вышеперечисленных': false,
      },
    ),
    QuizQuestion(
      title: 'Какое слово означает противоположность слову "холодный"?',
      options: {
        'горячий': true,
        'теплый': false,
        'морозный': false,
        'прохладный': false,
      },
    ),
    QuizQuestion(
      title: 'Какое слово рифмуется со словом "шляпа"?',
      options: {
        'коврик': false,
        'карта': false,
        'пат': false,
        'кран': false,
        'в': true,
      },
    )
  ];

  List<QuizQuestion> fourList = [
    QuizQuestion(
      title: 'Какая первая буква в слове "автомобиль"?',
      options: {
        'a': false,
        'b': false,
        'c': false,
        'в': true,
      },
    ),
    QuizQuestion(
      title: 'Какое слово означает то же самое, что и "счастливый"?',
      options: {
        'сумасшедший': false,
        'сердитый': false,
        'грустный': false,
        'радостный': true,
      },
    ),
    QuizQuestion(
      title: 'Сколько букв в слове "мяч"?',
      options: {
        '4': true,
        '5': false,
        '6': false,
        '7': false,
      },
    ),
    QuizQuestion(
      title: 'Какая последняя буква в слове "утка"?',
      options: {
        'к': false,
        'в': false,
        'г': false,
        'u': true,
      },
    ),
    QuizQuestion(
      title: 'Какое слово означает противоположность слову "хороший"?',
      options: {
        'плохой': true,
        'хороший': false,
        'добрый': false,
        'счастливый': false,
      },
    ),
    QuizQuestion(
      title: 'Какая средняя буква в слове "питомец"?',
      options: {
        'е': false,
        'п': false,
        'т': true,
        'ни одна из вышеперечисленных': false,
      },
    ),
    QuizQuestion(
      title: 'Какое слово означает то же самое, что и "грустный"?',
      options: {
        'счастливый': false,
        'сердитый': false,
        'расстроенный': true,
        'удивленный': false,
      },
    ),
    QuizQuestion(
      title: 'Сколько букв в слове "собака"?',
      options: {
        '2': false,
        '3': true,
        '4': false,
        '5': false,
      },
    ),
    QuizQuestion(
      title: 'Какая первая буква в слове "банан"?',
      options: {
        'a': true,
        'b': false,
        'c': false,
        'd': false,
      },
    ),
    QuizQuestion(
      title: 'Какое слово рифмуется со словом "свинья"?',
      options: {
        'большой': false,
        'копать': true,
        'парик': false,
        'гиг': false,
      },
    ),
  ];

  List<StoryModel> listStoryModel = [
    StoryModel(
      index: 0,
      name: 'Огурцы - рассказ Носова',
      author: 'Николай Носов',
      imageCover: 'images/story/cover/story_0.jpg',
      text: '''
Один раз Павлик взял с собой Котьку на реку ловить рыбу. Но в этот день им не повезло: рыба совсем не клевала. Зато когда шли обратно, они забрались в колхозный огород и набрали полные карманы огурцов.

![alt text](resource:images/story/image/image_0_1.jpg)
Колхозный сторож заметил их и засвистел в свисток. Они от него бежать. По дороге домой Павлик подумал, как бы ему дома не досталось за то, что он лазит по чужим огородам. И он отдал свои огурцы Котьке.
Котька пришел домой радостный:
-  Мама, я тебе огурцов принес!
![alt text](resource:images/story/image/image_0_2.jpg)
Мама посмотрела, а у него полные карманы огурцов, и за пазухой огурцы лежат, и в руках еще два больших огурца.
-  Где ты их взял? — говорит мама.
-  На огороде.
-  На каком огороде?
-  Там, у реки, на колхозном.
-  Кто ж тебе позволил?
-  Никто, я сам нарвал.
-  Значит, украл?
-  Нет, не украл, а так просто… Павлик брал, а мне нельзя, что ли? Ну, и я взял.
Котька начал вынимать огурцы из карманов.
-  Постой, постой! Не выгружай! — говорит мама,
-  Почему?
-  Сейчас же неси их обратно!
-  Куда ж я их понесу? Они на грядке росли, а я сорвал. Все равно они теперь уже расти не будут.
-  Ничего, отнесешь и положишь на той же грядке, где сорвал.
-  Ну, я их выброшу.
-  Нет, не выбросишь! Ты их не садил, не растил, не имеешь права и выбрасывать.
![alt text](resource:images/story/image/image_0_3.jpg)
Котька стал плакать:
-  Там сторож. Он нам свистел, а мы убежали.
-  Вот видишь, что делаете! А если б он поймал вас?
-  Он не догнал бы. Он уже старенький дедушка.
-  Ну как тебе не стыдно! — говорит мама. — Ведь дедушка за эти огурцы отвечает. Узнают, что огурцы пропали, скажут, что дедушка виноват. Хорошо будет?
Мама стала совать огурцы обратно Котьке в карман. Котька плакал и кричал:
-  Не пойду я! У дедушки ружье. Он выстрелит и убьет меня.
-  И пусть убьет! Пусть лучше у меня совсем не будет сына, чем будет сын вор.
-  Ну, пойдем со мной, мамочка! На дворе темно. Я боюсь.
-  А брать не боялся?
Мама дала Котьке в руки два огурца, которые не поместились в карманах, и вывела его за дверь.
![alt text](resource:images/story/image/image_0_4.jpg)
-  Или неси огурцы, или совсем уходи из дому, ты мне не сын!
Котька повернулся и медленно-медленно пошел по улице.
Уже было совсем темно.
![alt text](resource:images/story/image/image_0_5.jpg)
«Брошу их тут, в канаву, а скажу, что отнес, — решил Котька и стал оглядываться вокруг. — Нет, отнесу: еще кто-нибудь увидит и дедушке из-за меня попадет».
Он шел по улице и плакал. Ему было страшно.
«Павлику хорошо! — думал Котька. — Он мне свои огурцы отдал, а сам дома сидит. Ему, небось, не страшно».
Вышел Котька из деревни и пошел полем. Вокруг не было ни души. От страха он не помнил, как добрался до огорода. Остановился возле шалаша, стоит и плачет все громче и громче.
![alt text](resource:images/story/image/image_0_6.jpg)
Сторож услышал и подошел к нему.
-  Ты чего плачешь? — спрашивает.
-  Дедушка, я принес огурцы обратно.
-  Какие огурцы?
-  А которые мы с Павликом нарвали. Мама сказала, чтоб я отнес обратно.
![alt text](resource:images/story/image/image_0_7.jpg)
-  Вот оно какое дело! — удивился сторож. — Это, значит, я вам свистел, а вы все-таки огурцы-то стащили. Нехорошо!
-  Павлик брал, и я взял. Он мне и свои огурцы отдал.
-  А ты на Павлика не смотри, сам понимать должен. Ну, больше не делай так. Давай огурцы и иди домой.
Котька вытащил огурцы и положил их на грядку.
![alt text](resource:images/story/image/image_0_8.jpg)
-  Ну, все, что ли? — спросил старик.
-  Нет… одного не хватает, — ответил Котька и снова заплакал.
-  Почему не хватает, где же он?
-  Дедушка, я один огурец съел. Что теперь будет?
-  Ну что ж будет? Ничего не будет. Съел, ну и съел. На здоровье.
![alt text](resource:images/story/image/image_0_9.jpg)
-  А вам, дедушка, ничего не будет за то, что огурец пропал?
-  Ишь ты какое дело! — усмехнулся дедушка. — Нет, за один огурец ничего не будет. Вот если б ты не принес остальных, тогда да, а так нет.
Котька побежал домой.
![alt text](resource:images/story/image/image_0_10.jpg)
Потом вдруг остановился и закричал издали: Дедушка, дедушка!
-  Ну что еще?
-  А этот вот огурец, что я съел, как будет считаться — украл я его или нет?
-  Гм! — сказал дед. — Вот еще какая задача! Ну чего там, пусть не украл.
![alt text](resource:images/story/image/image_0_11.jpg)
-  А как же?
-  Ну, считай, что я тебе подарил его.
-  Спасибо, дедушка! Я пойду.
-  Иди, иди, сынок.
Котька во весь дух помчался по полю, через овраг, по мостику через ручей и, уже не спеша, пошел по деревне домой. На душе у него было радостно.
![alt text](resource:images/story/image/image_0_12.jpg)
    ''',
    ),
    StoryModel(
      index: 1,
      name: 'Каша из топора',
      author: '',
      imageCover: 'images/story/cover/story_1.jpg',
      text: '''

Старый солдат шёл на побывку. Притомился в пути, есть хочется. Дошёл до деревни, постучал в крайнюю избу:
- Пустите отдохнуть дорожного человека! Дверь отворила старуха.
- Заходи, служивый.
- А нет ли у тебя, хозяюшка, перекусить чего? У старухи всего вдоволь, а солдата поскупилась накормить, прикинулась сиротой.
- Ох, добрый человек, и сама сегодня ещё ничего не ела: нечего.
- Ну, нет так нет,- солдат говорит. Тут он приметил под лавкой топор.
- Коли нет ничего иного, можно сварить кашу и из топора.
Хозяйка руками всплеснула:
- Как так из топора кашу сварить?
- А вот как, дай-ка котёл.
Старуха принесла котёл, солдат вымыл топор, опустил в котёл, налил воды и поставил на огонь.
Старуха на солдата глядит, глаз не сводит.
Достал солдат ложку, помешивает варево. Попробовал.
- Ну, как? - спрашивает старуха.
- Скоро будет готова, - солдат отвечает, - жаль вот только, что посолить нечем.
- Соль-то у меня есть, посоли.
Солдат посолил, снова попробовал.
- Хороша! Ежели бы сюда да горсточку крупы! Старуха засуетилась, принесла откуда-то мешочек крупы.
- Бери, заправь как надобно. Заправил варево крупой. Варил, варил, помешивал, попробовал. Глядит старуха на солдата во все глаза, оторваться не может.
- Ох, и каша хороша! - облизнулся солдат.- Как бы сюда да чуток масла - было бы и вовсе объедение.
Нашлось у старухи и масло.
Сдобрили кашу.
- Ну, старуха, теперь подавай хлеба да принимайся за ложку: станем кашу есть!
- Вот уж не думала, что из топора эдакую добрую кашу можно сварить, - дивится старуха.
Поели вдвоем кашу. Старуха спрашивает:
- Служивый! Когда ж топор будем есть?
- Да, вишь, он не уварился,- отвечал солдат,- где-нибудь на дороге доварю да позавтракаю!
Тотчас припрятал топор в ранец, распростился с хозяйкою и пошёл в иную деревню.
Вот так-то солдат и каши поел и топор унёс!
    ''',
    ),
    StoryModel(
      index: 2,
      name: 'Три медведя',
      author: '',
      imageCover: 'images/story/cover/story_2.jpg',
      text: '''
Одна девочка ушла из дома в лес. В лесу она заблудилась и стала искать дорогу домой, да не нашла, а пришла в лесу к домику.
![alt text](resource:images/story/image/image_2_1.jpg)
Дверь была отворена; она посмотрела в дверь, видит: в домике никого нет, и вошла. В домике этом жили три медведя. Один медведь был отец, звали его Михайло Иванович. Он был большой и лохматый. Другой была медведица. Она была поменьше, и звали ее Настасья Петровна. Третий был маленький медвежонок, и звали его Мишутка. Медведей не было дома, они ушли гулять по лесу.
![alt text](resource:images/story/image/image_2_2.jpg)
В домике было две комнаты: одна столовая, другая спальня. Девочка вошла в столовую и увидела на столе три чашки с похлебкой. Первая чашка, очень большая, была Михайлы Иваныча. Вторая чашка, поменьше, была Настасьи Петровнина; третья, синенькая чашечка, была Мишуткина. Подле каждой чашки лежала ложка: большая, средняя и маленькая.
Девочка взяла самую большую ложку и похлебала из самой большой чашки; потом взяла среднюю ложку и похлебала из средней чашки; потом взяла маленькую ложечку и похлебала из синенькой чашечки; и Мишуткина похлебка ей показалась лучше всех.
![alt text](resource:images/story/image/image_2_3.jpg)
Девочка захотела сесть и видит у стола три стула: один большой — Михайлы Иваныча; другой поменьше — Настасьи Петровнин, а третий, маленький, с синенькой подушечкой — Мишуткин. Она полезла на большой стул и упала; потом села на средний стул, на нем было неловко; потом села на маленький стульчик и засмеялась — так было хорошо.
![alt text](resource:images/story/image/image_2_4.jpg)
Она взяла синенькую чашечку на колени и стала есть. Поела всю похлебку и стала качаться на стуле.
Стульчик проломился, и она упала на пол.
![alt text](resource:images/story/image/image_2_5.jpg)
Она встала, подняла стульчик и пошла в другую горницу. Там стояли три кровати: одна большая — Михайлы Иваныча; другая средняя — Настасьи Петровнина; третья маленькая — Мишенькина.
Девочка легла в большую, ей было слишком просторно; легла в среднюю — было слишком высоко; легла в маленькую — кроватка пришлась ей как раз впору, и она заснула.
![alt text](resource:images/story/image/image_2_6.jpg)
А медведи пришли домой голодные и захотели обедать.
![alt text](resource:images/story/image/image_2_7.jpg)
Большой медведь взял чашку, взглянул и заревел страшным голосом:
-  КТО ХЛЕБАЛ В МОЕЙ ЧАШКЕ?
Настасья Петровна посмотрела на свою чашку и зарычала не так громко:
-  КТО ХЛЕБАЛ В МОЕЙ ЧАШКЕ?
А Мишутка увидал свою пустую чашечку и запищал тонким голосом:
-  КТО ХЛЕБАЛ В МОЕЙ ЧАШКЕ И ВСЕ ВЫХЛЕБАЛ?
Михаиле Иваныч взглянул на свой стул и зарычал страшным голосом:
-  КТО СИДЕЛ НА МОЕМ СТУЛЕ И СДВИНУЛ ЕГО С МЕСТА?
Настасья Петровна взглянула на свой стул и зарычала не так громко:
-  КТО СИДЕЛ НА МОЕМ СТУЛЕ И СДВИНУЛ ЕГО С МЕСТА?
Мишутка взглянул на свой сломанный стульчик и пропищал:
-  КТО СИДЕЛ НА МОЕМ СТУЛЕ И СЛОМАЛ ЕГО?
![alt text](resource:images/story/image/image_2_8.jpg)
Медведи пришли в другую горницу.
-  КТО ЛОЖИЛСЯ В МОЮ ПОСТЕЛЬ И СМЯЛ ЕЕ? — заревел Михаиле Иваныч страшным голосом.
-  КТО ЛОЖИЛСЯ В МОЮ ПОСТЕЛЬ И СМЯЛ ЕЕ? — зарычала Настасья Петровна не так громко.
А Мишенька подставил скамеечку, полез в свою кроватку и запищал тонким голосом:
-  КТО ЛОЖИЛСЯ В МОЮ ПОСТЕЛЬ?
![alt text](resource:images/story/image/image_2_9.jpg)
И вдруг он увидал девочку и завизжал так, как будто его режут:
-  Вот она! Держи, держи! Вот она! Ай-я-яй! Держи!
Он хотел ее укусить.
Девочка открыла глаза, увидела медведей и бросилась к окну. Оно было открыто, она выскочила в окно и убежала. И медведи не догнали ее.
![alt text](resource:images/story/image/image_2_10.jpg)
    ''',
    ),
    StoryModel(
      index: 3,
      name: 'Курочка Ряба',
      author: '',
      imageCover: 'images/story/cover/story_3.jpg',
      text: '''
![](resource:images/story/image/image_3_1.jpg)
Жил себе дед да баба, у них была курочка Ряба; снесла под полом яичко — пестро, востро, костяно, мудрено! Дед бил — не разбил, баба била — не разбила, а мышка прибежала да хвостиком раздавила. Дед плачет, баба плачет, курочка кудкудачет, ворота скрипят, со двора щепки летят, на избе верх шатается!
Шли за водою поповы дочери, спрашивают деда, спрашивают бабу:
-  О чем вы плачете?
-  Как нам не плакать! — отвечают дед да баба. — Есть у нас курочка Ряба; снесла под полом яичко — пестро, востро, костяно, мудрено! Дед бил — не разбил, баба била — не разбила, а мышка прибежала да хвостиком раздавила.
Как услышали это поповы дочери, со великого горя бросили ведра наземь, поломали коромысла и воротились домой с пустыми руками.
-  Ах, матушка! — говорят они попадье. — Ничего ты не знаешь, ничего не ведаешь, а на свете много деется: живут себе дед да баба, у них курочка Ряба; снесла под полом яичко — пестро, востро, костяно, мудрено! Дед бил — не разбил, баба била — не разбила, а мышка прибежала да хвостиком раздавила. Оттого дед плачет, баба плачет, курочка кудкудачет, ворота скрипят, со двора щепки летят, на избе верх шатается. А мы, идучи за водою, ведра побросали, коромысла поломали!
На ту пору попадья плачет, и курочка кудкудачет, тотчас с великого горя опрокинула квашню и все тесто разметала по полу.
Пришел поп с книгою.
-  Ах, батюшка! — сказывает ему попадья. — Ничего ты не знаешь, ничего не ведаешь, а на свете много деется: живут себе дед да баба, у них курочка Ряба; снесла под полом яичко — пестро, востро, костяно, мудрено! Дед бил — не разбил, баба била — не разбила, а мышка прибежала да хвостиком раздавила. Оттого дед плачет, баба плачет, курочка кудкудачет, ворота скрипят, со двора щепки летят, на избе верх шатается! Наши дочки, идучи за водою, ведра побросали, коромысла поломали, а я тесто месила да со великого горя все по полу разметала!
Поп затужил-загоревал, свою книгу в клочья изорвал.
''',
    ),
//     StoryModel(
//       index: 4,
//       name: 'Рассказ Котенок',
//       author: 'Лев Толстой',
//       imageCover: 'images/story/cover/story_4.jpg',
//       text: '''
// Были брат и сестра — Вася и Катя; и у них была кошка. Весной кошка пропала. Дети искали её везде, но не могли найти.
// Один раз они играли подле амбара и услыхали — над головой что-то мяучит тонкими голосами. Вася влез по лестнице под крышу амбара. А Катя стояла внизу и всё спрашивала:
// — Нашёл? Нашёл?
// Но Вася не отвечал ей. Наконец, Вася закричал ей:
// — Нашёл! Наша кошка… И у неё котята; такие чудесные; иди сюда скорее..
// Катя побежала домой, достала молока и принесла кошке.
// Котят было пять. Когда они выросли немножко и стали вылезать из-под угла, где вывелись, дети выбрали себе одного котёнка, серого с белыми лапками, и принесли в дом. Мать раздала всех остальных котят, а этого оставила детям. Дети кормили его, играли с ним и клали с собой спать.
// Один раз дети пошли играть на дорогу и взяли с собой котёнка.
// Ветер шевелил солому по дороге, а котёнок играл с соломой, и дети радовались на него. Потом они нашли подле дороги щавель, пошли собирать его и забыли про котёнка.
// Вдруг они услыхали, что кто-то громко кричит:
// «Назад, назад!» — и увидали, что скачет охотник, а впереди его две собаки увидали котёнка и хотят схватить его. А котёнок глупый, вместо того чтобы бежать, присел к земле, сгорбил спину и смотрит на собак.
// Катя испугалась собак, закричала и побежала прочь от них. А Вася что было духу пустился к котёнку и в одно время с собаками подбежал к нему.
// Собаки хотели схватить котёнка, но Вася упал животом на котёнка и закрыл его от собак.
// Охотник подскакал и отогнал собак; а Вася принёс домой котёнка и уж больше не брал его с собой в поле.
//     ''',
//     ),
  ];
}
