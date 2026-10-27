.class public abstract Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;
.super Landroid/os/Binder;
.source "IKaraoke.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_XMS_Create:I = 0x1

.field static final TRANSACTION_XMS_Distroy:I = 0x4

.field static final TRANSACTION_XMS_GetEcho:I = 0xd

.field static final TRANSACTION_XMS_GetHandShakeStatus:I = 0x7

.field static final TRANSACTION_XMS_GetMicPowerStatus:I = 0x9

.field static final TRANSACTION_XMS_GetMicStatus:I = 0x8

.field static final TRANSACTION_XMS_GetToken:I = 0x5

.field static final TRANSACTION_XMS_GetVolume:I = 0xb

.field static final TRANSACTION_XMS_MicCreate:I = 0x23

.field static final TRANSACTION_XMS_MicDestroy:I = 0x26

.field static final TRANSACTION_XMS_MicGetAvail:I = 0x24

.field static final TRANSACTION_XMS_MicGetMinBuf:I = 0x22

.field static final TRANSACTION_XMS_MicRead:I = 0x25

.field static final TRANSACTION_XMS_Pause:I = 0x14

.field static final TRANSACTION_XMS_PausePlay:I = 0x19

.field static final TRANSACTION_XMS_Read:I = 0x20

.field static final TRANSACTION_XMS_RecCreate:I = 0x1d

.field static final TRANSACTION_XMS_RecDestroy:I = 0x21

.field static final TRANSACTION_XMS_RecGetAvail:I = 0x1e

.field static final TRANSACTION_XMS_RecGetMinBuf:I = 0x1c

.field static final TRANSACTION_XMS_RecStart:I = 0x16

.field static final TRANSACTION_XMS_RecStop:I = 0x15

.field static final TRANSACTION_XMS_RegisterCallback:I = 0x2

.field static final TRANSACTION_XMS_Resume:I = 0x17

.field static final TRANSACTION_XMS_ResumePlay:I = 0x18

.field static final TRANSACTION_XMS_SaveRec:I = 0x1a

.field static final TRANSACTION_XMS_SetEcho:I = 0xc

.field static final TRANSACTION_XMS_SetRecMode:I = 0x1f

.field static final TRANSACTION_XMS_SetSignedToken:I = 0x6

.field static final TRANSACTION_XMS_SetVolume:I = 0xa

.field static final TRANSACTION_XMS_ShowToast:I = 0x2f

.field static final TRANSACTION_XMS_StopSaveRec:I = 0x1b

.field static final TRANSACTION_XMS_TrackCreate:I = 0xf

.field static final TRANSACTION_XMS_TrackDestroy:I = 0x13

.field static final TRANSACTION_XMS_TrackGetAvail:I = 0x12

.field static final TRANSACTION_XMS_TrackGetLatency:I = 0x10

.field static final TRANSACTION_XMS_TrackGetMinBuf:I = 0xe

.field static final TRANSACTION_XMS_UnRegisterCallback:I = 0x3

.field static final TRANSACTION_XMS_Write:I = 0x11

.field static final TRANSACTION_XMS_aiWakeUp:I = 0x28

.field static final TRANSACTION_XMS_atlSwitch:I = 0x27

.field static final TRANSACTION_XMS_clientDied:I = 0x32

.field static final TRANSACTION_XMS_connectMicFlow:I = 0x2e

.field static final TRANSACTION_XMS_getBuyMicUrl:I = 0x2d

.field static final TRANSACTION_XMS_getMicName:I = 0x2a

.field static final TRANSACTION_XMS_getMicSoundEffectMap:I = 0x33

.field static final TRANSACTION_XMS_hasAtl:I = 0x29

.field static final TRANSACTION_XMS_isAtlEnabled:I = 0x2c

.field static final TRANSACTION_XMS_releaseKaraokeResource:I = 0x35

.field static final TRANSACTION_XMS_requestKaraokeResource:I = 0x34

.field static final TRANSACTION_XMS_setAtlEnable:I = 0x2b

.field static final TRANSACTION_XMS_setMusicInfo:I = 0x30

.field static final TRANSACTION_XMS_setMusicLyric:I = 0x31

.field static final TRANSACTION_enableCarMicrophone:I = 0x36

.field static final TRANSACTION_enableVocalRemove:I = 0x39

.field static final TRANSACTION_enableVocalRemoveDynamic:I = 0x3c

.field static final TRANSACTION_getBgmVolume:I = 0x3f

.field static final TRANSACTION_getCarMicrophonePosition:I = 0x38

.field static final TRANSACTION_getVocalRemoveLevel:I = 0x3b

