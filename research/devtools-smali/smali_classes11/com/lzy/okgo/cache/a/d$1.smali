.class Lcom/lzy/okgo/cache/a/d$1;
.super Ljava/lang/Object;
.source "FirstCacheRequestPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/cache/a/d;->onSuccess(Lcom/lzy/okgo/model/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic lD:Lcom/lzy/okgo/model/a;

.field final synthetic lG:Lcom/lzy/okgo/cache/a/d;


# direct methods
.method constructor <init>(Lcom/lzy/okgo/cache/a/d;Lcom/lzy/okgo/model/a;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/lzy/okgo/cache/a/d$1;->lG:Lcom/lzy/okgo/cache/a/d;

    iput-object p2, p0, Lcom/lzy/okgo/cache/a/d$1;->lD:Lcom/lzy/okgo/model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/d$1;->lG:Lcom/lzy/okgo/cache/a/d;

    iget-object v0, v0, Lcom/lzy/okgo/cache/a/d;->lA:Lcom/lzy/okgo/b/b;

    iget-object v1, p0, Lcom/lzy/okgo/cache/a/d$1;->lD:Lcom/lzy/okgo/model/a;

    invoke-interface {v0, v1}, Lcom/lzy/okgo/b/b;->onSuccess(Lcom/lzy/okgo/model/a;)V

    .line 43
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/d$1;->lG:Lcom/lzy/okgo/cache/a/d;

    iget-object v0, v0, Lcom/lzy/okgo/cache/a/d;->lA:Lcom/lzy/okgo/b/b;

    invoke-interface {v0}, Lcom/lzy/okgo/b/b;->onFinish()V

    .line 44
    return-void
.end method
