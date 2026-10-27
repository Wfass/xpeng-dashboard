.class public Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerResponse;
.super Ljava/lang/Object;
.source "ServerResponse.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/xmart/IXmartResponse;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field mInternalResponse:Lcom/lzy/okgo/model/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/model/a<",
            "Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/lzy/okgo/model/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/a<",
            "Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    nop

    .line 13
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerResponse;->mInternalResponse:Lcom/lzy/okgo/model/a;

    .line 14
    return-void
.end method


# virtual methods
.method public bridge synthetic body()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/xmart/IServerBean;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 8
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerResponse;->body()Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;

    move-result-object v0

    return-object v0
.end method

.method public body()Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerResponse;->mInternalResponse:Lcom/lzy/okgo/model/a;

    invoke-virtual {v0}, Lcom/lzy/okgo/model/a;->dc()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;

    return-object v0
.end method

.method public code()I
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerResponse;->mInternalResponse:Lcom/lzy/okgo/model/a;

    invoke-virtual {v0}, Lcom/lzy/okgo/model/a;->code()I

    move-result v0

    return v0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerResponse;->mInternalResponse:Lcom/lzy/okgo/model/a;

    invoke-virtual {v0}, Lcom/lzy/okgo/model/a;->getException()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public message()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerResponse;->mInternalResponse:Lcom/lzy/okgo/model/a;

    invoke-virtual {v0}, Lcom/lzy/okgo/model/a;->message()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
