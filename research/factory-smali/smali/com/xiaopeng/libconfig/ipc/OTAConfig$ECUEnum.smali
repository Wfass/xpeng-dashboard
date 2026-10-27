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
    .locals 14

    .line 9
    new-instance v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    const-string v1, "NAME_CDU"

    const-string v2, "CDU"

    const-string v3, "XmartOS"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_CDU:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    .line 10
    new-instance v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    const-string v1, "NAME_PSU"

    const-string v2, "PSU"

    const-string v3, "\u5b89\u5168\u63a7\u5236\u5668"

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_PSU:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    .line 11
    new-instance v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    const-string v1, "NAME_ICM"

    const-string v2, "ICM"

    const-string v3, "\u4eea\u8868"

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_ICM:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    .line 12
    new-instance v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    const-string v1, "NAME_SCU"

    const-string v2, "SCU"

    const-string v3, "\u667a\u80fd\u63a7\u5236\u5668"

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_SCU:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    .line 13
    new-instance v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    const-string v1, "NAME_AVM"

    const-string v2, "AVM"

    const-string v3, "\u667a\u80fd\u611f\u5e94\u5668"

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_AVM:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    .line 14
    new-instance v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    const-string v1, "NAME_IPU"

    const-string v2, "IPU"

    const-string v3, "IPU"

    const/4 v9, 0x5

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_IPU:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    .line 15
    new-instance v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    const-string v1, "NAME_VCU"

    const-string v2, "VCU"

    const-string v3, "VCU"

    const/4 v10, 0x6

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_VCU:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    .line 16
    new-instance v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    const-string v1, "NAME_BMS"

    const-string v2, "BMS"

    const-string v3, "BMS"

    const/4 v11, 0x7

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_BMS:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    .line 17
    new-instance v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    const-string v1, "NAME_HVAC"

    const-string v2, "HVAC"

    const-string v3, "HVAC"

    const/16 v12, 0x8

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_HVAC:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    .line 18
    new-instance v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    const-string v1, "NAME_NONE"

    const-string v2, "NONE"

    const-string v3, "NONE"

    const/16 v13, 0x9

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_NONE:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    .line 8
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    sget-object v1, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_CDU:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_PSU:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_ICM:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_SCU:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_AVM:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_IPU:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    aput-object v1, v0, v9

    sget-object v1, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_VCU:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    aput-object v1, v0, v10

    sget-object v1, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_BMS:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    aput-object v1, v0, v11

    sget-object v1, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_HVAC:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    aput-object v1, v0, v12

    sget-object v1, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_NONE:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    aput-object v1, v0, v13

    sput-object v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->$VALUES:[Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
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

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 8
    const-class v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    return-object v0
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
    .param p1, "id"    # Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->id:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->name:Ljava/lang/String;

    .line 42
    return-void
.end method
