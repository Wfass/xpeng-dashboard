.class Landroid/speech/tts/TextToSpeech$SystemConnection$1;
.super Landroid/speech/tts/ITextToSpeechSessionCallback$Stub;
.source "TextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech$SystemConnection;->connect(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/speech/tts/TextToSpeech$SystemConnection;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech$SystemConnection;)V
    .locals 0

    .line 2644
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$SystemConnection$1;->this$1:Landroid/speech/tts/TextToSpeech$SystemConnection;

    invoke-direct {p0}, Landroid/speech/tts/ITextToSpeechSessionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/speech/tts/ITextToSpeechSession;Landroid/os/IBinder;)V
    .locals 1

    .line 2647
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$SystemConnection$1;->this$1:Landroid/speech/tts/TextToSpeech$SystemConnection;

    invoke-static {v0, p1}, Landroid/speech/tts/TextToSpeech$SystemConnection;->access$2002(Landroid/speech/tts/TextToSpeech$SystemConnection;Landroid/speech/tts/ITextToSpeechSession;)Landroid/speech/tts/ITextToSpeechSession;

    .line 2648
    iget-object p1, p0, Landroid/speech/tts/TextToSpeech$SystemConnection$1;->this$1:Landroid/speech/tts/TextToSpeech$SystemConnection;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/speech/tts/TextToSpeech$SystemConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method public onDisconnected()V
    .locals 2

    .line 2655
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$SystemConnection$1;->this$1:Landroid/speech/tts/TextToSpeech$SystemConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech$SystemConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 2660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "System TTS connection error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TextToSpeech"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    iget-object p1, p0, Landroid/speech/tts/TextToSpeech$SystemConnection$1;->this$1:Landroid/speech/tts/TextToSpeech$SystemConnection;

    iget-object p1, p1, Landroid/speech/tts/TextToSpeech$SystemConnection;->this$0:Landroid/speech/tts/TextToSpeech;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Landroid/speech/tts/TextToSpeech;->access$1300(Landroid/speech/tts/TextToSpeech;I)V

    return-void
.end method
