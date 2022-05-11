/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2022-05-11 14:24:07                          */
/*==============================================================*/


drop table if exists רҵ;

drop table if exists ѧ��;

drop table if exists ѧ��ѡ��;

drop table if exists ���ογ�;

drop table if exists ��ʦ;

drop table if exists �༶;

drop table if exists �γ�;

drop table if exists Ժϵ;

/*==============================================================*/
/* Table: רҵ                                                    */
/*==============================================================*/
create table רҵ
(
   רҵ����                 varchar(20) not null,
   ѧλ�ȼ�                 varchar(20) not null,
   Ժϵ����                 varchar(20) not null,
   ��ҵѧ��                 varchar(20),
   primary key (רҵ����, ѧλ�ȼ�)
);

/*==============================================================*/
/* Table: ѧ��                                                    */
/*==============================================================*/
create table ѧ��
(
   ����                   varchar(20) not null,
   ѧ��                   varchar(20) not null,
   �༶����                 varchar(20) not null,
   ���֤��                 varchar(20),
   ����                   varchar(20),
   ��ͥ��ַ                 varchar(100),
   �绰                   varchar(20),
   ��������                 date,
   �Ա�                   varchar(20),
   �꼶                   varchar(20) not null,
   ����ѧ��                 int not null,
   primary key (ѧ��)
);

/*==============================================================*/
/* Table: ѧ��ѡ��                                                  */
/*==============================================================*/
create table ѧ��ѡ��
(
   ���κ�                  varchar(20) not null,
   ѧ��                   varchar(20) not null,
   �ɼ�                   int,
   primary key (���κ�, ѧ��)
);

/*==============================================================*/
/* Table: ���ογ�                                                  */
/*==============================================================*/
create table ���ογ�
(
   ���κ�                  varchar(20) not null,
   �γ̱��                 varchar(20),
   ��ʦ���                 varchar(20) not null,
   ����ʱ��                 varchar(20),
   ���εص�                 varchar(20),
   ������                  varchar(20),
   primary key (���κ�)
);

/*==============================================================*/
/* Table: ��ʦ                                                    */
/*==============================================================*/
create table ��ʦ
(
   ��ʦ����                 varchar(20) not null,
   ��ʦ���                 varchar(20) not null,
   Ժϵ����                 varchar(20) not null,
   primary key (��ʦ���)
);

/*==============================================================*/
/* Table: �༶                                                    */
/*==============================================================*/
create table �༶
(
   �༶����                 varchar(20) not null,
   רҵ����                 varchar(20) not null,
   ѧλ�ȼ�                 varchar(20) not null,
   �꼶                   varchar(20),
   primary key (�༶����)
);

/*==============================================================*/
/* Table: �γ�                                                    */
/*==============================================================*/
create table �γ�
(
   �γ���                  varchar(20) not null,
   �γ�����                 varchar(20),
   �γ����                 varchar(20),
   �γ̱��                 varchar(20) not null,
   Ժϵ����                 varchar(20) not null,
   ѧʱ                   int,
   ѧ��                   int not null,
   primary key (�γ̱��)
);

/*==============================================================*/
/* Table: Ժϵ                                                    */
/*==============================================================*/
create table Ժϵ
(
   Ժϵ����                 varchar(20) not null,
   Ժϵ����                 varchar(20) not null,
   �칫�ص�                 varchar(20),
   �绰                   varchar(20),
   primary key (Ժϵ����)
);

alter table רҵ add constraint FK_רҵ_Ժϵ foreign key (Ժϵ����)
      references Ժϵ (Ժϵ����) on delete restrict on update restrict;

alter table ѧ�� add constraint FK_ѧ��_�༶ foreign key (�༶����)
      references �༶ (�༶����) on delete restrict on update restrict;

alter table ѧ��ѡ�� add constraint FK_ѧ��ѡ�� foreign key (ѧ��)
      references ѧ�� (ѧ��) on delete restrict on update restrict;

alter table ѧ��ѡ�� add constraint FK_ѧ��ѡ��2 foreign key (���κ�)
      references ���ογ� (���κ�) on delete restrict on update restrict;

alter table ���ογ� add constraint FK_��ʦ�ڿ� foreign key (��ʦ���)
      references ��ʦ (��ʦ���) on delete restrict on update restrict;

alter table ���ογ� add constraint FK_�γ̿��� foreign key (�γ̱��)
      references �γ� (�γ̱��) on delete restrict on update restrict;

alter table ��ʦ add constraint FK_��ʦ���� foreign key (Ժϵ����)
      references Ժϵ (Ժϵ����) on delete restrict on update restrict;

alter table �༶ add constraint FK_�༶_רҵ foreign key (רҵ����, ѧλ�ȼ�)
      references רҵ (רҵ����, ѧλ�ȼ�) on delete restrict on update restrict;

alter table �γ� add constraint FK_�γ̴��� foreign key (Ժϵ����)
      references Ժϵ (Ժϵ����) on delete restrict on update restrict;

