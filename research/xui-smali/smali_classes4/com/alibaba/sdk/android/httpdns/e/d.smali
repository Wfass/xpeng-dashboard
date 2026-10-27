.class public Lcom/alibaba/sdk/android/httpdns/e/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/alibaba/sdk/android/httpdns/e/c;

.field private final a:Lcom/alibaba/sdk/android/httpdns/impl/ErrorImpl;

.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/HttpDnsService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/httpdns/e/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/impl/ErrorImpl;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/httpdns/impl/ErrorImpl;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/d;->a:Lcom/alibaba/sdk/android/httpdns/impl/ErrorImpl;

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/e/d;->a:Lcom/alibaba/sdk/android/httpdns/e/c;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/e/d;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HttpDnsService;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "init httpdns with null context!!"

    :goto_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/e/d;->a:Lcom/alibaba/sdk/android/httpdns/impl/ErrorImpl;

    return-object p1

    :cond_0
    if-eqz p2, :cond_4

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/d;->a:Lcom/alibaba/sdk/android/httpdns/e/c;

    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/sdk/android/httpdns/e/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    move-result-object v0

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/e/d;->a:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_2
    instance-of p1, v0, Lcom/alibaba/sdk/android/httpdns/e/e;

    if-eqz p1, :cond_3

    move-object p1, v0

    check-cast p1, Lcom/alibaba/sdk/android/httpdns/e/e;

    invoke-virtual {p1, p3}, Lcom/alibaba/sdk/android/httpdns/e/e;->b(Ljava/lang/String;)V

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    const-string p1, "init httpdns with emtpy account!!"

    goto :goto_0
.end method
