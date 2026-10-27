.class Lcom/lzy/okgo/cache/a/f$2;
.super Ljava/lang/Object;
.source "NoneCacheRequestPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/cache/a/f;->onError(Lcom/lzy/okgo/model/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic lF:Lcom/lzy/okgo/model/a;

.field final synthetic lJ:Lcom/lzy/okgo/cache/a/f;


# direct methods
.method constructor <init>(Lcom/lzy/okgo/cache/a/f;Lcom/lzy/okgo/model/a;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/lzy/okgo/cache/a/f$2;->lJ:Lcom/lzy/okgo/cache/a/f;

    iput-object p2, p0, Lcom/lzy/okgo/cache/a/f$2;->lF:Lcom/lzy/okgo/model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/f$2;->lJ:Lcom/lzy/okgo/cache/a/f;

    iget-object v0, v0, Lcom/lzy/okgo/cache/a/f;->lA:Lcom/lzy/okgo/b/b;

    iget-object v1, p0, Lcom/lzy/okgo/cache/a/f$2;->lF:Lcom/lzy/okgo/model/a;

    invoke-interface {v0, v1}, Lcom/lzy/okgo/b/b;->onError(Lcom/lzy/okgo/model/a;)V

    .line 55
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/f$2;->lJ:Lcom/lzy/okgo/cache/a/f;

    iget-object v0, v0, Lcom/lzy/okgo/cache/a/f;->lA:Lcom/lzy/okgo/b/b;

    invoke-interface {v0}, Lcom/lzy/okgo/b/b;->onFinish()V

    .line 56
    return-void
.end method
