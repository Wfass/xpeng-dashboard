.class final Lcom/xiaopeng/aar/LogBlackList$1;
.super Ljava/util/HashSet;
.source "LogBlackList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aar/LogBlackList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const-string v0, "onBackBeltWaringChanged"

    .line 9
    invoke-virtual {p0, v0}, Lcom/xiaopeng/aar/LogBlackList$1;->add(Ljava/lang/Object;)Z

    const-string v0, "onAvasLowSpdEffectChanged"

    .line 10
    invoke-virtual {p0, v0}, Lcom/xiaopeng/aar/LogBlackList$1;->add(Ljava/lang/Object;)Z

    const-string v0, "onLowSpeedVolumeChanged"

    .line 11
    invoke-virtual {p0, v0}, Lcom/xiaopeng/aar/LogBlackList$1;->add(Ljava/lang/Object;)Z

    const-string v0, "onWindowPosChanged"

    .line 12
    invoke-virtual {p0, v0}, Lcom/xiaopeng/aar/LogBlackList$1;->add(Ljava/lang/Object;)Z

    const-string v0, "onDrvVerPosChanged"

    .line 13
    invoke-virtual {p0, v0}, Lcom/xiaopeng/aar/LogBlackList$1;->add(Ljava/lang/Object;)Z

    const-string v0, "onDrvHorPosChanged"

    .line 14
    invoke-virtual {p0, v0}, Lcom/xiaopeng/aar/LogBlackList$1;->add(Ljava/lang/Object;)Z

    const-string v0, "onBrakeLightChanged"

    .line 15
    invoke-virtual {p0, v0}, Lcom/xiaopeng/aar/LogBlackList$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "setScreenBrightness"

    .line 16
    invoke-virtual {p0, v0}, Lcom/xiaopeng/aar/LogBlackList$1;->add(Ljava/lang/Object;)Z

    const-string v0, "notifyMeterBrightnessChanged"

    .line 17
    invoke-virtual {p0, v0}, Lcom/xiaopeng/aar/LogBlackList$1;->add(Ljava/lang/Object;)Z

    const-string v0, "onMeterBrightnessChanged"

    .line 18
    invoke-virtual {p0, v0}, Lcom/xiaopeng/aar/LogBlackList$1;->add(Ljava/lang/Object;)Z

    const-string v0, "onScreenBrightnessChanged"

    .line 19
    invoke-virtual {p0, v0}, Lcom/xiaopeng/aar/LogBlackList$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
