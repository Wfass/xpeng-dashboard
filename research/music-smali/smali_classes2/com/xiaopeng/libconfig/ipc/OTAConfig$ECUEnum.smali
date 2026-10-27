.class public final enum Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;
.super Ljava/lang/Enum;
.source "OTAConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libconfig/ipc/OTAConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ECUEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

.field public static final enum NAME_AVM:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

.field public static final enum NAME_BMS:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

.field public static final enum NAME_CDU:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

.field public static final enum NAME_HVAC:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

.field public static final enum NAME_ICM:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

.field public static final enum NAME_IPU:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

.field public static final enum NAME_NONE:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

.field public static final enum NAME_PSU:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

.field public static final enum NAME_SCU:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

.field public static final enum NAME_VCU:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;


# instance fields
.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 9
    new-instance v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    const/4 v1, 0x0

    const-string v2, "NAME_CDU"

    const-string v3, "CDU"

    const-string v4, "XmartOS"

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_CDU:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    .line 10
    new-instance v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    const/4 v2, 0x1

    const-string v3, "NAME_PSU"

    const-string v4, "PSU"

    const-string v5, "\u5b89\u5168\u63a7\u5236\u5668"

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_PSU:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    .line 11
    new-instance v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    const/4 v3, 0x2

    const-string v4, "NAME_ICM"

    const-string v5, "ICM"

    const-string v6, "\u4eea\u8868"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_ICM:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    .line 12
    new-instance v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    const/4 v4, 0x3

    const-string v5, "NAME_SCU"

    const-string v6, "SCU"

    const-string v7, "\u667a\u80fd\u63a7\u5236\u5668"

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_SCU:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    .line 13
    new-instance v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    const/4 v5, 0x4

    const-string v6, "NAME_AVM"

    const-string v7, "AVM"

    const-string v8, "\u667a\u80fd\u611f\u5e94\u5668"

    invoke-direct {v0, v6, v5, v7, v8}, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_AVM:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    .line 14
    new-instance v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    const-string v6, "IPU"

    const/4 v7, 0x5

    const-string v8, "NAME_IPU"

    invoke-direct {v0, v8, v7, v6, v6}, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_IPU:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    .line 15
    new-instance v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    const-string v6, "VCU"

    const/4 v8, 0x6

    const-string v9, "NAME_VCU"

    invoke-direct {v0, v9, v8, v6, v6}, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_VCU:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    .line 16
    new-instance v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    const-string v6, "BMS"

    const/4 v9, 0x7

    const-string v10, "NAME_BMS"

    invoke-direct {v0, v10, v9, v6, v6}, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_BMS:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    .line 17
    new-instance v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    const-string v6, "HVAC"

    const/16 v10, 0x8

    const-string v11, "NAME_HVAC"

    invoke-direct {v0, v11, v10, v6, v6}, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_HVAC:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    .line 18
    new-instance v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    const-string v6, "NONE"

    const/16 v11, 0x9

    const-string v12, "NAME_NONE"

    invoke-direct {v0, v12, v11, v6, v6}, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_NONE:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    const/16 v0, 0xa

    .line 8
    new-array v0, v0, [Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    sget-object v6, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_CDU:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    aput-object v6, v0, v1

    sget-object v1, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_PSU:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_ICM:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_SCU:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_AVM:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_IPU:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_VCU:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_BMS:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    aput-object v1, v0, v9

    sget-object v1, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_HVAC:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    aput-object v1, v0, v10

    sget-object v1, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_NONE:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    aput-object v1, v0, v11

    sput-object v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->$VALUES:[Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

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

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->id:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;
    .locals 1

    .line 8
    const-class v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;
    .locals 1

    .line 8
    sget-object v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->$VALUES:[Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    invoke-virtual {v0}, [Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->name:Ljava/lang/String;

    return-void
.end method
