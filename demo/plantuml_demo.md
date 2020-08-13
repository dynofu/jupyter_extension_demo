```python
# https://mattjhayes.com/2019/08/17/diagrams-as-code-plantuml/
# https://pypi.org/project/IPlantUML/
```
```python
import iplantuml
```

```python
%%plantuml

@startuml
Alice -> Bob: Authentication Request
Bob --> Alice: Authentication Response
@enduml
```

```python
%%plantuml

' https://plantuml.com/activity-diagram-legacy

@startuml

(*) --> "Initialization"

if "Some Test" then
  -->[true] "Some Action"
  --> "Another Action"
  -right-> (*)
else
  ->[false] "Something else"
  -->[Ending process] (*)
endif

@enduml
```

```python
%%plantuml

' https://github.com/mattjhayes/PlantUML-Examples/tree/master/docs/Examples

@startuml
left to right direction

skinparam handwritten true
skinparam RectangleBackgroundColor red
skinparam ActorBorderColor black
skinparam ActorBackgroundColor white

caption Example of Cascading Failure in Tightly Coupling System

actor "Sad User" as user

rectangle "User Application\n(cascaded failure)" as user_app

rectangle "Component 1\n(cascaded failure)" as comp_1

together {
    rectangle "Component 2\n(original failure)" as comp_2
    rectangle "Component 3\n(working)" as comp_3 #LimeGreen
}

user -[#black]-> user_app
user_app -[#OrangeRed]-> comp_1 : tight\ncoupling
comp_1 -[#OrangeRed]-> comp_2 : tight\ncoupling
comp_1 -[#OrangeRed]-> comp_3 : tight\ncoupling
comp_2 .[#red]left.> comp_1 : failure\npropagation
comp_1 .[#red]left.> user_app : failure\npropagation
@enduml

' http://www.plantuml.com/plantuml/png/bPDFRnCn4CNlyob6oGKEhTJanW6rZO0B4b8BfmPLWprnh7h7rkoiGeNuxjW98KkLFVHcwVtUcp-pUzqRgGrTWiGRGykeCMmDVLHs5hC0z4zH2Ybrk2NnEurcB6Wwy4YwgpH9I7nBxYbe7iIlSigAodw4tJZBUflLinxa7wdoBu6N6RjjD0PmL5f7-E4dTIKnvWskg7VaemJyI34DoXW5lxO9qZEkyb1Iq-wVU-CEW5eupkx9uxUUTORKur0V07fi7sTDmPjIdOvQkRMySVigx75pAFBsd_EHIldFlSfToS9YU3LfT9Lvl0Am7DYshFWB417FfYngIjOOeb0waxAOTYwhSvUrRZQC34kSVuuTVr9cWTy0RGYyU9Zlx_3zulrfgkEZgL-qnlCT-qOSsiTtQ6tFQt5_rmm7uJo_U2M_dE8NUFamrqgsx_NorCrnEMifcWk5_UsE9SQMquXJfciMt_w8Fm00
    
```

[encoded graph link](http://www.plantuml.com/plantuml/png/bPDFRnCn4CNlyob6oGKEhTJanW6rZO0B4b8BfmPLWprnh7h7rkoiGeNuxjW98KkLFVHcwVtUcp-pUzqRgGrTWiGRGykeCMmDVLHs5hC0z4zH2Ybrk2NnEurcB6Wwy4YwgpH9I7nBxYbe7iIlSigAodw4tJZBUflLinxa7wdoBu6N6RjjD0PmL5f7-E4dTIKnvWskg7VaemJyI34DoXW5lxO9qZEkyb1Iq-wVU-CEW5eupkx9uxUUTORKur0V07fi7sTDmPjIdOvQkRMySVigx75pAFBsd_EHIldFlSfToS9YU3LfT9Lvl0Am7DYshFWB417FfYngIjOOeb0waxAOTYwhSvUrRZQC34kSVuuTVr9cWTy0RGYyU9Zlx_3zulrfgkEZgL-qnlCT-qOSsiTtQ6tFQt5_rmm7uJo_U2M_dE8NUFamrqgsx_NorCrnEMifcWk5_UsE9SQMquXJfciMt_w8Fm00)

```python

```
