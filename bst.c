//
// Created by tamaki on 2018/11/11.
//
// ====== this is in bst.c
#include <stdio.h>
#include <stdlib.h>
#include "bst.h"
// Input: ’size’: size of an array
// Output: a pointer of type BStree,
// i.e. a pointer to an allocated memory of BStree_struct type
// Effect: dynamically allocate memory of type BStree_struct
// allocate memory for a Node array of size+1 for member tree_nodes
// allocate memory for an unsigned char array of size+1 for member is_free
// set all entries of is_free to 1
// set member size to ’size’;
BStree bstree_ini(int size) {
    BStree bst = (BStree) malloc(sizeof(BStree_struct));
    (*bst).tree_nodes = (Node *) malloc((size+1)*sizeof(int));
    (*bst).is_free = (unsigned char *) malloc((size+1)*sizeof(char));
    int i;
    for(i=0;i<size+1;i++) {
        (*bst).is_free[i] = '1';
    }
    (*bst).size = size;
    return bst;

}
// Input:
// ’bst’: a binary search tree
// ’key’: a pointer to Key
// ’data’: an integer
// Effect: ’data’ with ’key’ is inserted into ’bst’
// if ’key’ is already in ’bst’, do nothing
void bstree_insert(BStree bst, Key *key, int data) {
    int i=getIndex(bst,key);
    if(i >= (*bst).size) {
        printf("out of bound\n");
    }
    else if(bst->is_free[1] == '1') {
        bst->tree_nodes[i].key = key;
        bst->tree_nodes[i].data = data;
        bst->is_free[i] = '0';
    }
    else if((*bst).is_free[i] == '1') {
        (*bst).tree_nodes[i].key = key;
        (*bst).tree_nodes[i].data = data;
        (*bst).is_free[i] = '0';
    }
    else{
        if(key_comp(key[i], key[i+1]) >0){
            bstree_insert(bst,&key[i+1],data);
            bstree_insert(bst,&key[i],data);
        }
        else{
            bstree_insert(bst,&key[i],data);
            bstree_insert(bst,&key[i+1],data);
        }
    }
}
// Input: ’bst’: a binary search tree
// Effect: print all the nodes in bst using in order traversal
void bstree_traversal(BStree bst) {
print_node(*bst->tree_nodes);
}
// Input: ’bst’: a binary search tree
// Effect: all memory used by bst are freed
void bstree_free(BStree bst) {
    free((*bst).tree_nodes);
    free((*bst).is_free);
    free(bst);
}
int getIndex(BStree bst,Key *key){
//    int index;
//    for(index = 1;index<(*bst).size;) {
//        if (key_comp(key[index], key[index+1]) > 0) {
//            index *=2;
//        }
//        if(key_comp(key[index], key[index+1]) > 0){
//            index = 2*index+1;
//        }
//        else{
//            index = index;
//        }
//        return index;
//    }
int index,label=1;
for(index=1;index<(*bst).size;index++){
    if((*bst).is_free[index]!='1'){
        if(key_comp(*key,*((*bst).tree_nodes[index].key))>0){
            index=index*2+1;
        }
        if(key_comp(*key,*((*bst).tree_nodes[index].key))<0){
            index=index*2;
        }
    }
    else if((*bst).is_free[index]=='1'){
        label=index;
    }
}
    return label;
}
int main() {
    BStree bst;
    bst = bstree_ini(1000);
    bstree_insert(bst, key_construct("Once", 1), 11);
    print_node((*bst).tree_nodes[1]);
//    bstree_insert(bst, key_construct("Upon", 22), 2);
//    bstree_insert(bst, key_construct("a", 3), 33);
//    bstree_insert(bst, key_construct("Time", 4), 44);
//    bstree_insert(bst, key_construct("is", 5), 55);
//    bstree_insert(bst, key_construct("filmed", 6), 66);
//    bstree_insert(bst, key_construct("in", 7), 77);
//    bstree_insert(bst, key_construct("Vancouver", 8), 88);
//    bstree_insert(bst, key_construct("!", 99), 9);
//    bstree_insert(bst, key_construct("Once", 5), 50);
//    bstree_insert(bst, key_construct("Once", 1), 10);
//    bstree_traversal(bst);
//    bstree_free(bst);
}