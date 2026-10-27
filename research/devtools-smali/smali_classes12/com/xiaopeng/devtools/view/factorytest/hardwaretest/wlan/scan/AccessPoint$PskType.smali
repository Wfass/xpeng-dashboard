.class final enum Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;
.super Ljava/lang/Enum;
.source "AccessPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PskType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Nh:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

.field public static final enum Ni:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

.field public static final enum Nj:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

.field public static final enum Nk:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

.field private static final synthetic Nl:[Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 63
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;->Nh:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    .line 64
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    const-string v1, "WPA"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;->Ni:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    .line 65
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    const-string v1, "WPA2"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;->Nj:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    .line 66
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    const-string v1, "WPA_WPA2"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;->Nk:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    sget-object v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;->Nh:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;->Ni:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;->Nj:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;->Nk:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;->Nl:[Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;
    .locals 1

    .line 62
    const-class v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;
    .locals 1

    .line 62
    sget-object v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;->Nl:[Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    invoke-virtual {v0}, [Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    return-object v0
.end method
