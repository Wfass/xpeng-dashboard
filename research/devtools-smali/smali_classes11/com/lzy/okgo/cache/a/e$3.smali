.class Lcom/lzy/okgo/cache/a/e$3;
.super Ljava/lang/Object;
.source "NoCachePolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/cache/a/e;->a(Lcom/lzy/okgo/cache/CacheEntity;Lcom/lzy/okgo/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic lI:Lcom/lzy/okgo/cache/a/e;


# direct methods
.method constructor <init>(Lcom/lzy/okgo/cache/a/e;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/lzy/okgo/cache/a/e$3;->lI:Lcom/lzy/okgo/cache/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/e$3;->lI:Lcom/lzy/okgo/cache/a/e;

    iget-object v0, v0, Lcom/lzy/okgo/cache/a/e;->lA:Lcom/lzy/okgo/b/b;

    iget-object v1, p0, Lcom/lzy/okgo/cache/a/e$3;->lI:Lcom/lzy/okgo/cache/a/e;

    iget-object v1, v1, Lcom/lzy/okgo/cache/a/e;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-interface {v0, v1}, Lcom/lzy/okgo/b/b;->onStart(Lcom/lzy/okgo/request/base/Request;)V

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/e$3;->lI:Lcom/lzy/okgo/cache/a/e;

    invoke-virtual {v0}, Lcom/lzy/okgo/cache/a/e;->cS()Lokhttp3/Call;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    nop

    .line 85
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/e$3;->lI:Lcom/lzy/okgo/cache/a/e;

    invoke-virtual {v0}, Lcom/lzy/okgo/cache/a/e;->cT()V

    .line 86
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lzy/okgo/cache/a/e$3;->lI:Lcom/lzy/okgo/cache/a/e;

    iget-object v2, v2, Lcom/lzy/okgo/cache/a/e;->lz:Lokhttp3/Call;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/lzy/okgo/model/a;->a(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/a;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/lzy/okgo/cache/a/e$3;->lI:Lcom/lzy/okgo/cache/a/e;

    iget-object v1, v1, Lcom/lzy/okgo/cache/a/e;->lA:Lcom/lzy/okgo/b/b;

    invoke-interface {v1, v0}, Lcom/lzy/okgo/b/b;->onError(Lcom/lzy/okgo/model/a;)V

    .line 83
    return-void
.end method
