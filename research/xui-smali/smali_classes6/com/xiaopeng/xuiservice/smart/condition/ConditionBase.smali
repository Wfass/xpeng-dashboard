.class public abstract Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;
.super Ljava/lang/Object;
.source "ConditionBase.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/smart/condition/Condition;


# instance fields
.field private id:Ljava/lang/String;

.field private final isWatching:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lastNotifyMatch:Ljava/lang/Boolean;

.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private onlyNotifyWhenMatchChanged:Z

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;->listeners:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;->isWatching:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;->onlyNotifyWhenMatchChanged:Z

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;->type:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static synthetic lambda$notifyConditionChange$0(Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;Z)V
    .locals 0
    .param p1, "l"    # Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;
    .param p2, "match"    # Z

    .line 127
    invoke-interface {p1, p0, p2}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;->onConditionChange(Lcom/xiaopeng/xuiservice/smart/condition/Condition;Z)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized addConditionChangeListener(Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    monitor-exit p0

    return-void

    .line 93
    .end local p1    # "listener":Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;
    throw p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;->type:Ljava/lang/String;

    return-object v0
.end method

.method protected final declared-synchronized notifyConditionChange()V
    .locals 4

    monitor-enter p0

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;->isMatch()Z

    move-result v0

    .line 110
    .local v0, "match":Z
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;->onlyNotifyWhenMatchChanged:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;->lastNotifyMatch:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;->lastNotifyMatch:Ljava/lang/Boolean;

    .line 111
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;->lastNotifyMatch:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 112
    :cond_1
    monitor-exit p0

    return-void

    .line 114
    :cond_2
    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;->lastNotifyMatch:Ljava/lang/Boolean;

    .line 116
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;->isWatching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_3

    .line 117
    const-string v1, "not watching, but notify, impossible"

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->ERROR(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 121
    :cond_3
    if-eqz v0, :cond_4

    .line 122
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " >>> Condition MATCH: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->INFO(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " >>> Condition NOT MATCH: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->INFO(Ljava/lang/String;)V

    .line 126
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;

    .line 127
    .local v2, "l":Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;
    new-instance v3, Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$ConditionBase$LalKMlqNZp8dm4mFLyMINFxWoVo;

    invoke-direct {v3, p0, v2, v0}, Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$ConditionBase$LalKMlqNZp8dm4mFLyMINFxWoVo;-><init>(Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;Z)V

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    .end local v2    # "l":Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;
    goto :goto_1

    .line 129
    :cond_5
    monitor-exit p0

    return-void

    .line 108
    .end local v0    # "match":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;
    throw v0
.end method

.method protected abstract onStartWatch()V
.end method

.method protected abstract onStopWatch()V
.end method

.method public final declared-synchronized removeConditionChangeListener(Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;

    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 100
    .end local p1    # "listener":Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;
    throw p1
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;->id:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setName(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/smart/condition/Condition;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;->name:Ljava/lang/String;

    .line 59
    return-object p0
.end method

.method public declared-synchronized setOnlyNotifyWhenMatchChanged(Z)V
    .locals 0
    .param p1, "onlyNotifyWhenMatchChanged"    # Z

    monitor-enter p0

    .line 105
    :try_start_0
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;->onlyNotifyWhenMatchChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    .line 104
    .end local p1    # "onlyNotifyWhenMatchChanged":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;
    throw p1
.end method

.method public final startWatch()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;->isWatching:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID CALL, duplicated startWatch, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->INFO(Ljava/lang/String;)V

    .line 67
    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WATCH START: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->INFO(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;->onStartWatch()V

    .line 73
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;->notifyConditionChange()V

    .line 74
    return-void
.end method

.method public final stopWatch()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;->isWatching:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID CALL, duplicated stopWatch, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->INFO(Ljava/lang/String;)V

    .line 81
    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WATCH STOP: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->INFO(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;->onStopWatch()V

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Condition"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionJsonUtil;->condition2JSONObject(Lcom/xiaopeng/xuiservice/smart/condition/Condition;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    return-object v0
.end method
