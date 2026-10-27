.class Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$NgpPackage;
.super Ljava/lang/Object;
.source "SmartAlarmService.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NgpPackage"
.end annotation


# static fields
.field private static final NGP_DATA_IDX_RD11:I = 0x1

.field private static final NGP_DATA_IDX_RD13:I = 0x2

.field private static final NGP_DATA_LENGTH:I = 0xa


# instance fields
.field private mRdModuleCom11:I

.field private mRdModuleCom13:I

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$NgpPackage;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$1;

    .line 298
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$NgpPackage;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)V

    return-void
.end method

.method private byteArrayToInt([BI)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "pos"    # I

    .line 315
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private hasNgpDataChecksum([Ljava/lang/Integer;)Z
    .locals 5
    .param p1, "data"    # [Ljava/lang/Integer;

    .line 306
    const/4 v0, 0x0

    .line 308
    .local v0, "sum":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "sum":I
    :goto_0
    array-length v3, p1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_0

    .line 309
    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    :cond_0
    array-length v3, p1

    sub-int/2addr v3, v4

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    move v1, v4

    nop

    :cond_1
    return v1
.end method


# virtual methods
.method public getRd11Data()I
    .locals 1

    .line 344
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$NgpPackage;->mRdModuleCom11:I

    return v0
.end method

.method public getRd13Data()I
    .locals 1

    .line 348
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$NgpPackage;->mRdModuleCom13:I

    return v0
.end method

.method public hasValid([B)Z
    .locals 5
    .param p1, "data"    # [B

    .line 322
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    rem-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_1

    .line 323
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v1, "al":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v2, v0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 326
    invoke-direct {p0, p1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$NgpPackage;->byteArrayToInt([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 329
    .end local v2    # "i":I
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Integer;

    .line 330
    .local v2, "arr":[Ljava/lang/Integer;
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, [Ljava/lang/Integer;

    .line 332
    array-length v3, v2

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$NgpPackage;->hasNgpDataChecksum([Ljava/lang/Integer;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 333
    const/4 v0, 0x1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$NgpPackage;->mRdModuleCom11:I

    .line 334
    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$NgpPackage;->mRdModuleCom13:I

    .line 335
    return v0

    .line 339
    .end local v1    # "al":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "arr":[Ljava/lang/Integer;
    :cond_1
    const-string v1, "SmartAlarmService"

    const-string v2, "ngp data checksum failed!"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return v0
.end method
