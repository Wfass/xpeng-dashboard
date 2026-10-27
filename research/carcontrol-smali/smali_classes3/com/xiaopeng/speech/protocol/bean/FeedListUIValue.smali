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

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->type:Ljava/lang/String;

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;
    .locals 3

    .line 14
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;-><init>()V

    if-eqz p0, :cond_1

    const-string v1, "source"

    .line 16
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->source:Ljava/lang/String;

    const-string v1, "index"

    .line 17
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->index:I

    const-string v1, "type"

    .line 18
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 19
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->type:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 21
    iput-object p0, v0, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->type:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static toJson(Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 30
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "source"

    .line 31
    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->source:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "index"

    .line 32
    iget v3, p0, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->index:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 33
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->type:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "type"

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/speech/protocol/bean/FeedListUIValue;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method
