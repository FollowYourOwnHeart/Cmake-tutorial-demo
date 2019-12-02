cmake_minimum_required(VERSION 2.6)
project(demo)
set(Tutorial_VERSION_MAJOR 1)
set(Tutorial_VERSION_MINOR 0)

#set(CMAKE_INSTALL_PREFIX ~/share/code/cmake/Tutorial/demo5/install)
option(
	USE_MYMATH
	"Use tutorial provided math implementation"
	ON
)
configure_file(
    "${PROJECT_SOURCE_DIR}/TutorialConfig.h.in"
	"${PROJECT_BINARY_DIR}/TutorialConfig.h"
)

include_directories("${PROJECT_BINARY_DIR}")

if(USE_MYMATH)
	include_directories("${PROJECT_SOURCE_DIR}/MathFunctions")
	add_subdirectory(MathFunctions)
	set(EXTRA_LIBS ${EXTRA_LIBS} MathFunctions)
endif(USE_MYMATH)


add_executable(Tutorial tutorial.cxx)
target_link_libraries(Tutorial ${EXTRA_LIBS})

install(TARGETS Tutorial DESTINATION bin)
install(FILES "${PROJECT_BINARY_DIR}/TutorialConfig.h" DESTINATION include)

include(CTest)

add_test(TutorialRun Tutorial 25)

add_test(TutorialComp25 Tutorial 25)
set_tests_properties(TutorialComp25 PROPERTIES PASS_REGULAR_EXPERSSION "25 sqrt is 5")

add_test(TutorialNegative Tutorial -25)
set_tests_properties(TutorialNegative PROPERTIES PASS_REGULAR_EXPRESSION "-25 sqrt is -nan")

add_test(TutorialSmall Tutorial 0.0001)
set_tests_properties(TutorialSmall PROPERTIES PASS_REGULAR_EXPRESSION "0.0001 sqrt is 0.01")

add_test(TutorialUsage Tutorial)
set_tests_properties(TutorialUsage PROPERTIES PASS_REGULAR_EXPRESSION "usage:.*number")

macro(do_test arg result)
	add_test(TutorialComp${arg} Tutorial ${arg})
	set_tests_properties(TutorialComp${arg} PROPERTIES PASS_REGULAR_EXPRESSION ${result})
endmacro(do_test)

add_test(TutorialVersion Tutorial)
set_tests_properties(TutorialVersion PROPERTIES PASS_REGULAR_EXPRESSION "1.0")

do_test(4 "4 sqrt is 2")
do_test(9 "9 sqrt is 3")
