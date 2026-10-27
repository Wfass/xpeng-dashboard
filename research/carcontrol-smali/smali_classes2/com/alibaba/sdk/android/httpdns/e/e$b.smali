.class Lcom/alibaba/sdk/android/httpdns/e/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/httpdns/e/e;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/httpdns/e/e;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/httpdns/e/e;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/e/e$b;->a:Lcom/alibaba/sdk/android/httpdns/e/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e$b;->a:Lcom/alibaba/sdk/android/httpdns/e/e;

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/e/e;->a(Lcom/alibaba/sdk/android/httpdns/e/e;)Lcom/alibaba/sdk/android/httpdns/j/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/j/m;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "network change, clean record"

    invoke-static {v1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/e/e$b;->a:Lcom/alibaba/sdk/android/httpdns/e/e;

    invoke-static {v1}, Lcom/alibaba/sdk/android/httpdns/e/e;->a(Lcom/alibaba/sdk/android/httpdns/e/e;)Lcom/alibaba/sdk/android/httpdns/j/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/httpdns/j/m;->c()V

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/e/e$b;->a:Lcom/alibaba/sdk/android/httpdns/e/e;

    invoke-static {v1}, Lcom/alibaba/sdk/android/httpdns/e/e;->a(Lcom/alibaba/sdk/android/httpdns/e/e;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/e/e$b;->a:Lcom/alibaba/sdk/android/httpdns/e/e;

    iget-object v1, v1, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    if-ne v5, v6, :cond_1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v6:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-ne v5, v6, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e$b;->a:Lcom/alibaba/sdk/android/httpdns/e/e;

    iget-object v0, v0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/c;

    sget-object v4, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/sdk/android/httpdns/j/c;->a(Ljava/util/List;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)V

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e$b;->a:Lcom/alibaba/sdk/android/httpdns/e/e;

    iget-object v0, v0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/c;

    sget-object v4, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v6:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-virtual {v0, v2, v4}, Lcom/alibaba/sdk/android/httpdns/j/c;->a(Ljava/util/List;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)V

    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/e$b;->a:Lcom/alibaba/sdk/android/httpdns/e/e;

    iget-object v0, v0, Lcom/alibaba/sdk/android/httpdns/e/e;->a:Lcom/alibaba/sdk/android/httpdns/j/c;

    sget-object v4, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->both:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/sdk/android/httpdns/j/c;->a(Ljava/util/List;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)V

    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_7

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    :cond_7
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "network change, resolve hosts"

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_8
    return-void
.end method
