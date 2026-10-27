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
    .locals 16

    .line 9
    new-instance v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    const-string v1, "NAME_CDU"

    const/4 v2, 0x0

    const-string v3, "CDU"

    const-string v4, "XmartOS"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_CDU:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    .line 10
    new-instance v1, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    const-string v3, "NAME_PSU"

    const/4 v4, 0x1

    const-string v5, "PSU"

    const-string/jumbo v6, "\u5b89\u5168\u63a7\u5236\u5668"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_PSU:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    .line 11
    new-instance v3, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    const-string v5, "NAME_ICM"

    const/4 v6, 0x2

    const-string v7, "ICM"

    const-string/jumbo v8, "\u4eea\u8868"

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_ICM:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    .line 12
    new-instance v5, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    const-string v7, "NAME_SCU"

    const/4 v8, 0x3

    const-string v9, "SCU"

    const-string/jumbo v10, "\u667a\u80fd\u63a7\u5236\u5668"

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_SCU:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    .line 13
    new-instance v7, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    const-string v9, "NAME_AVM"

    const/4 v10, 0x4

    const-string v11, "AVM"

    const-string/jumbo v12, "\u667a\u80fd\u611f\u5e94\u5668"

    invoke-direct {v7, v9, v10, v11, v12}, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_AVM:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    .line 14
    new-instance v9, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    const-string v11, "NAME_IPU"

    const/4 v12, 0x5

    const-string v13, "IPU"

    invoke-direct {v9, v11, v12, v13, v13}, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_IPU:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    .line 15
    new-instance v11, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    const-string v13, "NAME_VCU"

    const/4 v14, 0x6

    const-string v15, "VCU"

    invoke-direct {v11, v13, v14, v15, v15}, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_VCU:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    .line 16
    new-instance v13, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    const-string v15, "NAME_BMS"

    const/4 v14, 0x7

    const-string v12, "BMS"

    invoke-direct {v13, v15, v14, v12, v12}, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_BMS:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    .line 17
    new-instance v12, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    const-string v15, "NAME_HVAC"

    const/16 v14, 0x8

    const-string v10, "HVAC"

    invoke-direct {v12, v15, v14, v10, v10}, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_HVAC:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    .line 18
    new-instance v10, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    const-string v15, "NAME_NONE"

    const/16 v14, 0x9

    const-string v8, "NONE"

    invoke-direct {v10, v15, v14, v8, v8}, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->NAME_NONE:Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    const/16 v8, 0xa

    new-array v8, v8, [Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v12, v8, v0

    aput-object v10, v8, v14

    .line 8
    sput-object v8, Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;->$VALUES:[Lcom/xiaopeng/libconfig/ipc/OTAConfig$ECUEnum;

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
