.class Lcom/xiaopeng/lib/apirouter/server/a;
.super Ljava/lang/Object;
.source "AutoCodeMatcher.java"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib/apirouter/server/b;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile c:Z

.field private static final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/apirouter/server/a;->b:Ljava/util/List;

    const/4 v0, 0x0

    .line 23
    sput-boolean v0, Lcom/xiaopeng/lib/apirouter/server/a;->c:Z

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/apirouter/server/a;->d:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    const-string v0, "AutoCodeMatcher"

    const-string v1, "initManifestHandler:"

    .line 54
    invoke-static {v0, v1}, Laor;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/xiaopeng/lib/apirouter/server/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    sget-object v0, Lcom/xiaopeng/lib/apirouter/server/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/apirouter/server/b;

    .line 57
    invoke-direct {p0, v1}, Lcom/xiaopeng/lib/apirouter/server/a;->a(Lcom/xiaopeng/lib/apirouter/server/b;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 60
    sput-boolean v0, Lcom/xiaopeng/lib/apirouter/server/a;->c:Z

    return-void
.end method

.method private a(Lcom/xiaopeng/lib/apirouter/server/b;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-interface {p1}, Lcom/xiaopeng/lib/apirouter/server/b;->a()[Lcom/xiaopeng/lib/apirouter/server/c;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 68
    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_0

    .line 72
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/lib/apirouter/server/a;->a([Lcom/xiaopeng/lib/apirouter/server/c;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "AutoCodeMatcher"

    const-string v0, "initManifestHandler manifestHelpers is empty, return"

    .line 69
    invoke-static {p1, v0}, Laor;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a([Lcom/xiaopeng/lib/apirouter/server/c;)V
    .locals 8

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addManifestHandlerToMap start :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoCodeMatcher"

    invoke-static {v1, v0}, Laor;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/xiaopeng/lib/apirouter/server/a;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/apirouter/server/a;->a:Ljava/util/HashMap;

    .line 80
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/apirouter/server/a;->a:Ljava/util/HashMap;

    .line 81
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    .line 83
    :try_start_0
    invoke-interface {v4}, Lcom/xiaopeng/lib/apirouter/server/c;->getMapping()Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 84
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 85
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 88
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addManifestHandlerToMap:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v5}, Laor;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addManifestHandlerToMap end : currentMapping size = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Laor;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 29
    sget-object v0, Lcom/xiaopeng/lib/apirouter/server/a;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/apirouter/server/a;->a:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 31
    invoke-static {}, Lcom/xiaopeng/lib/apirouter/server/f;->a()Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/lib/apirouter/server/a;->a:Ljava/util/HashMap;

    .line 32
    invoke-direct {p0}, Lcom/xiaopeng/lib/apirouter/server/a;->a()V

    .line 34
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    sget-object v0, Lcom/xiaopeng/lib/apirouter/server/a;->a:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object p1, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    :goto_0
    if-nez p1, :cond_2

    .line 36
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    .line 34
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
