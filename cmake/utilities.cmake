
function(print_list msghead)
    string(JOIN "," _T_MSG ${ARGN})
    message(STATUS ${msghead} ${_T_MSG})
endfunction()

function(list_source_files dir listvar)
    file(GLOB_RECURSE _t_sources_
        ${dir}/*.c
        ${dir}/*.cpp
        ${dir}/*.s
        ${dir}/*.S
    )
    SET(${listvar} ${_t_sources_} PARENT_SCOPE)
endfunction()

function(list_library_directories dir dirsvar include)
    file(GLOB _dirs_ LIST_DIRECTORIES true ${dir}/*)
    SET(_dirlist_ "")

    foreach(_dir_ ${_dirs_})
        if(IS_DIRECTORY ${_dir_})
            if(DEFINED include)
                if(EXISTS ${_dir_}/${include})
                    list(APPEND _dirlist_ ${_dir_})
                endif()
            else()
                list(APPEND _dirlist_ ${_dir_})
            endif()
        endif()
    endforeach()

    SET(${dirsvar} ${_dirlist_} PARENT_SCOPE)
endfunction()

function(add_project_library)
    add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/libs/${ARGV0})

    if(EXISTS ${ARGV1})
        list(APPEND PROJECT_LINKS_NAME ${ARGV1})
    else()
        list(APPEND PROJECT_LINKS_NAME ${ARGV0})
    endif()

    set(PROJECT_LINKS_NAME ${PROJECT_LINKS_NAME} PARENT_SCOPE)

    # print_list("PROJECT_LINKS_NAME: " ${PROJECT_LINKS_NAME})
endfunction()

function(process_src_dir dir prject_name)
    # driver的OS port
    list_source_files(${dir} source_files)
    target_sources(${prject_name}
        PRIVATE
        ${source_files}
    )
    target_include_directories(${prject_name}
        PRIVATE
        ${dir}
        ${dir}/..)
endfunction()