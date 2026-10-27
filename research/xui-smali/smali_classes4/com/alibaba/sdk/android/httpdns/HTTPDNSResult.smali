.class public Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field extra:Ljava/lang/String;

.field fromDB:Z

.field fromLocalDns:Z

.field host:Ljava/lang/String;

.field ips:[Ljava/lang/String;

.field ipv6s:[Ljava/lang/String;

.field queryTime:J

.field ttl:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->host:Ljava/lang/String;

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/n/a;->a:[Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->ips:[Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->ipv6s:[Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->extra:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->queryTime:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->ttl:I

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->fromDB:Z

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->fromLocalDns:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->host:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->ips:[Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->ipv6s:[Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->extra:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->queryTime:J

    const/16 p1, 0x3c

    iput p1, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->ttl:I

    iput-boolean p6, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->fromDB:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-boolean p7, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->fromLocalDns:Z

    return-void
.end method

.method public static empty(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;
    .locals 8

    new-instance v7, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;

    const/4 v0, 0x0

    new-array v2, v0, [Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/String;

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v7
.end method


# virtual methods
.method public getExtras()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getIps()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->ips:[Ljava/lang/String;

    return-object v0
.end method

.method public getIpv6s()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->ipv6s:[Ljava/lang/String;

    return-object v0
.end method

.method public isExpired()Z
    .locals 6

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->fromLocalDns:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->queryTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget v2, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->ttl:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFromDB()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->fromDB:Z

    return v0
.end method

.method public isFromLocalDns()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->fromLocalDns:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "host:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ips:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->ips:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ipv6s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->ipv6s:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extras:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expired:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->isExpired()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fromDB:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->fromDB:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", from Local Dns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->fromLocalDns:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/alibaba/sdk/android/httpdns/a/a;)V
    .locals 2

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/a/a;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/a/a;->b()I

    move-result v0

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/a/a;->a()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->ips:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/a/a;->b()I

    move-result v0

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v6:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/a/a;->a()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->ipv6s:[Ljava/lang/String;

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/a/a;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->extra:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/a/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->queryTime:J

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/a/a;->a()I

    move-result v0

    iput v0, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->ttl:I

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/a/a;->b()Z

    move-result p1

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->fromDB:Z

    :cond_3
    return-void
.end method

.method public update(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/httpdns/a/a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/sdk/android/httpdns/a/a;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/httpdns/a/a;->c()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->host:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/httpdns/a/a;->b()I

    move-result v6

    sget-object v7, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-ne v6, v7, :cond_1

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/httpdns/a/a;->a()[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->ips:[Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lcom/alibaba/sdk/android/httpdns/a/a;->b()I

    move-result v6

    sget-object v7, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v6:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-ne v6, v7, :cond_2

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/httpdns/a/a;->a()[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->ipv6s:[Ljava/lang/String;

    :cond_2
    :goto_1
    invoke-virtual {v5}, Lcom/alibaba/sdk/android/httpdns/a/a;->b()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/httpdns/a/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/httpdns/a/a;->b()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {v5}, Lcom/alibaba/sdk/android/httpdns/a/a;->b()J

    move-result-wide v6

    cmp-long v6, v0, v6

    if-lez v6, :cond_4

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/httpdns/a/a;->b()J

    move-result-wide v0

    :cond_4
    invoke-virtual {v5}, Lcom/alibaba/sdk/android/httpdns/a/a;->a()I

    move-result v6

    if-le v3, v6, :cond_5

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/httpdns/a/a;->a()I

    move-result v3

    :cond_5
    invoke-virtual {v5}, Lcom/alibaba/sdk/android/httpdns/a/a;->b()Z

    move-result v5

    or-int/2addr v4, v5

    goto :goto_0

    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string v2, ""

    :cond_7
    iput-object v2, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->extra:Ljava/lang/String;

    iput-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->queryTime:J

    iput v3, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->ttl:I

    iput-boolean v4, p0, Lcom/alibaba/sdk/android/httpdns/HTTPDNSResult;->fromDB:Z

    return-void
.end method
