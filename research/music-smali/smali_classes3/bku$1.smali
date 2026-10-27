.class Lbku$1;
.super Ljava/lang/Object;
.source "XPPostRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbku;->execute(Lcom/lzy/okgo/callback/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lzy/okgo/callback/Callback;

.field final synthetic b:Lbku;


# direct methods
.method constructor <init>(Lbku;Lcom/lzy/okgo/callback/Callback;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lbku$1;->b:Lbku;

    iput-object p2, p0, Lbku$1;->a:Lcom/lzy/okgo/callback/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 42
    invoke-static {}, Lbkn;->b()V

    .line 43
    iget-object v0, p0, Lbku$1;->b:Lbku;

    invoke-static {v0}, Lbkn;->b(Lcom/lzy/okgo/request/base/Request;)V

    .line 44
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 45
    iget-object v1, p0, Lbku$1;->b:Lbku;

    invoke-static {v1}, Lbku;->a(Lbku;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 46
    iget-object v1, p0, Lbku$1;->b:Lbku;

    invoke-static {v1}, Lbku;->a(Lbku;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lbku$1$1;

    invoke-direct {v3, p0}, Lbku$1$1;-><init>(Lbku$1;)V

    .line 47
    invoke-virtual {v3}, Lbku$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 46
    invoke-static {v1, v3}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 48
    iget-object v3, p0, Lbku$1;->b:Lbku;

    new-array v4, v2, [Z

    invoke-virtual {v3, v1, v4}, Lbku;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    .line 50
    :cond_0
    iget-object v1, p0, Lbku$1;->b:Lbku;

    invoke-static {v1}, Lbkn;->a(Lcom/lzy/okgo/request/base/Request;)V

    .line 51
    iget-object v1, p0, Lbku$1;->b:Lbku;

    invoke-static {v1}, Lbku;->b(Lbku;)Lcom/lzy/okgo/model/HttpParams;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 52
    iget-object v1, p0, Lbku$1;->b:Lbku;

    invoke-static {v1}, Lbku;->c(Lbku;)Lcom/lzy/okgo/model/HttpParams;

    move-result-object v1

    iget-object v1, v1, Lcom/lzy/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 53
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 54
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_2
    iget-object v1, p0, Lbku$1;->b:Lbku;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbku;->a(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;

    .line 59
    iget-object v0, p0, Lbku$1;->b:Lbku;

    iget-object v1, p0, Lbku$1;->a:Lcom/lzy/okgo/callback/Callback;

    invoke-static {v0, v1}, Lbku;->a(Lbku;Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method
