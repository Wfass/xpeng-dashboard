.class public final enum Lcom/alibaba/sdk/android/httpdns/RequestIpType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/sdk/android/httpdns/RequestIpType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/sdk/android/httpdns/RequestIpType;

.field public static final enum auto:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

.field public static final enum both:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

.field public static final enum v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

.field public static final enum v6:Lcom/alibaba/sdk/android/httpdns/RequestIpType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    const/4 v1, 0x0

    const-string v2, "v4"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/sdk/android/httpdns/RequestIpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    new-instance v2, Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    const/4 v3, 0x1

    const-string v4, "v6"

    invoke-direct {v2, v4, v3}, Lcom/alibaba/sdk/android/httpdns/RequestIpType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v6:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    new-instance v4, Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    const/4 v5, 0x2

    const-string v6, "both"

    invoke-direct {v4, v6, v5}, Lcom/alibaba/sdk/android/httpdns/RequestIpType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->both:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    new-instance v6, Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    const/4 v7, 0x3

    const-string v8, "auto"

    invoke-direct {v6, v8, v7}, Lcom/alibaba/sdk/android/httpdns/RequestIpType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->auto:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    aput-object v0, v8, v1

    aput-object v2, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->$VALUES:[Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/RequestIpType;
    .locals 1

    const-class v0, Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/sdk/android/httpdns/RequestIpType;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->$VALUES:[Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-virtual {v0}, [Lcom/alibaba/sdk/android/httpdns/RequestIpType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    return-object v0
.end method
