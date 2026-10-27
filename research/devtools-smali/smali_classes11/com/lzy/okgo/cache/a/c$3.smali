.class Lcom/lzy/okgo/cache/a/c$3;
.super Ljava/lang/Object;
.source "DefaultCachePolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/cache/a/c;->a(Lokhttp3/Call;Lokhttp3/Response;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic lE:Lcom/lzy/okgo/cache/a/c;

.field final synthetic lF:Lcom/lzy/okgo/model/a;


# direct methods
.method constructor <init>(Lcom/lzy/okgo/cache/a/c;Lcom/lzy/okgo/model/a;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/lzy/okgo/cache/a/c$3;->lE:Lcom/lzy/okgo/cache/a/c;

    iput-object p2, p0, Lcom/lzy/okgo/cache/a/c$3;->lF:Lcom/lzy/okgo/model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/c$3;->lE:Lcom/lzy/okgo/cache/a/c;

    iget-object v0, v0, Lcom/lzy/okgo/cache/a/c;->lA:Lcom/lzy/okgo/b/b;

    iget-object v1, p0, Lcom/lzy/okgo/cache/a/c$3;->lF:Lcom/lzy/okgo/model/a;

    invoke-interface {v0, v1}, Lcom/lzy/okgo/b/b;->onError(Lcom/lzy/okgo/model/a;)V

    .line 73
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/c$3;->lE:Lcom/lzy/okgo/cache/a/c;

    iget-object v0, v0, Lcom/lzy/okgo/cache/a/c;->lA:Lcom/lzy/okgo/b/b;

    invoke-interface {v0}, Lcom/lzy/okgo/b/b;->onFinish()V

    .line 74
    return-void
.end method
