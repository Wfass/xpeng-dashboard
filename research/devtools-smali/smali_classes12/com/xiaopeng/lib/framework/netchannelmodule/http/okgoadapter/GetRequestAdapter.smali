.class public Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/GetRequestAdapter;
.super Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;
.source "GetRequestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V
    .locals 1
    .param p1    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 20
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/StringCallbackAdapter;

    invoke-direct {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/StringCallbackAdapter;-><init>(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    invoke-super {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->execute(Lcom/lzy/okgo/b/b;)V

    .line 21
    return-void
.end method
