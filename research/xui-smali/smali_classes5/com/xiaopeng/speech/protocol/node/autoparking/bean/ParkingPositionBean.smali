.class public Lcom/xiaopeng/speech/protocol/node/autoparking/bean/ParkingPositionBean;
.super Ljava/lang/Object;
.source "ParkingPositionBean.java"


# instance fields
.field private position:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/autoparking/bean/ParkingPositionBean;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/autoparking/bean/ParkingPositionBean;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/autoparking/bean/ParkingPositionBean;-><init>()V

    .line 23
    .local v0, "positionBean":Lcom/xiaopeng/speech/protocol/node/autoparking/bean/ParkingPositionBean;
    const/4 v1, 0x0

    .line 25
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 26
    const-string v2, "position"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/speech/protocol/node/autoparking/bean/ParkingPositionBean;->position:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 27
    :catch_0
    move-exception v2

    .line 28
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 30
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/bean/ParkingPositionBean;->position:I

    return v0
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 49
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/bean/ParkingPositionBean;->position:I

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParkingPositionBean{position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/bean/ParkingPositionBean;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
