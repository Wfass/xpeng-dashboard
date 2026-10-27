.class public Lcom/xiaopeng/aicabin/logic/net/http/HttpRequester$a;
.super Ljava/lang/Object;
.source "HttpRequester.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/aicabin/logic/net/http/HttpRequester;->request(Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;Lcom/xiaopeng/aicabin/logic/net/http/HttpCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/xiaopeng/aicabin/logic/net/http/HttpCallback;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/aicabin/logic/net/http/HttpRequester;Lcom/xiaopeng/aicabin/logic/net/http/HttpCallback;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequester$a;->a:Lcom/xiaopeng/aicabin/logic/net/http/HttpCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequester$a;->a:Lcom/xiaopeng/aicabin/logic/net/http/HttpCallback;

    new-instance v1, Lcom/xiaopeng/aicabin/logic/net/http/HttpResponse;

    .line 3
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->code()I

    move-result v2

    .line 4
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->message()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3, p1}, Lcom/xiaopeng/aicabin/logic/net/http/HttpResponse;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-interface {v0, v1}, Lcom/xiaopeng/aicabin/logic/net/http/HttpCallback;->onNetResponse(Lcom/xiaopeng/aicabin/logic/net/http/HttpResponse;)V

    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequester$a;->a:Lcom/xiaopeng/aicabin/logic/net/http/HttpCallback;

    new-instance v1, Lcom/xiaopeng/aicabin/logic/net/http/HttpResponse;

    .line 3
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->code()I

    move-result v2

    .line 4
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->message()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3, p1}, Lcom/xiaopeng/aicabin/logic/net/http/HttpResponse;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-interface {v0, v1}, Lcom/xiaopeng/aicabin/logic/net/http/HttpCallback;->onNetResponse(Lcom/xiaopeng/aicabin/logic/net/http/HttpResponse;)V

    return-void
.end method
