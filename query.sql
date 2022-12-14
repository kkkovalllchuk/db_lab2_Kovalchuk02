CREATE TABLE Main
(
	m_id  char(10)  NOT NULL,
	title   char(50)  NOT NULL,
	author  char(50)  NOT NULL
);

CREATE TABLE Date_Ted
(	date_id char(10)  NOT NULL,
	Date_Ted    char(25)  NOT NULL,
	m_id            char(10)  NOT NULL
);

CREATE TABLE views_likes
(
	v_l_id   char(10)  NOT NULL,
	views            int NOT NULL,
	likes      int       NOT NULL,
	date_id char(10)  NOT NULL
);

-- -------------------
-- Define primary keys
-- -------------------
ALTER TABLE Main ADD PRIMARY KEY (m_id)
ALTER TABLE Date_Ted ADD PRIMARY KEY (date_id )
ALTER TABLE views_likes ADD PRIMARY KEY (v_l_id);


-- -------------------
-- Define foreign keys
-- -------------------
ALTER TABLE Date_Ted  ADD CONSTRAINT FK_Date_TED FOREIGN KEY (m_id)REFERENCES Main (m_id);
ALTER TABLE views_likes ADD CONSTRAINT FK_views_likes FOREIGN KEY (date_id) REFERENCES Date_Ted (date_id) ;