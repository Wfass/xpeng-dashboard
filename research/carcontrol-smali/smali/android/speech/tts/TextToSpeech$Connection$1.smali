.class Landroid/speech/tts/TextToSpeech$Connection$1;
.super Landroid/speech/tts/ITextToSpeechCallback$Stub;
.source "TextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeech$Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/speech/tts/TextToSpeech$Connection;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech$Connection;)V
    .locals 0

    .line 2383
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-direct {p0}, Landroid/speech/tts/ITextToSpeechCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioAvailable(Ljava/lang/String;[B)V
    .locals 2

    .line 2431
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "utteranceId"

    .line 2432
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "audio"

    .line 2433
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2434
    iget-object p1, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object p1, p1, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {p1}, Landroid/speech/tts/TextToSpeech;->access$200(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$CallbackHandler;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v0}, Landroid/speech/tts/TextToSpeech$CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2435
    iget-object p2, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object p2, p2, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {p2}, Landroid/speech/tts/TextToSpeech;->access$200(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$CallbackHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/speech/tts/TextToSpeech$CallbackHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onBeginSynthesis(Ljava/lang/String;III)V
    .locals 2

    .line 2420
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "utteranceId"

    .line 2421
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "sampleRateInHz"

    .line 2422
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "audioFormat"

    .line 2423
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "channelCount"

    .line 2424
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2425
    iget-object p1, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object p1, p1, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {p1}, Landroid/speech/tts/TextToSpeech;->access$200(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$CallbackHandler;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v0}, Landroid/speech/tts/TextToSpeech$CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2426
    iget-object p2, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object p2, p2, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {p2}, Landroid/speech/tts/TextToSpeech;->access$200(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$CallbackHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/speech/tts/TextToSpeech$CallbackHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onError(Landroid/os/Bundle;Ljava/lang/String;I)V
    .locals 1

    const-string/jumbo v0, "utteranceId"

    .line 2401
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "errorCode"

    .line 2402
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2403
    iget-object p2, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object p2, p2, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {p2}, Landroid/speech/tts/TextToSpeech;->access$200(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$CallbackHandler;

    move-result-object p2

    const/4 p3, 0x2

    invoke-virtual {p2, p3, p1}, Landroid/speech/tts/TextToSpeech$CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2404
    iget-object p2, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object p2, p2, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {p2}, Landroid/speech/tts/TextToSpeech;->access$200(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$CallbackHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/speech/tts/TextToSpeech$CallbackHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onRangeStart(Ljava/lang/String;III)V
    .locals 2

    .line 2440
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "utteranceId"

    .line 2441
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "start"

    .line 2442
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "end"

    .line 2443
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "frame"

    .line 2444
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2445
    iget-object p1, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object p1, p1, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {p1}, Landroid/speech/tts/TextToSpeech;->access$200(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$CallbackHandler;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {p1, p2, v0}, Landroid/speech/tts/TextToSpeech$CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2446
    iget-object p2, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object p2, p2, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {p2}, Landroid/speech/tts/TextToSpeech;->access$200(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$CallbackHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/speech/tts/TextToSpeech$CallbackHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStart(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "utteranceId"

    .line 2409
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2410
    iget-object p2, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object p2, p2, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {p2}, Landroid/speech/tts/TextToSpeech;->access$200(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$CallbackHandler;

    move-result-object p2

    const/4 v0, 0x3

    invoke-virtual {p2, v0, p1}, Landroid/speech/tts/TextToSpeech$CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2411
    iget-object p2, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object p2, p2, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {p2}, Landroid/speech/tts/TextToSpeech;->access$200(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$CallbackHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/speech/tts/TextToSpeech$CallbackHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStateChanged(Ljava/lang/String;)V
    .locals 2

    .line 2451
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->access$200(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$CallbackHandler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/speech/tts/TextToSpeech$CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2452
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->access$200(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$CallbackHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech$CallbackHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStop(Landroid/os/Bundle;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "utteranceId"

    .line 2386
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "isStarted"

    .line 2387
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2388
    iget-object p2, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object p2, p2, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {p2}, Landroid/speech/tts/TextToSpeech;->access$200(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$CallbackHandler;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Landroid/speech/tts/TextToSpeech$CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2389
    iget-object p2, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object p2, p2, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {p2}, Landroid/speech/tts/TextToSpeech;->access$200(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$CallbackHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/speech/tts/TextToSpeech$CallbackHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "utteranceId"

    .line 2394
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2395
    iget-object p2, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object p2, p2, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {p2}, Landroid/speech/tts/TextToSpeech;->access$200(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$CallbackHandler;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1}, Landroid/speech/tts/TextToSpeech$CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2396
    iget-object p2, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object p2, p2, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {p2}, Landroid/speech/tts/TextToSpeech;->access$200(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$CallbackHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/speech/tts/TextToSpeech$CallbackHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
