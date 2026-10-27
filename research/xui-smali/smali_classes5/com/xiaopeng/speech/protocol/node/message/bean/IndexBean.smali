.class public Lcom/xiaopeng/speech/protocol/node/message/bean/IndexBean;
.super Lcom/xiaopeng/speech/common/bean/BaseBean;
.source "IndexBean.java"


# instance fields
.field private index:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/speech/common/bean/BaseBean;-><init>()V

    .line 18
    return-void
.end method

.method public static final fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/message/bean/IndexBean;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .line 27
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/message/bean/IndexBean;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/message/bean/IndexBean;-><init>()V

    .line 28
    .local v0, "indexBean":Lcom/xiaopeng/speech/protocol/node/message/bean/IndexBean;
    const/4 v1, 0x0

    .line 30
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 31
    const-string v2, "index"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/speech/protocol/node/message/bean/IndexBean;->index:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 32
    :catch_0
    move-exception v2

    .line 33
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 35
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/message/bean/IndexBean;->index:I

    return v0
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 53
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/message/bean/IndexBean;->index:I

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IndexBean{index=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/message/bean/IndexBean;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
