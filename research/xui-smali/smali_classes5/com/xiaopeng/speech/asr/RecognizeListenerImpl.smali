.class Lcom/xiaopeng/speech/asr/RecognizeListenerImpl;
.super Lcom/xiaopeng/speech/asr/IRecognizeListener$Stub;
.source "RecognizeListenerImpl.java"


# instance fields
.field private final listener:Lcom/xiaopeng/speech/asr/RecognizeListener;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/asr/RecognizeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/speech/asr/RecognizeListener;

    .line 8
    invoke-direct {p0}, Lcom/xiaopeng/speech/asr/IRecognizeListener$Stub;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/xiaopeng/speech/asr/RecognizeListenerImpl;->listener:Lcom/xiaopeng/speech/asr/RecognizeListener;

    .line 10
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "extraInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/speech/asr/RecognizeListenerImpl;->listener:Lcom/xiaopeng/speech/asr/RecognizeListener;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/speech/asr/RecognizeListener;->onError(ILjava/lang/String;)V

    .line 20
    return-void
.end method

.method public onExtra(IIILjava/lang/String;[B)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "info"    # Ljava/lang/String;
    .param p5, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/speech/asr/RecognizeListenerImpl;->listener:Lcom/xiaopeng/speech/asr/RecognizeListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/xiaopeng/speech/asr/RecognizeListener;->onExtra(IIILjava/lang/String;[B)V

    .line 30
    return-void
.end method

.method public onResult(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "last"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/xiaopeng/speech/asr/RecognizeListenerImpl;->listener:Lcom/xiaopeng/speech/asr/RecognizeListener;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/speech/asr/RecognizeListener;->onResult(Ljava/lang/String;Z)V

    .line 15
    return-void
.end method

.method public onState(II)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "extra"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/speech/asr/RecognizeListenerImpl;->listener:Lcom/xiaopeng/speech/asr/RecognizeListener;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/speech/asr/RecognizeListener;->onState(II)V

    .line 25
    return-void
.end method
