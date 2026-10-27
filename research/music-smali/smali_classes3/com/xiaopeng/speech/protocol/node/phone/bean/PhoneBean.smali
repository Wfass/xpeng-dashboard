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

.method public static b(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;
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
    iget-object p0, v0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->name:Ljava/lang/String;

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
.method public a()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->id:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->number:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->name:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->number:Ljava/lang/String;

    return-void
.end method
