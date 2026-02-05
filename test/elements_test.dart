import 'package:test/test.dart';
import 'package:duxt_html/duxt_html.dart';

void main() {
  group('resolveChildren', () {
    test('returns empty list when both child and children are null', () {
      final result = resolveChildren(null, null);
      expect(result, isEmpty);
    });

    test('returns list with single child when child is provided', () {
      final child = Text('Hello');
      final result = resolveChildren(child, null);
      expect(result.length, 1);
    });

    test('returns children list when children is provided', () {
      final children = [Text('Hello'), Text('World')];
      final result = resolveChildren(null, children);
      expect(result.length, 2);
    });

    test('throws ArgumentError when both child and children are provided', () {
      final child = Text('Hello');
      final children = [Text('World')];
      expect(
        () => resolveChildren(child, children),
        throwsArgumentError,
      );
    });
  });

  group('Text elements', () {
    test('Text creates a text component', () {
      final component = Text('Hello');
      expect(component, isNotNull);
    });

    test('Div creates a div component', () {
      final component = Div(child: Text('Content'));
      expect(component, isNotNull);
    });

    test('Div with className', () {
      final component = Div(
        className: 'container mx-auto',
        child: Text('Content'),
      );
      expect(component, isNotNull);
    });

    test('Div with multiple children', () {
      final component = Div(
        children: [
          Text('Child 1'),
          Text('Child 2'),
        ],
      );
      expect(component, isNotNull);
    });
  });

  group('Heading elements', () {
    test('H1 creates a heading component', () {
      final component = H1(child: Text('Title'));
      expect(component, isNotNull);
    });

    test('H2 creates a heading component', () {
      final component = H2(child: Text('Subtitle'));
      expect(component, isNotNull);
    });
  });

  group('Form elements', () {
    test('Form creates a form component', () {
      final component = Form(
        children: [
          Input(type: 'text', name: 'email'),
          Button(type: 'submit', child: Text('Submit')),
        ],
      );
      expect(component, isNotNull);
    });

    test('Input creates an input component', () {
      final component = Input(
        type: 'text',
        name: 'email',
        placeholder: 'Enter email',
      );
      expect(component, isNotNull);
    });

    test('Button creates a button component', () {
      final component = Button(
        type: 'submit',
        child: Text('Click me'),
      );
      expect(component, isNotNull);
    });

    test('Select creates a select component', () {
      final component = Select(
        name: 'country',
        children: [
          Option(value: 'us', child: Text('United States')),
          Option(value: 'uk', child: Text('United Kingdom')),
        ],
      );
      expect(component, isNotNull);
    });

    test('Textarea creates a textarea component', () {
      final component = Textarea(
        name: 'message',
        placeholder: 'Enter your message',
      );
      expect(component, isNotNull);
    });
  });

  group('List elements', () {
    test('Ul creates an unordered list component', () {
      final component = Ul(
        children: [
          Li(child: Text('Item 1')),
          Li(child: Text('Item 2')),
        ],
      );
      expect(component, isNotNull);
    });

    test('Ol creates an ordered list component', () {
      final component = Ol(
        children: [
          Li(child: Text('First')),
          Li(child: Text('Second')),
        ],
      );
      expect(component, isNotNull);
    });
  });

  group('Table elements', () {
    test('Table creates a table component', () {
      final component = Table(
        children: [
          Thead(
            child: Tr(
              children: [
                Th(child: Text('Name')),
                Th(child: Text('Age')),
              ],
            ),
          ),
          Tbody(
            children: [
              Tr(
                children: [
                  Td(child: Text('John')),
                  Td(child: Text('30')),
                ],
              ),
            ],
          ),
        ],
      );
      expect(component, isNotNull);
    });
  });

  group('Media elements', () {
    test('Img creates an image component', () {
      final component = Img(
        src: '/images/logo.png',
        alt: 'Logo',
      );
      expect(component, isNotNull);
    });

    test('Video creates a video component', () {
      final component = Video(
        src: '/videos/intro.mp4',
        controls: true,
      );
      expect(component, isNotNull);
    });

    test('Audio creates an audio component', () {
      final component = Audio(
        src: '/audio/music.mp3',
        controls: true,
      );
      expect(component, isNotNull);
    });
  });

  group('Semantic elements', () {
    test('Header creates a header component', () {
      final component = Header(child: Text('Header'));
      expect(component, isNotNull);
    });

    test('Footer creates a footer component', () {
      final component = Footer(child: Text('Footer'));
      expect(component, isNotNull);
    });

    test('Nav creates a nav component', () {
      final component = Nav(
        children: [
          A(href: '/', child: Text('Home')),
          A(href: '/about', child: Text('About')),
        ],
      );
      expect(component, isNotNull);
    });

    test('Article creates an article component', () {
      final component = Article(
        children: [
          H1(child: Text('Article Title')),
          P(child: Text('Article content')),
        ],
      );
      expect(component, isNotNull);
    });
  });

  group('SVG elements', () {
    test('Svg creates an SVG container', () {
      final component = Svg(
        viewBox: '0 0 100 100',
        children: [
          Circle(cx: '50', cy: '50', r: '40'),
        ],
      );
      expect(component, isNotNull);
    });

    test('Rect creates an SVG rectangle', () {
      final component = Rect(
        x: '10',
        y: '10',
        width: '80',
        height: '80',
      );
      expect(component, isNotNull);
    });

    test('Path creates an SVG path', () {
      final component = Path(
        d: 'M10 10 L90 90',
      );
      expect(component, isNotNull);
    });
  });

  group('Link elements', () {
    test('A creates an anchor component', () {
      final component = A(
        href: '/about',
        child: Text('About Us'),
      );
      expect(component, isNotNull);
    });

    test('A with target', () {
      final component = A(
        href: 'https://example.com',
        target: Target.blank,
        child: Text('External Link'),
      );
      expect(component, isNotNull);
    });
  });

  group('Complex layouts', () {
    test('creates a complete page layout', () {
      final component = Div(
        className: 'min-h-screen',
        children: [
          Header(
            className: 'bg-blue-600 text-white p-4',
            children: [
              Nav(
                className: 'flex gap-4',
                children: [
                  A(href: '/', child: Text('Home')),
                  A(href: '/about', child: Text('About')),
                  A(href: '/contact', child: Text('Contact')),
                ],
              ),
            ],
          ),
          Main(
            className: 'container mx-auto py-8',
            children: [
              Article(
                children: [
                  H1(className: 'text-3xl font-bold', child: Text('Welcome')),
                  P(className: 'text-gray-600', child: Text('Hello world')),
                ],
              ),
            ],
          ),
          Footer(
            className: 'bg-gray-800 text-white p-4 text-center',
            child: P(child: Text('Copyright 2024')),
          ),
        ],
      );
      expect(component, isNotNull);
    });

    test('creates a form with validation', () {
      final component = Form(
        className: 'space-y-4',
        children: [
          Div(
            children: [
              Label(htmlFor: 'email', child: Text('Email')),
              Input(
                type: 'email',
                id: 'email',
                name: 'email',
                placeholder: 'Enter your email',
                className: 'border rounded px-3 py-2 w-full',
              ),
            ],
          ),
          Div(
            children: [
              Label(htmlFor: 'password', child: Text('Password')),
              Input(
                type: 'password',
                id: 'password',
                name: 'password',
                placeholder: 'Enter your password',
                className: 'border rounded px-3 py-2 w-full',
              ),
            ],
          ),
          Button(
            type: 'submit',
            className: 'bg-blue-600 text-white px-4 py-2 rounded',
            child: Text('Sign In'),
          ),
        ],
      );
      expect(component, isNotNull);
    });
  });
}
