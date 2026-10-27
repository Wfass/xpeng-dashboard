.class Lcom/xiaopeng/speech/protocol/node/music/MusicNode$1;
.super Lcom/xiaopeng/speech/protocol/node/context/AbsContextListener;
.source "MusicNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/protocol/node/music/MusicNode;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/protocol/node/music/MusicNode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/context/AbsContextListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onWidgetText(Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/String;

    .line 29
    invoke-super {p0, p1}, Lcom/xiaopeng/speech/protocol/node/context/AbsContextListener;->onWidgetText(Ljava/lang/String;)V

    .line 31
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 32
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "function"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "function":Ljava/lang/String;
    const-string v2, "music_list_play"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    const-string v2, "extra"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 35
    .local v2, "extraJson":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 36
    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    const-string v4, "command://music.list.play"

    const-string v5, "param"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->onMusicListPlay(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "function":Ljava/lang/String;
    .end local v2    # "extraJson":Lorg/json/JSONObject;
    :cond_0
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 43
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method
