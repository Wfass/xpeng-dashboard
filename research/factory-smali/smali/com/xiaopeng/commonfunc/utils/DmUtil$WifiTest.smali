.class public Lcom/xiaopeng/commonfunc/utils/DmUtil$WifiTest;
.super Ljava/lang/Object;
.source "DmUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/utils/DmUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiTest"
.end annotation


# static fields
.field public static final CMD_NAME:[B

.field public static final WLAN_STATUS_OFF:[B

.field public static final WLAN_STATUS_ON:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 85
    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/xiaopeng/commonfunc/utils/DmUtil$WifiTest;->WLAN_STATUS_ON:[B

    .line 86
    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    sput-object v1, Lcom/xiaopeng/commonfunc/utils/DmUtil$WifiTest;->WLAN_STATUS_OFF:[B

    .line 87
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/DmUtil$WifiTest;->CMD_NAME:[B

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
        0x2t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
