.class public Lcom/xiaopeng/speech/overall/SpeechResult;
.super Ljava/lang/Object;
.source "SpeechResult.java"


# static fields
.field public static final FLOAT_ARRAY_TYPE:I = 0x2

.field public static final INT_ARRAY_TYPE:I = 0x1


# instance fields
.field private classType:I

.field private event:Ljava/lang/String;

.field private result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/Object;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/speech/overall/SpeechResult;->classType:I

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/speech/overall/SpeechResult;->event:Ljava/lang/String;

    .line 19
    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/overall/SpeechResult;->initValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/overall/SpeechResult;->result:Ljava/lang/Object;

    .line 20
    return-void
.end method

.method private initValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 41
    if-nez p1, :cond_0

    .line 42
    return-object p1

    .line 44
    :cond_0
    :try_start_0
    instance-of v0, p1, [I

    if-eqz v0, :cond_1

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaopeng/speech/overall/SpeechResult;->classType:I

    .line 46
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 47
    :cond_1
    instance-of v0, p1, [F

    if-eqz v0, :cond_2

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lcom/xiaopeng/speech/overall/SpeechResult;->classType:I

    .line 49
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 53
    :cond_2
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 54
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-object p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 26
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "event"

    iget-object v2, p0, Lcom/xiaopeng/speech/overall/SpeechResult;->event:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string v1, "result"

    iget-object v2, p0, Lcom/xiaopeng/speech/overall/SpeechResult;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    iget v1, p0, Lcom/xiaopeng/speech/overall/SpeechResult;->classType:I

    if-lez v1, :cond_0

    .line 29
    const-string v1, "classType"

    iget v2, p0, Lcom/xiaopeng/speech/overall/SpeechResult;->classType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :cond_0
    goto :goto_0

    .line 31
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 36
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
