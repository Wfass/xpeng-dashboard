.class public final enum Lcom/alibaba/sdk/android/httpdns/Region;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/sdk/android/httpdns/Region;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/sdk/android/httpdns/Region;

.field public static final enum DE:Lcom/alibaba/sdk/android/httpdns/Region;

.field public static final enum DEFAULT:Lcom/alibaba/sdk/android/httpdns/Region;

.field public static final enum HK:Lcom/alibaba/sdk/android/httpdns/Region;

.field public static final enum SG:Lcom/alibaba/sdk/android/httpdns/Region;

.field public static final enum US:Lcom/alibaba/sdk/android/httpdns/Region;


# instance fields
.field private final region:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/Region;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/httpdns/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/Region;->DEFAULT:Lcom/alibaba/sdk/android/httpdns/Region;

    new-instance v1, Lcom/alibaba/sdk/android/httpdns/Region;

    const-string v3, "HK"

    const/4 v4, 0x1

    const-string v5, "hk"

    invoke-direct {v1, v3, v4, v5}, Lcom/alibaba/sdk/android/httpdns/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alibaba/sdk/android/httpdns/Region;->HK:Lcom/alibaba/sdk/android/httpdns/Region;

    new-instance v3, Lcom/alibaba/sdk/android/httpdns/Region;

    const-string v5, "SG"

    const/4 v6, 0x2

    const-string/jumbo v7, "sg"

    invoke-direct {v3, v5, v6, v7}, Lcom/alibaba/sdk/android/httpdns/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/alibaba/sdk/android/httpdns/Region;->SG:Lcom/alibaba/sdk/android/httpdns/Region;

    new-instance v5, Lcom/alibaba/sdk/android/httpdns/Region;

    const-string v7, "DE"

    const/4 v8, 0x3

    const-string v9, "de"

    invoke-direct {v5, v7, v8, v9}, Lcom/alibaba/sdk/android/httpdns/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/alibaba/sdk/android/httpdns/Region;->DE:Lcom/alibaba/sdk/android/httpdns/Region;

    new-instance v7, Lcom/alibaba/sdk/android/httpdns/Region;

    const-string v9, "US"

    const/4 v10, 0x4

    const-string/jumbo v11, "us"

    invoke-direct {v7, v9, v10, v11}, Lcom/alibaba/sdk/android/httpdns/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/alibaba/sdk/android/httpdns/Region;->US:Lcom/alibaba/sdk/android/httpdns/Region;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/alibaba/sdk/android/httpdns/Region;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/alibaba/sdk/android/httpdns/Region;->$VALUES:[Lcom/alibaba/sdk/android/httpdns/Region;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/alibaba/sdk/android/httpdns/Region;->region:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/Region;
    .locals 1

    const-class v0, Lcom/alibaba/sdk/android/httpdns/Region;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/httpdns/Region;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/sdk/android/httpdns/Region;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/Region;->$VALUES:[Lcom/alibaba/sdk/android/httpdns/Region;

    invoke-virtual {v0}, [Lcom/alibaba/sdk/android/httpdns/Region;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sdk/android/httpdns/Region;

    return-object v0
.end method


# virtual methods
.method public getRegion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/Region;->region:Ljava/lang/String;

    return-object v0
.end method
