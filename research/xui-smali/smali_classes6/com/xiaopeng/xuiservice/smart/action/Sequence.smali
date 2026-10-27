.class Lcom/xiaopeng/xuiservice/smart/action/Sequence;
.super Lcom/xiaopeng/xuiservice/smart/action/ActionList;
.source "Sequence.java"


# instance fields
.field private final next:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/smart/action/Action;",
            ">;)V"
        }
    .end annotation

    .line 11
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/smart/action/Action;>;"
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/action/ActionList;-><init>(Ljava/util/List;)V

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/Sequence;->next:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    return-void
.end method

.method public varargs constructor <init>([Lcom/xiaopeng/xuiservice/smart/action/Action;)V
    .locals 2
    .param p1, "actions"    # [Lcom/xiaopeng/xuiservice/smart/action/Action;

    .line 15
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/action/ActionList;-><init>([Lcom/xiaopeng/xuiservice/smart/action/Action;)V

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/Sequence;->next:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    return-void
.end method

.method private startNextChild()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/Sequence;->next:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 42
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/action/Sequence;->getActions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/action/Sequence;->getActions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/smart/action/Action;

    invoke-interface {v1}, Lcom/xiaopeng/xuiservice/smart/action/Action;->start()V

    goto :goto_0

    .line 45
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextIndex not valid,  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->ERROR(Ljava/lang/String;)V

    .line 47
    :goto_0
    return-void
.end method


# virtual methods
.method protected onChildrenActionDone(Lcom/xiaopeng/xuiservice/smart/action/Action;)V
    .locals 2
    .param p1, "action"    # Lcom/xiaopeng/xuiservice/smart/action/Action;

    .line 30
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/action/Sequence;->getDoneActions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/action/Sequence;->getActions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "All actions are done, stop self. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/action/Sequence;->stop()V

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/action/Sequence;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/Sequence;->startNextChild()V

    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method protected onChildrenActionStart(Lcom/xiaopeng/xuiservice/smart/action/Action;)V
    .locals 0
    .param p1, "action"    # Lcom/xiaopeng/xuiservice/smart/action/Action;

    .line 26
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/Sequence;->startNextChild()V

    .line 21
    return-void
.end method
