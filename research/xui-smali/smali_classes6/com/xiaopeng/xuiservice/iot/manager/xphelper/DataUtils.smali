.class public Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;
.super Ljava/lang/Object;
.source "DataUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Ble.DataUtils"

.field private static assembleStartTick:J

.field private static bos:Ljava/io/ByteArrayOutputStream;

.field private static dataEnd:Z

.field private static dataSize:I

.field private static dataValid:Z

.field private static lastUnit:J

.field private static unitLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    const/4 v0, 0x0

    sput v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->dataSize:I

    .line 12
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->assembleStartTick:J

    .line 13
    sput-wide v1, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->lastUnit:J

    .line 14
    const/16 v1, 0x14

    sput v1, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->unitLength:I

    .line 15
    const/4 v1, 0x0

    sput-object v1, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->bos:Ljava/io/ByteArrayOutputStream;

    .line 16
    sput-boolean v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->dataValid:Z

    .line 17
    sput-boolean v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->dataEnd:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dataAssemble([B)Ljava/lang/String;
    .locals 13
    .param p0, "data"    # [B

    .line 32
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    .line 33
    .local v1, "totalUnit":I
    const/4 v3, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    .line 34
    .local v3, "currentUnit":I
    const-wide/16 v4, 0x0

    .line 36
    .local v4, "transferTime":J
    const/4 v6, 0x4

    if-nez v3, :cond_1

    .line 38
    sput v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->dataSize:I

    .line 39
    const-wide/16 v7, 0x0

    sput-wide v7, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->lastUnit:J

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sput-wide v7, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->assembleStartTick:J

    .line 42
    array-length v7, p0

    sput v7, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->unitLength:I

    .line 43
    sput-boolean v2, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->dataValid:Z

    .line 44
    sput-boolean v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->dataEnd:Z

    .line 45
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->bos:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 48
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->bos:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_3

    .line 49
    array-length v0, p0

    sub-int/2addr v0, v6

    mul-int/2addr v0, v1

    .line 50
    .local v0, "data_length":I
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    sput-object v7, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->bos:Ljava/io/ByteArrayOutputStream;

    .line 51
    .end local v0    # "data_length":I
    goto :goto_0

    .line 53
    :cond_1
    sget-wide v7, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->lastUnit:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    int-to-long v11, v3

    cmp-long v7, v7, v11

    if-eqz v7, :cond_2

    .line 54
    const-string v7, "Ble.DataUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dataAssemble, discontinuous unit,expected:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v11, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->lastUnit:J

    add-long/2addr v11, v9

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ",but meet:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sput-boolean v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->dataValid:Z

    .line 60
    :cond_2
    int-to-long v7, v3

    sput-wide v7, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->lastUnit:J

    .line 63
    :cond_3
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sget-wide v9, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->assembleStartTick:J

    sub-long/2addr v7, v9

    .line 64
    .end local v4    # "transferTime":J
    .local v7, "transferTime":J
    sget v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->dataSize:I

    array-length v4, p0

    sub-int/2addr v4, v6

    add-int/2addr v0, v4

    sput v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->dataSize:I

    .line 66
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->bos:Ljava/io/ByteArrayOutputStream;

    array-length v4, p0

    sub-int/2addr v4, v6

    invoke-virtual {v0, p0, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 68
    add-int/lit8 v0, v3, 0x1

    if-ne v0, v1, :cond_5

    .line 70
    sget-boolean v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->dataValid:Z

    if-eqz v0, :cond_4

    .line 71
    sput-boolean v2, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->dataEnd:Z

    goto :goto_1

    .line 73
    :cond_4
    const-string v0, "Ble.DataUtils"

    const-string v2, "receive done but missed some units"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dataAssemble, total unit="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",current unit="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",current len="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    sub-int/2addr v2, v6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",received size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->dataSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",transfer time="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "info":Ljava/lang/String;
    const-string v2, "Ble.DataUtils"

    invoke-static {v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-boolean v2, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->dataEnd:Z

    if-eqz v2, :cond_6

    sget-boolean v2, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->dataValid:Z

    if-eqz v2, :cond_6

    .line 83
    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 85
    :cond_6
    const/4 v2, 0x0

    return-object v2
.end method

.method public static reset()V
    .locals 3

    .line 20
    const/4 v0, 0x0

    sput v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->dataSize:I

    .line 21
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->assembleStartTick:J

    .line 22
    sput-wide v1, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->lastUnit:J

    .line 23
    const/16 v1, 0x14

    sput v1, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->unitLength:I

    .line 24
    sput-boolean v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->dataValid:Z

    .line 25
    sput-boolean v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->dataEnd:Z

    .line 26
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->bos:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/DataUtils;->bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 29
    :cond_0
    return-void
.end method
