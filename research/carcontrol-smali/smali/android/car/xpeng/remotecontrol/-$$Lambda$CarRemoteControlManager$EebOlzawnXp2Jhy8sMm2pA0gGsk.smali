.class public final synthetic Landroid/car/xpeng/remotecontrol/-$$Lambda$CarRemoteControlManager$EebOlzawnXp2Jhy8sMm2pA0gGsk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/xpeng/remotecontrol/-$$Lambda$CarRemoteControlManager$EebOlzawnXp2Jhy8sMm2pA0gGsk;->f$0:Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;

    iput-object p2, p0, Landroid/car/xpeng/remotecontrol/-$$Lambda$CarRemoteControlManager$EebOlzawnXp2Jhy8sMm2pA0gGsk;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/car/xpeng/remotecontrol/-$$Lambda$CarRemoteControlManager$EebOlzawnXp2Jhy8sMm2pA0gGsk;->f$0:Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;

    iget-object v1, p0, Landroid/car/xpeng/remotecontrol/-$$Lambda$CarRemoteControlManager$EebOlzawnXp2Jhy8sMm2pA0gGsk;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->lambda$handleCarRemoteCameraEventChanged$0$CarRemoteControlManager(Ljava/lang/String;)V

    return-void
.end method
