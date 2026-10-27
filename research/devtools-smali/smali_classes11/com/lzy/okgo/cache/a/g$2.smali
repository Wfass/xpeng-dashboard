.class Lcom/lzy/okgo/cache/a/g$2;
.super Ljava/lang/Object;
.source "RequestFailedCachePolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/cache/a/g;->onError(Lcom/lzy/okgo/model/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic lK:Lcom/lzy/okgo/cache/a/g;

.field final synthetic lL:Lcom/lzy/okgo/model/a;


# direct methods
.method constructor <init>(Lcom/lzy/okgo/cache/a/g;Lcom/lzy/okgo/model/a;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/lzy/okgo/cache/a/g$2;->lK:Lcom/lzy/okgo/cache/a/g;

    iput-object p2, p0, Lcom/lzy/okgo/cache/a/g$2;->lL:Lcom/lzy/okgo/model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/g$2;->lK:Lcom/lzy/okgo/cache/a/g;

    iget-object v0, v0, Lcom/lzy/okgo/cache/a/g;->lA:Lcom/lzy/okgo/b/b;

    iget-object v1, p0, Lcom/lzy/okgo/cache/a/g$2;->lL:Lcom/lzy/okgo/model/a;

    invoke-interface {v0, v1}, Lcom/lzy/okgo/b/b;->onCacheSuccess(Lcom/lzy/okgo/model/a;)V

    .line 58
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/g$2;->lK:Lcom/lzy/okgo/cache/a/g;

    iget-object v0, v0, Lcom/lzy/okgo/cache/a/g;->lA:Lcom/lzy/okgo/b/b;

    invoke-interface {v0}, Lcom/lzy/okgo/b/b;->onFinish()V

    .line 59
    return-void
.end method
