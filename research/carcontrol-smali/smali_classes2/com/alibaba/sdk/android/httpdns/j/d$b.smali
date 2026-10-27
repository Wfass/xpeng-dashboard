.class final enum Lcom/alibaba/sdk/android/httpdns/j/d$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/httpdns/j/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/sdk/android/httpdns/j/d$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/alibaba/sdk/android/httpdns/j/d$b;

.field private static final synthetic a:[Lcom/alibaba/sdk/android/httpdns/j/d$b;

.field public static final enum b:Lcom/alibaba/sdk/android/httpdns/j/d$b;

.field public static final enum c:Lcom/alibaba/sdk/android/httpdns/j/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/j/d$b;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sdk/android/httpdns/j/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/j/d$b;->a:Lcom/alibaba/sdk/android/httpdns/j/d$b;

    new-instance v1, Lcom/alibaba/sdk/android/httpdns/j/d$b;

    const-string v3, "PRE_DISABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alibaba/sdk/android/httpdns/j/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alibaba/sdk/android/httpdns/j/d$b;->b:Lcom/alibaba/sdk/android/httpdns/j/d$b;

    new-instance v3, Lcom/alibaba/sdk/android/httpdns/j/d$b;

    const-string v5, "DISABLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alibaba/sdk/android/httpdns/j/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alibaba/sdk/android/httpdns/j/d$b;->c:Lcom/alibaba/sdk/android/httpdns/j/d$b;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/alibaba/sdk/android/httpdns/j/d$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/alibaba/sdk/android/httpdns/j/d$b;->a:[Lcom/alibaba/sdk/android/httpdns/j/d$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/j/d$b;
    .locals 1

    const-class v0, Lcom/alibaba/sdk/android/httpdns/j/d$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/httpdns/j/d$b;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/sdk/android/httpdns/j/d$b;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/j/d$b;->a:[Lcom/alibaba/sdk/android/httpdns/j/d$b;

    invoke-virtual {v0}, [Lcom/alibaba/sdk/android/httpdns/j/d$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sdk/android/httpdns/j/d$b;

    return-object v0
.end method
