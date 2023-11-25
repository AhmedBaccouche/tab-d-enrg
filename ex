//c'estun programme qui permet de saisir un tableau d'enregistrement
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
struct etudiant{
  char* nom;
  char* prn;
  int age;
  int cin;
};
typedef struct etudiant student;
int main() {
    int n;
    student* E;
    printf("donner le nbre des etudiants : ");
    scanf("%d",&n);
    E=(student*)malloc(n*sizeof(student));
    if(E==NULL){
        printf("ERREUR");
        return 0;
    }
    for(int i=0;i<n;i++){
        E[i].nom=(char*)malloc(sizeof(char)*20);
        if(E[i].nom==NULL){
            for(int j=0;j<i;j++){
                if(E[j].nom!=NULL){
                    free(E[j].nom);
                }
                if(E[j].prn!=NULL){
                    free(E[j].prn);
                }
            }
            if(E!=NULL){
                free(E);
            }
            return 0;
        }
        printf("donner le nom : ");
        gets(E[i].nom);
        E[i].prn=(char*)malloc(sizeof(char)*20);
        if(E[i].prn==NULL){
            for(int j=0;j<=i;j++){
                if(E[j].nom!=NULL){
                    free(E[j].nom);
                }
                if(E[j].prn!=NULL){
                    free(E[j].prn);
                }
            }
            if(E!=NULL){
                free(E);
            }
            return 0;
        }
        printf("donner le prenom : ");
        gets(E[i].prn);
        printf("donner l'age : ");
        scanf("%d",&E[i].age);
        printf("donner la cin : ");
        scanf("%d",&E[i].cin);
    }
    printf("la liste des etudiants : \n");
    for(int i=0;i<n;i++){
        printf("%s %s a %d ans et de cin %d\n",E[i].nom,E[i].prn,E[i].age,E[i].cin);
    }
    if(E!=NULL){
        for(int i=0;i<n;i++){
            if(E[i].nom!=NULL){
                    free(E[i].nom);
                }
                if(E[i].prn!=NULL){
                    free(E[i].prn);
                }
        }
        free(E);
    }
    return 0;
}
