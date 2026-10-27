.class public abstract Lcom/xiaopeng/speech/asr/IRecognizer$Stub;
.super Landroid/os/Binder;
.source "IRecognizer.java"

# interfaces
.implements Lcom/xiaopeng/speech/asr/IRecognizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/asr/IRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/asr/IRecognizer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.speech.asr.IRecognizer"

.field static final TRANSACTION_cancel:I = 0x4

.field static final TRANSACTION_isListening:I = 0x3

.field static final TRANSACTION_setBool:I = 0x8

.field static final TRANSACTION_setDouble:I = 0x9

.field static final TRANSACTION_setInt:I = 0x7

.field static final TRANSACTION_setString:I = 0x6

.field static final TRANSACTION_startListening:I = 0x1

.field static final TRANSACTION_stopListening:I = 0x2

.field static final TRANSACTION_writeData:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.speech.asr.IRecognizer"

    .line 14
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/speech/asr/IRecognizer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/speech/asr/IRecognizer;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.speech.asr.IRecognizer"

    .line 25
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 26
    instance-of v1, v0, Lcom/xiaopeng/speech/asr/IRecognizer;

    if-eqz v1, :cond_1

    .line 27
    check-cast v0, Lcom/xiaopeng/speech/asr/IRecognizer;

    return-object v0

    .line 29
    :cond_1
    new-instance v0, Lcom/xiaopeng/speech/asr/IRecognizer$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/speech/asr/IRecognizer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.xiaopeng.speech.asr.IRecognizer"

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 124
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 129
    invoke-virtual {p0, p1, v2, v3}, Lcom/xiaopeng/speech/asr/IRecognizer$Stub;->setDouble(Ljava/lang/String;D)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 113
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 118
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/asr/IRecognizer$Stub;->setBool(Ljava/lang/String;Z)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 102
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/asr/IRecognizer$Stub;->setInt(Ljava/lang/String;I)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 91
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/asr/IRecognizer$Stub;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 78
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 85
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/speech/asr/IRecognizer$Stub;->writeData([BII)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 71
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/xiaopeng/speech/asr/IRecognizer$Stub;->cancel()V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 63
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/speech/asr/IRecognizer$Stub;->isListening()Z

    move-result p1

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 56
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/speech/asr/IRecognizer$Stub;->stopListening()V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 47
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/asr/IRecognizeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/speech/asr/IRecognizeListener;

    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/asr/IRecognizer$Stub;->startListening(Lcom/xiaopeng/speech/asr/IRecognizeListener;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 42
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
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
