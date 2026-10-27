.class Landroid/car/xpeng/remind/CarRemindManager$1;
.super Lcom/android/car/internal/SingleMessageHandler;
.source "CarRemindManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/car/xpeng/remind/CarRemindManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/car/internal/SingleMessageHandler<",
        "Landroid/car/hardware/property/CarPropertyEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/car/xpeng/remind/CarRemindManager;


# direct methods
.method constructor <init>(Landroid/car/xpeng/remind/CarRemindManager;Landroid/os/Looper;I)V
    .locals 0

    .line 140
    iput-object p1, p0, Landroid/car/xpeng/remind/CarRemindManager$1;->this$0:Landroid/car/xpeng/remind/CarRemindManager;

    invoke-direct {p0, p2, p3}, Lcom/android/car/internal/SingleMessageHandler;-><init>(Landroid/os/Looper;I)V

    return-void
.end method


# virtual methods
.method protected handleEvent(Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 4

    .line 143
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 148
    :cond_0
    iget-object v1, p0, Landroid/car/xpeng/remind/CarRemindManager$1;->this$0:Landroid/car/xpeng/remind/CarRemindManager;

    monitor-enter v1

    .line 149
    :try_start_0
    iget-object v2, p0, Landroid/car/xpeng/remind/CarRemindManager$1;->this$0:Landroid/car/xpeng/remind/CarRemindManager;

    invoke-static {v2}, Landroid/car/xpeng/remind/CarRemindManager;->access$000(Landroid/car/xpeng/remind/CarRemindManager;)Landroid/util/SparseArray;

    move-result-object v2

    .line 150
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v3

    invoke-virtual {v3}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v3

    .line 149
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/xpeng/remind/CarRemindManager$CarRemindEventCallbacks;

    .line 151
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    .line 153
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getEventType()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    if-ne v1, p1, :cond_1

    .line 158
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, p1, v0}, Landroid/car/xpeng/remind/CarRemindManager$CarRemindEventCallbacks;->onErrorEvent(II)V

    goto :goto_0

    .line 161
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 155
    :cond_2
    invoke-virtual {v2, p1}, Landroid/car/xpeng/remind/CarRemindManager$CarRemindEventCallbacks;->onPropertyChanged(Landroid/car/hardware/property/CarPropertyEvent;)V

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 151
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected bridge synthetic handleEvent(Ljava/lang/Object;)V
    .locals 0

    .line 140
    check-cast p1, Landroid/car/hardware/property/CarPropertyEvent;

    invoke-virtual {p0, p1}, Landroid/car/xpeng/remind/CarRemindManager$1;->handleEvent(Landroid/car/hardware/property/CarPropertyEvent;)V

    return-void
.end method
