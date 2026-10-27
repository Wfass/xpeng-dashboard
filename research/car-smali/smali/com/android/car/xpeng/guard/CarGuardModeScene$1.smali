.class Lcom/android/car/xpeng/guard/CarGuardModeScene$1;
.super Landroid/car/hardware/property/ICarPropertyEventListener$Stub;
.source "CarGuardModeScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/xpeng/guard/CarGuardModeScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/xpeng/guard/CarGuardModeScene;


# direct methods
.method constructor <init>(Lcom/android/car/xpeng/guard/CarGuardModeScene;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/xpeng/guard/CarGuardModeScene;

    .line 308
    iput-object p1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene$1;->this$0:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    invoke-direct {p0}, Landroid/car/hardware/property/ICarPropertyEventListener$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onEvent$0(Lcom/android/car/xpeng/guard/CarGuardModeScene$1;Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/car/hardware/property/CarPropertyEvent;

    .line 312
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene$1;->this$0:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    invoke-static {v0, p1}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->access$500(Lcom/android/car/xpeng/guard/CarGuardModeScene;Landroid/car/hardware/property/CarPropertyEvent;)V

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

    .line 311
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

    .line 312
    .local v1, "event":Landroid/car/hardware/property/CarPropertyEvent;
    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene$1;->this$0:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    invoke-static {v2}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->access$400(Lcom/android/car/xpeng/guard/CarGuardModeScene;)Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;

    move-result-object v2

    new-instance v3, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeScene$1$01i3gGky04a4sSUdLSsNhyXjyJo;

    invoke-direct {v3, p0, v1}, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeScene$1$01i3gGky04a4sSUdLSsNhyXjyJo;-><init>(Lcom/android/car/xpeng/guard/CarGuardModeScene$1;Landroid/car/hardware/property/CarPropertyEvent;)V

    invoke-virtual {v2, v3}, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 313
    .end local v1    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    goto :goto_0

    .line 314
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

    .line 318
    .local p1, "event":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    return-void
.end method
