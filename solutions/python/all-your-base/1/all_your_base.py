def rebase(input_base, digits, output_base):
    if not input_base >= 2:
        raise ValueError("input base must be >= 2")
    if not output_base >= 2:
        raise ValueError("output base must be >= 2")

    value = 0
    for (i, digit) in enumerate(reversed(digits)):
        if not 0 <= digit < input_base:
            raise ValueError("all digits must satisfy 0 <= d < input base")
        value += digit * pow(input_base, i)

    output = []
    while value > 0:
        output.append(value % output_base)
        value //= output_base
    if len(output) == 0:
        output.append(0)

    output.reverse()
    return output
