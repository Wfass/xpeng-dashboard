.class Lcom/android/car/hal/VehicleHal$HalEventHandler;
.super Landroid/os/Handler;
.source "VehicleHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/hal/VehicleHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HalEventHandler"
.end annotation


# static fields
.field private static final MSG_ON_PROPERTY_EVENT:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/car/hal/VehicleHal;


# direct methods
.method constructor <init>(Lcom/android/car/hal/VehicleHal;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/hal/VehicleHal;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 920
    iput-object p1, p0, Lcom/android/car/hal/VehicleHal$HalEventHandler;->this$0:Lcom/android/car/hal/VehicleHal;

    .line 921
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 922
    return-void
.end method

.method private dispatchEvent(Lcom/android/car/hal/VehicleHal$HalEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/android/car/hal/VehicleHal$HalEvent;

    .line 936
    invoke-virtual {p1}, Lcom/android/car/hal/VehicleHal$HalEvent;->dispatchEvent()V

    .line 937
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 926
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 927
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 929
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/car/hal/VehicleHal$HalEvent;

    invoke-direct {p0, v0}, Lcom/android/car/hal/VehicleHal$HalEventHandler;->dispatchEvent(Lcom/android/car/hal/VehicleHal$HalEvent;)V

    .line 930
    nop

    .line 933
    :goto_0
    return-void
.end method
