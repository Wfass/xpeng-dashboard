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
    .locals 2

    .line 22
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/autoparking/bean/ParkingPositionBean;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/autoparking/bean/ParkingPositionBean;-><init>()V

    .line 25
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "position"

    .line 26
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/xiaopeng/speech/protocol/node/autoparking/bean/ParkingPositionBean;->position:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 28
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

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

    .line 49
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/bean/ParkingPositionBean;->position:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParkingPositionBean{position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/bean/ParkingPositionBean;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
