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

    .line 64
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/xiaopeng/libconfig/ipc/cfc/CFCHelper;->getCFC(I)I

    move-result v0

    .line 65
    .local v0, "color":I
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

    .line 76
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 74
    :cond_1
    :goto_0
    return v0
.end method

.method private static getCFC(I)I
    .locals 4
    .param p0, "type"    # I

    .line 18
    const-string v0, "persist.sys.xiaopeng.cfc_info"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "cfcInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 20
    return v2

    .line 23
    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "cfcArray":[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v3, v1

    if-lt p0, v3, :cond_1

    goto :goto_1

    .line 28
    :cond_1
    nop

    .line 31
    .local v2, "cfc":I
    :try_start_0
    aget-object v3, v1, p0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 34
    goto :goto_0

    .line 32
    :catch_0
    move-exception v3

    .line 36
    :goto_0
    return v2

    .line 25
    .end local v2    # "cfc":I
    :cond_2
    :goto_1
    return v2
.end method

.method public static getConfigCode()I
    .locals 1

    .line 91
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/xiaopeng/libconfig/ipc/cfc/CFCHelper;->getCFC(I)I

    move-result v0

    return v0
.end method

.method public static getInterior()I
    .locals 1

    .line 57
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/xiaopeng/libconfig/ipc/cfc/CFCHelper;->getCFC(I)I

    move-result v0

    return v0
.end method

.method public static getProductAddr()I
    .locals 1

    .line 50
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xiaopeng/libconfig/ipc/cfc/CFCHelper;->getCFC(I)I

    move-result v0

    return v0
.end method

.method public static getProductStage()I
    .locals 1

    .line 84
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/xiaopeng/libconfig/ipc/cfc/CFCHelper;->getCFC(I)I

    move-result v0

    return v0
.end method

.method public static getSSBState()I
    .locals 1

    .line 98
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/xiaopeng/libconfig/ipc/cfc/CFCHelper;->getCFC(I)I

    move-result v0

    return v0
.end method

.method public static getVehicleType()I
    .locals 1

    .line 43
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaopeng/libconfig/ipc/cfc/CFCHelper;->getCFC(I)I

    move-result v0

    return v0
.end method
