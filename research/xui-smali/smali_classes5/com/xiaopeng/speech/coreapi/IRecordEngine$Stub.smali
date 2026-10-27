.class public abstract Lcom/xiaopeng/speech/coreapi/IRecordEngine$Stub;
.super Landroid/os/Binder;
.source "IRecordEngine.java"

# interfaces
.implements Lcom/xiaopeng/speech/coreapi/IRecordEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/coreapi/IRecordEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/coreapi/IRecordEngine$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.speech.coreapi.IRecordEngine"

.field static final TRANSACTION_asr:I = 0x3

.field static final TRANSACTION_pcm2Amr:I = 0x4

.field static final TRANSACTION_startRecord:I = 0x1

.field static final TRANSACTION_stopRecord:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.xiaopeng.speech.coreapi.IRecordEngine"

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/speech/coreapi/IRecordEngine$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/speech/coreapi/IRecordEngine;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "com.xiaopeng.speech.coreapi.IRecordEngine"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/speech/coreapi/IRecordEngine;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/speech/coreapi/IRecordEngine;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Lcom/xiaopeng/speech/coreapi/IRecordEngine$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/coreapi/IRecordEngine$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const-string v0, "com.xiaopeng.speech.coreapi.IRecordEngine"

    .line 40
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 80
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 87
    .local v4, "_arg2":Z
    :goto_0
    invoke-virtual {p0, v1, v3, v4}, Lcom/xiaopeng/speech/coreapi/IRecordEngine$Stub;->pcm2Amr(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    .line 88
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    return v2

    .line 69
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Z
    .end local v5    # "_result":Z
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 74
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/xiaopeng/speech/coreapi/IRecordEngine$Stub;->asr(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    return v2

    .line 62
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IRecordEngine$Stub;->stopRecord()V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    return v2

    .line 49
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 55
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 56
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Lcom/xiaopeng/speech/coreapi/IRecordEngine$Stub;->startRecord(Ljava/lang/String;II)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    return v2

    .line 44
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
