.class public Lcom/xiaopeng/libconfig/ipc/cfc/CFCHelper;
.super Ljava/lang/Object;
.source "CFCHelper.java"


# static fields
.field private static final SIGNAL_CFC_SPLIT:Ljava/lang/String; = ","

.field private static final SYS_PROPERTY_CFC:Ljava/lang/String; = "persist.sys.xiaopeng.cfc_info"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBodyColor()I
    .locals 2

    const/4 v0, 0x3

    .line 64
    invoke-static {v0}, Lcom/xiaopeng/libconfig/ipc/cfc/CFCHelper;->getCFC(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private static getCFC(I)I
    .locals 3

    const-string v0, "persist.sys.xiaopeng.cfc_info"

    .line 18
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, ","

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 24
    array-length v1, v0

    if-lt p0, v1, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    :try_start_0
    aget-object p0, v0, p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return v2
.end method

.method public static getConfigCode()I
    .locals 1

    const/4 v0, 0x5

    .line 91
    invoke-static {v0}, Lcom/xiaopeng/libconfig/ipc/cfc/CFCHelper;->getCFC(I)I

    move-result v0

    return v0
.end method

.method public static getInterior()I
    .locals 1

    const/4 v0, 0x2

    .line 57
    invoke-static {v0}, Lcom/xiaopeng/libconfig/ipc/cfc/CFCHelper;->getCFC(I)I

    move-result v0

    return v0
.end method

.method public static getProductAddr()I
    .locals 1

    const/4 v0, 0x1

    .line 50
    invoke-static {v0}, Lcom/xiaopeng/libconfig/ipc/cfc/CFCHelper;->getCFC(I)I

    move-result v0

    return v0
.end method

.method public static getProductStage()I
    .locals 1

    const/4 v0, 0x4

    .line 84
    invoke-static {v0}, Lcom/xiaopeng/libconfig/ipc/cfc/CFCHelper;->getCFC(I)I

    move-result v0

    return v0
.end method

.method public static getSSBState()I
    .locals 1

    const/16 v0, 0xd

    .line 98
    invoke-static {v0}, Lcom/xiaopeng/libconfig/ipc/cfc/CFCHelper;->getCFC(I)I

    move-result v0

    return v0
.end method

.method public static getVehicleType()I
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-static {v0}, Lcom/xiaopeng/libconfig/ipc/cfc/CFCHelper;->getCFC(I)I

    move-result v0

    return v0
.end method
