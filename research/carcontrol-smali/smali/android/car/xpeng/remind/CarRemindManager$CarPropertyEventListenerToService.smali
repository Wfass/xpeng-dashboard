.class Landroid/car/xpeng/remind/CarRemindManager$CarPropertyEventListenerToService;
.super Landroid/car/hardware/property/ICarPropertyEventListener$Stub;
.source "CarRemindManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/remind/CarRemindManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarPropertyEventListenerToService"
.end annotation


# instance fields
.field private final mMgr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/car/xpeng/remind/CarRemindManager;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/car/xpeng/remind/CarRemindManager;


# direct methods
.method constructor <init>(Landroid/car/xpeng/remind/CarRemindManager;Landroid/car/xpeng/remind/CarRemindManager;)V
    .locals 0

    .line 331
    iput-object p1, p0, Landroid/car/xpeng/remind/CarRemindManager$CarPropertyEventListenerToService;->this$0:Landroid/car/xpeng/remind/CarRemindManager;

    invoke-direct {p0}, Landroid/car/hardware/property/ICarPropertyEventListener$Stub;-><init>()V

    .line 332
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/car/xpeng/remind/CarRemindManager$CarPropertyEventListenerToService;->mMgr:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/hardware/property/CarPropertyEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Landroid/car/xpeng/remind/CarRemindManager$CarPropertyEventListenerToService;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/xpeng/remind/CarRemindManager;

    if-eqz v0, :cond_0

    .line 339
    invoke-static {v0, p1}, Landroid/car/xpeng/remind/CarRemindManager;->access$200(Landroid/car/xpeng/remind/CarRemindManager;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onShmEvent(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/hardware/property/CarPropertyEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onShmEvent(Ljava/util/List;Ljava/io/FileDescriptor;)V
    .locals 0
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
