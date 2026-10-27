.class public Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerRequest$ServerCallbackImplAdapter;
.super Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerCallbackImpl;
.source "ServerRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServerCallbackImplAdapter"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mOuterCallback:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/xmart/IServerCallback;

.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerRequest;

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerRequest;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/xmart/IServerCallback;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerRequest$ServerCallbackImplAdapter;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerRequest;

    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerCallbackImpl;-><init>()V

    .line 24
    nop

    .line 25
    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerRequest$ServerCallbackImplAdapter;->mOuterCallback:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/xmart/IServerCallback;

    .line 26
    return-void
.end method


# virtual methods
.method public onError(Lcom/lzy/okgo/model/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/a<",
            "Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-super {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerCallbackImpl;->onError(Lcom/lzy/okgo/model/a;)V

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerRequest$ServerCallbackImplAdapter;->mOuterCallback:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/xmart/IServerCallback;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerResponse;

    invoke-direct {v1, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerResponse;-><init>(Lcom/lzy/okgo/model/a;)V

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/xmart/IServerCallback;->onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/xmart/IXmartResponse;)V

    .line 32
    return-void
.end method

.method public onSuccess(Lcom/lzy/okgo/model/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/a<",
            "Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;",
            ">;)V"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerRequest$ServerCallbackImplAdapter;->mOuterCallback:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/xmart/IServerCallback;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerResponse;

    invoke-direct {v1, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerResponse;-><init>(Lcom/lzy/okgo/model/a;)V

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/xmart/IServerCallback;->onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/xmart/IXmartResponse;)V

    .line 41
    return-void
.end method
