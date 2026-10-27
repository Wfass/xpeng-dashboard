.class public Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;
.super Ljava/lang/Object;
.source "SelectParkingBean.java"


# instance fields
.field private num:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;-><init>()V

    .line 24
    .local v0, "selectParkingBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 25
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "num"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;->num:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 26
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 27
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 29
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getNum()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;->num:I

    return v0
.end method

.method public setNum(I)V
    .locals 0
    .param p1, "num"    # I

    .line 47
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;->num:I

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SelectParkingBean{num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;->num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
