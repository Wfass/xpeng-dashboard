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
    .locals 4

    const-string v0, "percent"

    const-string v1, "number"

    const-string v2, "color"

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;->color:I

    .line 61
    :cond_0
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;->number:I

    .line 64
    :cond_1
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 65
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;->percent:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
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

    .line 44
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;->color:I

    return-void
.end method

.method public setNumber(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;->number:I

    return-void
.end method

.method public setPercent(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;->percent:I

    return-void
.end method
