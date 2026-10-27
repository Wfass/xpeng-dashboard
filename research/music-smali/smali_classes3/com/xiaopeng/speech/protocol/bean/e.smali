.class public Lcom/xiaopeng/speech/protocol/bean/e;
.super Ljava/lang/Object;
.source "SpeechParam.java"


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/e;
    .locals 3

    .line 14
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/e;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/e;-><init>()V

    .line 17
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "app_tts"

    const/4 v2, 0x1

    .line 18
    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, v0, Lcom/xiaopeng/speech/protocol/bean/e;->a:Z

    const-string p0, "animation"

    .line 19
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/xiaopeng/speech/protocol/bean/e;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method
