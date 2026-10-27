.class public Lcom/xiaopeng/musicradio/speech/command/PlayListSelfCreate;
.super Lbox;
.source "PlayListSelfCreate.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MUSIC_COMMAND_PLAY_LIST_SELF_CREATE"


# instance fields
.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lbox;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;)V
    .locals 5

    .line 35
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "type"

    .line 36
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "albumId"

    .line 37
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    .line 38
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "logoUrl"

    .line 39
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v3

    const-class v4, Lbfe;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbfe;

    .line 42
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-eqz v3, :cond_0

    .line 45
    invoke-interface {v3, p0, v1, v2, v0}, Lbfe;->playCollect(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "MUSIC_COMMAND_PLAY_LIST_SELF_CREATE"

    const-string v1, "onEvent:doCommand  "

    .line 49
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic lambda$hj5-TVwcg5dzw41DOD3pfCH6p3I(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaopeng/musicradio/speech/command/PlayListSelfCreate;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " data = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MUSIC_COMMAND_PLAY_LIST_SELF_CREATE"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object p1, p0, Lcom/xiaopeng/musicradio/speech/command/PlayListSelfCreate;->mRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 31
    invoke-static {p1}, Lbql;->h(Ljava/lang/Runnable;)V

    .line 33
    :cond_0
    new-instance p1, Lcom/xiaopeng/musicradio/speech/command/-$$Lambda$PlayListSelfCreate$hj5-TVwcg5dzw41DOD3pfCH6p3I;

    invoke-direct {p1, p2}, Lcom/xiaopeng/musicradio/speech/command/-$$Lambda$PlayListSelfCreate$hj5-TVwcg5dzw41DOD3pfCH6p3I;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/speech/command/PlayListSelfCreate;->mRunnable:Ljava/lang/Runnable;

    .line 52
    iget-object p1, p0, Lcom/xiaopeng/musicradio/speech/command/PlayListSelfCreate;->mRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
