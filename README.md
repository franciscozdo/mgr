# Effective copy-on-write mechanism for the Mimiker kernel

My master's thesis.

## Abstract

This thesis presents an implementation of the virtual memory subsystem in the Mimiker operating system.
It was created to enable the implementation of an efficient copy-on-write mechanism.
The described implementation is based on a solution called UVM derived from the NetBSD system.
Improvements in operating system memory management are particularly important, since memory is one of the most important resources in computer systems.
The performance of a system can be estimated by measuring two factors: the memory used and the time taken to execute individual functions.
This work also presents a performance analysis of the implemented solution.

## Polski abstrakt

Niniejsza praca przedstawia implementację systemu pamięci wirtualnej w systemie operacyjnym Mimiker.
Została ona stworzona, aby umożliwić zaimplementowanie efektywnego mechanizmu copy-on-write.
Opisana implementacja jest oparta na rozwiązaniu o nazwie UVM pochodzącym z systemu NetBSD.
Usprawnienia w zakresie zarządzania pamięcią systemu operacyjnego są szczególnie ważne, ponieważ pamięć jest jednym z najważniejszych zasobów w systemach komputerowych.
Wydajność systemu można oszacować mierząc dwa czynniki: użytą pamięć oraz czas wykonywania poszczególnych funkcji.
W tej pracy jest również przedstawiona analiza wydajności zaimplementowanego rozwiązania.
