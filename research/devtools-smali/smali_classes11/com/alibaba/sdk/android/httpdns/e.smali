.class Lcom/alibaba/sdk/android/httpdns/e;
.super Ljava/lang/Object;


# instance fields
.field private a:[Ljava/lang/String;

.field private b:J

.field private c:J

.field private hostName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/httpdns/b/e;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/alibaba/sdk/android/httpdns/b/e;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e;->hostName:Ljava/lang/String;

    iget-object v0, p1, Lcom/alibaba/sdk/android/httpdns/b/e;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/b/c;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/e;->c:J

    iget-object v0, p1, Lcom/alibaba/sdk/android/httpdns/b/e;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/sdk/android/httpdns/b/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/sdk/android/httpdns/b/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-wide/16 v1, -0x3e8

    iput-wide v1, p0, Lcom/alibaba/sdk/android/httpdns/e;->b:J

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/sdk/android/httpdns/e;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/e;->a:[Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/sdk/android/httpdns/b/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/sdk/android/httpdns/b/g;

    iget-object v3, v3, Lcom/alibaba/sdk/android/httpdns/b/g;->k:Ljava/lang/String;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "host"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/e;->hostName:Ljava/lang/String;

    const-string p1, "ips"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/sdk/android/httpdns/e;->a:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/alibaba/sdk/android/httpdns/e;->a:[Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "ttl"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/e;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/e;->c:J

    return-void
.end method

.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/e;->hostName:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/e;->a:[Ljava/lang/String;

    iput-wide p3, p0, Lcom/alibaba/sdk/android/httpdns/e;->b:J

    iput-wide p5, p0, Lcom/alibaba/sdk/android/httpdns/e;->c:J

    return-void
.end method


# virtual methods
.method a()J
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/e;->b:J

    return-wide v0
.end method

.method a()Lcom/alibaba/sdk/android/httpdns/b/e;
    .locals 8

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/b/e;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/httpdns/b/e;-><init>()V

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/e;->hostName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/sdk/android/httpdns/b/e;->h:Ljava/lang/String;

    iget-wide v1, p0, Lcom/alibaba/sdk/android/httpdns/e;->c:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/sdk/android/httpdns/b/e;->j:Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/b/b;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/sdk/android/httpdns/b/e;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/e;->a:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/e;->a:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alibaba/sdk/android/httpdns/b/e;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/e;->a:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    new-instance v5, Lcom/alibaba/sdk/android/httpdns/b/g;

    invoke-direct {v5}, Lcom/alibaba/sdk/android/httpdns/b/g;-><init>()V

    iput-object v4, v5, Lcom/alibaba/sdk/android/httpdns/b/g;->k:Ljava/lang/String;

    iget-wide v6, p0, Lcom/alibaba/sdk/android/httpdns/e;->b:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/alibaba/sdk/android/httpdns/b/g;->l:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/sdk/android/httpdns/b/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method a()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e;->a:[Ljava/lang/String;

    return-object v0
.end method

.method b()J
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/e;->c:J

    return-wide v0
.end method

.method b()Z
    .locals 6

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e;->b()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e;->a()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method c()Z
    .locals 4

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e;->a()J

    move-result-wide v0

    const-wide/16 v2, -0x3e8

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "host: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/e;->hostName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ip cnt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/e;->a:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ttl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alibaba/sdk/android/httpdns/e;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/e;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n ip: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e;->a:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
