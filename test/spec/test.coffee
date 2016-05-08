'use strict'

# addition block

`function check(done, f) {
    try {
        f();
        done();
    } catch(e) {
        done(e);
    }
}`

# Class

describe 'Class JSTimeLinter', () ->
	describe 'Инициализация', () ->
		t = new JSTimeLinter()

		it 't является экземпляром класса JSTimeLinter', () ->
			assert.instanceOf t, JSTimeLinter

		describe 'У класса есть методы:', () ->
			it 'run()', () ->
				assert.isFunction t.run

			it 'pause()', () ->
				assert.isFunction t.pause

			it 'stop()', () ->
				assert.isFunction t.stop

			it 'reset()', () ->
				assert.isFunction t.reset

			it 'getJs()', () ->
				assert.isFunction t.getJs

			it 'spanCode()', () ->
				assert.isFunction t.spanCode

		describe 'Есть параметры', () ->
			it 'code = string - исследуемый код', () ->
				assert.typeOf t.code, 'string'

			it 'col = string - текущий цвет', () ->
				assert.typeOf t.col, 'string'

			it 'cols = array - массив всех доступных стандартных цветов', () ->
				assert.typeOf t.cols, 'array'

			it 'step = number - длительность итерации в секундах', () ->
				assert.typeOf t.step, 'number'

		describe 'Есть метки', () ->
			it 'spanned_code - заключена ли в span каждая часть кода', () ->
				assert.property t, 'spanned_code'


#   describe('Класс JSTimeLinter', function () {
#   	describe('Инициализация', function () {
#       var tlint = new JSTimeLinter();

#   	  it('это класс', function() {
#         assert.instanceOf(tlint, JSTimeLinter, 'tlint экземпляр класса JSTimeLinter');
#       });

#       describe('В нем определены методы: ', function () {
#         it('run, pause, stop, reset, getJs', function() {
#           assert.property(tlint, 'run', 'есть');
#           assert.property(tlint, 'pause', 'есть');
#           assert.property(tlint, 'stop', 'есть');
#           assert.property(tlint, 'reset', 'есть');
#           assert.property(tlint, 'getJs', 'есть');
#         });
#       });

#       describe('В нем есть параметры:  ', function () {
#         it('4 разных цвета (col)', function() {
#           assert.lengthOf(tlint.col, 4);
#         });

#         it('2 вида частей тела (руки, ноги) (part)', function() {
#           assert.lengthOf(tlint.part, 2);
#         });

#         it('2 направления (лево право) (arrow)', function() {
#           assert.lengthOf(tlint.arrow, 2);
#         });        

#         it('Текущие значения (cur)', function() {
#           assert.isObject(tlint.cur);
#           assert.property(tlint.cur, 'col');
#           assert.property(tlint.cur, 'part');
#           assert.property(tlint.cur, 'arrow');
#         }); 
#       });

#   	});

#     describe('Запуск игры', function () {
#       describe('Каждые 5 секунд Твистер меняет текущие значения цвета и частей тела', function () {

#         it('функция getCurrent возвращает объект с параметрами col, part, arrow', function() {
#           assert.property(tlint.getCurrent(),'col');
#           assert.property(tlint.getCurrent(),'part');
#           assert.property(tlint.getCurrent(),'arrow');
#         });

#       });
#     });
#   });

# }());

