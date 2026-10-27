.class public final enum Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;
.super Ljava/lang/Enum;
.source "ResultCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

.field public static final enum OTA_DATA_CRC_ERR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

.field public static final enum OTA_DATA_INCOMPLETE:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

.field public static final enum OTA_DATA_PACKET_SEQ_ERR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

.field public static final enum OTA_DATA_PACKET_TIMEOUT:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

.field public static final enum OTA_FAIL_DUE_TO_CONNECTION_TERMINATE:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

.field public static final enum OTA_FIRMWARE_MARK_ERR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

.field public static final enum OTA_FLOW_ERR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

.field public static final enum OTA_FW_CHECK_ERR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

.field public static final enum OTA_FW_SIZE_ERR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

.field public static final enum OTA_PACKET_INVALID:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

.field public static final enum OTA_PDU_LEN_ERR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

.field public static final enum OTA_SUCCESS:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

.field public static final enum OTA_TIMEOUT:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

.field public static final enum OTA_VERSION_COMPARE_ERR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

.field public static final enum OTA_WRITE_FLASH_ERR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

.field public static final enum UNKNOWN_CODE:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;


# instance fields
.field public final info:Ljava/lang/String;

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 4
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    const-string v1, "OTA_SUCCESS"

    const-string v2, "success"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->OTA_SUCCESS:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    .line 5
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    const-string v1, "OTA_DATA_PACKET_SEQ_ERR"

    const-string v2, "OTA data packet sequence number error"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->OTA_DATA_PACKET_SEQ_ERR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    .line 6
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    const-string v1, "OTA_PACKET_INVALID"

    const-string v2, "invalid OTA packet"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->OTA_PACKET_INVALID:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    .line 7
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    const-string v1, "OTA_DATA_CRC_ERR"

    const-string v2, "packet PDU CRC error"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->OTA_DATA_CRC_ERR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    .line 8
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    const-string v1, "OTA_WRITE_FLASH_ERR"

    const-string/jumbo v2, "write OTA data to flash error"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->OTA_WRITE_FLASH_ERR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    .line 9
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    const-string v1, "OTA_DATA_INCOMPLETE"

    const-string v2, "lost last one or more OTA PDU"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->OTA_DATA_INCOMPLETE:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    .line 10
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    const-string v1, "OTA_FLOW_ERR"

    const-string v2, "peer device send OTA command or OTA data not in correct flow"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->OTA_FLOW_ERR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    .line 11
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    const-string v1, "OTA_FW_CHECK_ERR"

    const-string v2, "firmware CRC check error"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v10, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->OTA_FW_CHECK_ERR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    .line 12
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    const-string v1, "OTA_VERSION_COMPARE_ERR"

    const-string v2, "the version number to be update is lower"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v11, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->OTA_VERSION_COMPARE_ERR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    .line 13
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    const-string v1, "OTA_PDU_LEN_ERR"

    const-string v2, "PDU length error"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v12, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->OTA_PDU_LEN_ERR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    .line 14
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    const-string v1, "OTA_FIRMWARE_MARK_ERR"

    const-string v2, "firmware mark error"

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v13, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->OTA_FIRMWARE_MARK_ERR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    .line 15
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    const-string v1, "OTA_FW_SIZE_ERR"

    const-string v2, "firmware size error"

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v14, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->OTA_FW_SIZE_ERR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    .line 16
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    const-string v1, "OTA_DATA_PACKET_TIMEOUT"

    const-string v2, "time interval between two consequent packet exceed a value"

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v15, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->OTA_DATA_PACKET_TIMEOUT:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    .line 17
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    const-string v1, "OTA_TIMEOUT"

    const-string v2, "OTA flow total timeout"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v15, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->OTA_TIMEOUT:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    .line 18
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    const-string v1, "OTA_FAIL_DUE_TO_CONNECTION_TERMINATE"

    const-string v2, "OTA fail due to current connection terminate"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v15, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->OTA_FAIL_DUE_TO_CONNECTION_TERMINATE:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    .line 19
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    const-string v1, "UNKNOWN_CODE"

    const-string v2, "unknown code"

    const/16 v15, 0xf

    const/16 v14, 0xff

    invoke-direct {v0, v1, v15, v14, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->UNKNOWN_CODE:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    .line 3
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->OTA_SUCCESS:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->OTA_DATA_PACKET_SEQ_ERR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->OTA_PACKET_INVALID:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->OTA_DATA_CRC_ERR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->OTA_WRITE_FLASH_ERR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->OTA_DATA_INCOMPLETE:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->OTA_FLOW_ERR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    aput-object v1, v0, v9

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->OTA_FW_CHECK_ERR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    aput-object v1, v0, v10

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->OTA_VERSION_COMPARE_ERR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    aput-object v1, v0, v11

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->OTA_PDU_LEN_ERR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    aput-object v1, v0, v12

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->OTA_FIRMWARE_MARK_ERR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    aput-object v1, v0, v13

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->OTA_FW_SIZE_ERR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->OTA_DATA_PACKET_TIMEOUT:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->OTA_TIMEOUT:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->OTA_FAIL_DUE_TO_CONNECTION_TERMINATE:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->UNKNOWN_CODE:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->$VALUES:[Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->value:I

    .line 26
    iput-object p4, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->info:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static getResultCode(I)Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;
    .locals 5
    .param p0, "code"    # I

    .line 30
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->values()[Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 31
    .local v3, "resultCode":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;
    iget v4, v3, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->value:I

    if-ne p0, v4, :cond_0

    .line 32
    return-object v3

    .line 30
    .end local v3    # "resultCode":Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_1
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->UNKNOWN_CODE:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    return-object v0
.end method

.method public static values()[Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;
    .locals 1

    .line 3
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->$VALUES:[Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    invoke-virtual {v0}, [Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 41
    const-string v0, "OTA result: %02x - %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->value:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/ResultCode;->info:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
