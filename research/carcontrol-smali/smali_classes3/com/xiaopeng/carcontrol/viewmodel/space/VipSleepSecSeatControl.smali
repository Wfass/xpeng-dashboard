.class public Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;
.super Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;
.source "VipSleepSecSeatControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl$SingleHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VipSleepSecSeatControl"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl$1;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;
    .locals 1

    .line 14
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl$SingleHolder;->access$100()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onVipSeatLayFlatFinish()V
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVipSeatLayFlatEnd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VipSleepSecSeatControl"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;->mSeatStatus:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatMoving:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    if-ne v0, v1, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;->isLayFlatCorrectly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRLSeatFold(Z)V

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRRSeatFold(Z)V

    .line 31
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatSecFold:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    goto :goto_0

    .line 33
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;->FlatPause:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;->callbackStatus(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V

    :cond_1
    :goto_0
    return-void
.end method
