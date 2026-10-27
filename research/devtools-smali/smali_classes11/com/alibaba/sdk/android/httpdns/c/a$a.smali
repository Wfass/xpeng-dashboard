.class final Lcom/alibaba/sdk/android/httpdns/c/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/httpdns/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final b:Lcom/alibaba/sdk/android/httpdns/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/c/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/httpdns/c/a;-><init>(Lcom/alibaba/sdk/android/httpdns/c/a$1;)V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/c/a$a;->b:Lcom/alibaba/sdk/android/httpdns/c/a;

    return-void
.end method

.method static synthetic b()Lcom/alibaba/sdk/android/httpdns/c/a;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/c/a$a;->b:Lcom/alibaba/sdk/android/httpdns/c/a;

    return-object v0
.end method
