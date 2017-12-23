let individualScores = [75, 43, 103, 81, 2]
var teamScore = 0

/* if statement, the conditional must be a Boolean expression */
for score in individualScores {
	if score > 50 {
		teamScore += 3
	} else {
		teamScore += 1
	}
}
print(teamScore)
