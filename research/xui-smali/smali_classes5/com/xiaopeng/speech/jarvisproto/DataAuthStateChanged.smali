.class public Lcom/xiaopeng/speech/jarvisproto/DataAuthStateChanged;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "DataAuthStateChanged.java"


# static fields
.field public static final EVENT:Ljava/lang/String; = "jarvis.data.auth.state.changed"


# instance fields
.field public state:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 15
    const-string v0, "jarvis.data.auth.state.changed"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 3

    .line 20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 22
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "reason"

    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/DataAuthStateChanged;->state:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 23
    :catch_0
    move-exception v1

    .line 24
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 26
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
