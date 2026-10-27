.class public Lcom/xiaopeng/speech/protocol/bean/d;
.super Ljava/lang/Object;
.source "FeedListUIValue.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/d;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/bean/d;
    .locals 3

    .line 14
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/d;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/d;-><init>()V

    if-eqz p0, :cond_1

    const-string v1, "source"

    .line 16
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/speech/protocol/bean/d;->a:Ljava/lang/String;

    const-string v1, "index"

    .line 17
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/xiaopeng/speech/protocol/bean/d;->b:I

    const-string v1, "type"

    .line 18
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 19
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaopeng/speech/protocol/bean/d;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 21
    iput-object p0, v0, Lcom/xiaopeng/speech/protocol/bean/d;->c:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v0
.end method
