/**
 * Check if the given element is visible
 * @param  {String}   selector   Element selector
 * @param  {String}   falseCase Whether to check if the element is visible
 */
export default (selector, falseCase) => {
    /**
     * Visible state of the give element
     * @type {String}
     */
    const isDisplayed = $(selector).isDisplayed();

    if (falseCase) {
        expect(isDisplayed).not.toEqual(
            true,
            `Expected element "${selector}" not to be displayed`
        );
    } else {
        expect(isDisplayed).toEqual(
            true,
            `Expected element "${selector}" to be displayed`
        );
    }
};
