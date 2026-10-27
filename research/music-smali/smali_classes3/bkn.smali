.class public Lbkn;
.super Ljava/lang/Object;
.source "OKHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbkn$a;
    }
.end annotation


# static fields
.field public static volatile a:Z = false

.field private static b:Ljava/lang/Object;

.field private static c:Lbkn$a;

.field private static volatile d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbkn;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 196
    sput-boolean v0, Lbkn;->d:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Lbks;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lbks<",
            "TT;>;"
        }
    .end annotation

    .line 110
    invoke-static {}, Lbkn;->a()V

    .line 111
    new-instance v0, Lbks;

    invoke-direct {v0, p0}, Lbks;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 188
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 189
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 191
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string p0, "V1.0.0"

    :goto_0
    return-object p0
.end method

.method public static a()V
    .locals 2

    .line 93
    sget-boolean v0, Lbkn;->a:Z

    if-nez v0, :cond_1

    .line 94
    sget-object v0, Lbkn;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_0
    sget-boolean v1, Lbkn;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 97
    :try_start_1
    sget-object v1, Lbkn;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 99
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method public static a(Landroid/app/Application;)V
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbkn$1;

    invoke-direct {v1, p0}, Lbkn$1;-><init>(Landroid/app/Application;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    .line 84
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a(Lbkn$a;)V
    .locals 0

    .line 89
    sput-object p0, Lbkn;->c:Lbkn$a;

    return-void
.end method

.method public static a(Lcom/lzy/okgo/request/base/Request;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/lzy/okgo/request/base/Request;->getParams()Lcom/lzy/okgo/model/HttpParams;

    move-result-object v0

    .line 131
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 133
    iget-object v3, v0, Lcom/lzy/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 134
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 135
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 140
    :cond_2
    invoke-static {v1}, Lbkn;->a(Ljava/util/Map;)V

    if-eqz v0, :cond_3

    .line 141
    iget-object v3, v0, Lcom/lzy/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    if-eqz v3, :cond_3

    .line 142
    iget-object v0, v0, Lcom/lzy/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 145
    :cond_3
    new-array v0, v2, [Z

    invoke-virtual {p0, v1, v0}, Lcom/lzy/okgo/request/base/Request;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    return-void
.end method

.method private static a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 178
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "timestamp"

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v2, p0, v0, v1}, Lcom/xiaopeng/lib/http/Security;->sign(Landroid/content/Context;Ljava/util/Map;J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sign"

    .line 180
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/request/PostRequest<",
            "TT;>;"
        }
    .end annotation

    .line 118
    invoke-static {}, Lbkn;->a()V

    .line 119
    new-instance v0, Lbku;

    invoke-direct {v0, p0}, Lbku;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b()V
    .locals 1

    .line 199
    sget-boolean v0, Lbkn;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 203
    :cond_0
    invoke-static {}, Lbkn;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    new-instance v0, Lbkn$2;

    invoke-direct {v0}, Lbkn$2;-><init>()V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 210
    sput-boolean v0, Lbkn;->d:Z

    :cond_1
    return-void
.end method

.method public static b(Lcom/lzy/okgo/request/base/Request;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 159
    :cond_0
    new-instance v0, Lcom/lzy/okgo/model/HttpHeaders;

    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpHeaders;-><init>()V

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "car.xmart.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v2}, Lbkn;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Client"

    invoke-virtual {v0, v2, v1}, Lcom/lzy/okgo/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    .line 161
    invoke-virtual {v0, v1, v2}, Lcom/lzy/okgo/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/lzy/okgo/request/base/Request;->getHeaders()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v1

    .line 165
    sget-object v2, Lbkn;->c:Lbkn$a;

    if-eqz v2, :cond_1

    .line 166
    invoke-interface {v2, v0, v1}, Lbkn$a;->a(Lcom/lzy/okgo/model/HttpHeaders;Lcom/lzy/okgo/model/HttpHeaders;)V

    .line 168
    :cond_1
    invoke-virtual {p0, v0}, Lcom/lzy/okgo/request/base/Request;->headers(Lcom/lzy/okgo/model/HttpHeaders;)Lcom/lzy/okgo/request/base/Request;

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "app_id"

    const-string/jumbo v2, "xmart:appid:002"

    .line 172
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 173
    new-array v1, v1, [Z

    invoke-virtual {p0, v0, v1}, Lcom/lzy/okgo/request/base/Request;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    return-void
.end method

.method static synthetic c()Lbkn$a;
    .locals 1

    .line 37
    sget-object v0, Lbkn;->c:Lbkn$a;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/Object;
    .locals 1

    .line 37
    sget-object v0, Lbkn;->b:Ljava/lang/Object;

    return-object v0
.end method

.method private static e()Z
    .locals 5

    const/4 v0, 0x0

    .line 217
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 218
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    .line 220
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v1

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x400

    .line 221
    div-long/2addr v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 226
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method
