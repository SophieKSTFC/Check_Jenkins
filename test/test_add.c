#include <check.h>
#include "add.h"

START_TEST (test_add)
{
    int value1 = 5;
    int value2 = 7;
    ck_assert_int_eq(add(&value1, &value1), 10);
    ck_assert_int_eq(add(&value1, &value2), 12);
}
END_TEST

int main(void)
{
    Suite *s1 = suite_create("Core");
    TCase *tc1_1 = tcase_create("Core");
    SRunner *sr = srunner_create(s1);
    int nf;

    srunner_set_xml(sr, "test/test-output.xml");
    suite_add_tcase(s1, tc1_1);
    tcase_add_test(tc1_1, test_add);

    srunner_run_all(sr, CK_SILENT);
    nf = srunner_ntests_failed(sr);
    srunner_free(sr);

    return nf == 0 ? 0 : 1;
}