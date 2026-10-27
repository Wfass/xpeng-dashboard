.class public abstract Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;
.super Landroid/os/Binder;
.source "ISmart.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/smart/ISmart;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/smart/ISmart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_enableCarSpeedVolume:I = 0x32

.field static final TRANSACTION_getAlarmFromAzimuthOrIcm:I = 0x8

.field static final TRANSACTION_getAlarmVolume:I = 0x1d

.field static final TRANSACTION_getBootSoundEffect:I = 0x28

.field static final TRANSACTION_getBossKeyForCustomer:I = 0xe

.field static final TRANSACTION_getFftLLUEnable:I = 0x2e

.field static final TRANSACTION_getKeyBoardTouchPrompt:I = 0xa

.field static final TRANSACTION_getLangLightEffectEnable:I = 0x1a

.field static final TRANSACTION_getLangLightEffectNameList:I = 0x11

.field static final TRANSACTION_getLeftLongTouchPadKeyForCustomer:I = 0x49

.field static final TRANSACTION_getLeftTouchPadKeyForCustomer:I = 0x45

.field static final TRANSACTION_getLightEffect:I = 0x29

.field static final TRANSACTION_getLluSleepMode:I = 0x18

.field static final TRANSACTION_getLluWakeWaitMode:I = 0x16

.field static final TRANSACTION_getRightLongTouchPadKeyForCustomer:I = 0x4b

.field static final TRANSACTION_getRightSatelliteKeyForCustomer:I = 0x4d

.field static final TRANSACTION_getRightTouchPadKeyForCustomer:I = 0x47

.field static final TRANSACTION_getRunnningLluEffectName:I = 0x34

.field static final TRANSACTION_getSayHiEffect:I = 0x26

.field static final TRANSACTION_getSayHiEnable:I = 0x24

.field static final TRANSACTION_getSpeechStatus:I = 0x3b

.field static final TRANSACTION_getTouchRotationDirection:I = 0x10

.field static final TRANSACTION_getVolumeDownInReverseMode:I = 0x6

.field static final TRANSACTION_getVolumeDownWithDoorOpen:I = 0x4

.field static final TRANSACTION_getXKeyForCustomer:I = 0xc

.field static final TRANSACTION_isLightDanceAvailable:I = 0x36

.field static final TRANSACTION_isLightDancing:I = 0x31

.field static final TRANSACTION_registerCommonListener:I = 0x37

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_setAlarmFromAzimuthOrIcm:I = 0x7

.field static final TRANSACTION_setAlarmVolume:I = 0x1c

.field static final TRANSACTION_setBootSoundEffect:I = 0x27

.field static final TRANSACTION_setBossKeyForCustomer:I = 0xd

.field static final TRANSACTION_setFftLLUEnable:I = 0x2d

.field static final TRANSACTION_setKeyBoardTouchPrompt:I = 0x9

.field static final TRANSACTION_setLangLightEffectEnable:I = 0x19

.field static final TRANSACTION_setLangLightEffectMode:I = 0x12

.field static final TRANSACTION_setLangLightEffectWithMode:I = 0x35

.field static final TRANSACTION_setLangLightMusicEffect:I = 0x22

.field static final TRANSACTION_setLeftLongTouchPadKeyForCustomer:I = 0x48

.field static final TRANSACTION_setLeftTouchPadKeyForCustomer:I = 0x44

.field static final TRANSACTION_setLightEffect:I = 0x2a

.field static final TRANSACTION_setLightEffectAndMusic:I = 0x2b

.field static final TRANSACTION_setLluSleepMode:I = 0x17

.field static final TRANSACTION_setLluWakeWaitMode:I = 0x15

.field static final TRANSACTION_setMusicDelayTimeForDebug:I = 0x21

.field static final TRANSACTION_setMusicSpectrumToLangLight:I = 0x1b

.field static final TRANSACTION_setMusicStartTickNumForDebug:I = 0x1f

.field static final TRANSACTION_setMusicStopTickNumForDebug:I = 0x20

.field static final TRANSACTION_setMusicTableForDebug:I = 0x1e

.field static final TRANSACTION_setPause:I = 0x13

.field static final TRANSACTION_setRightLongTouchPadKeyForCustomer:I = 0x4a

.field static final TRANSACTION_setRightSatelliteKeyForCustomer:I = 0x4c

.field static final TRANSACTION_setRightTouchPadKeyForCustomer:I = 0x46

.field static final TRANSACTION_setSayHiEffect:I = 0x25

.field static final TRANSACTION_setSayHiEnable:I = 0x23

.field static final TRANSACTION_setSpeedVolumeMode:I = 0x33

.field static final TRANSACTION_setTouchRotationDirection:I = 0xf

.field static final TRANSACTION_setVolumeDownInReverseMode:I = 0x5

.field static final TRANSACTION_setVolumeDownWithDoorOpen:I = 0x3

.field static final TRANSACTION_setXKeyForCustomer:I = 0xb

