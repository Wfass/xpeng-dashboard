.class public final synthetic Landroid/car/xpeng/remotecontrol/-$$Lambda$CarRemoteControlManager$gKtbxyH17Ozwl1fFFgP7FDOrCRU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/xpeng/remotecontrol/-$$Lambda$CarRemoteControlManager$gKtbxyH17Ozwl1fFFgP7FDOrCRU;->f$0:Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;

    iput p2, p0, Landroid/car/xpeng/remotecontrol/-$$Lambda$CarRemoteControlManager$gKtbxyH17Ozwl1fFFgP7FDOrCRU;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/car/xpeng/remotecontrol/-$$Lambda$CarRemoteControlManager$gKtbxyH17Ozwl1fFFgP7FDOrCRU;->f$0:Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;

    iget v1, p0, Landroid/car/xpeng/remotecontrol/-$$Lambda$CarRemoteControlManager$gKtbxyH17Ozwl1fFFgP7FDOrCRU;->f$1:I

    invoke-virtual {v0, v1}, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->lambda$handleCarRemoteMirrorControlEventChanged$1$CarRemoteControlManager(I)V

    return-void
.end method
