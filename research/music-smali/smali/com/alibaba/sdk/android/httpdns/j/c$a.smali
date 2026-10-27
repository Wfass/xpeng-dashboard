.class Lcom/alibaba/sdk/android/httpdns/j/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/httpdns/i/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/httpdns/j/c;->a(Ljava/util/ArrayList;Lcom/alibaba/sdk/android/httpdns/RequestIpType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/httpdns/i/i<",
        "Lcom/alibaba/sdk/android/httpdns/j/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

.field final synthetic a:Lcom/alibaba/sdk/android/httpdns/j/c;

.field final synthetic a:Ljava/lang/String;

.field final synthetic a:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/httpdns/j/c;Ljava/util/ArrayList;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/c$a;->a:Lcom/alibaba/sdk/android/httpdns/j/c;

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/c$a;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/alibaba/sdk/android/httpdns/j/c$a;->a:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    iput-object p4, p0, Lcom/alibaba/sdk/android/httpdns/j/c$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/sdk/android/httpdns/j/a;)V
    .locals 5

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolve hosts for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/c$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/c$a;->a:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " return "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/c$a;->a:Lcom/alibaba/sdk/android/httpdns/j/c;

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/j/c;->a(Lcom/alibaba/sdk/android/httpdns/j/c;)Lcom/alibaba/sdk/android/httpdns/j/m;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/c$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/j/c$a;->a:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-virtual {v0, v1, v2, p1}, Lcom/alibaba/sdk/android/httpdns/j/m;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Lcom/alibaba/sdk/android/httpdns/j/a;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/c$a;->a:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->both:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    if-ne v0, v1, :cond_3

    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/j/a;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/httpdns/j/a$a;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/j/a$a;->a()Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    move-result-object v1

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/c$a;->a:Lcom/alibaba/sdk/android/httpdns/j/c;

    invoke-static {v1}, Lcom/alibaba/sdk/android/httpdns/j/c;->a(Lcom/alibaba/sdk/android/httpdns/j/c;)Lcom/alibaba/sdk/android/httpdns/g/b;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/j/a$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/j/a$a;->a()[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/sdk/android/httpdns/j/c$a$a;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/sdk/android/httpdns/j/c$a$a;-><init>(Lcom/alibaba/sdk/android/httpdns/j/c$a;Lcom/alibaba/sdk/android/httpdns/j/a$a;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/sdk/android/httpdns/g/b;->a(Ljava/lang/String;[Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/g/a;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/c$a;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/c$a;->a:Lcom/alibaba/sdk/android/httpdns/j/c;

    invoke-static {v1}, Lcom/alibaba/sdk/android/httpdns/j/c;->a(Lcom/alibaba/sdk/android/httpdns/j/c;)Lcom/alibaba/sdk/android/httpdns/e/a;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/j/c$a;->a:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/sdk/android/httpdns/e/a;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/alibaba/sdk/android/httpdns/j/a;

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/httpdns/j/c$a;->a(Lcom/alibaba/sdk/android/httpdns/j/a;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolve hosts for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/c$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

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

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/c$a;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/c$a;->a:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    const/16 v1, 0xe10

    invoke-static {p1, v0, v1}, Lcom/alibaba/sdk/android/httpdns/j/a;->a(Ljava/util/List;Lcom/alibaba/sdk/android/httpdns/RequestIpType;I)Lcom/alibaba/sdk/android/httpdns/j/a;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/c$a;->a:Lcom/alibaba/sdk/android/httpdns/j/c;

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/j/c;->a(Lcom/alibaba/sdk/android/httpdns/j/c;)Lcom/alibaba/sdk/android/httpdns/j/m;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/c$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/j/c$a;->a:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-virtual {v0, v1, v2, p1}, Lcom/alibaba/sdk/android/httpdns/j/m;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Lcom/alibaba/sdk/android/httpdns/j/a;)V

    :cond_0
    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/c$a;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/c$a;->a:Lcom/alibaba/sdk/android/httpdns/j/c;

    invoke-static {v1}, Lcom/alibaba/sdk/android/httpdns/j/c;->a(Lcom/alibaba/sdk/android/httpdns/j/c;)Lcom/alibaba/sdk/android/httpdns/e/a;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/j/c$a;->a:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/sdk/android/httpdns/e/a;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
