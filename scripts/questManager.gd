extends Node

var Cases: Dictionary = {
	"CASE01":{
		"CaseName": "Till Death do us Part",
		"CurrentStage": 0,
		"CaseDesc": {
			"0": "Reverend Adevu has asked you to investigate the noises in The Apartment Building",
			"1": "The noises are coming from apartment 28. That's the Boampong's Apartment",
			"2": "Investigate Apartment 28.",
			"3": "There are signs of a murder it the Apartment. Could it be a Ghost? Search for Clues!",
			"4": "The signs point to a ritualistic murder. I should ask the priest what happened to the Boampongs",
			"5": "Mr Boampong killed his wife Lydia and sacrificed her for money due to his Loan debt."
			
		}
	}
}

var ActiveCase: Dictionary = {}
var CompletedQuests: Array = []

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func addCase(caseID: String):
	if caseID in Cases.keys():
		ActiveCase[caseID] = Cases[caseID]

func advQuest(caseID: String):
	ActiveCase[caseID]["CurrentStage"] += 1
	var currentStage: String = str(ActiveCase[caseID]["CurrentStage"])
	if currentStage in ActiveCase[caseID]["CaseDesc"].keys():
		print(ActiveCase[caseID]["CaseDesc"])
	else:
		completeCase(caseID)
		
		
func completeCase(caseID: String):
	CompletedQuests.append(Cases[caseID]["CaseName"])
	ActiveCase.erase(caseID)
	printt("Case Solved", CompletedQuests)
	
