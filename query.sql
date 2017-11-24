DROP TABLE IF EXISTS stories;

CREATE TABLE stories (
  id serial PRIMARY KEY,
  title text NOT NULL,
  content text NOT NULL,
  published timestamp DEFAULT CURRENT_TIMESTAMP
);

ALTER SEQUENCE stories_id_seq RESTART WITH 1001;

INSERT INTO stories (title, content) VALUES
('What the World Would Be Like If Full-Stack Web Dev Didn''t Exist', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
('How Kitten Videos Can Keep You from Full-Stack Web Dev', 'Senectus et netus et malesuada fames ac turpis egestas. Posuere lorem ipsum dolor sit amet. Viverra ipsum nunc aliquet bibendum. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Ultrices mi tempus imperdiet nulla. A arcu cursus vitae congue mauris rhoncus.'),
('Why Do People Think Full-Stack Web Dev Is a Good Idea?', 'Risus nec feugiat in fermentum. Elit duis tristique sollicitudin nibh. Vulputate enim nulla aliquet porttitor lacus luctus accumsan tortor. Nunc mattis enim ut tellus elementum sagittis. Etiam dignissim diam quis enim lobortis scelerisque fermentum dui faucibus.'),
('What the Beatles Could Learn from Full-Stack Web Dev', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ornare lectus sit amet est placerat in egestas. Scelerisque purus semper eget duis at. Adipiscing at in tellus integer feugiat.'),
('18 Reasons You Should be Talking About Full-Stack Web Dev', 'Adipiscing elit duis tristique sollicitudin. Sed odio morbi quis commodo odio aenean sed adipiscing. Etiam non quam lacus suspendisse faucibus. Vel eros donec ac odio tempor. Proin fermentum leo vel orci porta non.'),
('Why Holden Caulfield Thinks Full-Stack Web Dev is Phony', 'Est ullamcorper eget nulla facilisi etiam dignissim diam quis enim. Neque convallis a cras semper auctor neque. Sed vulputate odio ut enim blandit volutpat maecenas volutpat. Aenean euismod elementum nisi quis eleifend.'),
('The 15 Worst Full-Stack Web Devs in History', 'Bibendum ut tristique et egestas quis ipsum suspendisse ultrices. Montes nascetur ridiculus mus mauris vitae ultricies. Vulputate enim nulla aliquet porttitor lacus luctus. Quis auctor elit sed vulputate. Duis tristique sollicitudin nibh sit amet commodo.'),
('9 Great Articles About Full-Stack Web Dev', 'Fusce ut placerat orci nulla pellentesque dignissim enim sit. Id diam vel quam elementum pulvinar etiam non. Mi proin sed libero enim. Ut etiam sit amet nisl purus in mollis nunc. Donec adipiscing tristique risus nec. Tristique senectus et netus et malesuada fames ac.'),
('7 Reasons Full-Stack Web Devs Could Help Win Top Chef', 'Tellus elementum sagittis vitae et leo duis ut. Quam elementum pulvinar etiam non quam lacus suspendisse faucibus interdum. Risus pretium quam vulputate dignissim suspendisse in est ante. Lectus vestibulum mattis ullamcorper velit sed ullamcorper.'),
('13 Ways Full-Stack Web Dev Can Find You the Love of Your Life', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ornare lectus sit amet est placerat in egestas. Scelerisque purus semper eget duis at. Adipiscing at in tellus integer feugiat.')
;

SELECT * FROM stories;
