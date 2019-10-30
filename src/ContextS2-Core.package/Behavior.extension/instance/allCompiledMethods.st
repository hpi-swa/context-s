*contexts2-core
allCompiledMethods

    ^ Array streamContents: [:stream |
        self withAllSuperclassesDo: [:aClass |
            aClass methodsDo: [:method | 
                stream nextPut: method]]]