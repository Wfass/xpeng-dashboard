.class Lcom/alibaba/sdk/android/httpdns/k/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/httpdns/i/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/httpdns/k/d;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/httpdns/i/i<",
        "Lcom/alibaba/sdk/android/httpdns/k/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/httpdns/k/d;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/httpdns/k/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/k/d$a;->a:Lcom/alibaba/sdk/android/httpdns/k/d;

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/k/d$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/sdk/android/httpdns/k/g;)V
    .locals 7

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/k/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disable service by server response "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/k/g;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/k/d$a;->a:Lcom/alibaba/sdk/android/httpdns/k/d;

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/k/d;->a(Lcom/alibaba/sdk/android/httpdns/k/d;)Lcom/alibaba/sdk/android/httpdns/e/b;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/k/d$a;->a:Lcom/alibaba/sdk/android/httpdns/k/d;

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/k/d;->a(Lcom/alibaba/sdk/android/httpdns/k/d;)Lcom/alibaba/sdk/android/httpdns/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/k/d$a;->a:Lcom/alibaba/sdk/android/httpdns/k/d;

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/k/d;->a(Lcom/alibaba/sdk/android/httpdns/k/d;)Lcom/alibaba/sdk/android/httpdns/e/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/httpdns/e/b;->c(Z)V

    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/k/g;->a()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/k/d$a;->a:Lcom/alibaba/sdk/android/httpdns/k/d;

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/k/d$a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/k/g;->a()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/k/g;->b()[I

    move-result-object v4

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/k/g;->b()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/k/g;->a()[I

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/alibaba/sdk/android/httpdns/k/d;->a(Lcom/alibaba/sdk/android/httpdns/k/d;Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/k/d$a;->a:Lcom/alibaba/sdk/android/httpdns/k/d;

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/k/d;->a(Lcom/alibaba/sdk/android/httpdns/k/d;)Lcom/alibaba/sdk/android/httpdns/k/c;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/k/d$a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/k/g;->a()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/k/g;->b()[I

    move-result-object v4

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/k/g;->b()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/k/g;->a()[I

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/sdk/android/httpdns/k/c;->a(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;[I)V

    :cond_2
    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/k/d$a;->a:Lcom/alibaba/sdk/android/httpdns/k/d;

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/k/d;->a(Lcom/alibaba/sdk/android/httpdns/k/d;)Lcom/alibaba/sdk/android/httpdns/k/f;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/k/d$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/httpdns/k/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/alibaba/sdk/android/httpdns/k/g;

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/httpdns/k/d$a;->a(Lcom/alibaba/sdk/android/httpdns/k/g;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    const-string/jumbo v0, "update server ips fail"

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/k/d$a;->a:Lcom/alibaba/sdk/android/httpdns/k/d;

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/k/d;->a(Lcom/alibaba/sdk/android/httpdns/k/d;)Lcom/alibaba/sdk/android/httpdns/k/f;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/k/d$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/httpdns/k/f;->a(Ljava/lang/String;)V

    return-void
.end method
