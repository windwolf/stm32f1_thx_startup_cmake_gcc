
function(print_list msghead)
    string(JOIN "," _T_MSG ${ARGN})
    message(STATUS ${msghead} ${_T_MSG})

endfunction()

function(add_project_component componentname)

    file(GLOB_RECURSE __TEMP_COMPONENT_SRC_PATH
        ${CMAKE_CURRENT_SOURCE_DIR}/Src/components/${componentname}/*.c
        ${CMAKE_CURRENT_SOURCE_DIR}/Src/components/${componentname}/*.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/Src/components/${componentname}/*.s
        ${CMAKE_CURRENT_SOURCE_DIR}/Src/components/${componentname}/*.S
    )
    foreach(__TEMP_COMPONENT_SRC_PATH_ELE ${__TEMP_COMPONENT_SRC_PATH})
        list(APPEND PROJECT_SOURCES_PATH ${__TEMP_COMPONENT_SRC_PATH_ELE})
    endforeach()

    set (PROJECT_SOURCES_PATH  ${PROJECT_SOURCES_PATH} PARENT_SCOPE)
    # print_list("PROJECT_SOURCES_PATH: " ${PROJECT_SOURCES_PATH})
    
    list(APPEND PROJECT_INCLUDES_PATH 
        ${CMAKE_CURRENT_SOURCE_DIR}/Src/components/${componentname}/inc)   

    set (PROJECT_INCLUDES_PATH  ${PROJECT_INCLUDES_PATH} PARENT_SCOPE)
    # print_list("PROJECT_INCLUDES_PATH: " ${PROJECT_INCLUDES_PATH}) 

endfunction()


function(add_project_library)

    add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/libs/${ARGV0})

    if(EXISTS ${ARGV1})
        list(APPEND PROJECT_LINKS_NAME ${ARGV1})
    else()
        list(APPEND PROJECT_LINKS_NAME ${ARGV0})
    endif()
    set (PROJECT_LINKS_NAME  ${PROJECT_LINKS_NAME} PARENT_SCOPE)
    # print_list("PROJECT_LINKS_NAME: " ${PROJECT_LINKS_NAME})
endfunction()