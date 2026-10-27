.class public Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;
.super Ljava/lang/Object;
.source "CommandValue.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# instance fields
.field private color:I

.field private number:I

.field private percent:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    .line 56
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 57
    const-string v1, "color"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const-string v1, "color"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "color":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;->color:I

    .line 61
    .end local v1    # "color":Ljava/lang/String;
    :cond_0
    const-string v1, "number"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    const-string v1, "number"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;->number:I

    .line 64
    :cond_1
    const-string v1, "percent"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    const-string v1, "percent"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;->percent:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_2
    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;->color:I

    return v0
.end method

.method public getNumber()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;->number:I

    return v0
.end method

.method public getPercent()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;->percent:I

    return v0
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 44
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;->color:I

    .line 45
    return-void
.end method

.method public setNumber(I)V
    .locals 0
    .param p1, "number"    # I

    .line 36
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;->number:I

    .line 37
    return-void
.end method

.method public setPercent(I)V
    .locals 0
    .param p1, "percent"    # I

    .line 28
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;->percent:I

    .line 29
    return-void
.end method
