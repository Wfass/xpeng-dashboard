.class public final synthetic Landroid/car/xpeng/mode/-$$Lambda$CarCareModeManager$akM78MdbUb-W1an69Lnb3dXTHZ0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/car/xpeng/mode/CarCareModeManager;

.field public final synthetic f$1:Landroid/car/xpeng/mode/CarCareModeEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/car/xpeng/mode/CarCareModeManager;Landroid/car/xpeng/mode/CarCareModeEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/xpeng/mode/-$$Lambda$CarCareModeManager$akM78MdbUb-W1an69Lnb3dXTHZ0;->f$0:Landroid/car/xpeng/mode/CarCareModeManager;

    iput-object p2, p0, Landroid/car/xpeng/mode/-$$Lambda$CarCareModeManager$akM78MdbUb-W1an69Lnb3dXTHZ0;->f$1:Landroid/car/xpeng/mode/CarCareModeEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/car/xpeng/mode/-$$Lambda$CarCareModeManager$akM78MdbUb-W1an69Lnb3dXTHZ0;->f$0:Landroid/car/xpeng/mode/CarCareModeManager;

    iget-object v1, p0, Landroid/car/xpeng/mode/-$$Lambda$CarCareModeManager$akM78MdbUb-W1an69Lnb3dXTHZ0;->f$1:Landroid/car/xpeng/mode/CarCareModeEvent;

    invoke-virtual {v0, v1}, Landroid/car/xpeng/mode/CarCareModeManager;->lambda$handleCarCareModeEventChanged$0$CarCareModeManager(Landroid/car/xpeng/mode/CarCareModeEvent;)V

    return-void
.end method
