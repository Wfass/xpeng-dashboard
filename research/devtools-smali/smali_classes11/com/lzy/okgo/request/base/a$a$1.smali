.class Lcom/lzy/okgo/request/base/a$a$1;
.super Ljava/lang/Object;
.source "ProgressRequestBody.java"

# interfaces
.implements Lcom/lzy/okgo/model/Progress$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/request/base/a$a;->write(Lokio/Buffer;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic mD:Lcom/lzy/okgo/request/base/a$a;


# direct methods
.method constructor <init>(Lcom/lzy/okgo/request/base/a$a;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/lzy/okgo/request/base/a$a$1;->mD:Lcom/lzy/okgo/request/base/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/lzy/okgo/request/base/a$a$1;->mD:Lcom/lzy/okgo/request/base/a$a;

    iget-object v0, v0, Lcom/lzy/okgo/request/base/a$a;->mB:Lcom/lzy/okgo/request/base/a;

    invoke-static {v0}, Lcom/lzy/okgo/request/base/a;->a(Lcom/lzy/okgo/request/base/a;)Lcom/lzy/okgo/request/base/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/lzy/okgo/request/base/a$a$1;->mD:Lcom/lzy/okgo/request/base/a$a;

    iget-object v0, v0, Lcom/lzy/okgo/request/base/a$a;->mB:Lcom/lzy/okgo/request/base/a;

    invoke-static {v0}, Lcom/lzy/okgo/request/base/a;->a(Lcom/lzy/okgo/request/base/a;)Lcom/lzy/okgo/request/base/a$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lzy/okgo/request/base/a$b;->uploadProgress(Lcom/lzy/okgo/model/Progress;)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/request/base/a$a$1;->mD:Lcom/lzy/okgo/request/base/a$a;

    iget-object v0, v0, Lcom/lzy/okgo/request/base/a$a;->mB:Lcom/lzy/okgo/request/base/a;

    invoke-static {v0, p1}, Lcom/lzy/okgo/request/base/a;->a(Lcom/lzy/okgo/request/base/a;Lcom/lzy/okgo/model/Progress;)V

    .line 102
    :goto_0
    return-void
.end method
