.class public Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;
.super Ljava/lang/Object;
.source "AddressBean.java"


# static fields
.field public static final ADDRESS_FROM_NOT_CORRECTBIGDATA_:Ljava/lang/String; = "\u5927\u6570\u636e\u5730\u5740\u731c\u9519"

.field public static final ADDRESS_FROM_NO_BIGDATA:Ljava/lang/String; = "\u6ca1\u6709\u5927\u6570\u636e\u5730\u5740"

.field public static final ADDRESS_TYPE_COMPANY:Ljava/lang/String; = "\u516c\u53f8"

.field public static final ADDRESS_TYPE_DAYCARE:Ljava/lang/String; = "daycare"

.field public static final ADDRESS_TYPE_EN_COMPANY:Ljava/lang/String; = "work"

.field public static final ADDRESS_TYPE_EN_FAVOURITE:Ljava/lang/String; = "favourite"

.field public static final ADDRESS_TYPE_EN_HOME:Ljava/lang/String; = "home"

.field public static final ADDRESS_TYPE_FAVOURITE:Ljava/lang/String; = "\u6536\u85cf\u5939"

.field public static final ADDRESS_TYPE_GYM:Ljava/lang/String; = "gym"

.field public static final ADDRESS_TYPE_HOME:Ljava/lang/String; = "\u5bb6"

.field public static final ADDRESS_TYPE_SCHOOL:Ljava/lang/String; = "school"


# instance fields
.field private addressType:Ljava/lang/String;

.field private from:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;
    .locals 2

    .line 72
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;-><init>()V

    .line 75
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "addressType"

    .line 76
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;->addressType:Ljava/lang/String;

    const-string p0, "from"

    .line 77
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;->from:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 79
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getAddressType()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;->addressType:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;->from:Ljava/lang/String;

    return-object v0
.end method

.method public setAddressType(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;->addressType:Ljava/lang/String;

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;->from:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AddressBean{addressType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;->addressType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", from=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;->from:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
