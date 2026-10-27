.class public final Landroidx/recyclerview/selection/OperationMonitor;
.super Ljava/lang/Object;
.source "OperationMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/selection/OperationMonitor$OnChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OperationMonitor"


# instance fields
.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/selection/OperationMonitor$OnChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNumOps:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/selection/OperationMonitor;->mNumOps:I

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/selection/OperationMonitor;->mListeners:Ljava/util/List;

    .line 123
    return-void
.end method


# virtual methods
.method public addListener(Landroidx/recyclerview/selection/OperationMonitor$OnChangeListener;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/selection/OperationMonitor$OnChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 92
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 93
    iget-object v0, p0, Landroidx/recyclerview/selection/OperationMonitor;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method checkStarted()V
    .locals 1

    .line 109
    iget v0, p0, Landroidx/recyclerview/selection/OperationMonitor;->mNumOps:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 110
    return-void
.end method

.method checkStopped()V
    .locals 1

    .line 116
    iget v0, p0, Landroidx/recyclerview/selection/OperationMonitor;->mNumOps:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 117
    return-void
.end method

.method public declared-synchronized isStarted()Z
    .locals 1

    monitor-enter p0

    .line 84
    :try_start_0
    iget v0, p0, Landroidx/recyclerview/selection/OperationMonitor;->mNumOps:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeListener(Landroidx/recyclerview/selection/OperationMonitor$OnChangeListener;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/selection/OperationMonitor$OnChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 101
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 102
    iget-object v0, p0, Landroidx/recyclerview/selection/OperationMonitor;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method declared-synchronized start()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    monitor-enter p0

    .line 54
    :try_start_0
    iget v0, p0, Landroidx/recyclerview/selection/OperationMonitor;->mNumOps:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/recyclerview/selection/OperationMonitor;->mNumOps:I

    .line 56
    iget v0, p0, Landroidx/recyclerview/selection/OperationMonitor;->mNumOps:I

    if-ne v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Landroidx/recyclerview/selection/OperationMonitor;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/selection/OperationMonitor$OnChangeListener;

    .line 58
    invoke-interface {v1}, Landroidx/recyclerview/selection/OperationMonitor$OnChangeListener;->onChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    goto :goto_0

    .line 63
    :cond_0
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized stop()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    monitor-enter p0

    .line 67
    :try_start_0
    iget v0, p0, Landroidx/recyclerview/selection/OperationMonitor;->mNumOps:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 69
    iget v0, p0, Landroidx/recyclerview/selection/OperationMonitor;->mNumOps:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/recyclerview/selection/OperationMonitor;->mNumOps:I

    .line 72
    iget v0, p0, Landroidx/recyclerview/selection/OperationMonitor;->mNumOps:I

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Landroidx/recyclerview/selection/OperationMonitor;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/selection/OperationMonitor$OnChangeListener;

    .line 74
    invoke-interface {v1}, Landroidx/recyclerview/selection/OperationMonitor$OnChangeListener;->onChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    goto :goto_1

    .line 77
    :cond_1
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
