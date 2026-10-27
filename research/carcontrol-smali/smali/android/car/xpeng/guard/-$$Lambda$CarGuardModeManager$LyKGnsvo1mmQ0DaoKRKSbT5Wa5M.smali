.class public final synthetic Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$LyKGnsvo1mmQ0DaoKRKSbT5Wa5M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/car/xpeng/guard/CarGuardModeManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/car/xpeng/guard/CarGuardModeManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$LyKGnsvo1mmQ0DaoKRKSbT5Wa5M;->f$0:Landroid/car/xpeng/guard/CarGuardModeManager;

    iput p2, p0, Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$LyKGnsvo1mmQ0DaoKRKSbT5Wa5M;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$LyKGnsvo1mmQ0DaoKRKSbT5Wa5M;->f$0:Landroid/car/xpeng/guard/CarGuardModeManager;

    iget v1, p0, Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$LyKGnsvo1mmQ0DaoKRKSbT5Wa5M;->f$1:I

    invoke-virtual {v0, v1}, Landroid/car/xpeng/guard/CarGuardModeManager;->lambda$dispatchCarGuardModeSceneOrientationChanged$5$CarGuardModeManager(I)V

    return-void
.end method
