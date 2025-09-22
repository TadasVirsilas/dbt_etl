# dbt Package - String Tools

This dbt package contains useful string manipulation macros for your dbt projects.

## Macros

### hello_world

A simple macro that returns a greeting message.

#### Usage

```sql
-- Basic usage - returns "Hello, World! Welcome to dbt!"
select {{ hello_world() }} as greeting

-- With a name parameter - returns "Hello, [name]! Welcome to dbt!"
select {{ hello_world('Alice') }} as greeting
```

#### Parameters

- `name` (optional): A string value to personalize the greeting. If not provided, defaults to "World".

#### Examples

```sql
-- Example 1: Default greeting
select {{ hello_world() }} as greeting
-- Result: "Hello, World! Welcome to dbt!"

-- Example 2: Personalized greeting
select {{ hello_world('John') }} as greeting  
-- Result: "Hello, John! Welcome to dbt!"

-- Example 3: Using in a model
select 
    customer_id,
    customer_name,
    {{ hello_world('customer_name') }} as welcome_message
from {{ ref('customers') }}
```

### title_case

Converts the first character of a string to uppercase and the rest to lowercase.

#### Usage

```sql
select {{ title_case('column_name') }} as formatted_name
```

#### Parameters

- `input_str`: The string or column to format

#### Example

```sql
select {{ title_case("'hello world'") }} as formatted_text
-- Result: "Hello world"
```

## Installation

1. Add this package to your `packages.yml` file:
```yaml
packages:
  - local: path/to/this/package
```

2. Run `dbt deps` to install the package

3. Use the macros in your models as shown in the examples above

## Contributing

Feel free to add more string manipulation macros to the `macros/string_tools.sql` file.