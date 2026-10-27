.class public Lcom/alibaba/sdk/android/httpdns/b/c;
.super Lcom/alibaba/sdk/android/httpdns/b/b;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/httpdns/b/d;


# instance fields
.field private a:I

.field private a:J

.field private final a:Lcom/alibaba/sdk/android/httpdns/e/b;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/httpdns/e/b;[Ljava/lang/String;[I[Ljava/lang/String;[I)V
    .locals 6

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/e/b;->b()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/httpdns/b/b;-><init>([Ljava/lang/String;[I[Ljava/lang/String;[ILjava/lang/String;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:I

    iput p2, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->b:I

    const-wide/16 p3, 0x0

    iput-wide p3, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:J

    iput p2, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->c:I

    iput p2, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->d:I

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    return-void
.end method

.method private a([Ljava/lang/String;[ILjava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_5

    aget-object v2, p1, v1

    invoke-static {v2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    if-nez p2, :cond_2

    if-gtz p4, :cond_1

    move v0, v2

    :cond_1
    return v0

    :cond_2
    array-length v3, p2

    if-ge v1, v3, :cond_3

    aget v3, p2, v1

    if-ne v3, p4, :cond_4

    return v2

    :cond_3
    if-gtz p4, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0
.end method

.method private d(Ljava/lang/String;I)Z
    .locals 4

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/b/b;->b()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/b/b;->b()[I

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget v3, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->b:I

    aget-object v3, v0, v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v1, :cond_1

    iget p1, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->b:I

    aget p1, v1, p1

    if-eq p1, p2, :cond_1

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->b:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->b:I

    array-length v0, v0

    if-lt p1, v0, :cond_2

    iput v2, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->b:I

    :cond_2
    iget p1, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->b:I

    iget v0, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:I

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    move p2, v2

    :goto_0
    return p2

    :cond_4
    :goto_1
    return v2
.end method


# virtual methods
.method public a()I
    .locals 3

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/b/b;->b()[I

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->b:I

    array-length v2, v0

    if-ge v1, v2, :cond_1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    aget v0, v0, v1

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->getPort(ILjava/lang/String;)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->getPort(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/b/b;->b()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->translateStringArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "serverIps"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/b/b;->b()[I

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->translateIntArray([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ports"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget v0, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->b:I

    const-string v1, "current"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget v0, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:I

    const-string v1, "last"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->translateStringArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "serverIpsIpv6"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()[I

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->translateIntArray([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "portsIpv6"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget v0, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->d:I

    const-string v1, "currentIpv6"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget v0, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->c:I

    const-string v1, "lastIpv6"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:J

    const-string v2, "servers_last_updated_time"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "server_region"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public a(Landroid/content/SharedPreferences;)V
    .locals 8

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "server_region"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restore service ip of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "default"

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/b/b;->b()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->translateStringArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "serverIps"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->parseStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/b/b;->b()[I

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->translateIntArray([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ports"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->parsePorts(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->translateStringArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "serverIpsIpv6"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->parseStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()[I

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->translateIntArray([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "portsIpv6"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->parsePorts(Ljava/lang/String;)[I

    move-result-object v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/sdk/android/httpdns/b/b;->a(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;[I)Z

    const-wide/16 v0, 0x0

    const-string v2, "servers_last_updated_time"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:J

    :cond_2
    return-void
.end method

.method public declared-synchronized a([Ljava/lang/String;[I)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/b/b;->b()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/b/b;->b()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    array-length v4, p1

    if-eq v3, v4, :cond_1

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abort rank server ip count changed, current ips: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sorted ips: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    :try_start_1
    array-length v5, p1

    if-eq v4, v5, :cond_5

    aget-object v5, p1, v4

    if-nez p2, :cond_2

    const/4 v6, -0x1

    goto :goto_1

    :cond_2
    aget v6, p2, v4

    :goto_1
    invoke-direct {p0, v0, v1, v5, v6}, Lcom/alibaba/sdk/android/httpdns/b/c;->a([Ljava/lang/String;[ILjava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "abort rank server ip as changed, current ips: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ports: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sorted ips: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ports: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update ranked server ips: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ports: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0, v2, p1, p2}, Lcom/alibaba/sdk/android/httpdns/b/b;->a(Ljava/lang/String;[Ljava/lang/String;[I)Z

    move-result p1

    if-eqz p1, :cond_7

    iput v3, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:I

    iput v3, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Ljava/lang/String;I)Z
    .locals 4

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/b/b;->b()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/b/b;->b()[I

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget v3, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->b:I

    aget-object v0, v0, v3

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v1, :cond_1

    iget p1, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->b:I

    aget p1, v1, p1

    if-ne p1, p2, :cond_3

    :cond_1
    iget p1, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:I

    iget p2, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->b:I

    if-eq p1, p2, :cond_2

    iput p2, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:I

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()V

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v2
.end method

.method public b()I
    .locals 3

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()[I

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->d:I

    array-length v2, v0

    if-ge v1, v2, :cond_1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    aget v0, v0, v1

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->getPort(ILjava/lang/String;)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->getPort(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/b/b;->b()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->b:I

    array-length v2, v0

    if-ge v1, v2, :cond_1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object v0, v0, v1

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized b([Ljava/lang/String;[I)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()[I

    move-result-object v1

    array-length v2, v0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abort rank server ip count changed, current ipv6s: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sorted ipv6s: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    :try_start_1
    array-length v4, p1

    if-eq v3, v4, :cond_5

    aget-object v4, p1, v3

    if-nez p2, :cond_2

    const/4 v5, -0x1

    goto :goto_1

    :cond_2
    aget v5, p2, v3

    :goto_1
    invoke-direct {p0, v0, v1, v4, v5}, Lcom/alibaba/sdk/android/httpdns/b/c;->a([Ljava/lang/String;[ILjava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "abort rank server ip as changed, current ipv6s: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ports: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sorted ipv6s: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ports: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update ranked server ipv6s: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ports: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/httpdns/b/b;->a([Ljava/lang/String;[I)Z

    move-result p1

    if-eqz p1, :cond_7

    iput v2, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->c:I

    iput v2, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Ljava/lang/String;I)Z
    .locals 4

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()[I

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget v3, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->d:I

    aget-object v0, v0, v3

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v1, :cond_1

    iget p1, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->d:I

    aget p1, v1, p1

    if-ne p1, p2, :cond_3

    :cond_1
    iget p1, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->c:I

    iget p2, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->d:I

    if-eq p1, p2, :cond_2

    iput p2, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->c:I

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()V

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v2
.end method

.method public declared-synchronized b(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;[I)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->fixRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    :cond_0
    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/httpdns/e/b;->b()Lcom/alibaba/sdk/android/httpdns/b/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/httpdns/b/b;->b()[Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/e/b;->b()Lcom/alibaba/sdk/android/httpdns/b/b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/b/b;->b()[I

    move-result-object p3

    :cond_1
    if-eqz p4, :cond_2

    array-length v0, p4

    if-nez v0, :cond_3

    :cond_2
    iget-object p4, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {p4}, Lcom/alibaba/sdk/android/httpdns/e/b;->b()Lcom/alibaba/sdk/android/httpdns/b/b;

    move-result-object p4

    invoke-virtual {p4}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()[Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {p5}, Lcom/alibaba/sdk/android/httpdns/e/b;->b()Lcom/alibaba/sdk/android/httpdns/b/b;

    move-result-object p5

    invoke-virtual {p5}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()[I

    move-result-object p5

    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/sdk/android/httpdns/b/b;->a(Ljava/lang/String;[Ljava/lang/String;[I)Z

    move-result p1

    invoke-virtual {p0, p4, p5}, Lcom/alibaba/sdk/android/httpdns/b/b;->a([Ljava/lang/String;[I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iput v1, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:I

    iput v1, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->b:I

    :cond_4
    if-eqz v0, :cond_5

    iput v1, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->c:I

    iput v1, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->d:I

    :cond_5
    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/httpdns/e/b;->b()Lcom/alibaba/sdk/android/httpdns/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/httpdns/b/b;->b()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/httpdns/e/b;->b()Lcom/alibaba/sdk/android/httpdns/b/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/httpdns/b/b;->b()[I

    move-result-object v3

    invoke-static {p2, p3, v2, v3}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isSameServer([Ljava/lang/String;[I[Ljava/lang/String;[I)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/httpdns/e/b;->b()Lcom/alibaba/sdk/android/httpdns/b/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()[Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/e/b;->b()Lcom/alibaba/sdk/android/httpdns/b/b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()[I

    move-result-object p3

    invoke-static {p4, p5, p2, p3}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isSameServer([Ljava/lang/String;[I[Ljava/lang/String;[I)Z

    move-result p2

    if-nez p2, :cond_7

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:J

    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    if-nez p1, :cond_8

    if-eqz v0, :cond_9

    :cond_8
    const/4 v1, 0x1

    :cond_9
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->d:I

    array-length v2, v0

    if-ge v1, v2, :cond_1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object v0, v0, v1

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Ljava/lang/String;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alibaba/sdk/android/httpdns/b/c;->d(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public e(Ljava/lang/String;I)Z
    .locals 4

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()[I

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget v3, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->d:I

    aget-object v3, v0, v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v1, :cond_1

    iget p1, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->d:I

    aget p1, v1, p1

    if-eq p1, p2, :cond_1

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->d:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->d:I

    array-length v0, v0

    if-lt p1, v0, :cond_2

    iput v2, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->d:I

    :cond_2
    iget p1, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->d:I

    iget v0, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->c:I

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    move p2, v2

    :goto_0
    return p2

    :cond_4
    :goto_1
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, Lcom/alibaba/sdk/android/httpdns/b/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/alibaba/sdk/android/httpdns/b/c;

    iget v2, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:I

    iget v3, p1, Lcom/alibaba/sdk/android/httpdns/b/c;->a:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->b:I

    iget v3, p1, Lcom/alibaba/sdk/android/httpdns/b/c;->b:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->c:I

    iget v3, p1, Lcom/alibaba/sdk/android/httpdns/b/c;->c:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->d:I

    iget v3, p1, Lcom/alibaba/sdk/android/httpdns/b/c;->d:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:J

    iget-wide v4, p1, Lcom/alibaba/sdk/android/httpdns/b/c;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    iget-object p1, p1, Lcom/alibaba/sdk/android/httpdns/b/c;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v2, p1}, Lcom/alibaba/sdk/android/httpdns/e/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    invoke-super {p0}, Lcom/alibaba/sdk/android/httpdns/b/b;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/alibaba/sdk/android/httpdns/b/c;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
