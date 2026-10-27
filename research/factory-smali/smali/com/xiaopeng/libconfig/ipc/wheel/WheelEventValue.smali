.class public Lcom/xiaopeng/libconfig/ipc/wheel/WheelEventValue;
.super Ljava/lang/Object;
.source "WheelEventValue.java"


# instance fields
.field private eventCode:I

.field private eventValue:I

.field private keyCode:I

.field private keyMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "kc"    # I
    .param p2, "ec"    # I
    .param p3, "ev"    # I
    .param p4, "km"    # I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/wheel/WheelEventValue;->keyCode:I

    .line 31
    iput p2, p0, Lcom/xiaopeng/libconfig/ipc/wheel/WheelEventValue;->eventCode:I

    .line 32
    iput p3, p0, Lcom/xiaopeng/libconfig/ipc/wheel/WheelEventValue;->eventValue:I

    .line 33
    iput p4, p0, Lcom/xiaopeng/libconfig/ipc/wheel/WheelEventValue;->keyMode:I

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "json"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    return-void

    .line 41
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "keyCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/libconfig/ipc/wheel/WheelEventValue;->keyCode:I

    .line 43
    const-string v1, "eventCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/libconfig/ipc/wheel/WheelEventValue;->eventCode:I

    .line 44
    const-string v1, "eventValue"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/libconfig/ipc/wheel/WheelEventValue;->eventValue:I

    .line 45
    const-string v1, "keyMode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/libconfig/ipc/wheel/WheelEventValue;->keyMode:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 49
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method


# virtual methods
.method public getEventCode()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/wheel/WheelEventValue;->eventCode:I

    return v0
.end method

.method public getEventValue()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/wheel/WheelEventValue;->eventValue:I

    return v0
.end method

.method public getKeyCode()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/wheel/WheelEventValue;->keyCode:I

    return v0
.end method

.method public getKeyMode()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/wheel/WheelEventValue;->keyMode:I

    return v0
.end method

.method public setEventCode(I)V
    .locals 0
    .param p1, "eventCode"    # I

    .line 64
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/wheel/WheelEventValue;->eventCode:I

    .line 65
    return-void
.end method

.method public setEventValue(I)V
    .locals 0
    .param p1, "eventValue"    # I

    .line 72
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/wheel/WheelEventValue;->eventValue:I

    .line 73
    return-void
.end method

.method public setKeyCode(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .line 56
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/wheel/WheelEventValue;->keyCode:I

    .line 57
    return-void
.end method

.method public setKeyMode(I)V
    .locals 0
    .param p1, "keyMode"    # I

    .line 80
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/wheel/WheelEventValue;->keyMode:I

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WheelEventValue{keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/libconfig/ipc/wheel/WheelEventValue;->keyCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/libconfig/ipc/wheel/WheelEventValue;->eventCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/libconfig/ipc/wheel/WheelEventValue;->eventValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", keyMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/libconfig/ipc/wheel/WheelEventValue;->keyMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
