.class Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;-><init>(Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector$a;)V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector$b;->a:Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;

    return-void
.end method

.method static synthetic a()Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector$b;->a:Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;

    return-object v0
.end method
