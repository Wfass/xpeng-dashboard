.class public Lcom/xiaopeng/speech/jarvisproto/d;
.super Lcom/xiaopeng/speech/jarvisproto/e;
.source "DMWait.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/e;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/e;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/xiaopeng/speech/jarvisproto/d;->a:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/xiaopeng/speech/jarvisproto/d;->c:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/xiaopeng/speech/jarvisproto/d;->b:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Lcom/xiaopeng/speech/jarvisproto/d;->d:Ljava/lang/String;

    .line 76
    iput-boolean p5, p0, Lcom/xiaopeng/speech/jarvisproto/d;->e:Z

    .line 77
    iput p6, p0, Lcom/xiaopeng/speech/jarvisproto/d;->f:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/d;
    .locals 12

    const-string v0, ""

    const-string v1, "normal"

    const/4 v2, 0x0

    .line 109
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "reason"

    .line 111
    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p0, "tips"

    .line 112
    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v4, "sessionId"

    .line 113
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v5, "expression"

    .line 114
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "speaking"

    .line 115
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v5, "soundArea"

    .line 116
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v4, v0

    goto :goto_0

    :catch_2
    move-exception v3

    move-object p0, v0

    move-object v4, p0

    .line 120
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v3, -0x1

    :goto_1
    move-object v8, p0

    move-object v9, v0

    move-object v6, v1

    move v10, v2

    move v11, v3

    move-object v7, v4

    .line 122
    new-instance p0, Lcom/xiaopeng/speech/jarvisproto/d;

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/xiaopeng/speech/jarvisproto/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 87
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "reason"

    .line 89
    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "tips"

    .line 90
    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sessionId"

    .line 91
    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "expression"

    .line 92
    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "speaking"

    .line 93
    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/d;->e:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "soundArea"

    .line 94
    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/d;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 96
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 98
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
