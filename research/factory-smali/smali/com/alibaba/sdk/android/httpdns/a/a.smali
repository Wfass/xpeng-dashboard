.class public Lcom/alibaba/sdk/android/httpdns/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alibaba/sdk/android/httpdns/a/a;


# instance fields
.field private final a:Lcom/alibaba/sdk/android/beacon/Beacon$OnServiceErrListener;

.field private final a:Lcom/alibaba/sdk/android/beacon/Beacon$OnUpdateListener;

.field private a:Lcom/alibaba/sdk/android/beacon/Beacon;

.field private a:Lcom/alibaba/sdk/android/httpdns/d/a;

.field private h:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/a/a;->a:Lcom/alibaba/sdk/android/httpdns/a/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/a/a;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/a/a;->a:Lcom/alibaba/sdk/android/httpdns/d/a;

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/a/a;->a:Lcom/alibaba/sdk/android/beacon/Beacon;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/a/a;->h:Z

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/a/a$1;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/httpdns/a/a$1;-><init>(Lcom/alibaba/sdk/android/httpdns/a/a;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/a/a;->a:Lcom/alibaba/sdk/android/beacon/Beacon$OnUpdateListener;

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/a/a$2;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/httpdns/a/a$2;-><init>(Lcom/alibaba/sdk/android/httpdns/a/a;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/a/a;->a:Lcom/alibaba/sdk/android/beacon/Beacon$OnServiceErrListener;

    return-void
.end method

.method public static a()Lcom/alibaba/sdk/android/httpdns/a/a;
    .locals 2

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/a/a;->a:Lcom/alibaba/sdk/android/httpdns/a/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/alibaba/sdk/android/httpdns/a/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alibaba/sdk/android/httpdns/a/a;->a:Lcom/alibaba/sdk/android/httpdns/a/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/alibaba/sdk/android/httpdns/a/a;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/httpdns/a/a;-><init>()V

    sput-object v1, Lcom/alibaba/sdk/android/httpdns/a/a;->a:Lcom/alibaba/sdk/android/httpdns/a/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/a/a;->a:Lcom/alibaba/sdk/android/httpdns/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/httpdns/a/a;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/httpdns/a/a;->b(Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/alibaba/sdk/android/beacon/Beacon$Config;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/alibaba/sdk/android/beacon/Beacon$Config;->key:Ljava/lang/String;

    const-string v2, "___httpdns_service___"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p1, Lcom/alibaba/sdk/android/beacon/Beacon$Config;->value:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string v1, "HTTPDNS:BeaconManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "httpdns configs:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "ut"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ut"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/httpdns/a/a;->d(Ljava/lang/String;)Z

    :cond_0
    const-string p1, "ip-ranking"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "ip-ranking"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/httpdns/a/a;->i(Ljava/lang/String;)V

    :cond_1
    const-string p1, "status"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "status"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/httpdns/a/a;->j(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "HTTPDNS:BeaconManager"

    const-string v2, "parse push configs failed."

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/beacon/Beacon$Config;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/beacon/Beacon$Config;

    iget-object v1, v0, Lcom/alibaba/sdk/android/beacon/Beacon$Config;->key:Ljava/lang/String;

    const-string v2, "___httpdns_service___"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/httpdns/a/a;->a(Lcom/alibaba/sdk/android/beacon/Beacon$Config;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/a/a;->a:Lcom/alibaba/sdk/android/httpdns/d/a;

    if-eqz v2, :cond_1

    const-string v2, "HTTPDNS:BeaconManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is report enabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "disabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/a/a;->a:Lcom/alibaba/sdk/android/httpdns/d/a;

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/httpdns/d/a;->d(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/a/a;->a:Lcom/alibaba/sdk/android/httpdns/d/a;

    invoke-virtual {p1, v1}, Lcom/alibaba/sdk/android/httpdns/d/a;->d(Z)V

    :goto_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private i(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    const-string v0, "HTTPDNS:BeaconManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is IP probe enabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "disabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/httpdns/a/a;->h:Z

    return-void

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private j(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "disabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/b;->a(Z)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[beacon] httpdns enable: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/b;->a()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/i;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/a/a;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/a/a;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "sdkId"

    const-string v1, "httpdns"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "accountId"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/alibaba/sdk/android/beacon/Beacon$Builder;

    invoke-direct {p2}, Lcom/alibaba/sdk/android/beacon/Beacon$Builder;-><init>()V

    const-string v0, "24657847"

    invoke-virtual {p2, v0}, Lcom/alibaba/sdk/android/beacon/Beacon$Builder;->appKey(Ljava/lang/String;)Lcom/alibaba/sdk/android/beacon/Beacon$Builder;

    move-result-object p2

    const-string v0, "f30fc0937f2b1e9e50a1b7134f1ddb10"

    invoke-virtual {p2, v0}, Lcom/alibaba/sdk/android/beacon/Beacon$Builder;->appSecret(Ljava/lang/String;)Lcom/alibaba/sdk/android/beacon/Beacon$Builder;

    move-result-object p2

    const-wide/32 v0, 0x6ddd00

    invoke-virtual {p2, v0, v1}, Lcom/alibaba/sdk/android/beacon/Beacon$Builder;->loopInterval(J)Lcom/alibaba/sdk/android/beacon/Beacon$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/alibaba/sdk/android/beacon/Beacon$Builder;->extras(Ljava/util/Map;)Lcom/alibaba/sdk/android/beacon/Beacon$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/beacon/Beacon$Builder;->build()Lcom/alibaba/sdk/android/beacon/Beacon;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/a/a;->a:Lcom/alibaba/sdk/android/beacon/Beacon;

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/a/a;->a:Lcom/alibaba/sdk/android/beacon/Beacon;

    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/a/a;->a:Lcom/alibaba/sdk/android/beacon/Beacon$OnUpdateListener;

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/beacon/Beacon;->addUpdateListener(Lcom/alibaba/sdk/android/beacon/Beacon$OnUpdateListener;)V

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/a/a;->a:Lcom/alibaba/sdk/android/beacon/Beacon;

    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/a/a;->a:Lcom/alibaba/sdk/android/beacon/Beacon$OnServiceErrListener;

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/beacon/Beacon;->addServiceErrListener(Lcom/alibaba/sdk/android/beacon/Beacon$OnServiceErrListener;)V

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/a/a;->a:Lcom/alibaba/sdk/android/beacon/Beacon;

    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/a/a;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/beacon/Beacon;->start(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/alibaba/sdk/android/httpdns/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/a/a;->a:Lcom/alibaba/sdk/android/httpdns/d/a;

    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/a/a;->h:Z

    return v0
.end method
