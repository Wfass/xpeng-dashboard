.class public Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/PostRequestAdapter;
.super Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter;
.source "PostRequestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V
    .locals 1
    .param p1    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 19
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/StringCallbackAdapter;

    invoke-direct {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/StringCallbackAdapter;-><init>(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    invoke-super {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter;->execute(Lcom/lzy/okgo/b/b;)V

    .line 20
    return-void
.end method
