.class public Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;
.super Ljava/lang/Object;
.source "OtaPacketParser.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TelinkOtaManager.OtaPacketParser"


# instance fields
.field private data:[B

.field private index:I

.field private pduLength:I

.field private progress:I

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->index:I

    .line 15
    const/16 v0, 0x10

    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->pduLength:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->progress:I

    .line 27
    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->total:I

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->index:I

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->data:[B

    .line 30
    return-void
.end method

.method public crc16([B)I
    .locals 10
    .param p1, "packet"    # [B

    .line 132
    const/4 v0, 0x2

    new-array v1, v0, [S

    fill-array-data v1, :array_0

    .line 133
    .local v1, "poly":[S
    const v2, 0xffff

    .line 135
    .local v2, "crc":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    .local v2, "j":I
    .local v4, "crc":I
    :goto_0
    array-length v5, p1

    sub-int/2addr v5, v0

    if-ge v2, v5, :cond_1

    .line 136
    aget-byte v5, p1, v2

    .line 138
    .local v5, "ds":I
    move v6, v5

    move v5, v4

    move v4, v3

    .local v4, "i":I
    .local v5, "crc":I
    .local v6, "ds":I
    :goto_1
    const/16 v7, 0x8

    if-ge v4, v7, :cond_0

    .line 139
    shr-int/lit8 v7, v5, 0x1

    xor-int v8, v5, v6

    and-int/lit8 v8, v8, 0x1

    aget-short v8, v1, v8

    const v9, 0xffff

    and-int/2addr v8, v9

    xor-int v5, v7, v8

    .line 140
    shr-int/lit8 v6, v6, 0x1

    .line 138
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 135
    .end local v4    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v4, v5

    goto :goto_0

    .line 144
    .end local v2    # "j":I
    .end local v5    # "crc":I
    .end local v6    # "ds":I
    .local v4, "crc":I
    :cond_1
    return v4

    nop

    :array_0
    .array-data 2
        0x0s
        -0x5fffs
    .end array-data
.end method

.method public fillCrc([BI)V
    .locals 2
    .param p1, "packet"    # [B
    .param p2, "crc"    # I

    .line 127
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 128
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 129
    return-void
.end method

.method public fillIndex([BI)V
    .locals 2
    .param p1, "packet"    # [B
    .param p2, "index"    # I

    .line 122
    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p1, v1

    .line 123
    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p1, v1

    .line 124
    return-void
.end method

.method public getCheckPacket()[B
    .locals 6

    .line 103
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 105
    .local v1, "packet":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 106
    const/4 v3, -0x1

    aput-byte v3, v1, v2

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->getNextPacketIndex()I

    move-result v0

    .line 110
    .local v0, "index":I
    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->fillIndex([BI)V

    .line 111
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->crc16([B)I

    move-result v2

    .line 112
    .local v2, "crc":I
    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->fillCrc([BI)V

    .line 114
    const-string v3, "TelinkOtaManager.OtaPacketParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ota check packet -> index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " crc: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " content: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    .line 115
    invoke-static {v1, v5}, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->bytesToHexString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 114
    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-object v1
.end method

.method public getFirmwareVersion()[B
    .locals 5

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->data:[B

    array-length v0, v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 34
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 36
    .local v1, "version":[B
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->data:[B

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 37
    return-object v1

    .line 40
    .end local v1    # "version":[B
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->index:I

    return v0
.end method

.method public getNextPacket()[B
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->getNextPacketIndex()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->index:I

    .line 58
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->index:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->getPacket(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getNextPacketIndex()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->index:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getPacket(I)[B
    .locals 12
    .param p1, "index"    # I

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->data:[B

    array-length v0, v0

    iget v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->pduLength:I

    if-le v0, v1, :cond_1

    .line 66
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->total:I

    if-ne v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->data:[B

    array-length v0, v0

    iget v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->pduLength:I

    mul-int/2addr v1, p1

    sub-int/2addr v0, v1

    .local v0, "packetSize":I
    :goto_0
    goto :goto_1

    .line 69
    .end local v0    # "packetSize":I
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->pduLength:I

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->data:[B

    array-length v0, v0

    .line 75
    .restart local v0    # "packetSize":I
    :goto_1
    iget v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->pduLength:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 76
    iget v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->pduLength:I

    add-int/2addr v1, v2

    .local v1, "totalSize":I
    goto :goto_3

    .line 78
    .end local v1    # "totalSize":I
    :cond_2
    rem-int/lit8 v1, v0, 0x10

    if-nez v1, :cond_3

    move v1, v0

    goto :goto_2

    :cond_3
    div-int/lit8 v1, v0, 0x10

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x10

    .line 80
    .local v1, "dataSize":I
    :goto_2
    add-int/2addr v1, v2

    .line 83
    .local v1, "totalSize":I
    :goto_3
    new-array v4, v1, [B

    .line 85
    .local v4, "packet":[B
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_4
    if-ge v6, v1, :cond_4

    .line 86
    const/4 v7, -0x1

    aput-byte v7, v4, v6

    .line 85
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 88
    .end local v6    # "i":I
    :cond_4
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->data:[B

    iget v7, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->pduLength:I

    mul-int/2addr v7, p1

    const/4 v8, 0x2

    invoke-static {v6, v7, v4, v8, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 90
    invoke-virtual {p0, v4, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->fillIndex([BI)V

    .line 91
    invoke-virtual {p0, v4}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->crc16([B)I

    move-result v6

    .line 92
    .local v6, "crc":I
    invoke-virtual {p0, v4, v6}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->fillCrc([BI)V

    .line 94
    const-string v7, "TelinkOtaManager.OtaPacketParser"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    const-string v10, "ota packet -> index: %d total: %d crc: %04x content: %s"

    new-array v2, v2, [Ljava/lang/Object;

    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v5

    iget v5, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->total:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x3

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->bytesToHexString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 94
    invoke-static {v9, v10, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-object v4
.end method

.method public getProgress()I
    .locals 1

    .line 159
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->progress:I

    return v0
.end method

.method public hasNextPacket()Z
    .locals 3

    .line 44
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->total:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->index:I

    add-int/2addr v0, v1

    iget v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->total:I

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public invalidateProgress()Z
    .locals 3

    .line 148
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->getNextPacketIndex()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->total:I

    div-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 149
    .local v0, "progress":I
    iget v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->progress:I

    sub-int v1, v0, v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 151
    .local v1, "res":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 152
    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->progress:I

    .line 155
    :cond_1
    return v1
.end method

.method public isLast()Z
    .locals 3

    .line 48
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->total:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public set([BI)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "pduLen"    # I

    .line 18
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->clear()V

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->data:[B

    .line 20
    iput p2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->pduLength:I

    .line 21
    array-length v0, p1

    rem-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 22
    array-length v0, p1

    div-int/2addr v0, p2

    goto :goto_0

    :cond_0
    array-length v0, p1

    int-to-float v0, v0

    int-to-float v1, p2

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    :goto_0
    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaPacketParser;->total:I

    .line 23
    return-void
.end method
