.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$pWOWo4mbcahvx655T7d7VzuvWis;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$pWOWo4mbcahvx655T7d7VzuvWis;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$VipSeatControl$pWOWo4mbcahvx655T7d7VzuvWis;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->lambda$observerDrvSeatOccupied$17$VipSeatControl()V

    return-void
.end method
