.class abstract Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover;
.super Ljava/lang/Object;
.source "AbsFindCover.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/musicrecognize/IFindCover;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover$HttpCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AbsFindCover"

.field private static final sClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover;->sClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 28
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    .line 29
    .local v0, "uiThread":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, v0, :cond_0

    .line 30
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 32
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 34
    :goto_0
    return-void
.end method


# virtual methods
.method httpRequest(Ljava/lang/String;Ljava/util/Map;Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover$HttpCallback;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover$HttpCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover$HttpCallback;",
            ")V"
        }
    .end annotation

    .line 43
    .local p2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 44
    .local v0, "builder":Lokhttp3/FormBody$Builder;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 45
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 46
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 47
    :cond_0
    sget-object v1, Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover;->sClient:Lokhttp3/OkHttpClient;

    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 48
    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 49
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 50
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover$1;

    invoke-direct {v2, p0, p3}, Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover$1;-><init>(Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover;Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover$HttpCallback;)V

    .line 50
    invoke-interface {v1, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 69
    return-void
.end method
