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

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/context/AbsContextListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onWidgetText(Ljava/lang/String;)V
    .locals 3

    .line 29
    invoke-super {p0, p1}, Lcom/xiaopeng/speech/protocol/node/context/AbsContextListener;->onWidgetText(Ljava/lang/String;)V

    .line 31
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "function"

    .line 32
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "music_list_play"

    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "extra"

    .line 34
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/MusicNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/music/MusicNode;

    const-string v1, "command://music.list.play"

    const-string v2, "param"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/protocol/node/music/MusicNode;->onMusicListPlay(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
