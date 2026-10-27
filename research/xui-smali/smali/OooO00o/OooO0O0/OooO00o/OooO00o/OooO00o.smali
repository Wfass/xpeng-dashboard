.class public abstract LOooO00o/OooO0O0/OooO00o/OooO00o/OooO00o;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.loostone.karaoke.voice.IPmKaraokeAppService"

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
    .locals 3

    const-string v0, "com.loostone.karaoke.voice.IPmKaraokeAppService"

    const/4 v1, 0x1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_4

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    move-object p1, p0

    check-cast p1, Lcom/loostone/libtuning/component/service/PmKaraokeAppService$OooO00o;

    .line 4
    sget-object p2, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p4, "PmKaraokeAppService"

    const-string v0, "exitPlayer"

    invoke-virtual {p2, p4, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p1, Lcom/loostone/libtuning/component/service/PmKaraokeAppService$OooO00o;->OooO00o:Lcom/loostone/libtuning/component/service/PmKaraokeAppService;

    .line 6
    iget-object p1, p1, Lcom/loostone/libtuning/component/service/PmKaraokeAppService;->OooO00o:Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;

    if-eqz p1, :cond_0

    .line 7
    invoke-interface {p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;->exitKaraokePlayer()V

    .line 8
    :cond_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 9
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10
    move-object p1, p0

    check-cast p1, Lcom/loostone/libtuning/component/service/PmKaraokeAppService$OooO00o;

    .line 11
    sget-object p2, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p4, "PmKaraokeAppService"

    const-string v0, "enterPlayer"

    invoke-virtual {p2, p4, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p1, Lcom/loostone/libtuning/component/service/PmKaraokeAppService$OooO00o;->OooO00o:Lcom/loostone/libtuning/component/service/PmKaraokeAppService;

    .line 13
    iget-object p1, p1, Lcom/loostone/libtuning/component/service/PmKaraokeAppService;->OooO00o:Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;

    if-eqz p1, :cond_1

    .line 14
    invoke-interface {p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;->enterKaraokePlayer()V

    .line 15
    :cond_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 16
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 17
    move-object p1, p0

    check-cast p1, Lcom/loostone/libtuning/component/service/PmKaraokeAppService$OooO00o;

    .line 18
    sget-object p2, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p4, "PmKaraokeAppService"

    const-string v0, "exitApp"

    invoke-virtual {p2, p4, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object p1, p1, Lcom/loostone/libtuning/component/service/PmKaraokeAppService$OooO00o;->OooO00o:Lcom/loostone/libtuning/component/service/PmKaraokeAppService;

    .line 20
    iget-object p1, p1, Lcom/loostone/libtuning/component/service/PmKaraokeAppService;->OooO00o:Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;

    if-eqz p1, :cond_2

    .line 21
    invoke-interface {p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;->exitKaraokeApp()V

    .line 22
    :cond_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 23
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 26
    move-object p2, p0

    check-cast p2, Lcom/loostone/libtuning/component/service/PmKaraokeAppService$OooO00o;

    const-string p4, "packageName"

    .line 27
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object p4, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "enterApp,"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "PmKaraokeAppService"

    invoke-virtual {p4, v2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object p2, p2, Lcom/loostone/libtuning/component/service/PmKaraokeAppService$OooO00o;->OooO00o:Lcom/loostone/libtuning/component/service/PmKaraokeAppService;

    .line 55
    iget-object p2, p2, Lcom/loostone/libtuning/component/service/PmKaraokeAppService;->OooO00o:Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;

    if-eqz p2, :cond_3

    .line 56
    invoke-interface {p2, p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;->enterKaraokeApp(Ljava/lang/String;)V

    .line 57
    :cond_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 58
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
