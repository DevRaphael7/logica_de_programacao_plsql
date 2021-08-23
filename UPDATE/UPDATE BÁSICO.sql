SELECT * FROM USUARIO;

DECLARE
    id_user number := &numero;
    nome_c varchar2(25) := '&nome';
    cpf_c varchar2(11) := '&cpf';
    email_e varchar2(50) := '&email';
BEGIN
    UPDATE Usuario SET nome = nome_c, cpf = cpf_c, email = email_e WHERE id = id_user;
END;