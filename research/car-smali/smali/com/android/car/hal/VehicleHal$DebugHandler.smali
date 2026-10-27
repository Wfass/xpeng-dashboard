.class public Lcom/android/car/hal/VehicleHal$DebugHandler;
.super Landroid/os/Handler;
.source "VehicleHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/hal/VehicleHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DebugHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/hal/VehicleHal;


# direct methods
.method public constructor <init>(Lcom/android/car/hal/VehicleHal;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/car/hal/VehicleHal;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 111
    iput-object p1, p0, Lcom/android/car/hal/VehicleHal$DebugHandler;->this$0:Lcom/android/car/hal/VehicleHal;

    .line 112
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 113
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal$DebugHandler;->this$0:Lcom/android/car/hal/VehicleHal;

    iget-object v0, v0, Lcom/android/car/hal/VehicleHal;->mDebug:Lcom/android/car/hal/VehicleHal$Debug;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal$DebugHandler;->this$0:Lcom/android/car/hal/VehicleHal;

    iget-object v0, v0, Lcom/android/car/hal/VehicleHal;->mDebug:Lcom/android/car/hal/VehicleHal$Debug;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/android/car/hal/VehicleHal$Debug;->onEvent(Ljava/util/HashMap;)V

    .line 123
    :cond_1
    :goto_0
    return-void
.end method
