.class public abstract LOooO00o/OooO0O0/OooO00o/OooO00o/OooO0O0;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.loostone.karaoke.voice.IPmKaraokeVoiceService"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    const-string v0, "com.loostone.karaoke.voice.IPmKaraokeVoiceService"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 32
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 33
    move-object p1, p0

    check-cast p1, Lcom/loostone/libtuning/component/service/PmKaraokeVoiceService$OooO00o;

    .line 34
    iget-object p1, p1, Lcom/loostone/libtuning/component/service/PmKaraokeVoiceService$OooO00o;->OooO00o:Lcom/loostone/libtuning/component/service/PmKaraokeVoiceService;

    .line 35
    iget-object p1, p1, Lcom/loostone/libtuning/component/service/PmKaraokeVoiceService;->OooO00o:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/loostone/libtuning/channel/BaseChannelMgr;

    .line 36
    invoke-virtual {p1}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVerifyStatus()I

    move-result p1

    if-ne p1, v2, :cond_2

    .line 37
    move p1, v1

    goto :goto_0

    .line 36
    :cond_2
    const/4 p1, 0x0

    .line 37
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 38
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 39
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->getInstance()Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->sendCmd(Ljava/lang/String;)I

    move-result p1

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 44
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 45
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 52
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->getInstance()Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;

    move-result-object v0

    invoke-virtual {v0, p1, p4, p2}, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->read([BII)I

    move-result p2

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    return v1
.end method
