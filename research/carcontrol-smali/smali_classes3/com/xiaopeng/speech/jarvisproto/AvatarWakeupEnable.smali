.class public Lcom/xiaopeng/speech/jarvisproto/AvatarWakeupEnable;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "AvatarWakeupEnable.java"


# static fields
.field public static final EVENT:Ljava/lang/String; = "jarvis.avatar.wakeup.enable"


# instance fields
.field public data:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/xiaopeng/speech/jarvisproto/AvatarWakeupEnable;->data:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "jarvis.avatar.wakeup.enable"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 3

    .line 25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "event"

    const-string v2, "jarvis.avatar.wakeup.enable"

    .line 27
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "data"

    .line 28
    iget-object v2, p0, Lcom/xiaopeng/speech/jarvisproto/AvatarWakeupEnable;->data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
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
