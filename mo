Status ListInsert(LinkList &L,int i,ElemType e)//单链表的插入111111
{//在头节点的单链表L中第i个位置插入值为e的新结点
   p=L;j=0;
   while(p&&(j<i-1))
      {p=p->next;j++;}              //查找第i-1个结点，p指向该结点
   if(!p||j>i-1) return error;      //i>n+1或者i<1
   s=new LNode;                     //生成新结点*s
   s->data=e;                       //将新结点*s的数据域置为e 
   s->next=p->next;                 //将结点*s的指针域指向结点ai
   p->next=s;                       //将结点*p的指针域指向结点*s   
   retyrn OK;
}//单链表的插入


Status ListDelete(LinkList &L,int i）//单链表的删除222222
{//将带头节点的单链表L中，删除第i个元素
   p=L；j=0
   while（（p->next）&&(j<i-1)      //查找第i-1个结点，p指向该结点
        {p=p->next;j++;}               
        if(!(p->next)||(j>i-1)) 
        return error;               //当i>n或i<1时，删除位置不合理
        q=p->next;                  //临时保存被删结点的地址以备释放  
        p->next=q->next;            //改变删除结点前驱节点的指针域
        delete q;                   释放删除结点的空间 
        return OK;
 }//单链表的删除
 
 
 Status EnQueue（SqQueue &Q，QElemType e）//入队333333
 {
    if((Q.rear+1)%MAXSIZE==Q.front)
    return error;
    Q.base[Q.rear]=e;
    Q.rear=(Q.rear+1)%MAXSIZE;
    return OK;
 }//入队
 
 
 Status DeQueue（SqQueue &Q，QElemType &e）//出队444444
 {
    if(Q.front==Q.rear) 
    return error;
    e=Q.base[Q.front];
    Q.front=(Q.front+1)%MAXSIZE;
    return OK;
 }//出队
 
 
 void InOrderTraverse(BiTree T)//中序遍历二叉树的递归算法555555
 {
    if(T)
    {
      InOrderTraverse(T->lchild);
      cout<<T->data;
      InOrderTraverse(T->rchild);
    }
  }//中序遍历二叉树的递归算法
  
  
  int Depth(BiTree T)//计算二叉树的深度666666
  {
      if(T==NULL) return 0;
      else
      {
        m=Depth(T->lchild);
        n=Depth(T->rchild);
        if(m>n) return(m+1);
        else return(n+1);
      }
   }//计算二叉树的深度
   
   
   int NodeCount(BiTree T)//统计二叉树T中结点的个数777777
   {
      if(T==NULL) return 0;
      else return NodeCount(T->lchild)+NodeCount(T->rchild)+1;
   }//统计二叉树T中结点的个数
   
   
   void InsertSort(Sqlist &L)//插入排序888888
   {
      for(i=2;i<=L.length;i++)
          if(L.r[i].key<L.r[i-1].key)
          {
            L.r[0]=L.r[i];
            L.r[i]=L.r[i-1];
            for(j=i-2;L.r[0].key<L.r[j].key);j--)
              L.r[j+1]=L.r[j];
            L.r[j+1]=L.r[0];
           }
    }//插入排序
    
    
    void BubbleSort(Sqlist &L)//冒泡排序999999
    {
       m=L.length-1;flag=1;
       while((m>0)&&(flag==1))
       {
         flag=0;
         for(j=1;j<=m;j++)
           if(L.r[j].key>L.e[j+1].key)
           {
              flag=1;
              t=L;L.r[j]=L.r[j+1];L.r[j+1]=t;
            }
            --m;
        }
     }//冒泡排序
     
     
      void SelectSort(Sqlist &L)//选择排序10 10 10 10 10 10 
      {
          for(i=1;i<L.length;i++){
            k=i;
            for(j=i+1;j<L.length;j++)
              if(L.r[j].key<L.r[k].key) k=j;
            if(k!=i)
              {t=L.r[i]; L.r[i]=L.r[k]; L.r[k]=t;}
            }
       }//选择排序
