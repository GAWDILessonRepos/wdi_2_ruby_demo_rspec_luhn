# [Luhn algorithm - Wikipedia](http://en.wikipedia.org/wiki/Luhn_algorithm)
Accessed: 2015-01-20 01:59

The formula verifies a number against its included check digit, which is usually appended to a partial account number to generate the full account number. This account number must pass the following test:

## Validity Test
1. From the rightmost digit, which is the check digit, moving left, double the value of every second digit; if the product of this doubling operation is greater than 9 (e.g., 8 × 2 = 16), then sum the digits of the products (e.g., 16: 1 + 6 = 7, 18: 1 + 8 = 9).
2. Take the sum of all the digits.
3. If the total modulo 10 is equal to 0 (if the total ends in zero) then the number is valid according to the Luhn formula; else it is not valid.

Assume an example of an account number "7992739871" that will have a check digit added, making it of the form 7992739871x.

## The Check Digit
The check digit (x) is obtained by computing the sum of digits then computing 9 times that value modulo 10 (in equation form, (67 × 9 mod 10)). In algorithm form:

1. Compute the sum of the digits (67).
2. Multiply by 9 (603).
3. The last digit, 3, is the check digit. Thus, **x=3**.

### Alternative Method
The check digit (x) is obtained by computing the sum of digits then subtracting the units digit from 10 (67 = Units digit 7; 10 − 7 = check digit 3). In algorithm form:

1. Compute the sum of the digits (67).
2. Take the units digit (7).
3. Subtract the units digit from 10.
4. The result (3) is the check digit. In case the sum of digits ends in 0, 0 is the check digit.

This, makes the full account number read 79927398713.

## Applying the Validity Test
Each of the numbers 79927398710, 79927398711, 79927398712, 79927398713, 79927398714, 79927398715, 79927398716, 79927398717, 79927398718, 79927398719 can be validated as follows.

1. Double every second digit, from the rightmost: (1×2) = 2, (8×2) = 16, (3×2) = 6, (2×2) = 4, (9×2) = 18
2. Sum all the _individual_ digits (digits in parentheses are the products from Step 1): x (the check digit) + (2) + 7 + (1+6) + 9 + (6) + 7 + (4) + 9 + (1+8) + 7 = x + 67.
3. If the sum is a multiple of 10, the account number is possibly valid. Note that **3** is the only valid digit that produces a sum (70) that is a multiple of 10.
4. Thus these account numbers are all invalid except possibly 79927398713 which has the correct check digit.

### Alternative Method
Alternately (if you don't want to confuse yourself by performing an algorithm on the whole number including the checksum digit), you can use the same checksum creation algorithm (mentioned a couple paragraphs up), ignoring the checksum already in place, as if it had not yet been calculated, and now you were calculating it for the first time. Then calculate the checksum and compare this calculated checksum to the original checksum included with the credit card number. If the included checksum matches the calculated checksum, then the number is valid.
