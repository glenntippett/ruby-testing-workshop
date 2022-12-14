# Ruby Testing Workshop

## Versions used in this repo

```bash
ruby v 3.1.2
rspec v 3.11.0
```

## Set up a Ruby project for testing

1. Create new project directory

```bash
mkdir cool-project
cd cool-project
```

2. Initialize Gemfile

```bash
bundle init
```

This creates a new `Gemfile` to install packages

3. Install Rspec
   \
   (You may have it installed globally but the person testing may not)\
   Open the Gemfile add add `rspec`

```ruby
gem 'rspec'
```

```bash
bundle install
```

4. Initialize Rspec (not mandatory)

```bash
rspec --init
```

This will create a `spec/` directory with a file called `spec_helper.rb`\
The helper file has some handy information for testing but it should be deleted
before submitting your code to an interviewer/hirer.

5. Create entry file

```bash
touch app.rb
```

6. Create a method to test

```ruby
def summation(a, b)
  a + b
end
```

7. Create a test file

```bash
touch spec/app_spec.rb
```

8. Write a test

```ruby
require_relative '../app'

describe 'summation' do
  it 'should return the sum of two numbers' do
    expect(summation(1, 2)).to eq(3)
  end

  it 'should not return the wrong sum' do
    expect(summation(1, 2)).not_to eq(4)
  end
end
```

9. Run the test

```bash
rspec
```

### Handy links

[`The Definitive RSpec Tutorial With Examples`](https://www.rubyguides.com/2018/07/rspec-tutorial/)
