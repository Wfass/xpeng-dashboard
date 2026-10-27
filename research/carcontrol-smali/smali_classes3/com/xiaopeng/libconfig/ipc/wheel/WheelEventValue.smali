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

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

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

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 41
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "keyCode"

    .line 42
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/wheel/WheelEventValue;->keyCode:I

    const-string p1, "eventCode"

    .line 43
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/wheel/WheelEventValue;->eventCode:I

    const-string p1, "eventValue"

    .line 44
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/wheel/WheelEventValue;->eventValue:I

    const-string p1, "keyMode"

    .line 45
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/wheel/WheelEventValue;->keyMode:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

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

    .line 64
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/wheel/WheelEventValue;->eventCode:I

    return-void
.end method

.method public setEventValue(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/wheel/WheelEventValue;->eventValue:I

    return-void
.end method

.method public setKeyCode(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/wheel/WheelEventValue;->keyCode:I

    return-void
.end method

.method public setKeyMode(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/wheel/WheelEventValue;->keyMode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WheelEventValue{keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/libconfig/ipc/wheel/WheelEventValue;->keyCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/libconfig/ipc/wheel/WheelEventValue;->eventCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/libconfig/ipc/wheel/WheelEventValue;->eventValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/libconfig/ipc/wheel/WheelEventValue;->keyMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
