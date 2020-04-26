import checkIfElementExists from '../lib/checkIfElementExists';

/**
 * Set the value of the given input field to a new value or add a value to the
 * current selector value
 * @param  {String}   method  The method to use (add or set)
 * @param  {String}   value   The value to set the selector to
 * @param  {String}   selector Element selector
 */
export default ( value) => {
    /**
     * The command to perform on the browser object (addValue or setValue)
     * @type {String}
     */
    browser.keys(value);

};
