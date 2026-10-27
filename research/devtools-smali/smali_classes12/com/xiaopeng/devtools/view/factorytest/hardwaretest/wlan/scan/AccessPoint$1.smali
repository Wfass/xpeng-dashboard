.class synthetic Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$1;
.super Ljava/lang/Object;
.source "AccessPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic Ng:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 113
    invoke-static {}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;->values()[Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$1;->Ng:[I

    :try_start_0
    sget-object v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$1;->Ng:[I

    sget-object v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;->Ni:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$1;->Ng:[I

    sget-object v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;->Nj:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$1;->Ng:[I

    sget-object v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;->Nk:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$1;->Ng:[I

    sget-object v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;->Nh:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    return-void
.end method
