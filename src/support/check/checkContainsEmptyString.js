/**
 * Check if the given elements contains text
 * @param  {String}   elementType   Element type (element or button)
 * @param  {String}   selector       Element selector
 * @param  {String}   falseCase     Whether to check if the content contains
 *                                  the given text or not
 */
export default (elementType, selector, falseCase) => {
    /**
     * The command to perform on the browser object
     * @type {String}
     */
    let command = 'getValue';

    if (
        ['button', 'container'].includes(elementType)
        || $(selector).getAttribute('value') === null
    ) {
        command = 'getText';
    }

    /**
     * False case
     * @type {Boolean}
     */
    let boolFalseCase;

    /**
     * The expected text
     * @type {String}
     */
    let stringExpectedText = "";

    /**
     * The text of the element
     * @type {String}
     */
    const elem = $(selector);
    elem.waitForDisplayed();
    const text = elem[command]();

    if (boolFalseCase) {
        expect(text).not.toBe(stringExpectedText);
    } else {
        expect(text).toBe(stringExpectedText);
    }
};
