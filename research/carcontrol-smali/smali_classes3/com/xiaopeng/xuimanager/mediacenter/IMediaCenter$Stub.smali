.class public abstract Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;
.super Landroid/os/Binder;
.source "IMediaCenter.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_avrcpNext:I = 0x27

.field static final TRANSACTION_avrcpPause:I = 0x26

.field static final TRANSACTION_avrcpPlay:I = 0x25

.field static final TRANSACTION_avrcpPrevious:I = 0x28

.field static final TRANSACTION_executeCmd:I = 0x2e

.field static final TRANSACTION_favorSong:I = 0x33

.field static final TRANSACTION_getAvrcpMeteData:I = 0x29

.field static final TRANSACTION_getAvrcpPlayStatus:I = 0x2b

.field static final TRANSACTION_getAvrcpPosition:I = 0x2a

.field static final TRANSACTION_getBtStatus:I = 0x22

.field static final TRANSACTION_getCurrentLyricInfo:I = 0x35

.field static final TRANSACTION_getCurrentMediaInfo:I = 0x13

.field static final TRANSACTION_getCurrentMode:I = 0x1d

.field static final TRANSACTION_getCurrentPlayStatus:I = 0x12

.field static final TRANSACTION_getCurrentPosition:I = 0x14

.field static final TRANSACTION_notifyLyricInfoUpdated:I = 0x30

.field static final TRANSACTION_notifyLyricUpdate:I = 0x18

.field static final TRANSACTION_pauseBtMedia:I = 0x21

.field static final TRANSACTION_pauseRender:I = 0x3e

.field static final TRANSACTION_playBtMedia:I = 0x20

.field static final TRANSACTION_playbackControl:I = 0x10

.field static final TRANSACTION_playbackControlWithBundle:I = 0x3a

.field static final TRANSACTION_registerAvrcpEventListener:I = 0x2c

.field static final TRANSACTION_registerBtStatusListener:I = 0x1e

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_registerLyricInfoListener:I = 0x31

.field static final TRANSACTION_registerLyricUpdateListener:I = 0x19

.field static final TRANSACTION_registerModeChangedListener:I = 0x1b

.field static final TRANSACTION_registerPlaybackInfoListener:I = 0xe

.field static final TRANSACTION_registerVisualizerListener:I = 0xc

.field static final TRANSACTION_registerVisualizerListenerWithDisplayId:I = 0x36

.field static final TRANSACTION_registerVisualizerListenerWithPackage:I = 0x38

.field static final TRANSACTION_registerVisualizerViewEnableListener:I = 0x16

.field static final TRANSACTION_requestMediaButton:I = 0x34

.field static final TRANSACTION_setBtVolume:I = 0x24

.field static final TRANSACTION_setFavorite:I = 0x23

.field static final TRANSACTION_setSDPosition:I = 0x2f

.field static final TRANSACTION_setSessionActivity:I = 0x3c

.field static final TRANSACTION_setVisualizerViewEnable:I = 0x15

.field static final TRANSACTION_startRender:I = 0x3d

.field static final TRANSACTION_stopMedia:I = 0x3b

.field static final TRANSACTION_switchSource:I = 0x11

.field static final TRANSACTION_unRegisterAvrcpEventListener:I = 0x2d

.field static final TRANSACTION_unRegisterBtStatusListener:I = 0x1f

.field static final TRANSACTION_unRegisterLyricUpdateListener:I = 0x1a

.field static final TRANSACTION_unRegisterModeChangedListener:I = 0x1c

.field static final TRANSACTION_unRegisterPlaybackInfoListener:I = 0xf

.field static final TRANSACTION_unRegisterVisualizerListener:I = 0xd

.field static final TRANSACTION_unRegisterVisualizerListenerWithDisplayId:I = 0x37

.field static final TRANSACTION_unRegisterVisualizerListenerWithPackage:I = 0x39

.field static final TRANSACTION_unRegisterVisualizerViewEnableListener:I = 0x17

.field static final TRANSACTION_unregisterListener:I = 0x2

.field static final TRANSACTION_unregisterLyricInfoListener:I = 0x32

.field static final TRANSACTION_vendorMediaInfoNotify:I = 0x7

.field static final TRANSACTION_vendorRegister:I = 0x3

.field static final TRANSACTION_vendorSetControlListener:I = 0x8

.field static final TRANSACTION_vendorStartAudioSession:I = 0xa

.field static final TRANSACTION_vendorStopAudioSession:I = 0xb

.field static final TRANSACTION_vendorUnRegister:I = 0x4

.field static final TRANSACTION_vendorUnSetControlListener:I = 0x9

.field static final TRANSACTION_vendorUpdatePlaybackStatus:I = 0x5

