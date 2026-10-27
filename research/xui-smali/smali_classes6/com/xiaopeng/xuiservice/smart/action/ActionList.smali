.class public abstract Lcom/xiaopeng/xuiservice/smart/action/ActionList;
.super Lcom/xiaopeng/xuiservice/smart/action/ActionBase;
.source "ActionList.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/smart/action/Action$ActionChangeListener;


# instance fields
.field private final actions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuiservice/smart/action/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final doneActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/xiaopeng/xuiservice/smart/action/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final runningActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/xiaopeng/xuiservice/smart/action/Action;",
            ">;"
        }
    .end annotation
.end field


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

    .line 17
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/smart/action/Action;>;"
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/ActionList;->actions:Ljava/util/ArrayList;

    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 20
    .local v0, "size":I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/ActionList;->runningActions:Ljava/util/Set;

    .line 21
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/ActionList;->doneActions:Ljava/util/Set;

    .line 23
    new-instance v1, Lcom/xiaopeng/xuiservice/smart/action/-$$Lambda$ActionList$BgX3F6UlQIUS7THR3a29whyQL7o;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/action/-$$Lambda$ActionList$BgX3F6UlQIUS7THR3a29whyQL7o;-><init>(Lcom/xiaopeng/xuiservice/smart/action/ActionList;)V

    invoke-interface {p1, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 24
    return-void
.end method

.method public varargs constructor <init>([Lcom/xiaopeng/xuiservice/smart/action/Action;)V
    .locals 1
    .param p1, "actions"    # [Lcom/xiaopeng/xuiservice/smart/action/Action;

    .line 27
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/action/ActionList;-><init>(Ljava/util/List;)V

    .line 28
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xuiservice/smart/action/ActionList;Lcom/xiaopeng/xuiservice/smart/action/Action;)V
    .locals 0
    .param p1, "action"    # Lcom/xiaopeng/xuiservice/smart/action/Action;

    .line 23
    invoke-interface {p1, p0}, Lcom/xiaopeng/xuiservice/smart/action/Action;->addActionChangeListener(Lcom/xiaopeng/xuiservice/smart/action/Action$ActionChangeListener;)V

    return-void
.end method


# virtual methods
.method public getActions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuiservice/smart/action/Action;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/ActionList;->actions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDoneActions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/xiaopeng/xuiservice/smart/action/Action;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/ActionList;->doneActions:Ljava/util/Set;

    return-object v0
.end method

.method public getRunningActions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/xiaopeng/xuiservice/smart/action/Action;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/ActionList;->runningActions:Ljava/util/Set;

    return-object v0
.end method

.method public final onActionDone(Lcom/xiaopeng/xuiservice/smart/action/Action;)V
    .locals 1
    .param p1, "action"    # Lcom/xiaopeng/xuiservice/smart/action/Action;

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/ActionList;->runningActions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/ActionList;->doneActions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/smart/action/ActionList;->onChildrenActionDone(Lcom/xiaopeng/xuiservice/smart/action/Action;)V

    .line 53
    return-void
.end method

.method public final onActionStarted(Lcom/xiaopeng/xuiservice/smart/action/Action;)V
    .locals 1
    .param p1, "action"    # Lcom/xiaopeng/xuiservice/smart/action/Action;

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/ActionList;->runningActions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/smart/action/ActionList;->onChildrenActionStart(Lcom/xiaopeng/xuiservice/smart/action/Action;)V

    .line 46
    return-void
.end method

.method protected abstract onChildrenActionDone(Lcom/xiaopeng/xuiservice/smart/action/Action;)V
.end method

.method protected abstract onChildrenActionStart(Lcom/xiaopeng/xuiservice/smart/action/Action;)V
.end method

.method protected abstract onStart()V
.end method

.method protected final onStop()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/ActionList;->actions:Ljava/util/ArrayList;

    sget-object v1, Lcom/xiaopeng/xuiservice/smart/action/-$$Lambda$Rt6Q5AhdUqwRtC3YAXq00Ww3XUg;->INSTANCE:Lcom/xiaopeng/xuiservice/smart/action/-$$Lambda$Rt6Q5AhdUqwRtC3YAXq00Ww3XUg;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/ActionList;->actions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 73
    .local v1, "size":I
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 75
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/action/ActionList;->actions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    add-int/lit8 v3, v1, -0x1

    if-eq v2, v3, :cond_0

    .line 77
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
