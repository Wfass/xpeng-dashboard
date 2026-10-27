.class public abstract Lcom/xiaopeng/speech/jarvisproto/g;
.super Lcom/xiaopeng/speech/jarvisproto/e;
.source "Volume.java"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/e;-><init>()V

    .line 22
    iput p1, p0, Lcom/xiaopeng/speech/jarvisproto/g;->a:I

    .line 23
    iput p2, p0, Lcom/xiaopeng/speech/jarvisproto/g;->b:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "volume"

    .line 29
    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/g;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "soundArea"

    .line 30
    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/g;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 32
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 34
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
