.class public Lcom/xiaopeng/musicradio/speech/command/PlayDailyRec;
.super Lbox;
.source "PlayDailyRec.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MUSIC_COMMAND_PLAY_DAILY_REC"


# instance fields
.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lbox;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;)V
    .locals 4

    const-string v0, "MUSIC_COMMAND_PLAY_DAILY_REC"

    .line 39
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "type"

    .line 41
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 42
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v1

    const-class v2, Lbfe;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbfe;

    .line 43
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play Daily typeInt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    .line 48
    invoke-interface {v1, p0}, Lbfe;->playDaily(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "onEvent:doCommand  "

    .line 52
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic lambda$jAnq6xP8jm2yHwg1sJ2RzBB49LA(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaopeng/musicradio/speech/command/PlayDailyRec;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 32
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

    const-string v0, "MUSIC_COMMAND_PLAY_DAILY_REC"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object p1, p0, Lcom/xiaopeng/musicradio/speech/command/PlayDailyRec;->mRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 35
    invoke-static {p1}, Lbql;->h(Ljava/lang/Runnable;)V

    .line 37
    :cond_0
    new-instance p1, Lcom/xiaopeng/musicradio/speech/command/-$$Lambda$PlayDailyRec$jAnq6xP8jm2yHwg1sJ2RzBB49LA;

    invoke-direct {p1, p2}, Lcom/xiaopeng/musicradio/speech/command/-$$Lambda$PlayDailyRec$jAnq6xP8jm2yHwg1sJ2RzBB49LA;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/speech/command/PlayDailyRec;->mRunnable:Ljava/lang/Runnable;

    .line 55
    iget-object p1, p0, Lcom/xiaopeng/musicradio/speech/command/PlayDailyRec;->mRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
