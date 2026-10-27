.class Landroid/speech/tts/TextToSpeech$SystemConnection;
.super Landroid/speech/tts/TextToSpeech$Connection;
.source "TextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemConnection"
.end annotation


# instance fields
.field private volatile mSession:Landroid/speech/tts/ITextToSpeechSession;

.field final synthetic this$0:Landroid/speech/tts/TextToSpeech;


# direct methods
.method private constructor <init>(Landroid/speech/tts/TextToSpeech;)V
    .locals 1

    .line 2623
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$SystemConnection;->this$0:Landroid/speech/tts/TextToSpeech;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/speech/tts/TextToSpeech$Connection;-><init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$1;)V

    return-void
.end method

.method static synthetic access$2002(Landroid/speech/tts/TextToSpeech$SystemConnection;Landroid/speech/tts/ITextToSpeechSession;)Landroid/speech/tts/ITextToSpeechSession;
    .locals 0

    .line 2623
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$SystemConnection;->mSession:Landroid/speech/tts/ITextToSpeechSession;

    return-object p1
.end method


# virtual methods
.method connect(Ljava/lang/String;)Z
    .locals 4

    const-string/jumbo v0, "texttospeech"

    .line 2630
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2632
    invoke-static {v0}, Landroid/speech/tts/ITextToSpeechManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/tts/ITextToSpeechManager;

    move-result-object v0

    const-string v1, "TextToSpeech"

    if-nez v0, :cond_0

    const-string p1, "System service is not available!"

    .line 2635
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 2640
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connecting to engine: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    :try_start_0
    new-instance v2, Landroid/speech/tts/TextToSpeech$SystemConnection$1;

    invoke-direct {v2, p0}, Landroid/speech/tts/TextToSpeech$SystemConnection$1;-><init>(Landroid/speech/tts/TextToSpeech$SystemConnection;)V

    invoke-interface {v0, p1, v2}, Landroid/speech/tts/ITextToSpeechManager;->createSession(Ljava/lang/String;Landroid/speech/tts/ITextToSpeechSessionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v0, "Error communicating with the System Server: "

    .line 2668
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2669
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method disconnect()V
    .locals 3

    .line 2675
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$SystemConnection;->mSession:Landroid/speech/tts/ITextToSpeechSession;

    if-eqz v0, :cond_0

    .line 2679
    :try_start_0
    invoke-interface {v0}, Landroid/speech/tts/ITextToSpeechSession;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TextToSpeech"

    const-string v2, "Error disconnecting session"

    .line 2681
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2684
    :goto_0
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech$SystemConnection;->clearServiceConnection()Z

    :cond_0
    return-void
.end method
