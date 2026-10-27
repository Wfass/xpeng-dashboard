.class Lbtl$2;
.super Lcom/lzy/okgo/callback/AbsCallback;
.source "VipBuyForWebBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbtl;


# direct methods
.method constructor <init>(Lbtl;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lbtl$2;->a:Lbtl;

    invoke-direct {p0}, Lcom/lzy/okgo/callback/AbsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public convertResponse(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 3

    .line 141
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lbtl$2;->a:Lbtl;

    invoke-static {v1}, Lbtl;->b(Lbtl;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pay/productList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lbtl$2;->a:Lbtl;

    invoke-static {v1}, Lbtl;->c(Lbtl;)Lbtl$a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lbtl$a;->a(I)V

    .line 145
    :cond_0
    iget-object v1, p0, Lbtl$2;->a:Lbtl;

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lbtl;->a(Lbtl;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbtl$2;->a:Lbtl;

    invoke-static {v1}, Lbtl;->d(Lbtl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WebBuyInterface"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "/pay/payStatu"

    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 148
    new-instance p1, Lorg/json/JSONObject;

    iget-object v1, p0, Lbtl$2;->a:Lbtl;

    invoke-static {v1}, Lbtl;->d(Lbtl;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    .line 149
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    const-string v1, "data"

    .line 152
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "retCode"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 154
    :cond_1
    iget-object p1, p0, Lbtl$2;->a:Lbtl;

    invoke-static {p1}, Lbtl;->c(Lbtl;)Lbtl$a;

    move-result-object p1

    invoke-interface {p1}, Lbtl$a;->b()V

    goto :goto_0

    .line 159
    :cond_2
    iget-object p1, p0, Lbtl$2;->a:Lbtl;

    invoke-static {p1}, Lbtl;->c(Lbtl;)Lbtl$a;

    move-result-object p1

    iget-object v1, p0, Lbtl$2;->a:Lbtl;

    invoke-static {v1}, Lbtl;->d(Lbtl;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lbtl$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_3
    :goto_0
    iget-object p1, p0, Lbtl$2;->a:Lbtl;

    invoke-static {p1}, Lbtl;->c(Lbtl;)Lbtl$a;

    move-result-object p1

    iget-object v1, p0, Lbtl$2;->a:Lbtl;

    invoke-static {v1}, Lbtl;->d(Lbtl;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lbtl$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onError(Lcom/lzy/okgo/model/Response;)V
    .locals 2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError response"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->message()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WebBuyInterface"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object p1, p0, Lbtl$2;->a:Lbtl;

    invoke-static {p1}, Lbtl;->b(Lbtl;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "pay/productList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 173
    iget-object p1, p0, Lbtl$2;->a:Lbtl;

    invoke-static {p1}, Lbtl;->c(Lbtl;)Lbtl$a;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lbtl$a;->a(I)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/lzy/okgo/model/Response;)V
    .locals 0

    return-void
.end method
