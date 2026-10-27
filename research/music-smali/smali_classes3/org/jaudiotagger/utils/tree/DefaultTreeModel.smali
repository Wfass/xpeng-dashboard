.class public Lorg/jaudiotagger/utils/tree/DefaultTreeModel;
.super Ljava/lang/Object;
.source "DefaultTreeModel.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/jaudiotagger/utils/tree/TreeModel;


# instance fields
.field protected asksAllowsChildren:Z

.field protected listenerList:Lorg/jaudiotagger/utils/tree/EventListenerList;

.field protected root:Lorg/jaudiotagger/utils/tree/TreeNode;


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/utils/tree/TreeNode;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;-><init>(Lorg/jaudiotagger/utils/tree/TreeNode;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/utils/tree/TreeNode;Z)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lorg/jaudiotagger/utils/tree/EventListenerList;

    invoke-direct {v0}, Lorg/jaudiotagger/utils/tree/EventListenerList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/utils/tree/EventListenerList;

    .line 84
    iput-object p1, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->root:Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 85
    iput-boolean p2, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->asksAllowsChildren:Z

    return-void
.end method

.method private fireTreeStructureChanged(Ljava/lang/Object;Lorg/jaudiotagger/utils/tree/TreePath;)V
    .locals 5

    .line 581
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/utils/tree/EventListenerList;

    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v0

    .line 585
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_2

    .line 586
    aget-object v3, v0, v1

    const-class v4, Lorg/jaudiotagger/utils/tree/TreeModelListener;

    if-ne v3, v4, :cond_1

    if-nez v2, :cond_0

    .line 589
    new-instance v2, Lorg/jaudiotagger/utils/tree/TreeModelEvent;

    invoke-direct {v2, p1, p2}, Lorg/jaudiotagger/utils/tree/TreeModelEvent;-><init>(Ljava/lang/Object;Lorg/jaudiotagger/utils/tree/TreePath;)V

    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 590
    aget-object v3, v0, v3

    check-cast v3, Lorg/jaudiotagger/utils/tree/TreeModelListener;

    invoke-interface {v3, v2}, Lorg/jaudiotagger/utils/tree/TreeModelListener;->treeStructureChanged(Lorg/jaudiotagger/utils/tree/TreeModelEvent;)V

    :cond_1
    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .line 650
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 652
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Vector;

    .line 654
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 656
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "root"

    .line 657
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 658
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/utils/tree/TreeNode;

    iput-object p1, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->root:Lorg/jaudiotagger/utils/tree/TreeNode;

    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    .line 637
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 639
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 641
    iget-object v1, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->root:Lorg/jaudiotagger/utils/tree/TreeNode;

    if-eqz v1, :cond_0

    instance-of v1, v1, Ljava/io/Serializable;

    if-eqz v1, :cond_0

    const-string v1, "root"

    .line 642
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 643
    iget-object v1, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->root:Lorg/jaudiotagger/utils/tree/TreeNode;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 645
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addTreeModelListener(Lorg/jaudiotagger/utils/tree/TreeModelListener;)V
    .locals 2

    .line 414
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/utils/tree/EventListenerList;

    const-class v1, Lorg/jaudiotagger/utils/tree/TreeModelListener;

    invoke-virtual {v0, v1, p1}, Lorg/jaudiotagger/utils/tree/EventListenerList;->add(Ljava/lang/Class;Ljava/util/EventListener;)V

    return-void
.end method

.method public asksAllowsChildren()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->asksAllowsChildren:Z

    return v0
.end method

