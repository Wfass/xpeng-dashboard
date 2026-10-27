.class Landroid/car/xpeng/energy/CarEnergyConspManager$CarEnergyConspListenerToService;
.super Landroid/car/xpeng/energy/ICarEnergyConspListener$Stub;
.source "CarEnergyConspManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/energy/CarEnergyConspManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CarEnergyConspListenerToService"
.end annotation


# instance fields
.field private final mCarEnergyConspMgr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/car/xpeng/energy/CarEnergyConspManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/car/xpeng/energy/CarEnergyConspManager;)V
    .locals 1

    .line 171
    invoke-direct {p0}, Landroid/car/xpeng/energy/ICarEnergyConspListener$Stub;-><init>()V

    .line 172
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/car/xpeng/energy/CarEnergyConspManager$CarEnergyConspListenerToService;->mCarEnergyConspMgr:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onCarEnergyConspChange(Landroid/car/xpeng/energy/CarEnergyConspEvent;)V
    .locals 2

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnergyConspChange() event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarEnergyConspManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Landroid/car/xpeng/energy/CarEnergyConspManager$CarEnergyConspListenerToService;->mCarEnergyConspMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/xpeng/energy/CarEnergyConspManager;

    if-eqz v0, :cond_0

    .line 179
    invoke-static {v0, p1}, Landroid/car/xpeng/energy/CarEnergyConspManager;->access$000(Landroid/car/xpeng/energy/CarEnergyConspManager;Landroid/car/xpeng/energy/CarEnergyConspEvent;)V

    :cond_0
    return-void
.end method
