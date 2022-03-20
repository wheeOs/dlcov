## DLCOV - CLI to verify code coverage threshold (CI/CD, git hooks, etc.)

### Usage Example
`dlcov --coverage=80 --include-untested-files=true --lcov-gen="flutter test --coverage" --log=true`

#### The command above does:
- `--coverage=80` Check if code coverage threshold is equal or greater than 80.0%
- `--include-untested-files=true` Generate references to untested files (defalt equals "false")
- `--lcov-gen="flutter test --coverage"` Generate `lcov.info` through the command "flutter test --coverage", it can be used with "test_cov" for dart only for example, or others if you prefer.
- `--log=true` Log every test coverage info in dlcov.log - Limit up to 1000 lines

### Install
`pub global activate dlcov`
or add as dev dependency to `pubspec.yaml`

```yaml
dev_dependencies:
  dlcov: 4.0.1
```

#### Uses
`dlcov`, `pub run dlcov` or `pub global run dlcov`  
<br/>


#### Verify if code coverage threshold is equal or greater than 80.0%
`dlcov gen-refs && flutter test --coverage && dlcov -c 80`  
`dlcov -c 80 --lcov-gen="flutter test --coverage" --include-untested-files=true`  
`dlcov -c 80 --lcov-gen="test_cov" --include-untested-files=true`  

## Parameters availables
| Long | Short | Mandatory | Default | Sample | Description |
|---|---|---|---|---|---|
| --coverage | -c | false | 0 | 80.0 | min coverage threshold |
| --log | -l | false | false | true | Log every test coverage info in dlcov.log  - Limit up to 1000 lines |
| --exclude-suffix | -e | false | .g.dart,.freezed.dart | .g.dart | Remove generated or other files from test coverage results, separated by commas |
| --include-untested-files |  | false | false | true | Get reports more coherent with reality, and do not ignore untested files during the analysis |
| --lcov-gen |  | false |  | "flutter test --coverage" | Generate `lcov.info` through the command "flutter test --coverage", it can be used with "test_cov" for dart only for example, or others if you prefer |

| Command | Description |
|---|---|
| gen-refs | Generate tested and untested file references, it should be used before `lcov.info` file generation step.|

### Github actions

if the test coverage is less than 80, it stop the pipeline here, and abort the actions

![Screen Shot 2022-03-20 at 01 49 51](https://user-images.githubusercontent.com/3827308/159148726-41169935-54b8-42a2-9dbf-4f29a570a0fb.png)

