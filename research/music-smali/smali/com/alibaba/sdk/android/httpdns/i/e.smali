.class public Lcom/alibaba/sdk/android/httpdns/i/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/httpdns/i/g$a;


# instance fields
.field a:Lcom/alibaba/sdk/android/httpdns/h/a;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/httpdns/h/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/i/e;->a:Lcom/alibaba/sdk/android/httpdns/h/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/sdk/android/httpdns/i/d;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/alibaba/sdk/android/httpdns/i/d;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/alibaba/sdk/android/httpdns/i/d;Ljava/lang/Throwable;)V
    .locals 9

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/i/e;->a:Lcom/alibaba/sdk/android/httpdns/h/a;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/i/d;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/ss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/i/e;->a:Lcom/alibaba/sdk/android/httpdns/h/a;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/i/d;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/alibaba/sdk/android/httpdns/h/b;->a(Ljava/lang/Throwable;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/alibaba/sdk/android/httpdns/h/b;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/alibaba/sdk/android/httpdns/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/alibaba/sdk/android/httpdns/i/e;->a:Lcom/alibaba/sdk/android/httpdns/h/a;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/i/d;->a()Ljava/lang/String;

    move-result-object v4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/alibaba/sdk/android/httpdns/h/b;->a(Ljava/lang/Throwable;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Lcom/alibaba/sdk/android/httpdns/h/b;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/sdk/android/httpdns/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_1
    :goto_0
    return-void
.end method