.field static final TRANSACTION_hasBuiltIntMicKaraoke:I = 0x40

.field static final TRANSACTION_isCarMicrophoneEnable:I = 0x37

.field static final TRANSACTION_isVocalRemoveDynamicEnable:I = 0x3d

.field static final TRANSACTION_isVocalRemoveEnable:I = 0x3a

.field static final TRANSACTION_setBgmVolume:I = 0x3e


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 272
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 273
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 284
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 285
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v1, :cond_1

    .line 286
    check-cast v0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    return-object v0

    .line 288
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;
    .locals 1

    .line 2586
    sget-object v0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;)Z
    .locals 1

    .line 2576
    sget-object v0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 2580
    sput-object p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 2577
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_5

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 997
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 989
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 990
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->hasBuiltIntMicKaraoke()Z

    move-result p1

    .line 991
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 981
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getBgmVolume()I

    move-result p1

    .line 983
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 972
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 974
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 975
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->setBgmVolume(I)V

    .line 976
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 964
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 965
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->isVocalRemoveDynamicEnable()Z

    move-result p1

    .line 966
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 967
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 955
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 957
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v2, v0

    .line 958
    :cond_0
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->enableVocalRemoveDynamic(Z)V

    .line 959
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 947
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 948
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getVocalRemoveLevel()I

    move-result p1

    .line 949
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 939
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 940
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->isVocalRemoveEnable()Z

    move-result p1

    .line 941
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 927
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 929
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v2, v0

    .line 931
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 932
    invoke-virtual {p0, v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->enableVocalRemove(ZI)I

    move-result p1

    .line 933
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 919
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 920
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getCarMicrophonePosition()I

    move-result p1

    .line 921
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 911
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->isCarMicrophoneEnable()Z

    move-result p1

    .line 913
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 899
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 901
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v2, v0

    .line 903
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 904
    invoke-virtual {p0, v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->enableCarMicrophone(ZI)I

    move-result p1

    .line 905
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 889
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 891
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 892
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_releaseKaraokeResource(Ljava/lang/String;)I

    move-result p1

    .line 893
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 873
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 875
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 877
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 879
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 881
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 882
    invoke-virtual {p0, p1, p4, v1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_requestKaraokeResource(Ljava/lang/String;III)I

    move-result p1

    .line 883
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 865
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 866
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_getMicSoundEffectMap()Ljava/util/Map;

    move-result-object p1

    .line 867
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return v0

    .line 857
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 858
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_clientDied()I

    move-result p1

    .line 859
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 847
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 849
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 850
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_setMusicLyric([Ljava/lang/String;)I

    move-result p1

    .line 851
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 837
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 839
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 840
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_setMusicInfo([Ljava/lang/String;)I

    move-result p1

    .line 841
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 828
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 830
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 831
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_ShowToast(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 821
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 822
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_connectMicFlow()V

    .line 823
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 813
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 814
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_getBuyMicUrl()Ljava/lang/String;

    move-result-object p1

    .line 815
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 805
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 806
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_isAtlEnabled()Z

    move-result p1

    .line 807
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 796
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 798
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v2, v0

    .line 799
    :cond_3
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_setAtlEnable(Z)V

    .line 800
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 788
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 789
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_getMicName()Ljava/lang/String;

    move-result-object p1

    .line 790
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 780
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 781
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_hasAtl()Z

    move-result p1

    .line 782
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 772
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_aiWakeUp()I

    move-result p1

    .line 774
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 762
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    move v2, v0

    .line 765
    :cond_4
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_atlSwitch(Z)I

    move-result p1

    .line 766
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 752
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 754
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 755
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_MicDestroy(Ljava/lang/String;)I

    move-result p1

    .line 756
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 737
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 739
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 741
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 743
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 744
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_MicRead(Ljava/lang/String;[BI)I

    move-result p1

    .line 745
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 747
    invoke-virtual {p3, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    return v0

    .line 727
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 729
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 730
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_MicGetAvail(Ljava/lang/String;)I

    move-result p1

    .line 731
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 711
    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 713
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 715
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 717
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 719
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 720
    invoke-virtual {p0, p1, p4, v1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_MicCreate(Ljava/lang/String;III)I

    move-result p1

    .line 721
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 697
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 701
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 703
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 704
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_MicGetMinBuf(Ljava/lang/String;II)I

    move-result p1

    .line 705
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 687
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 690
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_RecDestroy(Ljava/lang/String;)I

    move-result p1

    .line 691
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 672
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 676
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 678
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 679
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_Read(Ljava/lang/String;[BI)I

    move-result p1

    .line 680
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    invoke-virtual {p3, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    return v0

    .line 660
    :pswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 664
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 665
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_SetRecMode(Ljava/lang/String;I)I

    move-result p1

    .line 666
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 667
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 650
    :pswitch_22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 653
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_RecGetAvail(Ljava/lang/String;)I

    move-result p1

    .line 654
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 634
    :pswitch_23
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 638
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 640
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 642
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 643
    invoke-virtual {p0, p1, p4, v1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_RecCreate(Ljava/lang/String;III)I

    move-result p1

    .line 644
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 620
    :pswitch_24
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 624
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 627
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_RecGetMinBuf(Ljava/lang/String;II)I

    move-result p1

    .line 628
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 610
    :pswitch_25
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 613
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_StopSaveRec(Ljava/lang/String;)I

    move-result p1

    .line 614
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 594
    :pswitch_26
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 598
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 600
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 602
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 603
    invoke-virtual {p0, p1, p4, v1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_SaveRec(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 604
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 584
    :pswitch_27
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 587
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_PausePlay(Ljava/lang/String;)I

    move-result p1

    .line 588
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 574
    :pswitch_28
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 577
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_ResumePlay(Ljava/lang/String;)I

    move-result p1

    .line 578
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 564
    :pswitch_29
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 567
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_Resume(Ljava/lang/String;)I

    move-result p1

    .line 568
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 554
    :pswitch_2a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 557
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_RecStart(Ljava/lang/String;)I

    move-result p1

    .line 558
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 544
    :pswitch_2b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 547
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_RecStop(Ljava/lang/String;)I

    move-result p1

    .line 548
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 534
    :pswitch_2c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 537
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_Pause(Ljava/lang/String;)I

    move-result p1

    .line 538
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 524
    :pswitch_2d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 527
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_TrackDestroy(Ljava/lang/String;)I

    move-result p1

    .line 528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 514
    :pswitch_2e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 517
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_TrackGetAvail(Ljava/lang/String;)I

    move-result p1

    .line 518
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 497
    :pswitch_2f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 501
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 503
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 505
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 506
    invoke-virtual {p0, p1, p4, v1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_Write(Ljava/lang/String;[BII)I

    move-result p1

    .line 507
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    invoke-virtual {p3, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    return v0

    .line 487
    :pswitch_30
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 490
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_TrackGetLatency(Ljava/lang/String;)I

    move-result p1

    .line 491
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 471
    :pswitch_31
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 479
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 480
    invoke-virtual {p0, p1, p4, v1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_TrackCreate(Ljava/lang/String;III)I

    move-result p1

    .line 481
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 457
    :pswitch_32
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 464
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_TrackGetMinBuf(Ljava/lang/String;II)I

    move-result p1

    .line 465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 447
    :pswitch_33
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 450
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_GetEcho(Ljava/lang/String;)I

    move-result p1

    .line 451
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 435
    :pswitch_34
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 439
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 440
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_SetEcho(Ljava/lang/String;I)I

    move-result p1

    .line 441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 423
    :pswitch_35
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 427
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 428
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_GetVolume(Ljava/lang/String;I)I

    move-result p1

    .line 429
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 409
    :pswitch_36
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 416
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_SetVolume(Ljava/lang/String;II)I

    move-result p1

    .line 417
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 399
    :pswitch_37
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 402
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_GetMicPowerStatus(Ljava/lang/String;)I

    move-result p1

    .line 403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 389
    :pswitch_38
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 392
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_GetMicStatus(Ljava/lang/String;)I

    move-result p1

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 379
    :pswitch_39
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 382
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_GetHandShakeStatus(Ljava/lang/String;)I

    move-result p1

    .line 383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 367
    :pswitch_3a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 372
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_SetSignedToken(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 357
    :pswitch_3b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 360
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_GetToken(Ljava/lang/String;)I

    move-result p1

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 347
    :pswitch_3c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 350
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_Distroy(Ljava/lang/String;)I

    move-result p1

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 336
    :pswitch_3d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

    move-result-object p2

    .line 341
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_UnRegisterCallback(Ljava/lang/String;Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;)V

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 325
    :pswitch_3e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

    move-result-object p2

    .line 330
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_RegisterCallback(Ljava/lang/String;Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;)V

    .line 331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 309
    :pswitch_3f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 318
    invoke-virtual {p0, p1, p4, v1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->XMS_Create(Ljava/lang/String;ILjava/lang/String;Landroid/os/IBinder;)I

    move-result p1

    .line 319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 301
    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_3e
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
