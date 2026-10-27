.class public final synthetic Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$uSig-te2JeR0rcVvrgX-_TCYUzU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/car/xpeng/guard/CarGuardModeManager;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/car/xpeng/guard/CarGuardModeManager;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$uSig-te2JeR0rcVvrgX-_TCYUzU;->f$0:Landroid/car/xpeng/guard/CarGuardModeManager;

    iput-boolean p2, p0, Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$uSig-te2JeR0rcVvrgX-_TCYUzU;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$uSig-te2JeR0rcVvrgX-_TCYUzU;->f$0:Landroid/car/xpeng/guard/CarGuardModeManager;

    iget-boolean v1, p0, Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$uSig-te2JeR0rcVvrgX-_TCYUzU;->f$1:Z

    invoke-virtual {v0, v1}, Landroid/car/xpeng/guard/CarGuardModeManager;->lambda$dispatchCarGuardWork$1$CarGuardModeManager(Z)V

    return-void
.end method
