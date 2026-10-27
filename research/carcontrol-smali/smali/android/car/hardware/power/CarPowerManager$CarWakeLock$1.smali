.class Landroid/car/hardware/power/CarPowerManager$CarWakeLock$1;
.super Ljava/lang/Object;
.source "CarPowerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/power/CarPowerManager$CarWakeLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/car/hardware/power/CarPowerManager$CarWakeLock;


# direct methods
.method constructor <init>(Landroid/car/hardware/power/CarPowerManager$CarWakeLock;)V
    .locals 0

    .line 343
    iput-object p1, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock$1;->this$1:Landroid/car/hardware/power/CarPowerManager$CarWakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 345
    iget-object v0, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock$1;->this$1:Landroid/car/hardware/power/CarPowerManager$CarWakeLock;

    invoke-static {v0}, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->access$000(Landroid/car/hardware/power/CarPowerManager$CarWakeLock;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->release(I)V

    return-void
.end method
