.class Landroid/speech/tts/TextToSpeech$CallbackHandler;
.super Landroid/os/Handler;
.source "TextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeech;Landroid/os/Looper;)V
    .locals 0

    .line 2744
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$CallbackHandler;->this$0:Landroid/speech/tts/TextToSpeech;

    .line 2745
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 2750
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "end"

    const-string/jumbo v2, "utteranceId"

    const-string v3, "TextToSpeech"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 2844
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 2845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChanged "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2849
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2856
    :try_start_1
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech$CallbackHandler;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v2}, Landroid/speech/tts/TextToSpeech;->access$600(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$OnStateChangedListener;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "type"

    .line 2857
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "source"

    .line 2858
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "priority"

    .line 2859
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v5, ""

    .line 2860
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2862
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$CallbackHandler;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->access$600(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$OnStateChangedListener;

    move-result-object v1

    invoke-interface {v1, v4, v0}, Landroid/speech/tts/TextToSpeech$OnStateChangedListener;->onStateChanged(Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    const-string/jumbo v5, "update"

    .line 2863
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2864
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "error"

    .line 2866
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, -0x1

    .line 2869
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$CallbackHandler;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->access$600(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$OnStateChangedListener;

    move-result-object v1

    invoke-interface {v1, v4, v0}, Landroid/speech/tts/TextToSpeech$OnStateChangedListener;->onStateChanged(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "error occur when onStateChanged callback"

    .line 2873
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    :cond_3
    :goto_1
    :try_start_2
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$CallbackHandler;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->access$700(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$TtsStateListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2878
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$CallbackHandler;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->access$700(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$TtsStateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/speech/tts/TextToSpeech$TtsStateListener;->onStateChanged(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    :catch_1
    const-string p1, "error occur when onTtsStateChanged callback"

    .line 2881
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_2
    move-exception p1

    const-string/jumbo v0, "state format error"

    .line 2851
    invoke-static {v3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 2830
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 2831
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "start"

    .line 2832
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2833
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "frame"

    .line 2834
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 2836
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech$CallbackHandler;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v3}, Landroid/speech/tts/TextToSpeech;->access$2100(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2838
    invoke-virtual {v3, v0, v2, v1, p1}, Landroid/speech/tts/UtteranceProgressListener;->onRangeStart(Ljava/lang/String;III)V

    goto/16 :goto_2

    .line 2818
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 2819
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio"

    .line 2820
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 2822
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$CallbackHandler;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->access$2100(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2824
    invoke-virtual {v1, v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onAudioAvailable(Ljava/lang/String;[B)V

    goto/16 :goto_2

    .line 2803
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 2804
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sampleRateInHz"

    .line 2805
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "audioFormat"

    .line 2806
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "channelCount"

    .line 2807
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 2809
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech$CallbackHandler;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v3}, Landroid/speech/tts/TextToSpeech;->access$2100(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2811
    invoke-virtual {v3, v0, v1, v2, p1}, Landroid/speech/tts/UtteranceProgressListener;->onBeginSynthesis(Ljava/lang/String;III)V

    goto/16 :goto_2

    .line 2791
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 2792
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2793
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2795
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$CallbackHandler;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->access$2100(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2797
    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onStart(Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 2778
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 2779
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "errorCode"

    .line 2780
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2781
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onError "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " errorCode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$CallbackHandler;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->access$2100(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2785
    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onError(Landroid/os/Bundle;)V

    goto :goto_2

    .line 2766
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 2767
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2770
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$CallbackHandler;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->access$2100(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2772
    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onDone(Landroid/os/Bundle;)V

    goto :goto_2

    .line 2752
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 2753
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isStarted"

    .line 2754
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 2755
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStop "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isStarted "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$CallbackHandler;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->access$2100(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "interrupted"

    .line 2759
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2760
    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onStop(Landroid/os/Bundle;)V

    :cond_4
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
