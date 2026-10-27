.class public abstract Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;
.super Ljava/lang/Object;
.source "AbsGeneralControlCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected onBindSuccess()V
    .locals 0

    .line 162
    return-void
.end method

.method protected onBtConnectStatus(Ljava/lang/String;ZIII)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "connectStatus"    # Z
    .param p3, "linkLost"    # I
    .param p4, "profileType"    # I
    .param p5, "index"    # I

    .line 143
    return-void
.end method

.method protected onBtPairStatus(ILjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "address"    # Ljava/lang/String;

    .line 37
    return-void
.end method

.method protected onBtPower(Z)V
    .locals 0
    .param p1, "isOn"    # Z

    .line 16
    return-void
.end method

.method protected onBtRssiCallback(Ljava/lang/String;I)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rssiValue"    # I

    .line 172
    return-void
.end method

.method protected onPairRequest(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "pinCode"    # I
    .param p4, "bssp"    # Z

    .line 194
    return-void
.end method

.method protected onScanCallback(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "cod"    # I
    .param p4, "rssi"    # I
    .param p5, "complete"    # Z

    .line 155
    return-void
.end method

.method protected onSppDataCallback(I[BI)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "data"    # [B
    .param p3, "dataLength"    # I

    .line 183
    return-void
.end method
