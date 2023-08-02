SELECT 
       'DROP INDEX ' + o.name + '.' + i.name
FROM sys.indexes i
     INNER JOIN sys.objects o ON o.object_id = i.object_id
WHERE 
--i.index_id >= 2
/*
				0 = �q�[�v
				1 = �N���X�^�[��
				2 = ��N���X�^�[��
				3 = XML
				4 = ���
				5 = �N���X�^�[����X�g�A �C���f�b�N�X�ł��B �K�p�Ώ�: SQL Server 2014 ���� SQL Server 2017
				6 = ��N���X�^�[����X�g�A �C���f�b�N�X�ł��B �K�p�Ώ�: SQL Server 2012 ���� SQL Server 2017
				7 = ��N���X�^�[���n�b�V�� �C���f�b�N�X�ł��B �K�p�Ώ�: SQL Server 2014 ���� SQL Server 2017
				*/
i.auto_created = 1
/*
				1 = �����`���[�j���O���邱�Ƃɂ���ăC���f�b�N�X���쐬����܂����B
				0 = �C���f�b�N�X�́A���[�U�[�ɂ���č쐬����Ă��܂��B
*/
AND o.type = 'U'
AND o.name NOT LIKE 'sysdiagrams%'
ORDER BY 
         1