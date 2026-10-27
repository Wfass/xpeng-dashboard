.class public Lbkt;
.super Lcom/lzy/okgo/callback/AbsCallback;
.source "XPOkCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;",
        ">",
        "Lcom/lzy/okgo/callback/AbsCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lbkv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbkv<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/lzy/okgo/callback/AbsCallback;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lbkt;->a:Lbkv;

    return-void
.end method

.method public constructor <init>(Lbkv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbkv<",
            "TT;>;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lcom/lzy/okgo/callback/AbsCallback;-><init>()V

    .line 24
    iput-object p1, p0, Lbkt;->a:Lbkv;

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Response;)Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")TT;"
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 61
    :cond_0
    iget-object v0, p0, Lbkt;->a:Lbkv;

    if-nez v0, :cond_1

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 66
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    .line 67
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;

    return-object p1
.end method

.method public synthetic convertResponse(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lbkt;->a(Lokhttp3/Response;)Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;

    move-result-object p1

    return-object p1
.end method

.method public onCacheSuccess(Lcom/lzy/okgo/model/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;

    const/4 v1, 0x1

    .line 74
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;->setFromCache(Z)Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;

    .line 75
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Lbkt;->onSuccess(Lcom/lzy/okgo/model/Response;)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0, p1}, Lbkt;->onError(Lcom/lzy/okgo/model/Response;)V

    goto :goto_0

    .line 81
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCacheSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XPOkCallback"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onError(Lcom/lzy/okgo/model/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lbkt;->a:Lbkv;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0, p1}, Lbkv;->a(Lcom/lzy/okgo/model/Response;)V

    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 1

    .line 47
    iget-object v0, p0, Lbkt;->a:Lbkv;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Lbkv;->a()V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/lzy/okgo/model/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lbkt;->a:Lbkv;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;

    invoke-virtual {v0, p1}, Lbkv;->b(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V

    :cond_0
    return-void
.end method
