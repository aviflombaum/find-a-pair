1. Explain Integrations

yarn add bootstrap jquery popper.js
renamed application.css to applications.scss and then used 
imports to load bootstrap, my variables, and bootswatch

I added jquery to webpack/environment.js

I required bootstrap in application.js

2. Explain Goals

3. Explain my preferences

4. Begin Refactoring

5. Helpers, inherited classes

6. Make content on home page dynamic from rails @pairs...

7. GET FONTAWESOME IN

Goals:

1. Figure out a way to not have to pass around a ton of Bootstrap classes to rails helpers like link_to form_for etc....


Questions:

How does application.scss know to look in node_modules for the bootstrap source?

Why did I have to load jquery as a webpacker plugin in environment.js but nothing else?

where the hell does require("bootstrap") come from in application.js webpack?

Am I using sprockets at all?