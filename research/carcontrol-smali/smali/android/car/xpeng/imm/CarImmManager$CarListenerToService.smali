.class Landroid/car/xpeng/imm/CarImmManager$CarListenerToService;
.super Landroid/car/xpeng/imm/ICarImmListener$Stub;
.source "CarImmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/imm/CarImmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CarListenerToService"
.end annotation


# instance fields
.field private final mMgr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/car/xpeng/imm/CarImmManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/car/xpeng/imm/CarImmManager;)V
    .locals 1

    .line 681
    invoke-direct {p0}, Landroid/car/xpeng/imm/ICarImmListener$Stub;-><init>()V

    .line 682
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/car/xpeng/imm/CarImmManager$CarListenerToService;->mMgr:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onImmAvmStateChanged(Z)V
    .locals 1

    .line 695
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager$CarListenerToService;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/xpeng/imm/CarImmManager;

    if-eqz v0, :cond_0

    .line 697
    invoke-static {v0, p1}, Landroid/car/xpeng/imm/CarImmManager;->access$100(Landroid/car/xpeng/imm/CarImmManager;Z)V

    :cond_0
    return-void
.end method

.method public onImmStateChanged(I)V
    .locals 1

    .line 687
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager$CarListenerToService;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/xpeng/imm/CarImmManager;

    if-eqz v0, :cond_0

    .line 689
    invoke-static {v0, p1}, Landroid/car/xpeng/imm/CarImmManager;->access$000(Landroid/car/xpeng/imm/CarImmManager;I)V

    :cond_0
    return-void
.end method

.method public onImmVoiceAwakenStateChanged(Z)V
    .locals 1

    .line 703
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager$CarListenerToService;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/xpeng/imm/CarImmManager;

    if-eqz v0, :cond_0

    .line 705
    invoke-static {v0, p1}, Landroid/car/xpeng/imm/CarImmManager;->access$200(Landroid/car/xpeng/imm/CarImmManager;Z)V

    :cond_0
    return-void
.end method
