SET client_encoding = 'latin1';

-- 1) SQL

-- Creation of plan table
CREATE TABLE IF NOT EXISTS plan (
  plan_code INT NOT NULL,
  plan_description varchar(450) NOT NULL,
  product varchar(200) NOT NULL,
  PRIMARY KEY (plan_code)
);

-- Creation of member table
CREATE TABLE IF NOT EXISTS member (
  member_id INT NOT NULL,
  subscription_date TIMESTAMP,
  plan_code INT NOT NULL,
  cancellation_date TIMESTAMP,
  last_payment_date TIMESTAMP,
  PRIMARY KEY (member_id)
);

-- 2) KPIs
-- 3) Modelagem de dados

-- Creation of action_plan table
CREATE TABLE IF NOT EXISTS action_plan (
  member_id INT NOT NULL,
  plan_number INT NOT NULL,
  action_type varchar(450) NOT NULL,
  inclusion_date TIMESTAMP,
  start_date_execution TIMESTAMP,
  end_date_execution TIMESTAMP,
  PRIMARY KEY (member_id)
);

-- 4) Otimização de modelo

-- Creation of contact table
CREATE TABLE IF NOT EXISTS contact (
  contact_id INT NOT NULL,
  email varchar(200),
  phone_number varchar(200),
  PRIMARY KEY (contact_id)
);

-- Creation of comercial table
CREATE TABLE IF NOT EXISTS comercial (
  contact_id INT NOT NULL,
  cpf varchar(200) NOT NULL,
  name varchar(200) NOT NULL,
  address varchar(200) NOT NULL,
  buy_intention BOOLEAN NOT NULL,
  PRIMARY KEY (contact_id)
);

-- Creation of acquisition table
CREATE TABLE IF NOT EXISTS acquisition (
  contact_id INT NOT NULL,
  age INT NOT NULL,
  risk varchar(200) NOT NULL,
  PRIMARY KEY (contact_id)
);
