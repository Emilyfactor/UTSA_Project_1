deal.sh                                                                                                

 #!/bin/bash
awk '{print $1, $2, $3, $4, $5}' Dealer_working_during_losses | grep -i '5:00:00\ am' 
awk '{print $1, $2, $3, $4, $5}' Dealer_working_during_losses | grep -i '8:00:00\ am'
awk '{print $1, $2, $3, $4, $5}' Dealer_working_during_losses | grep -i '2:00:00\ pm'
awk '{print $1, $2, $3, $4, $5}' Dealer_working_during_losses | grep -i '8:00:00\ pm'
awk '{print $1, $2, $3, $4, $5}' Dealer_working_during_losses | grep -i '11:00:00\ pm'

