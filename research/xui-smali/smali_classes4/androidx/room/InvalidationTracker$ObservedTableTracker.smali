.class Landroidx/room/InvalidationTracker$ObservedTableTracker;
.super Ljava/lang/Object;
.source "InvalidationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/InvalidationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObservedTableTracker"
.end annotation


# static fields
.field static final ADD:I = 0x1

.field static final NO_OP:I = 0x0

.field static final REMOVE:I = 0x2


# instance fields
.field mNeedsSync:Z

.field mPendingSync:Z

.field final mTableObservers:[J

.field final mTriggerStateChanges:[I

.field final mTriggerStates:[Z


# direct methods
.method constructor <init>(I)V
    .locals 3
    .param p1, "tableCount"    # I

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    new-array v0, p1, [J

    iput-object v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    .line 586
    new-array v0, p1, [Z

    iput-object v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStates:[Z

    .line 587
    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStateChanges:[I

    .line 588
    iget-object v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 589
    iget-object v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStates:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 590
    return-void
.end method


# virtual methods
.method getTablesToSync()[I
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 636
    monitor-enter p0

    .line 637
    :try_start_0
    iget-boolean v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mNeedsSync:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mPendingSync:Z

    if-eqz v0, :cond_0

    goto :goto_4

    .line 640
    :cond_0
    iget-object v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    array-length v0, v0

    .line 641
    .local v0, "tableCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_4

    .line 642
    iget-object v4, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    aget-wide v4, v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v1

    .line 643
    .local v4, "newState":Z
    :goto_1
    iget-object v5, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStates:[Z

    aget-boolean v5, v5, v2

    if-eq v4, v5, :cond_3

    .line 644
    iget-object v5, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStateChanges:[I

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x2

    :goto_2
    aput v3, v5, v2

    goto :goto_3

    .line 646
    :cond_3
    iget-object v3, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStateChanges:[I

    aput v1, v3, v2

    .line 648
    :goto_3
    iget-object v3, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStates:[Z

    aput-boolean v4, v3, v2

    .line 641
    .end local v4    # "newState":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 650
    .end local v2    # "i":I
    :cond_4
    iput-boolean v3, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mPendingSync:Z

    .line 651
    iput-boolean v1, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mNeedsSync:Z

    .line 652
    iget-object v1, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStateChanges:[I

    monitor-exit p0

    return-object v1

    .line 638
    .end local v0    # "tableCount":I
    :cond_5
    :goto_4
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 653
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method varargs onAdded([I)Z
    .locals 9
    .param p1, "tableIds"    # [I

    .line 596
    const/4 v0, 0x0

    .line 597
    .local v0, "needTriggerSync":Z
    monitor-enter p0

    .line 598
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    .line 599
    .local v3, "tableId":I
    iget-object v4, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    aget-wide v4, v4, v3

    .line 600
    .local v4, "prevObserverCount":J
    iget-object v6, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    const-wide/16 v7, 0x1

    add-long/2addr v7, v4

    aput-wide v7, v6, v3

    .line 601
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 602
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mNeedsSync:Z

    .line 603
    const/4 v0, 0x1

    .line 598
    .end local v3    # "tableId":I
    .end local v4    # "prevObserverCount":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 606
    :cond_1
    monitor-exit p0

    .line 607
    return v0

    .line 606
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method varargs onRemoved([I)Z
    .locals 11
    .param p1, "tableIds"    # [I

    .line 614
    const/4 v0, 0x0

    .line 615
    .local v0, "needTriggerSync":Z
    monitor-enter p0

    .line 616
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    .line 617
    .local v3, "tableId":I
    iget-object v4, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    aget-wide v4, v4, v3

    .line 618
    .local v4, "prevObserverCount":J
    iget-object v6, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    const-wide/16 v7, 0x1

    sub-long v9, v4, v7

    aput-wide v9, v6, v3

    .line 619
    cmp-long v6, v4, v7

    if-nez v6, :cond_0

    .line 620
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mNeedsSync:Z

    .line 621
    const/4 v0, 0x1

    .line 616
    .end local v3    # "tableId":I
    .end local v4    # "prevObserverCount":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 624
    :cond_1
    monitor-exit p0

    .line 625
    return v0

    .line 624
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onSyncCompleted()V
    .locals 1

    .line 661
    monitor-enter p0

    .line 662
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mPendingSync:Z

    .line 663
    monitor-exit p0

    .line 664
    return-void

    .line 663
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
