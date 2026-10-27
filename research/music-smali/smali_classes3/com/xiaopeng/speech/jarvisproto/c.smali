.class public Lcom/xiaopeng/speech/jarvisproto/c;
.super Lcom/xiaopeng/speech/jarvisproto/e;
.source "DMRecognized.java"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/e;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/xiaopeng/speech/jarvisproto/c;->a:I

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/c;
    .locals 2

    .line 16
    new-instance v0, Lcom/xiaopeng/speech/jarvisproto/c;

    invoke-direct {v0}, Lcom/xiaopeng/speech/jarvisproto/c;-><init>()V

    .line 18
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "errorId"

    .line 19
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/xiaopeng/speech/jarvisproto/c;->a:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 33
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "errorId"

    .line 35
    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/c;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 37
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 39
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
