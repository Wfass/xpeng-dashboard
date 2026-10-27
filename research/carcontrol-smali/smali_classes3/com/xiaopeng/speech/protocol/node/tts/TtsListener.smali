.class public interface abstract Lcom/xiaopeng/speech/protocol/node/tts/TtsListener;
.super Ljava/lang/Object;
.source "TtsListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/INodeListener;


# virtual methods
.method public onTtsTimbreSetting(I)V
    .locals 0

    return-void
.end method

.method public ttsEcho(Lcom/xiaopeng/speech/protocol/node/tts/TtsEchoValue;)V
    .locals 0

    return-void
.end method

.method public abstract ttsEnd(Ljava/lang/String;)V
.end method

.method public abstract ttsStart(Ljava/lang/String;)V
.end method
