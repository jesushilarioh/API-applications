CREATE TABLE `categories`(
    `id`            int(11)         NOT NULL    AUTO_INCREMENT,
    `name`          varchar(255)    NOT NULL,
    `created_at`    datetime        NOT NULL    DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
);

INSERT INTO `categories` (`id`, `name`) VALUES
    (1, 'Technology'),
    (2, 'Gaming'),
    (3, 'Auto'),
    (4, 'Entertainment'),
    (5, 'Books');

CREATE TABLE `posts` (
    `id`            int(11)         NOT NULL    AUTO_INCREMENT,
    `category_id`   int(11)         NOT NULL,
    `title`         varchar(255)    NOT NULL,
    `body`          text            NOT NULL,
    `author`        varchar(255)    NOT NULL,
    `created_at`    datetime        NOT NULL   DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
);

INSERT INTO `posts` (`id`, `category_id`, `title`, `body`, `author`) VALUES
    (1, 1, 'Tech Post One', 'Qui nostrud excepteur magna magna ex sunt. Ullamco in esse qui culpa eiusmod proident cupidatat excepteur velit cillum incididunt dolore. Officia veniam ipsum aute cupidatat commodo. Laboris cillum incididunt fugiat duis do amet nostrud fugiat. Do ullamco aliquip eiusmod irure fugiat nisi id. Fugiat cillum reprehenderit ad deserunt esse ut.', 'James Jones'),
    (2, 2, 'Gaming Post One', 'Qui nostrud excepteur magna magna ex sunt. Ullamco in esse qui culpa eiusmod proident cupidatat excepteur velit cillum incididunt dolore. Officia veniam ipsum aute cupidatat commodo. Laboris cillum incididunt fugiat duis do amet nostrud fugiat. Do ullamco aliquip eiusmod irure fugiat nisi id. Fugiat cillum reprehenderit ad deserunt esse ut.', 'James Jones'),
    (3, 1, 'Tech Post Two', 'Qui nostrud excepteur magna magna ex sunt. Ullamco in esse qui culpa eiusmod proident cupidatat excepteur velit cillum incididunt dolore. Officia veniam ipsum aute cupidatat commodo. Laboris cillum incididunt fugiat duis do amet nostrud fugiat. Do ullamco aliquip eiusmod irure fugiat nisi id. Fugiat cillum reprehenderit ad deserunt esse ut.', 'James Jones'),
    (4, 4, 'Entertainment Post One', 'Qui nostrud excepteur magna magna ex sunt. Ullamco in esse qui culpa eiusmod proident cupidatat excepteur velit cillum incididunt dolore. Officia veniam ipsum aute cupidatat commodo. Laboris cillum incididunt fugiat duis do amet nostrud fugiat. Do ullamco aliquip eiusmod irure fugiat nisi id. Fugiat cillum reprehenderit ad deserunt esse ut.', 'James Jones'),
    (5, 4, 'Entertainment Post Two', 'Qui nostrud excepteur magna magna ex sunt. Ullamco in esse qui culpa eiusmod proident cupidatat excepteur velit cillum incididunt dolore. Officia veniam ipsum aute cupidatat commodo. Laboris cillum incididunt fugiat duis do amet nostrud fugiat. Do ullamco aliquip eiusmod irure fugiat nisi id. Fugiat cillum reprehenderit ad deserunt esse ut.', 'James Jones'),
    (6, 1, 'Tech Post Three', 'Qui nostrud excepteur magna magna ex sunt. Ullamco in esse qui culpa eiusmod proident cupidatat excepteur velit cillum incididunt dolore. Officia veniam ipsum aute cupidatat commodo. Laboris cillum incididunt fugiat duis do amet nostrud fugiat. Do ullamco aliquip eiusmod irure fugiat nisi id. Fugiat cillum reprehenderit ad deserunt esse ut.', 'James Jones');