'use strict';
function check( done, f ) {
    try {
        f();
        done();
    } catch(e) {
        done(e);
    }
};
describe('Class JSTimeLinter', function() {
  describe('Инициализация', function() {
    var tlint;
    tlint = new JSTimeLinter();
    it('tlin является экземпляром класса JSTimeLinter', function() {
      assert.instanceOf(tlint, JSTimeLinter, 'Да');
    });
  });
});
