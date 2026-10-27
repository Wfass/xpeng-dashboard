.class public Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricUtil;
.super Ljava/lang/Object;
.source "LyricUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LyricUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseLyricResponse(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;
    .locals 11
    .param p0, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 21
    new-instance v0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;-><init>()V

    .line 22
    .local v0, "lyricInfo":Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;
    if-eqz p0, :cond_1

    .line 24
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-interface {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 25
    .local v1, "body":Lorg/json/JSONObject;
    const-string v2, "code"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 26
    .local v2, "code":I
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 27
    const-string v3, "data"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 28
    .local v3, "dataObject":Lorg/json/JSONObject;
    const-string v4, "songName"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 29
    .local v4, "songName":Ljava/lang/String;
    const-string v5, "singerName"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 30
    .local v5, "artistName":Ljava/lang/String;
    const-string v6, "lyricType"

    const-string v7, "lrc"

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 31
    .local v6, "lyricType":Ljava/lang/String;
    const-string v7, "songLyric"

    const-string v8, ""

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 32
    .local v7, "lyricContent":Ljava/lang/String;
    const-string v8, "style"

    const-string v9, ""

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 33
    .local v8, "style":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->setSongName(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, v5}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->setArtistName(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, v6}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->setLyricType(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, v7}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->setLyricContent(Ljava/lang/String;)V

    .line 37
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 38
    .local v9, "extra":Landroid/os/Bundle;
    const-string v10, "style"

    invoke-virtual {v9, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, v9}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->setExtras(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v1    # "body":Lorg/json/JSONObject;
    .end local v2    # "code":I
    .end local v3    # "dataObject":Lorg/json/JSONObject;
    .end local v4    # "songName":Ljava/lang/String;
    .end local v5    # "artistName":Ljava/lang/String;
    .end local v6    # "lyricType":Ljava/lang/String;
    .end local v7    # "lyricContent":Ljava/lang/String;
    .end local v8    # "style":Ljava/lang/String;
    .end local v9    # "extra":Landroid/os/Bundle;
    :cond_0
    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 45
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_0
    return-object v0
.end method
