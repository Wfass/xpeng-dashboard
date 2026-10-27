.class public final enum Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;
.super Ljava/lang/Enum;
.source "XpListTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

.field public static final enum CHARGING_LIST:Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

.field public static final enum CONTACT_LIST:Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

.field public static final enum POI_LIST:Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

.field public static final enum ROUTE_LIST:Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;


# instance fields
.field description:Ljava/lang/String;

.field name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 8
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    const-string v1, "POI_LIST"

    const-string v2, "poiList"

    const-string v3, "\u5e38\u89c4POI\u5217\u8868"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->POI_LIST:Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    .line 9
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    const-string v1, "CHARGING_LIST"

    const-string v2, "chargingList"

    const-string v3, "\u5145\u7535\u7ad9\u5217\u8868"

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->CHARGING_LIST:Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    .line 10
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    const-string v1, "ROUTE_LIST"

    const-string v2, "routeList"

    const-string v3, "\u8def\u7ebf\u5217\u8868"

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->ROUTE_LIST:Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    .line 11
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    const-string v1, "CONTACT_LIST"

    const-string v2, "contactList"

    const-string v3, "\u8054\u7cfb\u4eba\u5217\u8868"

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->CONTACT_LIST:Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    sget-object v1, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->POI_LIST:Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->CHARGING_LIST:Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->ROUTE_LIST:Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->CONTACT_LIST:Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    aput-object v1, v0, v7

    sput-object v0, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->$VALUES:[Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "_name"    # Ljava/lang/String;
    .param p4, "_description"    # Ljava/lang/String;
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
    iput-object p3, p0, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->name:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->description:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    return-object v0
.end method

.method public static values()[Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;
    .locals 1

    .line 6
    sget-object v0, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->$VALUES:[Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    invoke-virtual {v0}, [Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->name:Ljava/lang/String;

    return-object v0
.end method
