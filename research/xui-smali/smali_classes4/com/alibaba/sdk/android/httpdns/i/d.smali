.class public Lcom/alibaba/sdk/android/httpdns/i/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

.field private a:Ljava/lang/String;

.field private b:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILcom/alibaba/sdk/android/httpdns/RequestIpType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://"

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/i/d;->a:Ljava/lang/String;

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/alibaba/sdk/android/httpdns/i/d;->b:I

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/i/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/i/d;->b:Ljava/lang/String;

    iput p3, p0, Lcom/alibaba/sdk/android/httpdns/i/d;->a:I

    iput-object p4, p0, Lcom/alibaba/sdk/android/httpdns/i/d;->c:Ljava/lang/String;

    iput p5, p0, Lcom/alibaba/sdk/android/httpdns/i/d;->b:I

    iput-object p6, p0, Lcom/alibaba/sdk/android/httpdns/i/d;->a:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/alibaba/sdk/android/httpdns/i/d;->a:I

    return v0
.end method

.method public a()Lcom/alibaba/sdk/android/httpdns/RequestIpType;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/i/d;->a:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/i/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/alibaba/sdk/android/httpdns/i/d;->a:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/i/d;->b:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/alibaba/sdk/android/httpdns/i/d;->b:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/i/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/i/d;->a:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v6:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/i/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/i/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]:"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/sdk/android/httpdns/i/d;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/i/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/i/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/i/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    goto :goto_0
.end method
