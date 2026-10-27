.class Landroid/car/xpeng/mode/CarLeaveModeManager$CarLeaveModeListenerToService;
.super Landroid/car/xpeng/mode/ICarLeaveModeListener$Stub;
.source "CarLeaveModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/mode/CarLeaveModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CarLeaveModeListenerToService"
.end annotation


# instance fields
.field private final mCarLeaveModeMgr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/car/xpeng/mode/CarLeaveModeManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/car/xpeng/mode/CarLeaveModeManager;)V
    .locals 1

    .line 311
    invoke-direct {p0}, Landroid/car/xpeng/mode/ICarLeaveModeListener$Stub;-><init>()V

    .line 312
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/car/xpeng/mode/CarLeaveModeManager$CarLeaveModeListenerToService;->mCarLeaveModeMgr:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onLeaveModeEventChange(Landroid/car/xpeng/mode/CarLeaveModeEvent;)V
    .locals 2

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLeaveModeEventChange() event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarLeaveModeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Landroid/car/xpeng/mode/CarLeaveModeManager$CarLeaveModeListenerToService;->mCarLeaveModeMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/xpeng/mode/CarLeaveModeManager;

    if-eqz v0, :cond_0

    .line 320
    invoke-static {v0, p1}, Landroid/car/xpeng/mode/CarLeaveModeManager;->access$000(Landroid/car/xpeng/mode/CarLeaveModeManager;Landroid/car/xpeng/mode/CarLeaveModeEvent;)V

    :cond_0
    return-void
.end method
