.class public Lcom/xiaopeng/speech/jarvisproto/RecordEnd;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "RecordEnd.java"


# static fields
.field public static final EVENT:Ljava/lang/String; = "jarvis.record.end"


# instance fields
.field public isStopRecord:Z


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

    const-string v0, "jarvis.record.end"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 3

    .line 21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "isStopRecord"

    .line 23
    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/RecordEnd;->isStopRecord:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 25
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 27
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
