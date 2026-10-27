.class Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1;
.super Ljava/lang/Object;
.source "FindCoverBy163Impl.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover$HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl;->findSongCover(Ljava/lang/String;Lcom/xiaopeng/xuiservice/musicrecognize/IFindCover$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl;

.field final synthetic val$callback:Lcom/xiaopeng/xuiservice/musicrecognize/IFindCover$Callback;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl;Lcom/xiaopeng/xuiservice/musicrecognize/IFindCover$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl;

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1;->this$0:Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1;->val$callback:Lcom/xiaopeng/xuiservice/musicrecognize/IFindCover$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1$3;-><init>(Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1;)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Ljava/lang/String;

    .line 29
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "songs"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 31
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "album"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "picUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "link":Ljava/lang/String;
    new-instance v2, Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1$1;

    invoke-direct {v2, p0, v1}, Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1$1;-><init>(Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "link":Ljava/lang/String;
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1$2;-><init>(Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl$1;)V

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 45
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 47
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method
