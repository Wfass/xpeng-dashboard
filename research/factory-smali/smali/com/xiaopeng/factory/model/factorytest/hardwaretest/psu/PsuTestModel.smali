.class public Lcom/xiaopeng/factory/model/factorytest/hardwaretest/psu/PsuTestModel;
.super Ljava/lang/Object;
.source "PsuTestModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PsuTestModel"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isPsuExit(II)Z
    .locals 1
    .param p1, "vid"    # I
    .param p2, "pid"    # I

    .line 25
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/factory/utils/FileUtil;->isUsbDeviceAttached(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method

.method public sendCanTestMessage()V
    .locals 4

    .line 18
    new-instance v0, Lcom/xiaopeng/factory/bean/car/AndroidTest;

    invoke-direct {v0}, Lcom/xiaopeng/factory/bean/car/AndroidTest;-><init>()V

    .line 19
    .local v0, "msg":Lcom/xiaopeng/factory/bean/car/AndroidTest;
    const/4 v1, 0x1

    iput v1, v0, Lcom/xiaopeng/factory/bean/car/AndroidTest;->canTest:I

    .line 20
    const-string v1, "PsuTestModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendFactoryTestMsgToMcu data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/bean/car/AndroidTest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/xiaopeng/factory/model/car/McuModel;->getInstance()Lcom/xiaopeng/factory/model/car/McuModel;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/factory/bean/car/AndroidTest;->packToIntArray()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/factory/model/car/McuModel;->sendFactoryTestMsgToMcu([I)V

    .line 22
    return-void
.end method
