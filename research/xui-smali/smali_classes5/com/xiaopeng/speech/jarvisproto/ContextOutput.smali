.class public Lcom/xiaopeng/speech/jarvisproto/ContextOutput;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "ContextOutput.java"


# static fields
.field public static final EVENT:Ljava/lang/String; = "jarvis.context.output"


# instance fields
.field public msgId:Ljava/lang/String;

.field public outputText:Ljava/lang/String;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 20
    const-string v0, "jarvis.context.output"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 3

    .line 24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 26
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "text"

    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/ContextOutput;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string v1, "outputText"

    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/ContextOutput;->outputText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    const-string v1, "msgId"

    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/ContextOutput;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 29
    :catch_0
    move-exception v1

    .line 30
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 32
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
