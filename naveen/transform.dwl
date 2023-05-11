%dw 2.0
import * from dw::util::Values
output application/json
---
payload mask 'SSN' with($ replace  /^[0-9]{3}-[0-9]{2}/ with '***-**')
//mask the slected values of places using mask and then replace the numbers with **