.class Landroid/speech/tts/ITextToSpeechCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITextToSpeechCallback.java"

# interfaces
.implements Landroid/speech/tts/ITextToSpeechCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/ITextToSpeechCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/speech/tts/ITextToSpeechCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p1, p0, Landroid/speech/tts/ITextToSpeechCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 280
    iget-object v0, p0, Landroid/speech/tts/ITextToSpeechCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "android.speech.tts.ITextToSpeechCallback"

    return-object v0
.end method

.method public onAudioAvailable(Ljava/lang/String;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.speech.tts.ITextToSpeechCallback"

    .line 464
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 467
    iget-object v1, p0, Landroid/speech/tts/ITextToSpeechCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 469
    invoke-static {}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->getDefaultImpl()Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 470
    invoke-static {}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->getDefaultImpl()Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/speech/tts/ITextToSpeechCallback;->onAudioAvailable(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 477
    throw p1
.end method

.method public onBeginSynthesis(Ljava/lang/String;III)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.speech.tts.ITextToSpeechCallback"

    .line 431
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    iget-object v1, p0, Landroid/speech/tts/ITextToSpeechCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 438
    invoke-static {}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->getDefaultImpl()Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 439
    invoke-static {}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->getDefaultImpl()Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/speech/tts/ITextToSpeechCallback;->onBeginSynthesis(Ljava/lang/String;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 446
    throw p1
.end method

.method public onError(Landroid/os/Bundle;Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 386
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.speech.tts.ITextToSpeechCallback"

    .line 388
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 390
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 394
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    iget-object v2, p0, Landroid/speech/tts/ITextToSpeechCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 400
    invoke-static {}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->getDefaultImpl()Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 401
    invoke-static {}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->getDefaultImpl()Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/speech/tts/ITextToSpeechCallback;->onError(Landroid/os/Bundle;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 408
    throw p1
.end method

.method public onRangeStart(Ljava/lang/String;III)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 496
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.speech.tts.ITextToSpeechCallback"

    .line 498
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 500
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    iget-object v1, p0, Landroid/speech/tts/ITextToSpeechCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 505
    invoke-static {}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->getDefaultImpl()Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 506
    invoke-static {}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->getDefaultImpl()Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/speech/tts/ITextToSpeechCallback;->onRangeStart(Ljava/lang/String;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 513
    throw p1
.end method

.method public onStart(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 293
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.speech.tts.ITextToSpeechCallback"

    .line 295
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 297
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Landroid/speech/tts/ITextToSpeechCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 306
    invoke-static {}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->getDefaultImpl()Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 307
    invoke-static {}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->getDefaultImpl()Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/speech/tts/ITextToSpeechCallback;->onStart(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 314
    throw p1
.end method

.method public onStateChanged(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 522
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.speech.tts.ITextToSpeechCallback"

    .line 524
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 526
    iget-object v1, p0, Landroid/speech/tts/ITextToSpeechCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 528
    invoke-static {}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->getDefaultImpl()Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 529
    invoke-static {}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->getDefaultImpl()Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/speech/tts/ITextToSpeechCallback;->onStateChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 536
    throw p1
.end method

.method public onStop(Landroid/os/Bundle;Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.speech.tts.ITextToSpeechCallback"

    .line 355
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 357
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 361
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    move v2, v1

    .line 364
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    iget-object v2, p0, Landroid/speech/tts/ITextToSpeechCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 367
    invoke-static {}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->getDefaultImpl()Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 368
    invoke-static {}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->getDefaultImpl()Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/speech/tts/ITextToSpeechCallback;->onStop(Landroid/os/Bundle;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 375
    throw p1
.end method

.method public onSuccess(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 323
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.speech.tts.ITextToSpeechCallback"

    .line 325
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 327
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 331
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    iget-object v2, p0, Landroid/speech/tts/ITextToSpeechCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 336
    invoke-static {}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->getDefaultImpl()Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 337
    invoke-static {}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->getDefaultImpl()Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/speech/tts/ITextToSpeechCallback;->onSuccess(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 344
    throw p1
.end method
