.class public Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;
.super Ljava/lang/Object;
.source "ScanRecordUtil.java"


# static fields
.field public static final BASE_UUID:Landroid/os/ParcelUuid;

.field private static final DATA_TYPE_FLAGS:I = 0x1

.field private static final DATA_TYPE_LOCAL_NAME_COMPLETE:I = 0x9

.field private static final DATA_TYPE_LOCAL_NAME_SHORT:I = 0x8

.field private static final DATA_TYPE_MANUFACTURER_SPECIFIC_DATA:I = 0xff

.field private static final DATA_TYPE_SERVICE_DATA:I = 0x16

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_COMPLETE:I = 0x7

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_PARTIAL:I = 0x6

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_COMPLETE:I = 0x3

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_PARTIAL:I = 0x2

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_COMPLETE:I = 0x5

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_PARTIAL:I = 0x4

.field private static final DATA_TYPE_TX_POWER_LEVEL:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ScanRecordUtil"

.field static final hexArray:[C


# instance fields
.field private final mAdvertiseFlags:I

.field private final mBytes:[B

.field private final mDeviceName:Ljava/lang/String;

.field private final mManufacturerId:I

.field private final mManufacturerSpecificData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation
.end field

.field private final mServiceData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mServiceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final mTxPowerLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 361
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->hexArray:[C

    .line 434
    const-string v0, "00000000-0000-1000-8000-00805F9B34FB"

    .line 435
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->BASE_UUID:Landroid/os/ParcelUuid;

    .line 434
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[BI)V
    .locals 0
    .param p4, "advertiseFlags"    # I
    .param p5, "txPowerLevel"    # I
    .param p6, "localName"    # Ljava/lang/String;
    .param p7, "bytes"    # [B
    .param p8, "manufacturerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Landroid/util/SparseArray<",
            "[B>;",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;II",
            "Ljava/lang/String;",
            "[BI)V"
        }
    .end annotation

    .line 229
    .local p1, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local p2, "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .local p3, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->mServiceUuids:Ljava/util/List;

    .line 231
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 232
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->mServiceData:Ljava/util/Map;

    .line 233
    iput-object p6, p0, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->mDeviceName:Ljava/lang/String;

    .line 234
    iput p4, p0, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->mAdvertiseFlags:I

    .line 235
    iput p5, p0, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->mTxPowerLevel:I

    .line 236
    iput-object p7, p0, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->mBytes:[B

    .line 237
    iput p8, p0, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->mManufacturerId:I

    .line 238
    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .line 364
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 365
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 366
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 367
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 368
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->hexArray:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 365
    .end local v2    # "v":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    .end local v1    # "j":I
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method private static extractBytes([BII)[B
    .locals 2
    .param p0, "scanRecord"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 389
    new-array v0, p2, [B

    .line 390
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 391
    return-object v0
.end method

.method public static formatArrayData(Landroid/util/SparseArray;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 39
    .local p0, "data":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_3

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "k":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 44
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 45
    .local v4, "array":[B
    if-nez v4, :cond_1

    .line 46
    goto :goto_2

    .line 48
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",data=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    move v5, v2

    .local v5, "i":I
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_3

    .line 50
    aget-byte v6, v4, v5

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, "hex":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v1, :cond_2

    .line 52
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x30

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 54
    :cond_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .end local v6    # "hex":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 43
    .end local v4    # "array":[B
    .end local v5    # "i":I
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57
    .end local v3    # "k":I
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 40
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method static formatHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B

    .line 87
    if-eqz p0, :cond_3

    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v2, "0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 93
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "hex":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 97
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .end local v3    # "hex":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 88
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseFromBytes([B)Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;
    .locals 20
    .param p0, "scanRecord"    # [B

    .line 252
    move-object/from16 v10, p0

    if-nez v10, :cond_0

    .line 253
    const/4 v0, 0x0

    return-object v0

    .line 256
    :cond_0
    const/4 v0, 0x0

    .line 257
    .local v0, "currentPos":I
    const/4 v1, -0x1

    .line 258
    .local v1, "advertiseFlag":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v2, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    const/4 v3, 0x0

    .line 260
    .local v3, "localName":Ljava/lang/String;
    const/high16 v4, -0x80000000

    .line 261
    .local v4, "txPowerLevel":I
    const/4 v5, 0x0

    .line 263
    .local v5, "manufacturerId":I
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    move-object v11, v6

    .line 264
    .local v11, "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    move v12, v1

    move-object v14, v3

    move v13, v4

    move v15, v5

    move v1, v0

    .end local v0    # "currentPos":I
    .end local v3    # "localName":Ljava/lang/String;
    .end local v4    # "txPowerLevel":I
    .end local v5    # "manufacturerId":I
    .local v1, "currentPos":I
    .local v6, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .local v12, "advertiseFlag":I
    .local v13, "txPowerLevel":I
    .local v14, "localName":Ljava/lang/String;
    .local v15, "manufacturerId":I
    :goto_0
    move-object v9, v6

    .line 267
    .end local v6    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .local v9, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    :try_start_0
    array-length v0, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    if-ge v1, v0, :cond_4

    .line 269
    add-int/lit8 v3, v1, 0x1

    .local v3, "currentPos":I
    :try_start_1
    aget-byte v0, v10, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "currentPos":I
    const/16 v1, 0xff

    and-int/2addr v0, v1

    .line 271
    .local v0, "length":I
    if-nez v0, :cond_1

    .line 272
    nop

    .line 334
    move/from16 v16, v3

    goto/16 :goto_4

    .line 275
    :cond_1
    add-int/lit8 v4, v0, -0x1

    .line 277
    .local v4, "dataLength":I
    add-int/lit8 v5, v3, 0x1

    .local v5, "currentPos":I
    :try_start_2
    aget-byte v3, v10, v3

    .end local v3    # "currentPos":I
    and-int/2addr v3, v1

    .line 278
    .local v3, "fieldType":I
    const/16 v6, 0x16

    if-eq v3, v6, :cond_3

    if-eq v3, v1, :cond_2

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 303
    :pswitch_0
    aget-byte v1, v10, v5

    move v13, v1

    .line 304
    goto :goto_1

    .line 299
    :pswitch_1
    new-instance v1, Ljava/lang/String;

    .line 300
    invoke-static {v10, v5, v4}, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->extractBytes([BII)[B

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V

    move-object v14, v1

    .line 301
    goto :goto_1

    .line 294
    :pswitch_2
    const/16 v1, 0x10

    invoke-static {v10, v5, v4, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->parseServiceUuid([BIIILjava/util/List;)I

    .line 296
    goto :goto_1

    .line 289
    :pswitch_3
    const/4 v1, 0x4

    invoke-static {v10, v5, v4, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->parseServiceUuid([BIIILjava/util/List;)I

    .line 291
    goto :goto_1

    .line 284
    :pswitch_4
    const/4 v1, 0x2

    invoke-static {v10, v5, v4, v1, v2}, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->parseServiceUuid([BIIILjava/util/List;)I

    .line 286
    goto :goto_1

    .line 280
    :pswitch_5
    aget-byte v6, v10, v5

    and-int/lit16 v12, v6, 0xff

    .line 281
    nop

    .line 331
    .end local v0    # "length":I
    .local v16, "length":I
    :goto_1
    move/from16 v16, v0

    goto :goto_2

    .line 321
    .end local v16    # "length":I
    .restart local v0    # "length":I
    :cond_2
    add-int/lit8 v6, v5, 0x1

    aget-byte v6, v10, v6

    and-int/2addr v6, v1

    shl-int/lit8 v6, v6, 0x8

    aget-byte v7, v10, v5

    and-int/2addr v1, v7

    add-int v15, v6, v1

    .line 323
    add-int/lit8 v1, v5, 0x2

    add-int/lit8 v6, v4, -0x2

    invoke-static {v10, v1, v6}, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->extractBytes([BII)[B

    move-result-object v1

    .line 325
    .local v1, "manufacturerDataBytes":[B
    invoke-virtual {v11, v15, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 326
    goto :goto_1

    .line 308
    .end local v1    # "manufacturerDataBytes":[B
    :cond_3
    const/4 v1, 0x2

    .line 309
    .local v1, "serviceUuidLength":I
    invoke-static {v10, v5, v1}, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->extractBytes([BII)[B

    move-result-object v6

    .line 311
    .local v6, "serviceDataUuidBytes":[B
    invoke-static {v6}, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v7

    .line 313
    .local v7, "serviceDataUuid":Landroid/os/ParcelUuid;
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    add-int v8, v5, v1

    move/from16 v16, v0

    sub-int v0, v4, v1

    .end local v0    # "length":I
    .restart local v16    # "length":I
    invoke-static {v10, v8, v0}, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->extractBytes([BII)[B

    move-result-object v0

    .line 316
    .local v0, "serviceDataArray":[B
    invoke-interface {v9, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 317
    nop

    .line 331
    .end local v0    # "serviceDataArray":[B
    .end local v1    # "serviceUuidLength":I
    .end local v6    # "serviceDataUuidBytes":[B
    .end local v7    # "serviceDataUuid":Landroid/os/ParcelUuid;
    :goto_2
    add-int v1, v5, v4

    .line 332
    .end local v3    # "fieldType":I
    .end local v4    # "dataLength":I
    .end local v5    # "currentPos":I
    .end local v16    # "length":I
    .local v1, "currentPos":I
    nop

    .line 264
    move-object v6, v9

    goto/16 :goto_0

    .line 340
    .end local v1    # "currentPos":I
    .restart local v5    # "currentPos":I
    :catch_0
    move-exception v0

    move-object/from16 v17, v2

    move/from16 v16, v5

    goto :goto_3

    .end local v5    # "currentPos":I
    .local v3, "currentPos":I
    :catch_1
    move-exception v0

    move-object/from16 v17, v2

    move/from16 v16, v3

    .end local v2    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .end local v3    # "currentPos":I
    .end local v9    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .local v16, "currentPos":I
    .local v17, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local v18, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    :goto_3
    move-object/from16 v18, v9

    goto :goto_7

    .line 334
    .end local v16    # "currentPos":I
    .end local v17    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .end local v18    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .restart local v1    # "currentPos":I
    .restart local v2    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .restart local v9    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    :cond_4
    move/from16 v16, v1

    .end local v1    # "currentPos":I
    .restart local v16    # "currentPos":I
    :goto_4
    :try_start_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    if-eqz v0, :cond_5

    .line 335
    const/4 v0, 0x0

    .line 338
    .end local v2    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local v0, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    move-object/from16 v17, v0

    goto :goto_5

    .end local v0    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .restart local v2    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :cond_5
    move-object/from16 v17, v2

    .end local v2    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .restart local v17    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :goto_5
    :try_start_4
    new-instance v0, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object v1, v0

    move-object/from16 v2, v17

    move-object v3, v11

    move-object v4, v9

    move v5, v12

    move v6, v13

    move-object v7, v14

    move-object v8, v10

    move-object/from16 v18, v9

    move v9, v15

    .end local v9    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .restart local v18    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    :try_start_5
    invoke-direct/range {v1 .. v9}, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[BI)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    return-object v0

    .line 340
    :catch_2
    move-exception v0

    goto :goto_7

    .end local v18    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .restart local v9    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    :catch_3
    move-exception v0

    move-object/from16 v18, v9

    goto :goto_7

    .end local v17    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .restart local v2    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :catch_4
    move-exception v0

    move-object/from16 v18, v9

    goto :goto_6

    .end local v16    # "currentPos":I
    .restart local v1    # "currentPos":I
    :catch_5
    move-exception v0

    move-object/from16 v18, v9

    move/from16 v16, v1

    .end local v1    # "currentPos":I
    .end local v2    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .restart local v16    # "currentPos":I
    .restart local v17    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :goto_6
    move-object/from16 v17, v2

    .line 341
    .end local v9    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    :goto_7
    const-string v1, "ScanRecordUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to parse scan record: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    new-instance v19, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    move-object v3, v11

    move-object/from16 v4, v18

    move v5, v12

    move v6, v13

    move-object v7, v14

    move-object v8, v10

    move v9, v15

    invoke-direct/range {v1 .. v9}, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[BI)V

    return-object v19

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseServiceUuid([BIIILjava/util/List;)I
    .locals 2
    .param p0, "scanRecord"    # [B
    .param p1, "currentPos"    # I
    .param p2, "dataLength"    # I
    .param p3, "uuidLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)I"
        }
    .end annotation

    .line 376
    .local p4, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :goto_0
    if-lez p2, :cond_0

    .line 377
    invoke-static {p0, p1, p3}, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->extractBytes([BII)[B

    move-result-object v0

    .line 379
    .local v0, "uuidBytes":[B
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    sub-int/2addr p2, p3

    .line 381
    add-int/2addr p1, p3

    .line 383
    .end local v0    # "uuidBytes":[B
    goto :goto_0

    .line 384
    :cond_0
    return p1
.end method

.method public static parseUuidFrom([B)Landroid/os/ParcelUuid;
    .locals 9
    .param p0, "uuidBytes"    # [B

    .line 400
    if-eqz p0, :cond_4

    .line 403
    array-length v0, p0

    .line 404
    .local v0, "length":I
    const/16 v1, 0x10

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uuidBytes length invalid - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 410
    :cond_1
    :goto_0
    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v0, v1, :cond_2

    .line 411
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 412
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v4

    .line 413
    .local v4, "msb":J
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    .line 414
    .local v2, "lsb":J
    new-instance v6, Landroid/os/ParcelUuid;

    new-instance v7, Ljava/util/UUID;

    invoke-direct {v7, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v6, v7}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    return-object v6

    .line 420
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v2    # "lsb":J
    .end local v4    # "msb":J
    :cond_2
    const/4 v5, 0x1

    if-ne v0, v2, :cond_3

    .line 421
    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    int-to-long v1, v1

    .line 422
    .local v1, "shortUuid":J
    aget-byte v3, p0, v5

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_1

    .line 424
    .end local v1    # "shortUuid":J
    :cond_3
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v6, v3

    .line 425
    .local v6, "shortUuid":J
    aget-byte v3, p0, v5

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v6, v3

    .line 426
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v1, v2, 0x10

    int-to-long v1, v1

    add-long/2addr v6, v1

    .line 427
    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    int-to-long v1, v1

    add-long/2addr v1, v6

    .line 429
    .end local v6    # "shortUuid":J
    .restart local v1    # "shortUuid":J
    :goto_1
    sget-object v3, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->BASE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    const/16 v5, 0x20

    shl-long v5, v1, v5

    add-long/2addr v3, v5

    .line 430
    .local v3, "msb":J
    sget-object v5, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->BASE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v5

    .line 431
    .local v5, "lsb":J
    new-instance v7, Landroid/os/ParcelUuid;

    new-instance v8, Ljava/util/UUID;

    invoke-direct {v8, v3, v4, v5, v6}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v7, v8}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    return-object v7

    .line 401
    .end local v0    # "length":I
    .end local v1    # "shortUuid":J
    .end local v3    # "msb":J
    .end local v5    # "lsb":J
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uuidBytes cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static toString(Landroid/util/SparseArray;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 23
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    if-nez p0, :cond_0

    .line 24
    const-string v0, "null"

    return-object v0

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 27
    const-string/jumbo v0, "{}"

    return-object v0

    .line 29
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    const/4 v1, 0x0

    .line 31
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 32
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    .end local v1    # "i":I
    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static toString(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TT;[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 65
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TT;[B>;"
    if-nez p0, :cond_0

    .line 66
    const-string v0, "null"

    return-object v0

    .line 68
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    const-string/jumbo v0, "{}"

    return-object v0

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 74
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TT;[B>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 75
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 76
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 77
    .local v3, "key":Ljava/lang/Object;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->formatHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 79
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;[B>;"
    .end local v3    # "key":Ljava/lang/Object;
    :cond_2
    goto :goto_0

    .line 82
    :cond_3
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getAdvertiseFlags()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->mAdvertiseFlags:I

    return v0
.end method

.method public getBytes()[B
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->mBytes:[B

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturerId()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->mManufacturerId:I

    return v0
.end method

.method public getManufacturerSpecificData()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->mManufacturerSpecificData:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getManufacturerSpecificData(I)[B
    .locals 1
    .param p1, "manufacturerId"    # I

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getManufacturerString()Ljava/lang/String;
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->mManufacturerSpecificData:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->mManufacturerSpecificData:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 220
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->mServiceData:Ljava/util/Map;

    return-object v0
.end method

.method public getServiceData(Landroid/os/ParcelUuid;)[B
    .locals 1
    .param p1, "serviceDataUuid"    # Landroid/os/ParcelUuid;

    .line 187
    if-nez p1, :cond_0

    .line 188
    const/4 v0, 0x0

    return-object v0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->mServiceData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getServiceUuids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->mServiceUuids:Ljava/util/List;

    return-object v0
.end method

.method public getTxPowerLevel()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->mTxPowerLevel:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScanRecord [mAdvertiseFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->mAdvertiseFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceUuids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->mServiceUuids:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mManufacturerSpecificData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 352
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->formatArrayData(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->mServiceData:Ljava/util/Map;

    .line 353
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTxPowerLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->mTxPowerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",manufacturerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/ScanRecordUtil;->mManufacturerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    return-object v0
.end method
