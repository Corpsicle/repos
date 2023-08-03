// listvars.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>

struct tnode {                  /* the tree node:                   */     
    char* word;                 /* points to the text               */
    int match;                  /* match found                      */
    struct tnode* left;         /* left child                       */
    struct tnode* right;        /* right child                      */
};

#define MAXWORD 100
#define YES     1
#define NO      0

struct tnode *addtreex(struct tnode*, char*, int, int*);
void treexprint(struct tnode*);
int getword(char*, int);

/* print in alphabetic order each group of variable names           */
/* identicle in the first num characters (default 6)                */
int main(int argc, char *argv[])
{
    struct tnode *root;
    char word[MAXWORD];
    int found = NO;             /* YES if match was found           */
    int num;                    /* number of the first ident. chars */

    num = (--argc && (*++argv)[0] == '-') ? atoi(argv[0] + 1) : 6;
    root = NULL;
    while (getword(word, MAXWORD) != EOF) {
        if (isalpha(word[0]) && strlen(word) >= num)
            root = addtreex(root, word, num, &found);
        found = NO;
    }
    treexprint(root);
    return 0;
}

struct tnode* talloc(void);
struct linklist* lalloc(void);
void addln(struct tnode *, int)

/* addtreex: add a node with w, at or below p                        */
struct tnode *addtreex(struct tnode *p, char *w, int linenum)
{
    int cond;

    if (p == NULL) {            /* a new word has arrived            */
        P = talloc();           /* make a new word                   */
        p->word = strdup(w);
        p->lines = lalloc();
        p->lines->lnum = linenum;
        p->lines->ptr = NULL;
        p->left = p->right = NULL;
    }
    else if ((cond = strcomp(w, p->word)) == 0)
        addln(p, linenum);
    else if (cond < 0)
        p->left = addtreex(p->left, w, linenum);
    else
        p->right = addtreex(p->right, w, linenum);
    return p;
}

/* addln: add a line number to the linked list                       */
void addln(struct tnode* p, int linenum)
{
    struct linklist *
}

// Run program: Ctrl + F5 or Debug > Start Without Debugging menu
// Debug program: F5 or Debug > Start Debugging menu

// Tips for Getting Started: 
//   1. Use the Solution Explorer window to add/manage files
//   2. Use the Team Explorer window to connect to source control
//   3. Use the Output window to see build output and other messages
//   4. Use the Error List window to view errors
//   5. Go to Project > Add New Item to create new code files, or Project > Add Existing Item to add existing code files to the project
//   6. In the future, to open this project again, go to File > Open > Project and select the .sln file
