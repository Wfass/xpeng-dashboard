.class public final enum Lcom/alibaba/sdk/android/httpdns/NetType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/sdk/android/httpdns/NetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/sdk/android/httpdns/NetType;

.field public static final enum both:Lcom/alibaba/sdk/android/httpdns/NetType;

.field public static final enum none:Lcom/alibaba/sdk/android/httpdns/NetType;

.field public static final enum v4:Lcom/alibaba/sdk/android/httpdns/NetType;

.field public static final enum v6:Lcom/alibaba/sdk/android/httpdns/NetType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/NetType;

    const-string v1, "none"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sdk/android/httpdns/NetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/NetType;->none:Lcom/alibaba/sdk/android/httpdns/NetType;

    new-instance v1, Lcom/alibaba/sdk/android/httpdns/NetType;

    const-string v3, "v4"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alibaba/sdk/android/httpdns/NetType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alibaba/sdk/android/httpdns/NetType;->v4:Lcom/alibaba/sdk/android/httpdns/NetType;

    new-instance v3, Lcom/alibaba/sdk/android/httpdns/NetType;

    const-string v5, "v6"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alibaba/sdk/android/httpdns/NetType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alibaba/sdk/android/httpdns/NetType;->v6:Lcom/alibaba/sdk/android/httpdns/NetType;

    new-instance v5, Lcom/alibaba/sdk/android/httpdns/NetType;

    const-string v7, "both"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/alibaba/sdk/android/httpdns/NetType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/alibaba/sdk/android/httpdns/NetType;->both:Lcom/alibaba/sdk/android/httpdns/NetType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/alibaba/sdk/android/httpdns/NetType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/alibaba/sdk/android/httpdns/NetType;->$VALUES:[Lcom/alibaba/sdk/android/httpdns/NetType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/NetType;
    .locals 1

    const-class v0, Lcom/alibaba/sdk/android/httpdns/NetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/httpdns/NetType;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/sdk/android/httpdns/NetType;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/NetType;->$VALUES:[Lcom/alibaba/sdk/android/httpdns/NetType;

    invoke-virtual {v0}, [Lcom/alibaba/sdk/android/httpdns/NetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sdk/android/httpdns/NetType;

    return-object v0
.end method
