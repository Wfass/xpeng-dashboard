.class public abstract Lcom/xiaopeng/speech/asr/IRecognizeListener$Stub;
.super Landroid/os/Binder;
.source "IRecognizeListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/asr/IRecognizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/asr/IRecognizeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/asr/IRecognizeListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.speech.asr.IRecognizeListener"

.field static final TRANSACTION_onError:I = 0x2

.field static final TRANSACTION_onExtra:I = 0x4

.field static final TRANSACTION_onResult:I = 0x1

.field static final TRANSACTION_onState:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.speech.asr.IRecognizeListener"

    .line 14
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/speech/asr/IRecognizeListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/speech/asr/IRecognizeListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.speech.asr.IRecognizeListener"

    .line 25
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 26
    instance-of v1, v0, Lcom/xiaopeng/speech/asr/IRecognizeListener;

    if-eqz v1, :cond_1

    .line 27
    check-cast v0, Lcom/xiaopeng/speech/asr/IRecognizeListener;

    return-object v0

    .line 29
    :cond_1
    new-instance v0, Lcom/xiaopeng/speech/asr/IRecognizeListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/speech/asr/IRecognizeListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.xiaopeng.speech.asr.IRecognizeListener"

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 42
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 80
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    move-object v1, p0

    .line 91
    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/speech/asr/IRecognizeListener$Stub;->onExtra(IIILjava/lang/String;[B)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 69
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/asr/IRecognizeListener$Stub;->onState(II)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 58
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/asr/IRecognizeListener$Stub;->onError(ILjava/lang/String;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 47
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_5

    move p2, v0

    goto :goto_0

    :cond_5
    const/4 p2, 0x0

    .line 52
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/asr/IRecognizeListener$Stub;->onResult(Ljava/lang/String;Z)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
