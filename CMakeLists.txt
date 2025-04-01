cmake_minimum_required(VERSION 3.10)
project(MyProject)

# Настройки компиляции
set(CMAKE_C_STANDARD 11)
set(CMAKE_BUILD_TYPE Debug)

# Пути к заголовочным файлам
include_directories(
    pack1/libauth/libauth
    pack1/libdata/libdata
    pack1/libparse/libparse
)

# 1. Собираем библиотеки
add_library(libauth STATIC pack1/libauth/libauth/auth.c)
add_library(libdata STATIC pack1/libdata/libdata/data.c)
add_library(libparse STATIC pack1/libparse/libparse/parse.c)

# 2. Собираем исполняемые файлы с сохранением структуры папок
file(GLOB PACK_FOLDERS "pack*")  # Ищем все папки pack1, pack2, ...

foreach(PACK_FOLDER ${PACK_FOLDERS})
    # Получаем имя папки (pack1, pack2, ...)
    get_filename_component(PACK_NAME ${PACK_FOLDER} NAME)
    
    # Создаем соответствующую папку в build
    file(MAKE_DIRECTORY ${CMAKE_BINARY_DIR}/${PACK_NAME})
    
    # Ищем все задачи в этой папке
    file(GLOB TASK_SOURCES "${PACK_FOLDER}/task*/main.c")
    
    foreach(TASK_SOURCE ${TASK_SOURCES})
        # Из пути pack1/task1/main.c получаем имя "task1"
        get_filename_component(TASK_NAME ${TASK_SOURCE} DIRECTORY)
        get_filename_component(TASK_NAME ${TASK_NAME} NAME)
        
        # Создаем исполняемый файл в нужной подпапке build
        add_executable(${TASK_NAME} ${TASK_SOURCE})
        
        # Указываем выходной каталог
        set_target_properties(${TASK_NAME} PROPERTIES
            RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/${PACK_NAME}
        )
        
        # Линкуем с библиотеками
        target_link_libraries(${TASK_NAME} libauth libdata libparse)
    endforeach()
endforeach()