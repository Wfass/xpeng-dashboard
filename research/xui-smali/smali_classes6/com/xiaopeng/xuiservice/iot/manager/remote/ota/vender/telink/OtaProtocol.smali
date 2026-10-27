.class public final enum Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;
.super Ljava/lang/Enum;
.source "OtaProtocol.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;

.field public static final enum Extend:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;

.field public static final enum Legacy:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 6
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;

    const-string v1, "Legacy"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;->Legacy:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;

    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;

    const-string v1, "Extend"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;->Extend:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;

    .line 5
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;->Legacy:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;->Extend:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;->$VALUES:[Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 5
    const-class v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;

    return-object v0
.end method

.method public static values()[Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;
    .locals 1

    .line 5
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;->$VALUES:[Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;

    invoke-virtual {v0}, [Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaProtocol;

    return-object v0
.end method
