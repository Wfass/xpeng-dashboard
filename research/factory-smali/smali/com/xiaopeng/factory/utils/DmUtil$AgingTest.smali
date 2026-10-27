.class public Lcom/xiaopeng/factory/utils/DmUtil$AgingTest;
.super Ljava/lang/Object;
.source "DmUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/factory/utils/DmUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AgingTest"
.end annotation


# static fields
.field public static final CMD_NAME:[B

.field public static final ENTER:[B

.field public static final ERROR_ATP:[B

.field public static final ERROR_DDR:[B

.field public static final ERROR_RESET:[B

.field public static final ERROR_UNKNOW:[B

.field public static final NOTEST:[B

.field public static final PASS:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 130
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0x4e

    aput-byte v3, v1, v2

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil$AgingTest;->NOTEST:[B

    .line 131
    new-array v1, v0, [B

    const/16 v3, 0x45

    aput-byte v3, v1, v2

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil$AgingTest;->ENTER:[B

    .line 132
    new-array v1, v0, [B

    const/16 v3, 0x50

    aput-byte v3, v1, v2

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil$AgingTest;->PASS:[B

    .line 134
    new-array v1, v0, [B

    const/16 v3, 0x30

    aput-byte v3, v1, v2

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil$AgingTest;->ERROR_UNKNOW:[B

    .line 135
    new-array v1, v0, [B

    const/16 v3, 0x31

    aput-byte v3, v1, v2

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil$AgingTest;->ERROR_RESET:[B

    .line 136
    new-array v1, v0, [B

    const/16 v3, 0x32

    aput-byte v3, v1, v2

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil$AgingTest;->ERROR_DDR:[B

    .line 137
    new-array v0, v0, [B

    const/16 v1, 0x33

    aput-byte v1, v0, v2

    sput-object v0, Lcom/xiaopeng/factory/utils/DmUtil$AgingTest;->ERROR_ATP:[B

    .line 138
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaopeng/factory/utils/DmUtil$AgingTest;->CMD_NAME:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x40t
        0xdt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
