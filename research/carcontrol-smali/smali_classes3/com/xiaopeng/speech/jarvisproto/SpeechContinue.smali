.class public Lcom/xiaopeng/speech/jarvisproto/SpeechContinue;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "SpeechContinue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/jarvisproto/SpeechContinue$Builder;
    }
.end annotation


# static fields
.field public static final EVENT:Ljava/lang/String; = "jarvis.speech.continue"


# instance fields
.field private from:Ljava/lang/String;

.field private reason:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/speech/jarvisproto/SpeechContinue$Builder;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 16
    invoke-static {p1}, Lcom/xiaopeng/speech/jarvisproto/SpeechContinue$Builder;->access$000(Lcom/xiaopeng/speech/jarvisproto/SpeechContinue$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/jarvisproto/SpeechContinue;->from:Ljava/lang/String;

    .line 17
    invoke-static {p1}, Lcom/xiaopeng/speech/jarvisproto/SpeechContinue$Builder;->access$100(Lcom/xiaopeng/speech/jarvisproto/SpeechContinue$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/jarvisproto/SpeechContinue;->reason:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/speech/jarvisproto/SpeechContinue$Builder;Lcom/xiaopeng/speech/jarvisproto/SpeechContinue$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/jarvisproto/SpeechContinue;-><init>(Lcom/xiaopeng/speech/jarvisproto/SpeechContinue$Builder;)V

    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "jarvis.speech.continue"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 3

    .line 27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "from"

    .line 29
    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/SpeechContinue;->from:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "reason"

    .line 30
    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/SpeechContinue;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
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
