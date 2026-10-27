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
    .locals 2

    .line 20
    new-instance v0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/bean/StreamType;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/query/speech/hardware/bean/StreamType;-><init>()V

    .line 23
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "type"

    .line 24
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaopeng/speech/protocol/query/speech/hardware/bean/StreamType;->type:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 26
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method
