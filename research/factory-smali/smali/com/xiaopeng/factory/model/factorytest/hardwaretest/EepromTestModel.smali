.class public Lcom/xiaopeng/factory/model/factorytest/hardwaretest/EepromTestModel;
.super Ljava/lang/Object;
.source "EepromTestModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EepromTestModel"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendEepromTestMessage()V
    .locals 3

    .line 15
    new-instance v0, Lcom/xiaopeng/factory/bean/car/AndroidTest;

    invoke-direct {v0}, Lcom/xiaopeng/factory/bean/car/AndroidTest;-><init>()V

    .line 16
    .local v0, "mcuMsg":Lcom/xiaopeng/factory/bean/car/AndroidTest;
    const/4 v1, 0x1

    iput v1, v0, Lcom/xiaopeng/factory/bean/car/AndroidTest;->eepromTest:I

    .line 17
    invoke-static {}, Lcom/xiaopeng/factory/model/car/McuModel;->getInstance()Lcom/xiaopeng/factory/model/car/McuModel;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/factory/bean/car/AndroidTest;->packToIntArray()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/factory/model/car/McuModel;->sendFactoryTestMsgToMcu([I)V

    .line 18
    return-void
.end method
