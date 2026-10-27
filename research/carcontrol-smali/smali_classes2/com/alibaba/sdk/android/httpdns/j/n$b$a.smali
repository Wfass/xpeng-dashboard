.class Lcom/alibaba/sdk/android/httpdns/j/n$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/httpdns/g/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/httpdns/j/n$b;->a(Lcom/alibaba/sdk/android/httpdns/j/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/httpdns/j/n$b;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/httpdns/j/n$b;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b$a;->a:Lcom/alibaba/sdk/android/httpdns/j/n$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ip probe for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b$a;->a:Lcom/alibaba/sdk/android/httpdns/j/n$b;

    iget-object v1, v1, Lcom/alibaba/sdk/android/httpdns/j/n$b;->a:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " return "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->translateStringArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b$a;->a:Lcom/alibaba/sdk/android/httpdns/j/n$b;

    iget-object v0, v0, Lcom/alibaba/sdk/android/httpdns/j/n$b;->a:Lcom/alibaba/sdk/android/httpdns/j/n;

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/j/n;->a(Lcom/alibaba/sdk/android/httpdns/j/n;)Lcom/alibaba/sdk/android/httpdns/j/m;

    move-result-object v0

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/j/n$b$a;->a:Lcom/alibaba/sdk/android/httpdns/j/n$b;

    iget-object v2, v2, Lcom/alibaba/sdk/android/httpdns/j/n$b;->c:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/alibaba/sdk/android/httpdns/j/m;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
