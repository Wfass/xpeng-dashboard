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

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/sdk/android/httpdns/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/Region;->DEFAULT:Lcom/alibaba/sdk/android/httpdns/Region;

    new-instance v1, Lcom/alibaba/sdk/android/httpdns/Region;

    const-string v2, "HK"

    const-string v4, "hk"

    const/4 v5, 0x1

    invoke-direct {v1, v2, v5, v4}, Lcom/alibaba/sdk/android/httpdns/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alibaba/sdk/android/httpdns/Region;->HK:Lcom/alibaba/sdk/android/httpdns/Region;

    new-instance v2, Lcom/alibaba/sdk/android/httpdns/Region;

    const-string v4, "SG"

    const-string v6, "sg"

    const/4 v7, 0x2

    invoke-direct {v2, v4, v7, v6}, Lcom/alibaba/sdk/android/httpdns/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/alibaba/sdk/android/httpdns/Region;->SG:Lcom/alibaba/sdk/android/httpdns/Region;

    new-instance v4, Lcom/alibaba/sdk/android/httpdns/Region;

    const-string v6, "DE"

    const-string v8, "de"

    const/4 v9, 0x3

    invoke-direct {v4, v6, v9, v8}, Lcom/alibaba/sdk/android/httpdns/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/alibaba/sdk/android/httpdns/Region;->DE:Lcom/alibaba/sdk/android/httpdns/Region;

    new-instance v6, Lcom/alibaba/sdk/android/httpdns/Region;

    const-string v8, "US"

    const-string v10, "us"

    const/4 v11, 0x4

    invoke-direct {v6, v8, v11, v10}, Lcom/alibaba/sdk/android/httpdns/Region;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/alibaba/sdk/android/httpdns/Region;->US:Lcom/alibaba/sdk/android/httpdns/Region;

    const/4 v8, 0x5

    new-array v8, v8, [Lcom/alibaba/sdk/android/httpdns/Region;

    aput-object v0, v8, v3

    aput-object v1, v8, v5

    aput-object v2, v8, v7

    aput-object v4, v8, v9

    aput-object v6, v8, v11

    sput-object v8, Lcom/alibaba/sdk/android/httpdns/Region;->$VALUES:[Lcom/alibaba/sdk/android/httpdns/Region;

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
