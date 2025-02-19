# Текстовый редактор для ОС Аврора на базе кода приложения Harbour-Editor для Sailfish OS
Оригинальная версия Harbour-Editor для Sailfish OS: https://github.com/GoAlexander/harbour-editor

Существенные модификации оригинального исходного кода:
- исправлен desktop-файл для использования в Аврора ОС. Доступ для чтения и записи файлов установлен только для папки Documents (хотя по факту выяснилось, что может писать и в другие места UserDirs несмотря на ограничение - возможно, из-за использования Питона)
- местами исправлены зависимости в соответствии с https://developer.auroraos.ru/doc/software_development/reference/public_api
- дополнен перевод на русский язык
  
Теперь валидатор Аврора IDE не ругается (Аврора 4). 

Работает только в Аврора 4, в Аврора 5 не работает - Python в приложениях запрещен, только если с собой в проект включать.

<img src="https://github.com/mastercond-comp/aurora-text-editor-harbour-fork/blob/master/archive/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA_%D0%AD%D0%BA%D1%80%D0%B0%D0%BD%D0%B0_20231128_001.png">

Из того, что в планах переделать:
- не нравится диалог записи файла (Сохранить как), там приходится чуть ли не вручную прописывать путь к сохраняемому файлу, что естественно требует переделки
- в разделе настройки есть пункты, которые не работают в ОС Аврора или работают немного по-другому, соответственно их убрать или заменить на рабочий код (например, текстовый редактор в системе по умолчанию)
- выдвигающуюся панель с кнопкой «Настройки» переместить наверх, расположение снизу очень неудобно из-за клавиатуры
<br><br>

<strong>Из оригинального README.MD:</strong>

Rules for translation
---------------------
Translation of buttons on FirstPage has to be NOT longer than 7 symbols (better 4-5 symbols).  
Examples:
- `Save as` - maximal length
- `Save` - optimal length  
  
If you can not do translation of buttons short try solution of @rabauke - empty the translation context.  
Screenshot: https://cloud.githubusercontent.com/assets/1159508/22174835/1e7fa1e2-dfe8-11e6-8c81-f1391a6ab08a.png

Public To Do
------------
[Trello](https://trello.com/b/Gyu7pPqi/harbour-editor)

Markets
-------
Application published in the following repositories:
- Official Jolla Store
- [openrepos.net](https://openrepos.net/content/goalexander/editor)

Important notes
---------------
- Because of OS default File Manager minimal version of Sailfish OS should be 2.0.5 

Some tips for the developers
----------------------------

If you want to have automatically changeable version counter in your QML you can read this thread:
https://lists.sailfishos.org/pipermail/devel/2015-January/005559.html

>a) in your .yaml add the lines:  
QMakeOptions:  
\- VERSION=%{version}  
b) in your .pro add the lines:  
DEFINES += APP_VERSION=\"\\\"$${VERSION}\\\"\"  
c) in your .c's main() function add the lines:  
QScopedPointer<QGuiApplication> app(SailfishApp::application(argc, argv));  
app->setApplicationVersion(QString(APP_VERSION));  
d) now your app's version is available in QML through  
Qt.application.version  
  
Alternative:  
In .pro file add:  
`VERSION = $$system("echo $(awk -F ':' '/Version/ {print $2}' rpm/$${TARGET}.yaml)")`  
And then same steps in C++ files...
  
License
-------

    Copyright (c) 2016-2017 Alexander Dydychkin

    Editor. is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    Editor. is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with Editor.. If not, see http://www.gnu.org/licenses/.