.field static final TRANSACTION_speakByImportant:I = 0x3d

.field static final TRANSACTION_speakByInstant:I = 0x3f

.field static final TRANSACTION_speakByNormal:I = 0x3c

.field static final TRANSACTION_speakByUrgent:I = 0x3e

.field static final TRANSACTION_startAiLluMode:I = 0x39

.field static final TRANSACTION_startLightDancing:I = 0x2f

.field static final TRANSACTION_startMicRecordMode:I = 0x40

.field static final TRANSACTION_stopAiLluMode:I = 0x3a

.field static final TRANSACTION_stopAllSpeech:I = 0x43

.field static final TRANSACTION_stopLightDancing:I = 0x30

.field static final TRANSACTION_stopLightEffectShow:I = 0x2c

.field static final TRANSACTION_stopMicRecordMode:I = 0x41

.field static final TRANSACTION_stopSpeech:I = 0x42

.field static final TRANSACTION_unregisterCommonListener:I = 0x38

.field static final TRANSACTION_unregisterListener:I = 0x2

.field static final TRANSACTION_updateEffectFiles:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 288
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 289
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/smart/ISmart;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 300
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 301
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/smart/ISmart;

    if-eqz v1, :cond_1

    .line 302
    check-cast v0, Lcom/xiaopeng/xuimanager/smart/ISmart;

    return-object v0

    .line 304
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;
    .locals 1

    .line 2786
    sget-object v0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/smart/ISmart;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/smart/ISmart;)Z
    .locals 1

    .line 2776
    sget-object v0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/smart/ISmart;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 2780
    sput-object p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/smart/ISmart;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 2777
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

    const-string v1, "com.xiaopeng.xuimanager.smart.ISmart"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_a

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1010
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 1002
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getRightSatelliteKeyForCustomer()I

    move-result p1

    .line 1004
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1005
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 993
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 995
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 996
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->setRightSatelliteKeyForCustomer(I)V

    .line 997
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 985
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 986
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getRightLongTouchPadKeyForCustomer()I

    move-result p1

    .line 987
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 988
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 976
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 978
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 979
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->setRightLongTouchPadKeyForCustomer(I)V

    .line 980
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 968
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 969
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getLeftLongTouchPadKeyForCustomer()I

    move-result p1

    .line 970
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 971
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 959
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 961
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 962
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->setLeftLongTouchPadKeyForCustomer(I)V

    .line 963
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 951
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 952
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getRightTouchPadKeyForCustomer()I

    move-result p1

    .line 953
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 942
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 944
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 945
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->setRightTouchPadKeyForCustomer(I)V

    .line 946
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 934
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 935
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getLeftTouchPadKeyForCustomer()I

    move-result p1

    .line 936
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 937
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 925
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 927
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 928
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->setLeftTouchPadKeyForCustomer(I)V

    .line 929
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 918
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 919
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->stopAllSpeech()V

    .line 920
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 909
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 911
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 912
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->stopSpeech(Ljava/lang/String;)V

    .line 913
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 901
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 902
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->stopMicRecordMode()I

    move-result p1

    .line 903
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 904
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 891
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 893
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 894
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->startMicRecordMode(I)I

    move-result p1

    .line 895
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 879
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 881
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 883
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    move v2, v0

    .line 884
    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->speakByInstant(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 885
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 869
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 871
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 872
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->speakByUrgent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 873
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 859
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 861
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 862
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->speakByImportant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 863
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 864
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 849
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 851
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 852
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->speakByNormal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 853
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 841
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getSpeechStatus()Z

    move-result p1

    .line 843
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 834
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->stopAiLluMode()V

    .line 836
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 825
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 827
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 828
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->startAiLluMode(I)V

    .line 829
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 816
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener;

    move-result-object p1

    .line 819
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->unregisterCommonListener(Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener;)V

    .line 820
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 807
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 809
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener;

    move-result-object p1

    .line 810
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->registerCommonListener(Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener;)V

    .line 811
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 799
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 800
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->isLightDanceAvailable()I

    move-result p1

    .line 801
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 786
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 790
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 792
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 793
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->setLangLightEffectWithMode(Ljava/lang/String;II)V

    .line 794
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 778
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 779
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getRunnningLluEffectName()Ljava/lang/String;

    move-result-object p1

    .line 780
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 769
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 771
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 772
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->setSpeedVolumeMode(I)V

    .line 773
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 760
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v2, v0

    .line 763
    :cond_1
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->enableCarSpeedVolume(Z)V

    .line 764
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 752
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 753
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->isLightDancing()Z

    move-result p1

    .line 754
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 744
    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 745
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->stopLightDancing()I

    move-result p1

    .line 746
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 747
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 732
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 736
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 737
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->startLightDancing(Ljava/lang/String;I)I

    move-result p1

    .line 738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 724
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getFftLLUEnable()Z

    move-result p1

    .line 726
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 715
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 717
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v2, v0

    .line 718
    :cond_2
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->setFftLLUEnable(Z)V

    .line 719
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 708
    :pswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->stopLightEffectShow()V

    .line 710
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 695
    :pswitch_22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 699
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 701
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 702
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->setLightEffectAndMusic(III)V

    .line 703
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 684
    :pswitch_23
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 688
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 689
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->setLightEffect(II)V

    .line 690
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 674
    :pswitch_24
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 677
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getLightEffect(I)I

    move-result p1

    .line 678
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 666
    :pswitch_25
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getBootSoundEffect()I

    move-result p1

    .line 668
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 657
    :pswitch_26
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 660
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->setBootSoundEffect(I)V

    .line 661
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 649
    :pswitch_27
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getSayHiEffect()I

    move-result p1

    .line 651
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 640
    :pswitch_28
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 643
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->setSayHiEffect(I)V

    .line 644
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 632
    :pswitch_29
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getSayHiEnable()Z

    move-result p1

    .line 634
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 623
    :pswitch_2a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v2, v0

    .line 626
    :cond_3
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->setSayHiEnable(Z)V

    .line 627
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 614
    :pswitch_2b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 617
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->setLangLightMusicEffect(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 605
    :pswitch_2c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 608
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->setMusicDelayTimeForDebug(I)V

    .line 609
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 596
    :pswitch_2d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 599
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->setMusicStopTickNumForDebug(I)V

    .line 600
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 587
    :pswitch_2e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 590
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->setMusicStartTickNumForDebug(I)V

    .line 591
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 578
    :pswitch_2f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 581
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->setMusicTableForDebug(I)V

    .line 582
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 570
    :pswitch_30
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getAlarmVolume()I

    move-result p1

    .line 572
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 561
    :pswitch_31
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 564
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->setAlarmVolume(I)V

    .line 565
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 552
    :pswitch_32
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 555
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->setMusicSpectrumToLangLight(I)V

    .line 556
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 544
    :pswitch_33
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getLangLightEffectEnable()Z

    move-result p1

    .line 546
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 535
    :pswitch_34
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    move v2, v0

    .line 538
    :cond_4
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->setLangLightEffectEnable(Z)V

    .line 539
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 527
    :pswitch_35
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getLluSleepMode()I

    move-result p1

    .line 529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 518
    :pswitch_36
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 521
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->setLluSleepMode(I)V

    .line 522
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 510
    :pswitch_37
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getLluWakeWaitMode()I

    move-result p1

    .line 512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 501
    :pswitch_38
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 504
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->setLluWakeWaitMode(I)V

    .line 505
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 492
    :pswitch_39
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 495
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->updateEffectFiles(I)V

    .line 496
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 483
    :pswitch_3a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    move v2, v0

    .line 486
    :cond_5
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->setPause(Z)V

    .line 487
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 472
    :pswitch_3b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 477
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->setLangLightEffectMode(Ljava/lang/String;I)V

    .line 478
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 462
    :pswitch_3c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 465
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getLangLightEffectNameList(I)Ljava/util/List;

    move-result-object p1

    .line 466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v0

    .line 454
    :pswitch_3d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getTouchRotationDirection()I

    move-result p1

    .line 456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 445
    :pswitch_3e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 448
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->setTouchRotationDirection(I)V

    .line 449
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 437
    :pswitch_3f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getBossKeyForCustomer()I

    move-result p1

    .line 439
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 428
    :pswitch_40
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 431
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->setBossKeyForCustomer(I)V

    .line 432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 420
    :pswitch_41
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getXKeyForCustomer()I

    move-result p1

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 411
    :pswitch_42
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 414
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->setXKeyForCustomer(I)V

    .line 415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 403
    :pswitch_43
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getKeyBoardTouchPrompt()Z

    move-result p1

    .line 405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 394
    :pswitch_44
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    move v2, v0

    .line 397
    :cond_6
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->setKeyBoardTouchPrompt(Z)V

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 386
    :pswitch_45
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getAlarmFromAzimuthOrIcm()Z

    move-result p1

    .line 388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 377
    :pswitch_46
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    move v2, v0

    .line 380
    :cond_7
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->setAlarmFromAzimuthOrIcm(Z)V

    .line 381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 369
    :pswitch_47
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getVolumeDownInReverseMode()Z

    move-result p1

    .line 371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 360
    :pswitch_48
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    move v2, v0

    .line 363
    :cond_8
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->setVolumeDownInReverseMode(Z)V

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 352
    :pswitch_49
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getVolumeDownWithDoorOpen()Z

    move-result p1

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 343
    :pswitch_4a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9

    move v2, v0

    .line 346
    :cond_9
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->setVolumeDownWithDoorOpen(Z)V

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 334
    :pswitch_4b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;

    move-result-object p1

    .line 337
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->unregisterListener(Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;)V

    .line 338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 325
    :pswitch_4c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;

    move-result-object p1

    .line 328
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->registerListener(Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;)V

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 317
    :cond_a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
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
