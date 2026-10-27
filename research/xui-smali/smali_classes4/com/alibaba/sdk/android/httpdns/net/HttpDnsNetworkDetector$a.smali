.class Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;->cleanCache(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector$a;->a:Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector$a;->a:Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;->a(Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector$a;->a:Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;->a(Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;->a(Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;Landroid/content/Context;)Lcom/alibaba/sdk/android/httpdns/NetType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;->a(Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;Lcom/alibaba/sdk/android/httpdns/NetType;)Lcom/alibaba/sdk/android/httpdns/NetType;

    :cond_0
    return-void
.end method
