.class public Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;
.super Lcom/xiaopeng/speech/common/bean/BaseBean;
.source "PhoneBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private address:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/speech/common/bean/BaseBean;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;-><init>()V

    .line 40
    .local v0, "phone":Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;
    const/4 v1, 0x0

    .line 42
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 44
    const-string v2, "\u8054\u7cfb\u4eba"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->name:Ljava/lang/String;

    .line 45
    iget-object v2, v0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    const-string v2, "\u4efb\u610f\u8054\u7cfb\u4eba"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->name:Ljava/lang/String;

    .line 48
    :cond_0
    const-string v2, "\u53f7\u7801"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->number:Ljava/lang/String;

    .line 49
    const-string v2, "\u5f52\u5c5e\u5730"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->address:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 50
    :catch_0
    move-exception v2

    .line 51
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 53
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->number:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .line 107
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->address:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->id:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->name:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->number:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 4

    .line 111
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 113
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "\u4efb\u610f\u8054\u7cfb\u4eba"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "\u53f7\u7801"

    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->number:Ljava/lang/String;

    .line 114
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "\u5f52\u5c5e\u5730"

    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->address:Ljava/lang/String;

    .line 115
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 119
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
