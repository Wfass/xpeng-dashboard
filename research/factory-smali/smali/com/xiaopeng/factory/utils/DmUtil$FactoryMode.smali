.class public Lcom/xiaopeng/factory/utils/DmUtil$FactoryMode;
.super Ljava/lang/Object;
.source "DmUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/factory/utils/DmUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FactoryMode"
.end annotation


# static fields
.field public static final CMD_NAME:[B

.field public static final STATUS_OFF:[B

.field public static final STATUS_ON:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil$FactoryMode;->CMD_NAME:[B

    .line 77
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/xiaopeng/factory/utils/DmUtil$FactoryMode;->STATUS_ON:[B

    .line 78
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/xiaopeng/factory/utils/DmUtil$FactoryMode;->STATUS_OFF:[B

    return-void

    :array_0
    .array-data 1
        -0x40t
        0x18t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4ft
        0x4et
    .end array-data

    nop

    :array_2
    .array-data 1
        0x4ft
        0x46t
        0x46t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
