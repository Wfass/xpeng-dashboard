.class public abstract Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase;
.super Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;
.source "ConditionEventBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/xiaopeng/xuiservice/smart/condition/event/EventBase;",
        ">",
        "Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;"
    }
.end annotation


# instance fields
.field private final count:I

.field private final eventQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private persistEvent:Z

.field private final window:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "window"    # I

    .line 22
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase;, "Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase<TE;>;"
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBase;-><init>(Ljava/lang/String;)V

    .line 17
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase;->eventQueue:Ljava/util/LinkedList;

    .line 23
    iput p2, p0, Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase;->count:I

    .line 24
    iput p3, p0, Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase;->window:I

    .line 26
    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    .line 30
    if-ltz p3, :cond_0

    .line 33
    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid event window = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", need >= 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid event count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", need >= 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private deleteEvent(Lcom/xiaopeng/xuiservice/smart/condition/event/EventBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 78
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase;, "Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase<TE;>;"
    .local p1, "event":Lcom/xiaopeng/xuiservice/smart/condition/event/EventBase;, "TE;"
    return-void
.end method

.method private saveEvent(Lcom/xiaopeng/xuiservice/smart/condition/event/EventBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase;, "Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase<TE;>;"
    .local p1, "event":Lcom/xiaopeng/xuiservice/smart/condition/event/EventBase;, "TE;"
    return-void
.end method


# virtual methods
.method public getLatestEvent()Lcom/xiaopeng/xuiservice/smart/condition/event/EventBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 36
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase;, "Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase<TE;>;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase;->eventQueue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase;->eventQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase;->eventQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/smart/condition/event/EventBase;

    :goto_0
    monitor-exit v0

    return-object v1

    .line 38
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isMatch()Z
    .locals 8

    .line 59
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase;, "Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase<TE;>;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase;->eventQueue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase;->eventQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase;->count:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 61
    monitor-exit v0

    return v3

    .line 64
    :cond_0
    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase;->window:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase;->eventQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/smart/condition/event/EventBase;

    iget-wide v1, v1, Lcom/xiaopeng/xuiservice/smart/condition/event/EventBase;->timestamp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v6, p0, Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase;->window:I

    int-to-long v6, v6

    sub-long/2addr v4, v6

    cmp-long v1, v1, v4

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    monitor-exit v0

    return v3

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reportEvent(Lcom/xiaopeng/xuiservice/smart/condition/event/EventBase;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase;, "Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase<TE;>;"
    .local p1, "event":Lcom/xiaopeng/xuiservice/smart/condition/event/EventBase;, "TE;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 44
    .local v0, "now":J
    monitor-enter p0

    .line 45
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase;->eventQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 46
    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase;->persistEvent:Z

    if-eqz v2, :cond_0

    .line 47
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase;->saveEvent(Lcom/xiaopeng/xuiservice/smart/condition/event/EventBase;)V

    .line 49
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase;->eventQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget v3, p0, Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase;->count:I

    if-le v2, v3, :cond_1

    .line 50
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase;->eventQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/smart/condition/event/EventBase;

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase;->deleteEvent(Lcom/xiaopeng/xuiservice/smart/condition/event/EventBase;)V

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase;->notifyConditionChange()V

    .line 54
    monitor-exit p0

    .line 55
    return-void

    .line 54
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setPersistEvent(Z)V
    .locals 0
    .param p1, "persistEvent"    # Z

    .line 69
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase;, "Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase<TE;>;"
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/event/ConditionEventBase;->persistEvent:Z

    .line 70
    return-void
.end method
