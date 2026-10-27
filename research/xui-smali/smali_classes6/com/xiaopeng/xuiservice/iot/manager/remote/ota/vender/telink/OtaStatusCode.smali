.class public Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaStatusCode;
.super Ljava/lang/Object;
.source "OtaStatusCode.java"


# static fields
.field public static final BUSY:I = 0x4

.field public static final FAIL_CHARACTERISTIC_NOT_FOUND:I = 0x1a

.field public static final FAIL_CONNECTION_INTERRUPT:I = 0x11

.field public static final FAIL_FIRMWARE_CHECK_ERR:I = 0x1b

.field public static final FAIL_FLOW_TIMEOUT:I = 0x16

.field public static final FAIL_FW_VERSION_REQ_TIMEOUT:I = 0x1c

.field public static final FAIL_OTA_RESULT_NOTIFICATION:I = 0x1d

.field public static final FAIL_PACKET_SENT_ERR:I = 0x14

.field public static final FAIL_PACKET_SENT_TIMEOUT:I = 0x15

.field public static final FAIL_PARAMS_ERR:I = 0x10

.field public static final FAIL_SERVICE_NOT_FOUND:I = 0x19

.field public static final FAIL_UNCONNECTED:I = 0x18

.field public static final FAIL_VERSION_COMPARE_ERR:I = 0x13

.field public static final FAIL_VERSION_RSP_ERROR:I = 0x12

.field public static final STARTED:I = 0x1

.field public static final SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isComplete(I)Z
    .locals 1
    .param p0, "code"    # I

    .line 32
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaStatusCode;->isFailed(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isFailed(I)Z
    .locals 1
    .param p0, "code"    # I

    .line 25
    const/16 v0, 0x10

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
