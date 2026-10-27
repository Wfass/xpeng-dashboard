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
    .locals 2

    .line 21
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;-><init>()V

    .line 24
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "num"

    .line 25
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;->num:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 27
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

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

    .line 47
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;->num:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SelectParkingBean{num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;->num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
