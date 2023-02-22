void main() {
  test('Say Hi!', () {
    expect(HelloWorld().hello(), equals('Hello, World!'));
  });
}
