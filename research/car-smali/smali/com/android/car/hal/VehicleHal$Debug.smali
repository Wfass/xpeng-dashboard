.class public Lcom/android/car/hal/VehicleHal$Debug;
.super Ljava/lang/Object;
.source "VehicleHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/hal/VehicleHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Debug"
.end annotation


# instance fields
.field mDebugHandler:Landroid/os/Handler;

.field mDebugService:Lcom/android/car/DebugService;

.field mDebugThread:Landroid/os/HandlerThread;

.field final synthetic this$0:Lcom/android/car/hal/VehicleHal;


# direct methods
.method public constructor <init>(Lcom/android/car/hal/VehicleHal;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/car/hal/VehicleHal;
    .param p2, "context"    # Landroid/content/Context;

    .line 130
    iput-object p1, p0, Lcom/android/car/hal/VehicleHal$Debug;->this$0:Lcom/android/car/hal/VehicleHal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Lcom/android/car/DebugService;

    invoke-direct {v0, p2}, Lcom/android/car/DebugService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal$Debug;->mDebugService:Lcom/android/car/DebugService;

    .line 132
    return-void
.end method


# virtual methods
.method onEvent(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;",
            ">;)V"
        }
    .end annotation

    .line 135
    .local p1, "events":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;>;"
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal$Debug;->mDebugService:Lcom/android/car/DebugService;

    invoke-virtual {v0, p1}, Lcom/android/car/DebugService;->onEvent(Ljava/util/HashMap;)V

    .line 136
    return-void
.end method

.method sendMsg(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;",
            ">;)V"
        }
    .end annotation

    .line 139
    .local p1, "events":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;>;"
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal$Debug;->mDebugHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 140
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal$Debug;->mDebugHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/car/hal/VehicleHal$Debug;->mDebugHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 143
    return-void
.end method

.method start()V
    .locals 3

    .line 146
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VEHICLE-Debug"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal$Debug;->mDebugThread:Landroid/os/HandlerThread;

    .line 147
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal$Debug;->mDebugThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 148
    new-instance v0, Lcom/android/car/hal/VehicleHal$DebugHandler;

    iget-object v1, p0, Lcom/android/car/hal/VehicleHal$Debug;->this$0:Lcom/android/car/hal/VehicleHal;

    iget-object v2, p0, Lcom/android/car/hal/VehicleHal$Debug;->mDebugThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/car/hal/VehicleHal$DebugHandler;-><init>(Lcom/android/car/hal/VehicleHal;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal$Debug;->mDebugHandler:Landroid/os/Handler;

    .line 149
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal$Debug;->mDebugService:Lcom/android/car/DebugService;

    invoke-virtual {v0}, Lcom/android/car/DebugService;->init()V

    .line 150
    return-void
.end method

.method stop()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal$Debug;->mDebugService:Lcom/android/car/DebugService;

    invoke-virtual {v0}, Lcom/android/car/DebugService;->release()V

    .line 154
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal$Debug;->mDebugThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal$Debug;->mDebugHandler:Landroid/os/Handler;

    .line 156
    iput-object v0, p0, Lcom/android/car/hal/VehicleHal$Debug;->mDebugThread:Landroid/os/HandlerThread;

    .line 157
    return-void
.end method
