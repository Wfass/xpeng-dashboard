.class Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$1;
.super Landroid/car/hardware/property/ICarPropertyEventListener$Stub;
.source "CarAutoWakeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;


# direct methods
.method constructor <init>(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    .line 118
    iput-object p1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$1;->this$0:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-direct {p0}, Landroid/car/hardware/property/ICarPropertyEventListener$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onEvent$0(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$1;Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/car/hardware/property/CarPropertyEvent;

    .line 122
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$1;->this$0:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-static {v0, p1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->access$100(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;Landroid/car/hardware/property/CarPropertyEvent;)V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/hardware/property/CarPropertyEvent;",
            ">;)V"
        }
    .end annotation

    .line 121
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/property/CarPropertyEvent;

    .line 122
    .local v1, "event":Landroid/car/hardware/property/CarPropertyEvent;
    iget-object v2, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$1;->this$0:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-static {v2}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->access$000(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;)Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;

    move-result-object v2

    new-instance v3, Lcom/android/car/xpeng/ai/wake/-$$Lambda$CarAutoWakeService$1$ncqeQTzdmqYTo4di6zmGli1j81s;

    invoke-direct {v3, p0, v1}, Lcom/android/car/xpeng/ai/wake/-$$Lambda$CarAutoWakeService$1$ncqeQTzdmqYTo4di6zmGli1j81s;-><init>(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$1;Landroid/car/hardware/property/CarPropertyEvent;)V

    invoke-virtual {v2, v3}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 123
    .end local v1    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    goto :goto_0

    .line 124
    :cond_0
    return-void
.end method

.method public onShmEvent(Ljava/util/List;Ljava/io/FileDescriptor;)V
    .locals 0
    .param p2, "memoryHeap"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/hardware/property/CarPropertyEvent;",
            ">;",
            "Ljava/io/FileDescriptor;",
            ")V"
        }
    .end annotation

    .line 128
    .local p1, "event":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    return-void
.end method
