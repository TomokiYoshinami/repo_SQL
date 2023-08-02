SELECT 
    mod1.name,
    mod1.description
    FROM 
    sys.dm_os_loaded_modules AS mod1
    WHERE mod1.description = 'XTP Native DLL';