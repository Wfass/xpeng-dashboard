.class final Lcom/alibaba/sdk/android/httpdns/HttpDns$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/utils/crashdefend/SDKMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/httpdns/HttpDns;->getService(Landroid/content/Context;)Lcom/alibaba/sdk/android/httpdns/HttpDnsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public crashDefendMessage(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/HttpDns;->access$002(Z)Z

    if-le p1, p2, :cond_0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/b;->a(Z)V

    return-void

    :cond_0
    const-string p1, "crash limit exceeds, httpdns disabled"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/i;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/b;->a(Z)V

    return-void
.end method
