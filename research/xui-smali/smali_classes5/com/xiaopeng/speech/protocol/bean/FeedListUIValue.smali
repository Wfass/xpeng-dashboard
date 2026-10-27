.class public Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;
.super Ljava/lang/Object;
.source "FeedListUIValue.java"


# static fields
.field public static final TYPE_ROUTE:Ljava/lang/String; = "route"


# instance fields
.field public index:I

.field public source:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->type:Ljava/lang/String;

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;
    .locals 2
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .line 14
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;-><init>()V

    .line 15
    .local v0, "value":Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;
    if-eqz p0, :cond_1

    .line 16
    const-string v1, "source"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->source:Ljava/lang/String;

    .line 17
    const-string v1, "index"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->index:I

    .line 18
    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->type:Ljava/lang/String;

    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->type:Ljava/lang/String;

    .line 24
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static toJson(Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;

    .line 29
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 30
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 31
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "source"

    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->source:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string v2, "index"

    iget v3, p0, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->index:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 33
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->type:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 34
    const-string v2, "type"

    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 37
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 38
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method
