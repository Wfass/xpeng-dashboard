.class public abstract Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;
.super Ljava/lang/Object;
.source "ChangeableValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field currentValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field protected final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 33
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;, "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<TC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;->listeners:Ljava/util/ArrayList;

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;->name:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " CREATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->DEBUG(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method static synthetic lambda$update0$0(Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener;Ljava/lang/Object;)V
    .locals 0
    .param p0, "listener"    # Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener;
    .param p1, "newValue"    # Ljava/lang/Object;

    .line 68
    invoke-interface {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener;->onValueChange(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected displayName()Ljava/lang/String;
    .locals 2

    .line 104
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;, "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<TC;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChangeableValue <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract fetch()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public final declared-synchronized get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;, "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<TC;>;"
    monitor-enter p0

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;->currentValue:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;, "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<TC;>;"
    throw v0
.end method

.method protected abstract onStartWatch()V
.end method

.method protected abstract onStopWatch()V
.end method

.method public declared-synchronized register(Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener<",
            "TC;>;)V"
        }
    .end annotation

    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;, "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<TC;>;"
    .local p1, "listener":Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener;, "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener<TC;>;"
    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " WATCH start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->DEBUG(Ljava/lang/String;)V

    .line 81
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/value/-$$Lambda$M6xvS06pJeSw019wwjt0jUIAkAI;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/condition/value/-$$Lambda$M6xvS06pJeSw019wwjt0jUIAkAI;-><init>(Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->executeInWorkHandler(Ljava/lang/Runnable;)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "after watch, fetch currentValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;->currentValue:Ljava/lang/Object;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->DEBUG(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;->fetch()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;->update(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    monitor-exit p0

    return-void

    .line 78
    .end local p1    # "listener":Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener;, "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener<TC;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;, "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<TC;>;"
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 100
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;, "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<TC;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;->currentValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;->listeners:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/utils/CollectionUtil;->sizeOf(Ljava/util/Collection;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " listeners]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized unregister(Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener<",
            "TC;>;)V"
        }
    .end annotation

    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;, "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<TC;>;"
    .local p1, "listener":Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener;, "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener<TC;>;"
    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " WATCH stop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->DEBUG(Ljava/lang/String;)V

    .line 92
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/value/-$$Lambda$fi0A7FrdyesvdrV9cJ6HbhOU-KE;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/condition/value/-$$Lambda$fi0A7FrdyesvdrV9cJ6HbhOU-KE;-><init>(Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->executeInWorkHandler(Ljava/lang/Runnable;)V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;->currentValue:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_0
    monitor-exit p0

    return-void

    .line 89
    .end local p1    # "listener":Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener;, "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener<TC;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;, "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<TC;>;"
    throw p1
.end method

.method public declared-synchronized update()V
    .locals 1

    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;, "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<TC;>;"
    monitor-enter p0

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;->fetch()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;->update(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;, "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<TC;>;"
    throw v0
.end method

.method protected declared-synchronized update(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;, "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<TC;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TC;"
    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;->currentValue:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->superEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " UPDATE to same value ignored, current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->DEBUG(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 58
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " UPDATE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;->currentValue:Ljava/lang/Object;

    .line 59
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " =======> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->INFO(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;->update0(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 52
    .end local p1    # "newValue":Ljava/lang/Object;, "TC;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;, "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<TC;>;"
    throw p1
.end method

.method protected final declared-synchronized update0(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;, "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<TC;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TC;"
    monitor-enter p0

    .line 65
    :try_start_0
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;->currentValue:Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener;

    .line 68
    .local v1, "listener":Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener;, "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener<TC;>;"
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/condition/value/-$$Lambda$ChangeableValue$Kgq1TNcI_KDIcXcI36-jJ7NjqZI;

    invoke-direct {v2, v1, p1}, Lcom/xiaopeng/xuiservice/smart/condition/value/-$$Lambda$ChangeableValue$Kgq1TNcI_KDIcXcI36-jJ7NjqZI;-><init>(Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .end local v1    # "listener":Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener;, "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener<TC;>;"
    goto :goto_0

    .line 70
    :cond_0
    monitor-exit p0

    return-void

    .line 64
    .end local p1    # "newValue":Ljava/lang/Object;, "TC;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;, "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<TC;>;"
    throw p1
.end method

.method protected declared-synchronized updateWithoutNotifyChange(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;, "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<TC;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TC;"
    monitor-enter p0

    .line 73
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " UPDATE (without notify): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;->currentValue:Ljava/lang/Object;

    .line 74
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " =======> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->INFO(Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;->currentValue:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 72
    .end local p1    # "newValue":Ljava/lang/Object;, "TC;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;, "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<TC;>;"
    throw p1
.end method
