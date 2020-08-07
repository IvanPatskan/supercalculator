const { Given, When, Then } = require('cucumber');

Given('I have a calculator', function () {
   browser.url('http://juliemr.github.io/protractor-demo/')
});

When(/^I enter ([^"]*) and ([^"]*) and choose ([^"]*) and press button$/, function (num1, num2, math) {
	browser.$("/html/body/div/div/form/input[1]").setValue(num1);
	browser.$("/html/body/div/div/form/input[2]").setValue(num2);
	browser.$("/html/body/div/div/form/select").selectByVisibleText(math);
	browser.pause(2000);
	browser.$("//*[@id='gobutton']").click();
	browser.pause(2000);

});

Then(/^the result should be ([^"]*)$/, function (total) {
	var el = browser.$('/html/body/div/div/form/h2');
	var res = el.getText();
    expect(res).toEqual(total); 
});