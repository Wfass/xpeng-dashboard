.class public Lcom/xiaopeng/speech/jarvisproto/DMExit;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "DMExit.java"


# static fields
.field public static final EVENT:Ljava/lang/String; = "jarvis.dm.exit"

.field public static final REASON_NORMAL:Ljava/lang/String; = "normal"


# instance fields
.field public reason:Ljava/lang/String;

.field public soundArea:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    const-string v0, "normal"

    .line 16
    iput-object v0, p0, Lcom/xiaopeng/speech/jarvisproto/DMExit;->reason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "jarvis.dm.exit"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 3

    .line 25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "reason"

    .line 27
    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/DMExit;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "soundArea"

    .line 28
    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/DMExit;->soundArea:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 30
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 32
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
