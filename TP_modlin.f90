MODULE lineaire
  
IMPLICIT NONE
  
CONTAINS


! Resolution d'un systeme triangulaire inf�rieur Ly=b
  ! TP2_mod_lin.f90


!SUBROUTINE descente(L,b,y)
  

! A FAIRE  
  ! 


!END SUBROUTINE descente


  




! Proc�dure de remont�e (r�solution de Ux = y)

! A FAIRE



! Proc�dure de factorisation LU (r�solution de A x = b)

! A FAIRE



! Proc�dure de factorisation de Cholesky (r�solution de L L^T = b)
! pour une matrice sym�trique d�finie positive


! A FAIRE



! Affichage d'une matrice A de dimensions nl x nc
  

SUBROUTINE affiche (M)
    

REAL, DIMENSION (:, :), INTENT(IN)	:: M
    
INTEGER 		:: i, j, nl, nc 
    

nl = SIZE(M,1)
    
nc = SIZE(M,2)  
    
DO i=1, nl
     
WRITE (*,fmt='(30E12.4)') (M(i,j), j=1, nc)
    
END DO
    
PRINT *
  
END SUBROUTINE affiche

  ! Affichage sur une ligne d'un vecteur x de dimension n
  

SUBROUTINE affiche_vec (x)
    
REAL, DIMENSION (:), INTENT(IN)	:: x
    
INTEGER 		:: i,n
    
n = SIZE(x)
    
WRITE (*,fmt='(30E12.4)') (x(i), i=1, n)
    
PRINT *
  
END SUBROUTINE affiche_vec




END MODULE lineaire
