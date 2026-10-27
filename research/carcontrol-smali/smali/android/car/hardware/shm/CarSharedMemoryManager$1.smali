.class Landroid/car/hardware/shm/CarSharedMemoryManager$1;
.super Lcom/android/car/internal/SingleRawMessageHandler;
.source "CarSharedMemoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/car/hardware/shm/CarSharedMemoryManager;->getHandler(Landroid/os/Looper;)Lcom/android/car/internal/SingleRawMessageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/car/internal/SingleRawMessageHandler<",
        "Landroid/car/hardware/CarPropertyValue<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/car/hardware/shm/CarSharedMemoryManager;


# direct methods
.method constructor <init>(Landroid/car/hardware/shm/CarSharedMemoryManager;Landroid/os/Looper;I)V
    .locals 0

    .line 151
    iput-object p1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager$1;->this$0:Landroid/car/hardware/shm/CarSharedMemoryManager;

    invoke-direct {p0, p2, p3}, Lcom/android/car/internal/SingleRawMessageHandler;-><init>(Landroid/os/Looper;I)V

    return-void
.end method


# virtual methods
.method protected handleEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/car/hardware/CarPropertyValue<",
            "*>;)V"
        }
    .end annotation

    .line 154
    invoke-static {}, Landroid/car/XpDebugLog;->isSharedMemoryPerfLogEnable()Z

    move-result v0

    .line 155
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getTimestamp()J

    move-result-wide v1

    .line 156
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getExtraTimestamp()J

    move-result-wide v3

    .line 157
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 158
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v3

    .line 159
    invoke-static {}, Landroid/car/hardware/shm/CarSharedMemoryManager;->access$000()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Duration;->toMillis()J

    move-result-wide v7

    cmp-long v4, v5, v7

    if-lez v4, :cond_0

    .line 160
    iget-object v4, p0, Landroid/car/hardware/shm/CarSharedMemoryManager$1;->this$0:Landroid/car/hardware/shm/CarSharedMemoryManager;

    invoke-static {v4}, Landroid/car/hardware/shm/CarSharedMemoryManager;->access$100(Landroid/car/hardware/shm/CarSharedMemoryManager;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleEvent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 161
    invoke-static {v3}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", timestamp: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " app to handler cost too much time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 160
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 164
    iget-object v4, p0, Landroid/car/hardware/shm/CarSharedMemoryManager$1;->this$0:Landroid/car/hardware/shm/CarSharedMemoryManager;

    invoke-static {v4}, Landroid/car/hardware/shm/CarSharedMemoryManager;->access$100(Landroid/car/hardware/shm/CarSharedMemoryManager;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleEvent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 165
    invoke-static {v3}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", timestamp: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " app to handler cost time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 164
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_1
    :goto_0
    invoke-static {}, Landroid/car/builtin/os/BuildHelper;->isUserBuild()Z

    move-result v4

    if-nez v4, :cond_2

    .line 171
    iget-object v4, p0, Landroid/car/hardware/shm/CarSharedMemoryManager$1;->this$0:Landroid/car/hardware/shm/CarSharedMemoryManager;

    invoke-static {v4, v3}, Landroid/car/hardware/shm/CarSharedMemoryManager;->access$200(Landroid/car/hardware/shm/CarSharedMemoryManager;I)V

    .line 175
    :cond_2
    monitor-enter p0

    .line 177
    :try_start_0
    iget-object v4, p0, Landroid/car/hardware/shm/CarSharedMemoryManager$1;->this$0:Landroid/car/hardware/shm/CarSharedMemoryManager;

    invoke-static {v4}, Landroid/car/hardware/shm/CarSharedMemoryManager;->access$300(Landroid/car/hardware/shm/CarSharedMemoryManager;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_3

    .line 190
    :try_start_1
    monitor-exit p0

    return-void

    .line 194
    :cond_3
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;

    if-nez v5, :cond_5

    .line 196
    iget-object v5, p0, Landroid/car/hardware/shm/CarSharedMemoryManager$1;->this$0:Landroid/car/hardware/shm/CarSharedMemoryManager;

    invoke-static {v5}, Landroid/car/hardware/shm/CarSharedMemoryManager;->access$100(Landroid/car/hardware/shm/CarSharedMemoryManager;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "++++handleEvent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " callback is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    .line 200
    iget-object v6, p0, Landroid/car/hardware/shm/CarSharedMemoryManager$1;->this$0:Landroid/car/hardware/shm/CarSharedMemoryManager;

    invoke-static {v6}, Landroid/car/hardware/shm/CarSharedMemoryManager;->access$100(Landroid/car/hardware/shm/CarSharedMemoryManager;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "++++handleEvent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", timestamp: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " callback:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 204
    invoke-interface {v5, p1}, Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;->onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V

    .line 205
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    .line 206
    invoke-static {}, Landroid/car/hardware/shm/CarSharedMemoryManager;->access$000()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/Duration;->toMillis()J

    move-result-wide v5

    cmp-long v5, v8, v5

    if-lez v5, :cond_7

    const-string v5, "SingleRawMessageHandler"

    .line 207
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handle: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 208
    invoke-static {v3}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", timestamp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " callback cost too much time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 207
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    if-eqz v0, :cond_4

    const-string v5, "SingleRawMessageHandler"

    .line 212
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handle: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 213
    invoke-static {v3}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", timestamp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " callback cost "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 212
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 218
    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_0
    move-exception p1

    .line 179
    iget-object v0, p0, Landroid/car/hardware/shm/CarSharedMemoryManager$1;->this$0:Landroid/car/hardware/shm/CarSharedMemoryManager;

    invoke-static {v0}, Landroid/car/hardware/shm/CarSharedMemoryManager;->access$300(Landroid/car/hardware/shm/CarSharedMemoryManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 180
    iget-object v0, p0, Landroid/car/hardware/shm/CarSharedMemoryManager$1;->this$0:Landroid/car/hardware/shm/CarSharedMemoryManager;

    invoke-static {v0}, Landroid/car/hardware/shm/CarSharedMemoryManager;->access$300(Landroid/car/hardware/shm/CarSharedMemoryManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 181
    iget-object v1, p0, Landroid/car/hardware/shm/CarSharedMemoryManager$1;->this$0:Landroid/car/hardware/shm/CarSharedMemoryManager;

    invoke-static {v1}, Landroid/car/hardware/shm/CarSharedMemoryManager;->access$100(Landroid/car/hardware/shm/CarSharedMemoryManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleEvent cannot cast callbacks by propertyId:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " className:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " callbacks:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/car/hardware/shm/CarSharedMemoryManager$1;->this$0:Landroid/car/hardware/shm/CarSharedMemoryManager;

    invoke-static {v2}, Landroid/car/hardware/shm/CarSharedMemoryManager;->access$300(Landroid/car/hardware/shm/CarSharedMemoryManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 183
    :cond_9
    iget-object v0, p0, Landroid/car/hardware/shm/CarSharedMemoryManager$1;->this$0:Landroid/car/hardware/shm/CarSharedMemoryManager;

    invoke-static {v0}, Landroid/car/hardware/shm/CarSharedMemoryManager;->access$100(Landroid/car/hardware/shm/CarSharedMemoryManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEvent cannot cast callbacks by propertyId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_2
    iget-object v0, p0, Landroid/car/hardware/shm/CarSharedMemoryManager$1;->this$0:Landroid/car/hardware/shm/CarSharedMemoryManager;

    invoke-static {v0}, Landroid/car/hardware/shm/CarSharedMemoryManager;->access$100(Landroid/car/hardware/shm/CarSharedMemoryManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEvent ClassCastException, excep:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    throw p1

    .line 218
    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected bridge synthetic handleEvent(Ljava/lang/Object;)V
    .locals 0

    .line 151
    check-cast p1, Landroid/car/hardware/CarPropertyValue;

    invoke-virtual {p0, p1}, Landroid/car/hardware/shm/CarSharedMemoryManager$1;->handleEvent(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method
