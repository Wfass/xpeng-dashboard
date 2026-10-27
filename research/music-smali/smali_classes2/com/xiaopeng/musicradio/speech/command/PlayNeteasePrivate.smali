.class public Lcom/xiaopeng/musicradio/speech/command/PlayNeteasePrivate;
.super Lbox;
.source "PlayNeteasePrivate.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MUSIC_COMMAND_PLAY_LIST_SELF_CREATE"


# instance fields
.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lbox;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    sget-object p1, Lcom/xiaopeng/musicradio/speech/command/-$$Lambda$PlayNeteasePrivate$8Cn39sN1elVG8F6Y6kCvllOk8b8;->INSTANCE:Lcom/xiaopeng/musicradio/speech/command/-$$Lambda$PlayNeteasePrivate$8Cn39sN1elVG8F6Y6kCvllOk8b8;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/speech/command/PlayNeteasePrivate;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private static synthetic b()V
    .locals 2

    .line 20
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 22
    invoke-interface {v0, v1}, Lbfe;->playPersonal(I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$8Cn39sN1elVG8F6Y6kCvllOk8b8()V
    .locals 0

    invoke-static {}, Lcom/xiaopeng/musicradio/speech/command/PlayNeteasePrivate;->b()V

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

    const-string p2, "MUSIC_COMMAND_PLAY_LIST_SELF_CREATE"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object p1, p0, Lcom/xiaopeng/musicradio/speech/command/PlayNeteasePrivate;->mRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 35
    invoke-static {p1}, Lbql;->h(Ljava/lang/Runnable;)V

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/speech/command/PlayNeteasePrivate;->mRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
