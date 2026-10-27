.class public abstract Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CDUSensor;
.super Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;
.source "CDUSensor.java"


# instance fields
.field private frontPackage:Ljava/lang/String;

.field private hasOpenBioMode:Z

.field private hasOpenFastFridgeMode:Z

.field private hasOpenInvisibleMode:Z

.field private hasOpenVentilateMode:Z

.field private hasOpenWaitMode:Z

.field private isBioMode:Z

.field private isFastFridgeMode:Z

.field private isInvisibleMode:Z

.field private isVentilateMode:Z

.field private isWaitMode:Z

.field private localPackages:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;-><init>()V

    return-void
.end method


# virtual methods
.method public getFrontPackage()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CDUSensor;->frontPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPackages()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CDUSensor;->localPackages:Ljava/lang/String;

    return-object v0
.end method

.method public isBioMode()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CDUSensor;->isBioMode:Z

    return v0
.end method

.method public isFastFridgeMode()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CDUSensor;->isFastFridgeMode:Z

    return v0
.end method

.method public isHasOpenBioMode()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CDUSensor;->hasOpenBioMode:Z

    return v0
.end method

.method public isHasOpenFastFridgeMode()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CDUSensor;->hasOpenFastFridgeMode:Z

    return v0
.end method

.method public isHasOpenInvisibleMode()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CDUSensor;->hasOpenInvisibleMode:Z

    return v0
.end method

.method public isHasOpenVentilateMode()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CDUSensor;->hasOpenVentilateMode:Z

    return v0
.end method

.method public isHasOpenWaitMode()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CDUSensor;->hasOpenWaitMode:Z

    return v0
.end method

.method public isInvisibleMode()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CDUSensor;->isInvisibleMode:Z

    return v0
.end method

.method public isVentilateMode()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CDUSensor;->isVentilateMode:Z

    return v0
.end method

.method public isWaitMode()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CDUSensor;->isWaitMode:Z

    return v0
.end method

.method public sensorName()Ljava/lang/String;
    .locals 1

    .line 169
    const-class v0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CDUSensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBioMode(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CDUSensor;->isBioMode:Z

    return-void
.end method

.method public setFastFridgeMode(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CDUSensor;->isFastFridgeMode:Z

    return-void
.end method

.method public setFrontPackage(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CDUSensor;->frontPackage:Ljava/lang/String;

    return-void
.end method

.method public setHasOpenBioMode(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CDUSensor;->hasOpenBioMode:Z

    return-void
.end method

.method public setHasOpenFastFridgeMode(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CDUSensor;->hasOpenFastFridgeMode:Z

    return-void
.end method

.method public setHasOpenInvisibleMode(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CDUSensor;->hasOpenInvisibleMode:Z

    return-void
.end method

.method public setHasOpenVentilateMode(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CDUSensor;->hasOpenVentilateMode:Z

    return-void
.end method

.method public setHasOpenWaitMode(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CDUSensor;->hasOpenWaitMode:Z

    return-void
.end method

.method public setInvisibleMode(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CDUSensor;->isInvisibleMode:Z

    return-void
.end method

.method public setLocalPackages(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CDUSensor;->localPackages:Ljava/lang/String;

    return-void
.end method

.method public setVentilateMode(Z)V
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CDUSensor;->isVentilateMode:Z

    return-void
.end method

.method public setWaitMode(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CDUSensor;->isWaitMode:Z

    return-void
.end method
