.class public Lcom/alibaba/sdk/android/httpdns/j/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/alibaba/sdk/android/httpdns/DegradationFilter;

.field a:Lcom/alibaba/sdk/android/httpdns/NotUseHttpDnsFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/sdk/android/httpdns/DegradationFilter;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/e;->a:Lcom/alibaba/sdk/android/httpdns/DegradationFilter;

    return-void
.end method

.method public a(Lcom/alibaba/sdk/android/httpdns/NotUseHttpDnsFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/e;->a:Lcom/alibaba/sdk/android/httpdns/NotUseHttpDnsFilter;

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/e;->a:Lcom/alibaba/sdk/android/httpdns/NotUseHttpDnsFilter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/httpdns/NotUseHttpDnsFilter;->notUseHttpDns(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/e;->a:Lcom/alibaba/sdk/android/httpdns/DegradationFilter;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/httpdns/DegradationFilter;->shouldDegradeHttpDNS(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
