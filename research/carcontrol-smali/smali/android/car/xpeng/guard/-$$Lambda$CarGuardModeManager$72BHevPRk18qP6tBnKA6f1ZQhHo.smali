.class public final synthetic Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$72BHevPRk18qP6tBnKA6f1ZQhHo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/car/xpeng/guard/CarGuardModeManager;

.field public final synthetic f$1:Landroid/car/xpeng/guard/CarGuardModeEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/car/xpeng/guard/CarGuardModeManager;Landroid/car/xpeng/guard/CarGuardModeEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$72BHevPRk18qP6tBnKA6f1ZQhHo;->f$0:Landroid/car/xpeng/guard/CarGuardModeManager;

    iput-object p2, p0, Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$72BHevPRk18qP6tBnKA6f1ZQhHo;->f$1:Landroid/car/xpeng/guard/CarGuardModeEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$72BHevPRk18qP6tBnKA6f1ZQhHo;->f$0:Landroid/car/xpeng/guard/CarGuardModeManager;

    iget-object v1, p0, Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$72BHevPRk18qP6tBnKA6f1ZQhHo;->f$1:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-virtual {v0, v1}, Landroid/car/xpeng/guard/CarGuardModeManager;->lambda$dispatchCarGuardModeChanged$0$CarGuardModeManager(Landroid/car/xpeng/guard/CarGuardModeEvent;)V

    return-void
.end method
