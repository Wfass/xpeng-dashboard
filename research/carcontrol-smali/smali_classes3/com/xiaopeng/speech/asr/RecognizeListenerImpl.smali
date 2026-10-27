.class Lcom/xiaopeng/speech/asr/RecognizeListenerImpl;
.super Lcom/xiaopeng/speech/asr/IRecognizeListener$Stub;
.source "RecognizeListenerImpl.java"


# instance fields
.field private final listener:Lcom/xiaopeng/speech/asr/RecognizeListener;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/asr/RecognizeListener;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/xiaopeng/speech/asr/IRecognizeListener$Stub;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/xiaopeng/speech/asr/RecognizeListenerImpl;->listener:Lcom/xiaopeng/speech/asr/RecognizeListener;

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/speech/asr/RecognizeListenerImpl;->listener:Lcom/xiaopeng/speech/asr/RecognizeListener;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/speech/asr/RecognizeListener;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onExtra(IIILjava/lang/String;[B)V
    .locals 6
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

    return-void
.end method

.method public onResult(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/xiaopeng/speech/asr/RecognizeListenerImpl;->listener:Lcom/xiaopeng/speech/asr/RecognizeListener;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/speech/asr/RecognizeListener;->onResult(Ljava/lang/String;Z)V

    return-void
.end method

.method public onState(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/speech/asr/RecognizeListenerImpl;->listener:Lcom/xiaopeng/speech/asr/RecognizeListener;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/speech/asr/RecognizeListener;->onState(II)V

    return-void
.end method
