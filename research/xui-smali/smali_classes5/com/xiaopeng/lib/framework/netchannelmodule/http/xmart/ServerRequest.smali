.class public Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerRequest;
.super Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter;
.source "ServerRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerRequest$ServerCallbackImplAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter<",
        "Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 12
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/xmart/IServerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/xmart/IServerCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 17
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerRequest$ServerCallbackImplAdapter;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerRequest$ServerCallbackImplAdapter;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerRequest;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/xmart/IServerCallback;)V

    invoke-super {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter;->execute(Lcom/lzy/okgo/callback/Callback;)V

    .line 18
    return-void
.end method
