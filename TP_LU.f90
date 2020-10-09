PROGRAM lu
  
USE lineaire
  
IMPLICIT NONE
 
 

! D�claration des variables : A COMPLETER POUR LES AUTRES SYSTEMES
 
INTEGER					:: n = 3
  
REAL, DIMENSION(:,:), ALLOCATABLE 	:: L
REAL, DIMENSION(:), ALLOCATABLE 	:: b, y


! Allocation dynamique de m�moire pour la matrice L et le vecteur b :
! A FAIRE EGALEMENT POUR LES AUTRES SYSTEMES   

ALLOCATE (L(n,n))
  
ALLOCATE (b(n), y(n))
  
  

PRINT *,'Tests descente / remontee'
  
  ! Test descente
  

! D�finition de la matrice L : exemple d'utilisation d'un constructeur + fonction RESHAPE

L(:,:)=RESHAPE((/1.,2.,3.,0.,4.,5.,0.,0.,6./),(/n,n/))
  

! Affichage de la matrice L 
PRINT *,' matrice L '
  

CALL affiche(L)
  

! D�finition du second membre b : exemple d'utilisation d'un constructeur 

b=(/1.,-6.,11./)
  

! Affichage du second membre b
PRINT *,' second membre b '
  

CALL affiche_vec(b)
   


! subroutine descente a faire


!CALL descente(L,b,y)  

  

PRINT *,' vecteur y '
  

!CALL affiche_vec(y)

  

! Test remontee
  

! DEFINITION DE LA MATRICE U ET DU VECTEUR SECOND MEMBRE b : A FAIRE


! APPEL DE PROCEDURE POUR LA REMONTEE ET AFFICHAGE DE LA SOLUTION : A FAIRE 
  
  


! Resolution Ax=b par factorisation LU
  

! DEFINITION DE LA MATRICE A ET DU VECTEUR SECOND MEMBRE b : A FAIRE
! UTILISER A et b de la section 2.1 du TD 2 (M�thodes Directes, Conditionnement) 

! APPEL DES PROCEDURES POUR LA FACTORISATION LU ET AFFICHAGE DE LA SOLUTION : A FAIRE  


! D�sallocation des matrices et second membre allou�s dynamiquement : A COMPLETER

DEALLOCATE (L)
  

DEALLOCATE (b, y)
 


END PROGRAM lu
