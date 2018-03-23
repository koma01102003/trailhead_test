@isTest
private class TestVerifyDate {

    @isTest
    static void testCheckDates() {
		// テストケース１ date1が30日以内
		Date date1 = Date.newInstance(2018, 3, 1);
    	System.debug(date1);
		Date date2 = Date.newInstance(2018, 3, 27);
    	System.debug(date2);
		Date returnDate = VerifyDate.CheckDates(date1, date2);
		System.assertEquals(returnDate, date2);
    }

    @isTest
    static void testCheckDates2() {
		// テストケース２ date1が30日以上前
		Date date1 = Date.newInstance(2018, 2, 25);
    	System.debug(date1);
		Date date2 = Date.newInstance(2018, 3, 27);
    	System.debug(date2);
		Date returnDate = VerifyDate.CheckDates(date1, date2);
		System.assertEquals(returnDate, Date.newInstance(2018, 2, 28));
    }

    @isTest
    static void testCheckDates3() {
		// テストケース２ date1がdate2を超えた日付の場合
		Date date1 = Date.newInstance(2018, 4, 1);
    	System.debug(date1);
		Date date2 = Date.newInstance(2018, 3, 27);
    	System.debug(date2);
		Date returnDate = VerifyDate.CheckDates(date1, date2);
		System.assertEquals(returnDate, Date.newInstance(2018, 4, 30));
    }
}