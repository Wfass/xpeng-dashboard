.class Lcom/lzy/okgo/request/base/a$1;
.super Ljava/lang/Object;
.source "ProgressRequestBody.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/request/base/a;->b(Lcom/lzy/okgo/model/Progress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic mA:Lcom/lzy/okgo/model/Progress;

.field final synthetic mB:Lcom/lzy/okgo/request/base/a;


# direct methods
.method constructor <init>(Lcom/lzy/okgo/request/base/a;Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/lzy/okgo/request/base/a$1;->mB:Lcom/lzy/okgo/request/base/a;

    iput-object p2, p0, Lcom/lzy/okgo/request/base/a$1;->mA:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/lzy/okgo/request/base/a$1;->mB:Lcom/lzy/okgo/request/base/a;

    invoke-static {v0}, Lcom/lzy/okgo/request/base/a;->b(Lcom/lzy/okgo/request/base/a;)Lcom/lzy/okgo/b/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/lzy/okgo/request/base/a$1;->mB:Lcom/lzy/okgo/request/base/a;

    invoke-static {v0}, Lcom/lzy/okgo/request/base/a;->b(Lcom/lzy/okgo/request/base/a;)Lcom/lzy/okgo/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okgo/request/base/a$1;->mA:Lcom/lzy/okgo/model/Progress;

    invoke-interface {v0, v1}, Lcom/lzy/okgo/b/b;->uploadProgress(Lcom/lzy/okgo/model/Progress;)V

    .line 114
    :cond_0
    return-void
.end method