.field static final TRANSACTION_vendorUpdatePosition:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 220
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 221
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 232
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 233
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    if-eqz v1, :cond_1

    .line 234
    check-cast v0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    return-object v0

    .line 236
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;
    .locals 1

    .line 2368
    sget-object v0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;)Z
    .locals 1

    .line 2358
    sget-object v0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 2362
    sput-object p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 2359
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
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

    const/4 v0, 0x1

    const-string v1, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_e

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 891
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 884
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 885
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->pauseRender()V

    .line 886
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 877
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->startRender()V

    .line 879
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 862
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 864
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 866
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_0

    .line 867
    sget-object p3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/app/PendingIntent;

    .line 872
    :cond_0
    invoke-virtual {p0, p1, v3}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->setSessionActivity(Ljava/lang/String;Landroid/app/PendingIntent;)V

    return v0

    .line 843
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 845
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 847
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_1

    move v2, v0

    .line 849
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 851
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    .line 852
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 857
    :cond_2
    invoke-virtual {p0, p1, v2, p3, v3}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->stopMedia(IZLjava/lang/String;Landroid/os/Bundle;)V

    return v0

    .line 824
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 826
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 828
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 830
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 831
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 836
    :cond_3
    invoke-virtual {p0, p1, p4, v3}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->playbackControlWithBundle(IILandroid/os/Bundle;)I

    move-result p1

    .line 837
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 813
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 817
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;

    move-result-object p2

    .line 818
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->unRegisterVisualizerListenerWithPackage(Ljava/lang/String;Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;)V

    .line 819
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 802
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 806
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;

    move-result-object p2

    .line 807
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->registerVisualizerListenerWithPackage(Ljava/lang/String;Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;)V

    .line 808
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 791
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 793
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 795
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;

    move-result-object p2

    .line 796
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->unRegisterVisualizerListenerWithDisplayId(ILcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;)V

    .line 797
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 780
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 784
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;

    move-result-object p2

    .line 785
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->registerVisualizerListenerWithDisplayId(ILcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;)V

    .line 786
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 764
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 767
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getCurrentLyricInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    move-result-object p1

    .line 768
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 770
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 771
    invoke-virtual {p1, p3, v0}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 774
    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v0

    .line 748
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    move v2, v0

    .line 752
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 753
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/os/Bundle;

    .line 758
    :cond_6
    invoke-virtual {p0, v2, v3}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->requestMediaButton(ZLandroid/os/Bundle;)V

    .line 759
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 734
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    .line 737
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/os/Bundle;

    .line 742
    :cond_7
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->favorSong(Landroid/os/Bundle;)V

    .line 743
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 725
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/ILyricInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/mediacenter/lyric/ILyricInfoListener;

    move-result-object p1

    .line 728
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->unregisterLyricInfoListener(Lcom/xiaopeng/xuimanager/mediacenter/lyric/ILyricInfoListener;)V

    .line 729
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 716
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/ILyricInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/mediacenter/lyric/ILyricInfoListener;

    move-result-object p1

    .line 719
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->registerLyricInfoListener(Lcom/xiaopeng/xuimanager/mediacenter/lyric/ILyricInfoListener;)V

    .line 720
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 702
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 705
    sget-object p1, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    .line 710
    :cond_8
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->notifyLyricInfoUpdated(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    .line 711
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 691
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 695
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 696
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->setSDPosition(ILjava/lang/String;)V

    .line 697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 680
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 684
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 685
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->executeCmd(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 671
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;

    move-result-object p1

    .line 674
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->unRegisterAvrcpEventListener(Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;)V

    .line 675
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 662
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;

    move-result-object p1

    .line 665
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->registerAvrcpEventListener(Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;)V

    .line 666
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 654
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getAvrcpPlayStatus()I

    move-result p1

    .line 656
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 646
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getAvrcpPosition()[J

    move-result-object p1

    .line 648
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeLongArray([J)V

    return v0

    .line 632
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getAvrcpMeteData()Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;

    move-result-object p1

    .line 634
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_9

    .line 636
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    invoke-virtual {p1, p3, v0}, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 640
    :cond_9
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v0

    .line 625
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->avrcpPrevious()V

    .line 627
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 618
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->avrcpNext()V

    .line 620
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 611
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->avrcpPause()V

    .line 613
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 604
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->avrcpPlay()V

    .line 606
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 595
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 598
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->setBtVolume(F)V

    .line 599
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 583
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    move v2, v0

    .line 587
    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 588
    invoke-virtual {p0, v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->setFavorite(ZLjava/lang/String;)I

    move-result p1

    .line 589
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 575
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getBtStatus()I

    move-result p1

    .line 577
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 568
    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->pauseBtMedia()V

    .line 570
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 561
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->playBtMedia()V

    .line 563
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 552
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/mediacenter/IBTStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/mediacenter/IBTStatusListener;

    move-result-object p1

    .line 555
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->unRegisterBtStatusListener(Lcom/xiaopeng/xuimanager/mediacenter/IBTStatusListener;)V

    .line 556
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 543
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/mediacenter/IBTStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/mediacenter/IBTStatusListener;

    move-result-object p1

    .line 546
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->registerBtStatusListener(Lcom/xiaopeng/xuimanager/mediacenter/IBTStatusListener;)V

    .line 547
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 535
    :pswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getCurrentMode()I

    move-result p1

    .line 537
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 526
    :pswitch_22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/mediacenter/IModeChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/mediacenter/IModeChangedListener;

    move-result-object p1

    .line 529
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->unRegisterModeChangedListener(Lcom/xiaopeng/xuimanager/mediacenter/IModeChangedListener;)V

    .line 530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 517
    :pswitch_23
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/mediacenter/IModeChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/mediacenter/IModeChangedListener;

    move-result-object p1

    .line 520
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->registerModeChangedListener(Lcom/xiaopeng/xuimanager/mediacenter/IModeChangedListener;)V

    .line 521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 508
    :pswitch_24
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/mediacenter/ILyricUpdateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/mediacenter/ILyricUpdateListener;

    move-result-object p1

    .line 511
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->unRegisterLyricUpdateListener(Lcom/xiaopeng/xuimanager/mediacenter/ILyricUpdateListener;)V

    .line 512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 499
    :pswitch_25
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/mediacenter/ILyricUpdateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/mediacenter/ILyricUpdateListener;

    move-result-object p1

    .line 502
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->registerLyricUpdateListener(Lcom/xiaopeng/xuimanager/mediacenter/ILyricUpdateListener;)V

    .line 503
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 490
    :pswitch_26
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 493
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->notifyLyricUpdate(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 481
    :pswitch_27
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/mediacenter/IVisualizerViewEnableListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/mediacenter/IVisualizerViewEnableListener;

    move-result-object p1

    .line 484
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->unRegisterVisualizerViewEnableListener(Lcom/xiaopeng/xuimanager/mediacenter/IVisualizerViewEnableListener;)V

    .line 485
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 472
    :pswitch_28
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/mediacenter/IVisualizerViewEnableListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/mediacenter/IVisualizerViewEnableListener;

    move-result-object p1

    .line 475
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->registerVisualizerViewEnableListener(Lcom/xiaopeng/xuimanager/mediacenter/IVisualizerViewEnableListener;)V

    .line 476
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 463
    :pswitch_29
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b

    move v2, v0

    .line 466
    :cond_b
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->setVisualizerViewEnable(Z)V

    .line 467
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 453
    :pswitch_2a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 456
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getCurrentPosition(I)[J

    move-result-object p1

    .line 457
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeLongArray([J)V

    return v0

    .line 437
    :pswitch_2b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 440
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object p1

    .line 441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_c

    .line 443
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    invoke-virtual {p1, p3, v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 447
    :cond_c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v0

    .line 427
    :pswitch_2c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 430
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getCurrentPlayStatus(I)I

    move-result p1

    .line 431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 417
    :pswitch_2d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 420
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->switchSource(I)I

    move-result p1

    .line 421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 403
    :pswitch_2e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 410
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->playbackControl(III)I

    move-result p1

    .line 411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 394
    :pswitch_2f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;

    move-result-object p1

    .line 397
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->unRegisterPlaybackInfoListener(Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;)V

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 385
    :pswitch_30
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;

    move-result-object p1

    .line 388
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->registerPlaybackInfoListener(Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;)V

    .line 389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 376
    :pswitch_31
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;

    move-result-object p1

    .line 379
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->unRegisterVisualizerListener(Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;)V

    .line 380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 367
    :pswitch_32
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;

    move-result-object p1

    .line 370
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->registerVisualizerListener(Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;)V

    .line 371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 357
    :pswitch_33
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 362
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->vendorStopAudioSession(ILjava/lang/String;)V

    return v0

    .line 345
    :pswitch_34
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 352
    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->vendorStartAudioSession(IILjava/lang/String;)V

    return v0

    .line 334
    :pswitch_35
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener;

    move-result-object p2

    .line 339
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->vendorUnSetControlListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener;)V

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 323
    :pswitch_36
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener;

    move-result-object p2

    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->vendorSetControlListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener;)V

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 309
    :pswitch_37
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d

    .line 312
    sget-object p1, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 317
    :cond_d
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->vendorMediaInfoNotify(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 298
    :pswitch_38
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 303
    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->vendorUpdatePosition(JJ)V

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 289
    :pswitch_39
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 292
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->vendorUpdatePlaybackStatus(I)V

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 282
    :pswitch_3a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->vendorUnRegister()V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 275
    :pswitch_3b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->vendorRegister()V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 266
    :pswitch_3c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenterEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenterEventListener;

    move-result-object p1

    .line 269
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->unregisterListener(Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenterEventListener;)V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 257
    :pswitch_3d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenterEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenterEventListener;

    move-result-object p1

    .line 260
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->registerListener(Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenterEventListener;)V

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 249
    :cond_e
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
