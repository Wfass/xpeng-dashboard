.class Lcom/alibaba/sdk/android/httpdns/j/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/httpdns/i/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/httpdns/j/n;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/util/Map;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/httpdns/i/i<",
        "Lcom/alibaba/sdk/android/httpdns/j/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

.field final synthetic a:Lcom/alibaba/sdk/android/httpdns/j/n;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/httpdns/j/n;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b;->a:Lcom/alibaba/sdk/android/httpdns/j/n;

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b;->a:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    iput-object p4, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/sdk/android/httpdns/j/l;)V
    .locals 8

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ip request for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b;->a:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " return "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/j/l;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b;->a:Lcom/alibaba/sdk/android/httpdns/j/n;

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/j/n;->a(Lcom/alibaba/sdk/android/httpdns/j/n;)Lcom/alibaba/sdk/android/httpdns/j/m;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b;->a:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/j/l;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b;->c:Ljava/lang/String;

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/sdk/android/httpdns/j/m;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/j/l;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b;->a:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->both:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b;->a:Lcom/alibaba/sdk/android/httpdns/j/n;

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/j/n;->a(Lcom/alibaba/sdk/android/httpdns/j/n;)Lcom/alibaba/sdk/android/httpdns/g/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/j/l;->a()[Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/alibaba/sdk/android/httpdns/j/n$b$a;

    invoke-direct {v2, p0}, Lcom/alibaba/sdk/android/httpdns/j/n$b$a;-><init>(Lcom/alibaba/sdk/android/httpdns/j/n$b;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/alibaba/sdk/android/httpdns/g/b;->a(Ljava/lang/String;[Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/g/a;)V

    :cond_2
    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b;->a:Lcom/alibaba/sdk/android/httpdns/j/n;

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/j/n;->b(Lcom/alibaba/sdk/android/httpdns/j/n;)Lcom/alibaba/sdk/android/httpdns/e/a;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b;->a:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/sdk/android/httpdns/e/a;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/alibaba/sdk/android/httpdns/j/l;

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/httpdns/j/n$b;->a(Lcom/alibaba/sdk/android/httpdns/j/l;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ip request for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " fail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    instance-of v0, p1, Lcom/alibaba/sdk/android/httpdns/i/b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/alibaba/sdk/android/httpdns/i/b;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/i/b;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b;->a:Ljava/lang/String;

    const/16 v0, 0xe10

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/httpdns/j/l;->a(Ljava/lang/String;I)Lcom/alibaba/sdk/android/httpdns/j/l;

    move-result-object v7

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b;->a:Lcom/alibaba/sdk/android/httpdns/j/n;

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/j/n;->a(Lcom/alibaba/sdk/android/httpdns/j/n;)Lcom/alibaba/sdk/android/httpdns/j/m;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b;->a:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/httpdns/j/l;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b;->c:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/sdk/android/httpdns/j/m;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/j/l;)V

    :cond_0
    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b;->a:Lcom/alibaba/sdk/android/httpdns/j/n;

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/j/n;->b(Lcom/alibaba/sdk/android/httpdns/j/n;)Lcom/alibaba/sdk/android/httpdns/e/a;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b;->a:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/sdk/android/httpdns/e/a;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;)V

    return-void
.end method
