.class public final enum Lcom/xiaopeng/speech/protocol/bean/g;
.super Ljava/lang/Enum;
.source "XpListTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/speech/protocol/bean/g;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/speech/protocol/bean/g;

.field public static final enum CHARGING_LIST:Lcom/xiaopeng/speech/protocol/bean/g;

.field public static final enum CONTACT_LIST:Lcom/xiaopeng/speech/protocol/bean/g;

.field public static final enum POI_LIST:Lcom/xiaopeng/speech/protocol/bean/g;

.field public static final enum ROUTE_LIST:Lcom/xiaopeng/speech/protocol/bean/g;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 8
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/g;

    const/4 v1, 0x0

    const-string v2, "POI_LIST"

    const-string v3, "poiList"

    const-string/jumbo v4, "\u5e38\u89c4POI\u5217\u8868"

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/xiaopeng/speech/protocol/bean/g;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/speech/protocol/bean/g;->POI_LIST:Lcom/xiaopeng/speech/protocol/bean/g;

    .line 9
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/g;

    const/4 v2, 0x1

    const-string v3, "CHARGING_LIST"

    const-string v4, "chargingList"

    const-string/jumbo v5, "\u5145\u7535\u7ad9\u5217\u8868"

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/xiaopeng/speech/protocol/bean/g;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/speech/protocol/bean/g;->CHARGING_LIST:Lcom/xiaopeng/speech/protocol/bean/g;

    .line 10
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/g;

    const/4 v3, 0x2

    const-string v4, "ROUTE_LIST"

    const-string v5, "routeList"

    const-string/jumbo v6, "\u8def\u7ebf\u5217\u8868"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/xiaopeng/speech/protocol/bean/g;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/speech/protocol/bean/g;->ROUTE_LIST:Lcom/xiaopeng/speech/protocol/bean/g;

    .line 11
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/g;

    const/4 v4, 0x3

    const-string v5, "CONTACT_LIST"

    const-string v6, "contactList"

    const-string/jumbo v7, "\u8054\u7cfb\u4eba\u5217\u8868"

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/xiaopeng/speech/protocol/bean/g;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/speech/protocol/bean/g;->CONTACT_LIST:Lcom/xiaopeng/speech/protocol/bean/g;

    const/4 v0, 0x4

    .line 6
    new-array v0, v0, [Lcom/xiaopeng/speech/protocol/bean/g;

    sget-object v5, Lcom/xiaopeng/speech/protocol/bean/g;->POI_LIST:Lcom/xiaopeng/speech/protocol/bean/g;

    aput-object v5, v0, v1

    sget-object v1, Lcom/xiaopeng/speech/protocol/bean/g;->CHARGING_LIST:Lcom/xiaopeng/speech/protocol/bean/g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/speech/protocol/bean/g;->ROUTE_LIST:Lcom/xiaopeng/speech/protocol/bean/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/speech/protocol/bean/g;->CONTACT_LIST:Lcom/xiaopeng/speech/protocol/bean/g;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaopeng/speech/protocol/bean/g;->$VALUES:[Lcom/xiaopeng/speech/protocol/bean/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/xiaopeng/speech/protocol/bean/g;->a:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/xiaopeng/speech/protocol/bean/g;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/g;
    .locals 1

    .line 6
    const-class v0, Lcom/xiaopeng/speech/protocol/bean/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/speech/protocol/bean/g;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/speech/protocol/bean/g;
    .locals 1

    .line 6
    sget-object v0, Lcom/xiaopeng/speech/protocol/bean/g;->$VALUES:[Lcom/xiaopeng/speech/protocol/bean/g;

    invoke-virtual {v0}, [Lcom/xiaopeng/speech/protocol/bean/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/speech/protocol/bean/g;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/g;->a:Ljava/lang/String;

    return-object v0
.end method
