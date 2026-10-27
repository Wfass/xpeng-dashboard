.class public Lcom/xiaopeng/speech/jarvisproto/a;
.super Lcom/xiaopeng/speech/jarvisproto/e;
.source "AsrEvent.java"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/e;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/xiaopeng/speech/jarvisproto/a;->a:I

    .line 33
    iput v0, p0, Lcom/xiaopeng/speech/jarvisproto/a;->b:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/e;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/xiaopeng/speech/jarvisproto/a;->a:I

    .line 33
    iput v0, p0, Lcom/xiaopeng/speech/jarvisproto/a;->b:I

    .line 44
    iput p1, p0, Lcom/xiaopeng/speech/jarvisproto/a;->a:I

    .line 45
    iput p2, p0, Lcom/xiaopeng/speech/jarvisproto/a;->b:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/a;
    .locals 3

    const/4 v0, -0x1

    .line 69
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "event"

    .line 71
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "soundArea"

    .line 72
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move p0, v0

    .line 75
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 77
    :goto_1
    new-instance v1, Lcom/xiaopeng/speech/jarvisproto/a;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/speech/jarvisproto/a;-><init>(II)V

    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 55
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "event"

    .line 57
    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/a;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "soundArea"

    .line 58
    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/a;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 60
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 62
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
