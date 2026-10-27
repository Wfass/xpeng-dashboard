.class public Lapw;
.super Ljava/lang/Object;
.source "TextToSpeechUtils.java"


# static fields
.field private static volatile b:Lapw;


# instance fields
.field private volatile a:Landroid/speech/tts/TextToSpeech;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lapw;
    .locals 2

    .line 32
    sget-object v0, Lapw;->b:Lapw;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lapw;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lapw;->b:Lapw;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lapw;

    invoke-direct {v1}, Lapw;-><init>()V

    sput-object v1, Lapw;->b:Lapw;

    .line 37
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 39
    :cond_1
    :goto_0
    sget-object v0, Lapw;->b:Lapw;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, p1, v0}, Lapw;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3

    .line 106
    iget-object p2, p0, Lapw;->a:Landroid/speech/tts/TextToSpeech;

    const-string v0, "TextToSpeechUtils"

    if-nez p2, :cond_0

    const-string p1, "speak: not init"

    .line 107
    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 110
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "speak txt="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 114
    iget-object v0, p0, Lapw;->a:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    const-string v2, "com.xiaopeng.musicradio"

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    return-void
.end method
