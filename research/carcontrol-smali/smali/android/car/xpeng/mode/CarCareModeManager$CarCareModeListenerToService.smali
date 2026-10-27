.class Landroid/car/xpeng/mode/CarCareModeManager$CarCareModeListenerToService;
.super Landroid/car/xpeng/mode/ICarCareModeListener$Stub;
.source "CarCareModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/mode/CarCareModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CarCareModeListenerToService"
.end annotation


# instance fields
.field private final mCarCareModeMgr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/car/xpeng/mode/CarCareModeManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/car/xpeng/mode/CarCareModeManager;)V
    .locals 1

    .line 205
    invoke-direct {p0}, Landroid/car/xpeng/mode/ICarCareModeListener$Stub;-><init>()V

    .line 206
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/car/xpeng/mode/CarCareModeManager$CarCareModeListenerToService;->mCarCareModeMgr:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onCareModeEventChange(Landroid/car/xpeng/mode/CarCareModeEvent;)V
    .locals 2

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCareModeEventChange() event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarCareModeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Landroid/car/xpeng/mode/CarCareModeManager$CarCareModeListenerToService;->mCarCareModeMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/xpeng/mode/CarCareModeManager;

    if-eqz v0, :cond_0

    .line 214
    invoke-static {v0, p1}, Landroid/car/xpeng/mode/CarCareModeManager;->access$000(Landroid/car/xpeng/mode/CarCareModeManager;Landroid/car/xpeng/mode/CarCareModeEvent;)V

    :cond_0
    return-void
.end method
