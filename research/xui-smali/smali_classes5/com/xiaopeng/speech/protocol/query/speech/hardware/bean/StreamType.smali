.class public Lcom/xiaopeng/speech/protocol/query/speech/hardware/bean/StreamType;
.super Ljava/lang/Object;
.source "StreamType.java"


# static fields
.field public static final MEDIA:Ljava/lang/String; = "media"

.field public static final NAVI:Ljava/lang/String; = "navi"

.field public static final PHONE:Ljava/lang/String; = "phone"

.field public static final SPEECH:Ljava/lang/String; = "speech"

.field public static final SYSTEM:Ljava/lang/String; = "system"


# instance fields
.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/query/speech/hardware/bean/StreamType;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/bean/StreamType;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/bean/StreamType;-><init>()V

    .line 21
    .local v0, "streamType":Lcom/xiaopeng/speech/protocol/query/speech/hardware/bean/StreamType;
    const/4 v1, 0x0

    .line 23
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 24
    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/bean/StreamType;->type:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 25
    :catch_0
    move-exception v2

    .line 26
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 28
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method
