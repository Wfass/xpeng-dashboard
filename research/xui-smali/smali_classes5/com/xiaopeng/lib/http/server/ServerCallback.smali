.class public abstract Lcom/xiaopeng/lib/http/server/ServerCallback;
.super Lcom/lzy/okgo/callback/AbsCallback;
.source "ServerCallback.java"

# interfaces
.implements Lcom/lzy/okgo/callback/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzy/okgo/callback/AbsCallback<",
        "Lcom/xiaopeng/lib/http/server/ServerBean;",
        ">;",
        "Lcom/lzy/okgo/callback/Callback<",
        "Lcom/xiaopeng/lib/http/server/ServerBean;",
        ">;"
    }
.end annotation


# static fields
.field public static final CODE_SUCCESS:I = 0xc8


# instance fields
.field private convert:Lcom/xiaopeng/lib/http/server/ServerConvert;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/lzy/okgo/callback/AbsCallback;-><init>()V

    .line 19
    new-instance v0, Lcom/xiaopeng/lib/http/server/ServerConvert;

    invoke-direct {v0}, Lcom/xiaopeng/lib/http/server/ServerConvert;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/http/server/ServerCallback;->convert:Lcom/xiaopeng/lib/http/server/ServerConvert;

    .line 20
    return-void
.end method


# virtual methods
.method public convertResponse(Lokhttp3/Response;)Lcom/xiaopeng/lib/http/server/ServerBean;
    .locals 1
    .param p1, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/lib/http/server/ServerCallback;->convert:Lcom/xiaopeng/lib/http/server/ServerConvert;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/http/server/ServerConvert;->convertResponse(Lokhttp3/Response;)Lcom/xiaopeng/lib/http/server/ServerBean;

    move-result-object v0

    .line 25
    .local v0, "bean":Lcom/xiaopeng/lib/http/server/ServerBean;
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    .line 26
    return-object v0
.end method

.method public bridge synthetic convertResponse(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/http/server/ServerCallback;->convertResponse(Lokhttp3/Response;)Lcom/xiaopeng/lib/http/server/ServerBean;

    move-result-object p1

    return-object p1
.end method
