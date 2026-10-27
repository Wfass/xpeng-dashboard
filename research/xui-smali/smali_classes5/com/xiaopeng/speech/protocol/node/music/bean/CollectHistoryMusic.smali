.class public Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;
.super Ljava/lang/Object;
.source "CollectHistoryMusic.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# instance fields
.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;
    .locals 3
    .param p0, "jsonString"    # Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;-><init>()V

    .line 31
    .local v0, "music":Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 32
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;->setType(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 33
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 34
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 36
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;->type:I

    return v0
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 54
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;->type:I

    .line 55
    return-void
.end method