.method protected fireTreeNodesChanged(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V
    .locals 5

    .line 461
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/utils/tree/EventListenerList;

    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v0

    .line 465
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_2

    .line 466
    aget-object v3, v0, v1

    const-class v4, Lorg/jaudiotagger/utils/tree/TreeModelListener;

    if-ne v3, v4, :cond_1

    if-nez v2, :cond_0

    .line 469
    new-instance v2, Lorg/jaudiotagger/utils/tree/TreeModelEvent;

    invoke-direct {v2, p1, p2, p3, p4}, Lorg/jaudiotagger/utils/tree/TreeModelEvent;-><init>(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 471
    aget-object v3, v0, v3

    check-cast v3, Lorg/jaudiotagger/utils/tree/TreeModelListener;

    invoke-interface {v3, v2}, Lorg/jaudiotagger/utils/tree/TreeModelListener;->treeNodesChanged(Lorg/jaudiotagger/utils/tree/TreeModelEvent;)V

    :cond_1
    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected fireTreeNodesInserted(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V
    .locals 5

    .line 492
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/utils/tree/EventListenerList;

    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v0

    .line 496
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_2

    .line 497
    aget-object v3, v0, v1

    const-class v4, Lorg/jaudiotagger/utils/tree/TreeModelListener;

    if-ne v3, v4, :cond_1

    if-nez v2, :cond_0

    .line 500
    new-instance v2, Lorg/jaudiotagger/utils/tree/TreeModelEvent;

    invoke-direct {v2, p1, p2, p3, p4}, Lorg/jaudiotagger/utils/tree/TreeModelEvent;-><init>(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 502
    aget-object v3, v0, v3

    check-cast v3, Lorg/jaudiotagger/utils/tree/TreeModelListener;

    invoke-interface {v3, v2}, Lorg/jaudiotagger/utils/tree/TreeModelListener;->treeNodesInserted(Lorg/jaudiotagger/utils/tree/TreeModelEvent;)V

    :cond_1
    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected fireTreeNodesRemoved(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V
    .locals 5

    .line 523
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/utils/tree/EventListenerList;

    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v0

    .line 527
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_2

    .line 528
    aget-object v3, v0, v1

    const-class v4, Lorg/jaudiotagger/utils/tree/TreeModelListener;

    if-ne v3, v4, :cond_1

    if-nez v2, :cond_0

    .line 531
    new-instance v2, Lorg/jaudiotagger/utils/tree/TreeModelEvent;

    invoke-direct {v2, p1, p2, p3, p4}, Lorg/jaudiotagger/utils/tree/TreeModelEvent;-><init>(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 533
    aget-object v3, v0, v3

    check-cast v3, Lorg/jaudiotagger/utils/tree/TreeModelListener;

    invoke-interface {v3, v2}, Lorg/jaudiotagger/utils/tree/TreeModelListener;->treeNodesRemoved(Lorg/jaudiotagger/utils/tree/TreeModelEvent;)V

    :cond_1
    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected fireTreeStructureChanged(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V
    .locals 5

    .line 554
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/utils/tree/EventListenerList;

    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v0

    .line 558
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_2

    .line 559
    aget-object v3, v0, v1

    const-class v4, Lorg/jaudiotagger/utils/tree/TreeModelListener;

    if-ne v3, v4, :cond_1

    if-nez v2, :cond_0

    .line 562
    new-instance v2, Lorg/jaudiotagger/utils/tree/TreeModelEvent;

    invoke-direct {v2, p1, p2, p3, p4}, Lorg/jaudiotagger/utils/tree/TreeModelEvent;-><init>(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 564
    aget-object v3, v0, v3

    check-cast v3, Lorg/jaudiotagger/utils/tree/TreeModelListener;

    invoke-interface {v3, v2}, Lorg/jaudiotagger/utils/tree/TreeModelListener;->treeStructureChanged(Lorg/jaudiotagger/utils/tree/TreeModelEvent;)V

    :cond_1
    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 159
    check-cast p1, Lorg/jaudiotagger/utils/tree/TreeNode;

    invoke-interface {p1, p2}, Lorg/jaudiotagger/utils/tree/TreeNode;->getChildAt(I)Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount(Ljava/lang/Object;)I
    .locals 0

    .line 171
    check-cast p1, Lorg/jaudiotagger/utils/tree/TreeNode;

    invoke-interface {p1}, Lorg/jaudiotagger/utils/tree/TreeNode;->getChildCount()I

    move-result p1

    return p1
.end method

.method public getIndexOfChild(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    check-cast p1, Lorg/jaudiotagger/utils/tree/TreeNode;

    check-cast p2, Lorg/jaudiotagger/utils/tree/TreeNode;

    invoke-interface {p1, p2}, Lorg/jaudiotagger/utils/tree/TreeNode;->getIndex(Lorg/jaudiotagger/utils/tree/TreeNode;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 632
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/utils/tree/EventListenerList;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/utils/tree/EventListenerList;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object p1

    return-object p1
.end method

.method public getPathToRoot(Lorg/jaudiotagger/utils/tree/TreeNode;)[Lorg/jaudiotagger/utils/tree/TreeNode;
    .locals 1

    const/4 v0, 0x0

    .line 363
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->getPathToRoot(Lorg/jaudiotagger/utils/tree/TreeNode;I)[Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object p1

    return-object p1
.end method

.method protected getPathToRoot(Lorg/jaudiotagger/utils/tree/TreeNode;I)[Lorg/jaudiotagger/utils/tree/TreeNode;
    .locals 2

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 390
    :cond_0
    new-array p1, p2, [Lorg/jaudiotagger/utils/tree/TreeNode;

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 394
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->root:Lorg/jaudiotagger/utils/tree/TreeNode;

    if-ne p1, v0, :cond_2

    .line 395
    new-array v0, p2, [Lorg/jaudiotagger/utils/tree/TreeNode;

    goto :goto_0

    .line 397
    :cond_2
    invoke-interface {p1}, Lorg/jaudiotagger/utils/tree/TreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->getPathToRoot(Lorg/jaudiotagger/utils/tree/TreeNode;I)[Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    .line 398
    :goto_0
    array-length v1, v0

    sub-int/2addr v1, p2

    aput-object p1, v0, v1

    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public getRoot()Ljava/lang/Object;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->root:Lorg/jaudiotagger/utils/tree/TreeNode;

    return-object v0
.end method

.method public getTreeModelListeners()[Lorg/jaudiotagger/utils/tree/TreeModelListener;
    .locals 2

    .line 441
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/utils/tree/EventListenerList;

    const-class v1, Lorg/jaudiotagger/utils/tree/TreeModelListener;

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/utils/tree/EventListenerList;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/utils/tree/TreeModelListener;

    check-cast v0, [Lorg/jaudiotagger/utils/tree/TreeModelListener;

    return-object v0
.end method

.method public insertNodeInto(Lorg/jaudiotagger/utils/tree/MutableTreeNode;Lorg/jaudiotagger/utils/tree/MutableTreeNode;I)V
    .locals 1

    .line 221
    invoke-interface {p2, p1, p3}, Lorg/jaudiotagger/utils/tree/MutableTreeNode;->insert(Lorg/jaudiotagger/utils/tree/MutableTreeNode;I)V

    const/4 p1, 0x1

    .line 223
    new-array p1, p1, [I

    const/4 v0, 0x0

    aput p3, p1, v0

    .line 226
    invoke-virtual {p0, p2, p1}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->nodesWereInserted(Lorg/jaudiotagger/utils/tree/TreeNode;[I)V

    return-void
.end method

.method public isLeaf(Ljava/lang/Object;)Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->asksAllowsChildren:Z

    if-eqz v0, :cond_0

    .line 187
    check-cast p1, Lorg/jaudiotagger/utils/tree/TreeNode;

    invoke-interface {p1}, Lorg/jaudiotagger/utils/tree/TreeNode;->getAllowsChildren()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 188
    :cond_0
    check-cast p1, Lorg/jaudiotagger/utils/tree/TreeNode;

    invoke-interface {p1}, Lorg/jaudiotagger/utils/tree/TreeNode;->isLeaf()Z

    move-result p1

    return p1
.end method

.method public nodeChanged(Lorg/jaudiotagger/utils/tree/TreeNode;)V
    .locals 3

    .line 255
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/utils/tree/EventListenerList;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 256
    invoke-interface {p1}, Lorg/jaudiotagger/utils/tree/TreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    invoke-interface {v0, p1}, Lorg/jaudiotagger/utils/tree/TreeNode;->getIndex(Lorg/jaudiotagger/utils/tree/TreeNode;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x1

    .line 261
    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 264
    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->nodesChanged(Lorg/jaudiotagger/utils/tree/TreeNode;[I)V

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->getRoot()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    .line 268
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->nodesChanged(Lorg/jaudiotagger/utils/tree/TreeNode;[I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public nodeStructureChanged(Lorg/jaudiotagger/utils/tree/TreeNode;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 350
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->getPathToRoot(Lorg/jaudiotagger/utils/tree/TreeNode;)[Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p0, p1, v0, v0}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->fireTreeStructureChanged(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public nodesChanged(Lorg/jaudiotagger/utils/tree/TreeNode;[I)V
    .locals 4

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 325
    array-length v0, p2

    if-lez v0, :cond_2

    .line 328
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 331
    aget v3, p2, v2

    .line 332
    invoke-interface {p1, v3}, Lorg/jaudiotagger/utils/tree/TreeNode;->getChildAt(I)Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 333
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->getPathToRoot(Lorg/jaudiotagger/utils/tree/TreeNode;)[Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object p1

    invoke-virtual {p0, p0, p1, p2, v1}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->fireTreeNodesChanged(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    goto :goto_1

    .line 337
    :cond_1
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->getRoot()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    .line 338
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->getPathToRoot(Lorg/jaudiotagger/utils/tree/TreeNode;)[Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p0, p1, p2, p2}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->fireTreeNodesChanged(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public nodesWereInserted(Lorg/jaudiotagger/utils/tree/TreeNode;[I)V
    .locals 4

    .line 292
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/utils/tree/EventListenerList;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    array-length v0, p2

    if-lez v0, :cond_1

    .line 294
    array-length v0, p2

    .line 295
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 298
    aget v3, p2, v2

    invoke-interface {p1, v3}, Lorg/jaudiotagger/utils/tree/TreeNode;->getChildAt(I)Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->getPathToRoot(Lorg/jaudiotagger/utils/tree/TreeNode;)[Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object p1

    invoke-virtual {p0, p0, p1, p2, v1}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->fireTreeNodesInserted(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public nodesWereRemoved(Lorg/jaudiotagger/utils/tree/TreeNode;[I[Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 313
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->getPathToRoot(Lorg/jaudiotagger/utils/tree/TreeNode;)[Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object p1

    invoke-virtual {p0, p0, p1, p2, p3}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->fireTreeNodesRemoved(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public reload()V
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->root:Lorg/jaudiotagger/utils/tree/TreeNode;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->reload(Lorg/jaudiotagger/utils/tree/TreeNode;)V

    return-void
.end method

.method public reload(Lorg/jaudiotagger/utils/tree/TreeNode;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 282
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->getPathToRoot(Lorg/jaudiotagger/utils/tree/TreeNode;)[Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p0, p1, v0, v0}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->fireTreeStructureChanged(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public removeNodeFromParent(Lorg/jaudiotagger/utils/tree/MutableTreeNode;)V
    .locals 5

    .line 236
    invoke-interface {p1}, Lorg/jaudiotagger/utils/tree/MutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/utils/tree/MutableTreeNode;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 241
    new-array v2, v1, [I

    .line 242
    new-array v1, v1, [Ljava/lang/Object;

    .line 244
    invoke-interface {v0, p1}, Lorg/jaudiotagger/utils/tree/MutableTreeNode;->getIndex(Lorg/jaudiotagger/utils/tree/TreeNode;)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 245
    aget v3, v2, v4

    invoke-interface {v0, v3}, Lorg/jaudiotagger/utils/tree/MutableTreeNode;->remove(I)V

    aput-object p1, v1, v4

    .line 247
    invoke-virtual {p0, v0, v2, v1}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->nodesWereRemoved(Lorg/jaudiotagger/utils/tree/TreeNode;[I[Ljava/lang/Object;)V

    return-void

    .line 239
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "node does not have a parent."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeTreeModelListener(Lorg/jaudiotagger/utils/tree/TreeModelListener;)V
    .locals 2

    .line 424
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/utils/tree/EventListenerList;

    const-class v1, Lorg/jaudiotagger/utils/tree/TreeModelListener;

    invoke-virtual {v0, v1, p1}, Lorg/jaudiotagger/utils/tree/EventListenerList;->remove(Ljava/lang/Class;Ljava/util/EventListener;)V

    return-void
.end method

.method public setAsksAllowsChildren(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->asksAllowsChildren:Z

    return-void
.end method

.method public setRoot(Lorg/jaudiotagger/utils/tree/TreeNode;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->root:Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 115
    iput-object p1, p0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->root:Lorg/jaudiotagger/utils/tree/TreeNode;

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 117
    invoke-direct {p0, p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->fireTreeStructureChanged(Ljava/lang/Object;Lorg/jaudiotagger/utils/tree/TreePath;)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->nodeStructureChanged(Lorg/jaudiotagger/utils/tree/TreeNode;)V

    :goto_0
    return-void
.end method

.method public valueForPathChanged(Lorg/jaudiotagger/utils/tree/TreePath;Ljava/lang/Object;)V
    .locals 0

    .line 207
    invoke-virtual {p1}, Lorg/jaudiotagger/utils/tree/TreePath;->getLastPathComponent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/utils/tree/MutableTreeNode;

    .line 209
    invoke-interface {p1, p2}, Lorg/jaudiotagger/utils/tree/MutableTreeNode;->setUserObject(Ljava/lang/Object;)V

    .line 210
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;->nodeChanged(Lorg/jaudiotagger/utils/tree/TreeNode;)V

    return-void
.end method
