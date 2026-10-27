.class public Lcom/xiaopeng/factory/utils/DmUtil$BluetoothTest;
.super Ljava/lang/Object;
.source "DmUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/factory/utils/DmUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BluetoothTest"
.end annotation


# static fields
.field public static final CMD_NAME:[B

.field public static final STATUS_OFF:[B

.field public static final STATUS_ON:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 92
    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil$BluetoothTest;->STATUS_ON:[B

    .line 93
    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil$BluetoothTest;->STATUS_OFF:[B

    .line 94
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/xiaopeng/factory/utils/DmUtil$BluetoothTest;->CMD_NAME:[B

    return-void

    :array_0
    .array-data 1
        0x4ft
        0x4et
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4ft
        0x46t
        0x46t
    .end array-data

    :array_2
    .array-data 1
        -0x40t
        0x3t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
