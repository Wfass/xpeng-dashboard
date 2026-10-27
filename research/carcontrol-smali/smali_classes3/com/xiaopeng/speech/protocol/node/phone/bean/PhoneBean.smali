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
    .locals 2

    .line 39
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;-><init>()V

    .line 42
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p0, "\u8054\u7cfb\u4eba"

    .line 44
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->name:Ljava/lang/String;

    .line 45
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "\u4efb\u610f\u8054\u7cfb\u4eba"

    .line 46
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->name:Ljava/lang/String;

    :cond_0
    const-string/jumbo p0, "\u53f7\u7801"

    .line 48
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->number:Ljava/lang/String;

    const-string/jumbo p0, "\u5f52\u5c5e\u5730"

    .line 49
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->address:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 51
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

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

    .line 107
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->address:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->number:Ljava/lang/String;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 4

    .line 111
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "\u4efb\u610f\u8054\u7cfb\u4eba"

    .line 113
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "\u53f7\u7801"

    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->number:Ljava/lang/String;

    .line 114
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "\u5f52\u5c5e\u5730"

    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->address:Ljava/lang/String;

    .line 115
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 117
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 119
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
