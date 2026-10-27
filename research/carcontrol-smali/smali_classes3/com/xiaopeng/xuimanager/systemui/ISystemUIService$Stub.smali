.class public abstract Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;
.super Landroid/os/Binder;
.source "ISystemUIService.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_canDockEdit:I = 0x13

.field static final TRANSACTION_cancelSystemBar:I = 0xf

.field static final TRANSACTION_dismissMaskLayer:I = 0xb

.field static final TRANSACTION_enterDockEdit:I = 0x12

.field static final TRANSACTION_forceSetXpScreenOnEx:I = 0x22

.field static final TRANSACTION_getDockItems:I = 0x10

.field static final TRANSACTION_getPopPanelConfig:I = 0x8

.field static final TRANSACTION_getPopPanelContainer:I = 0x9

.field static final TRANSACTION_getScreenAngle:I = 0x23

.field static final TRANSACTION_getScreenState:I = 0x24

.field static final TRANSACTION_getShortcutAndComponents:I = 0x11

.field static final TRANSACTION_getSystemState:I = 0x1e

.field static final TRANSACTION_hideAllOsd:I = 0x6

.field static final TRANSACTION_hideOsd:I = 0x5

.field static final TRANSACTION_hidePopPanel:I = 0x3

.field static final TRANSACTION_isPopPanelShowing:I = 0x7

.field static final TRANSACTION_isSystemBarDark:I = 0x30

.field static final TRANSACTION_notifyServerEdit:I = 0x16

.field static final TRANSACTION_notifyServerItemAdd:I = 0x17

.field static final TRANSACTION_notifyUIReady:I = 0x1a

.field static final TRANSACTION_registerBarColorListener:I = 0x31

.field static final TRANSACTION_registerCarCheckListener:I = 0x18

.field static final TRANSACTION_registerDockListener:I = 0x14

.field static final TRANSACTION_registerSystemBarListener:I = 0xd

.field static final TRANSACTION_registerSystemStateListener:I = 0x1b

.field static final TRANSACTION_registerUIEventListener:I = 0x2e

.field static final TRANSACTION_removeScreenBrightnessListener:I = 0x26

.field static final TRANSACTION_requestSystemBarColor:I = 0x33

.field static final TRANSACTION_resetDock:I = 0x28

.field static final TRANSACTION_sendAppState:I = 0x1d

.field static final TRANSACTION_sendSysUIData:I = 0x2b

.field static final TRANSACTION_sendSysUIDataArray:I = 0x2a

.field static final TRANSACTION_sendUIEvent:I = 0x2d

.field static final TRANSACTION_setDockEditDisable:I = 0x27

.field static final TRANSACTION_setOsdViewEnable:I = 0x4

.field static final TRANSACTION_setScreenAngle:I = 0x21

.field static final TRANSACTION_setScreenBrightnessListener:I = 0x25

.field static final TRANSACTION_setScreenDisable:I = 0x29

.field static final TRANSACTION_setScreenState:I = 0x20

.field static final TRANSACTION_setStatusBarColor:I = 0x2c

.field static final TRANSACTION_showMaskLayer:I = 0xa

.field static final TRANSACTION_showOsd:I = 0x1

.field static final TRANSACTION_showPopPanel:I = 0x2

.field static final TRANSACTION_showSystemBar:I = 0xc

.field static final TRANSACTION_unRegisterBarColorListener:I = 0x32

.field static final TRANSACTION_unRegisterCarCheckListener:I = 0x19

.field static final TRANSACTION_unRegisterDockListener:I = 0x15

.field static final TRANSACTION_unRegisterSystemBarListener:I = 0xe

.field static final TRANSACTION_unRegisterSystemStateListener:I = 0x1c

.field static final TRANSACTION_unRegisterUIEventListener:I = 0x2f

.field static final TRANSACTION_updateDockOutsideInvalidRect:I = 0x1f


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 209
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 210
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 221
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 222
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    if-eqz v1, :cond_1

    .line 223
    check-cast v0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    return-object v0

    .line 225
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;
    .locals 1

    .line 2214
    sget-object v0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;)Z
    .locals 1

    .line 2204
    sget-object v0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 2208
    sput-object p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 2205
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

    const-string v1, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_11

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 884
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 868
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 870
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 872
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    .line 873
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/os/Bundle;

    .line 878
    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->requestSystemBarColor(ILandroid/os/Bundle;)V

    .line 879
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 859
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 861
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/systemui/systembar/IBarColorListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/systemui/systembar/IBarColorListener;

    move-result-object p1

    .line 862
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->unRegisterBarColorListener(Lcom/xiaopeng/xuimanager/systemui/systembar/IBarColorListener;)V

    .line 863
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 850
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/systemui/systembar/IBarColorListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/systemui/systembar/IBarColorListener;

    move-result-object p1

    .line 853
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->registerBarColorListener(Lcom/xiaopeng/xuimanager/systemui/systembar/IBarColorListener;)V

    .line 854
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 840
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 843
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->isSystemBarDark(I)Z

    move-result p1

    .line 844
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 829
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 831
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 833
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/xuimanager/systemui/uiserver/IUIEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/systemui/uiserver/IUIEventListener;

    move-result-object p2

    .line 834
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->unRegisterUIEventListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/uiserver/IUIEventListener;)V

    .line 835
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 818
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 820
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 822
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/xuimanager/systemui/uiserver/IUIEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/systemui/uiserver/IUIEventListener;

    move-result-object p2

    .line 823
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->registerUIEventListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/uiserver/IUIEventListener;)V

    .line 824
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 801
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 803
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 805
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 807
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1

    .line 808
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/os/Bundle;

    .line 813
    :cond_1
    invoke-virtual {p0, p1, p3, v2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->sendUIEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return v0

    .line 790
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 794
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    move v3, v0

    .line 795
    :cond_2
    invoke-virtual {p0, p1, v3}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->setStatusBarColor(IZ)V

    .line 796
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 771
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 775
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 777
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 778
    sget-object v1, Lcom/xiaopeng/xuimanager/systemui/systemstate/SysUIData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/xiaopeng/xuimanager/systemui/systemstate/SysUIData;

    .line 783
    :cond_3
    invoke-virtual {p0, p1, p4, v2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->sendSysUIData(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/systemstate/SysUIData;)I

    move-result p1

    .line 784
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 757
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 759
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 761
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 763
    sget-object v1, Lcom/xiaopeng/xuimanager/systemui/systemstate/SysUIData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 764
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->sendSysUIDataArray(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I

    move-result p1

    .line 765
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 743
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 745
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 747
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 749
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 750
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->setScreenDisable(IILjava/lang/String;)I

    move-result p1

    .line 751
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 727
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 729
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 731
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_4

    .line 732
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/os/Bundle;

    .line 737
    :cond_4
    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->resetDock(ILandroid/os/Bundle;)V

    .line 738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 709
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 713
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_5

    move v3, v0

    .line 715
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_6

    .line 716
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/os/Bundle;

    .line 721
    :cond_6
    invoke-virtual {p0, p1, v3, v2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->setDockEditDisable(IZLandroid/os/Bundle;)V

    .line 722
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 700
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener;

    move-result-object p1

    .line 703
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->removeScreenBrightnessListener(Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener;)V

    .line 704
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 691
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener;

    move-result-object p1

    .line 694
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->setScreenBrightnessListener(Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener;)V

    .line 695
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 681
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 684
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getScreenState(I)I

    move-result p1

    .line 685
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 671
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 674
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getScreenAngle(I)I

    move-result p1

    .line 675
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 661
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 664
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->forceSetXpScreenOnEx(I)I

    move-result p1

    .line 665
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 645
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 649
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 651
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    move v3, v0

    .line 653
    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 654
    invoke-virtual {p0, p1, p4, v3, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->setScreenAngle(IIZLjava/lang/String;)I

    move-result p1

    .line 655
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 629
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 631
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 633
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 635
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    move v3, v0

    .line 637
    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 638
    invoke-virtual {p0, p1, p4, v3, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->setScreenState(IIZLjava/lang/String;)I

    move-result p1

    .line 639
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 611
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 615
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 617
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 618
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/graphics/Rect;

    .line 623
    :cond_9
    invoke-virtual {p0, p1, p4, v2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->updateDockOutsideInvalidRect(ILjava/lang/String;Landroid/graphics/Rect;)V

    .line 624
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 601
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 604
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getSystemState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 605
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 589
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 593
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 594
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->sendAppState(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 595
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 577
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 581
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/xuimanager/systemui/systemstate/ISystemStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/systemui/systemstate/ISystemStateListener;

    move-result-object p2

    .line 582
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->unRegisterSystemStateListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/systemstate/ISystemStateListener;)I

    move-result p1

    .line 583
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 565
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 569
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/xuimanager/systemui/systemstate/ISystemStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/systemui/systemstate/ISystemStateListener;

    move-result-object p2

    .line 570
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->registerSystemStateListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/systemstate/ISystemStateListener;)I

    move-result p1

    .line 571
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 557
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->notifyUIReady()I

    move-result p1

    .line 559
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 545
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 549
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/xuimanager/systemui/carcheck/ICarCheckListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/systemui/carcheck/ICarCheckListener;

    move-result-object p2

    .line 550
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->unRegisterCarCheckListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/carcheck/ICarCheckListener;)I

    move-result p1

    .line 551
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 533
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 537
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/xuimanager/systemui/carcheck/ICarCheckListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/systemui/carcheck/ICarCheckListener;

    move-result-object p2

    .line 538
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->registerCarCheckListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/carcheck/ICarCheckListener;)I

    move-result p1

    .line 539
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 517
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_a

    .line 522
    sget-object p4, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;

    .line 527
    :cond_a
    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->notifyServerItemAdd(ILcom/xiaopeng/xuimanager/systemui/dock/DockItem;)V

    .line 528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 506
    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_b

    move v3, v0

    .line 511
    :cond_b
    invoke-virtual {p0, p1, v3}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->notifyServerEdit(IZ)V

    .line 512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 494
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;

    move-result-object p2

    .line 499
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->unRegisterDockListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;)I

    move-result p1

    .line 500
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 482
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;

    move-result-object p2

    .line 487
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->registerDockListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;)I

    move-result p1

    .line 488
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 472
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 475
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->canDockEdit(I)Z

    move-result p1

    .line 476
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 463
    :pswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 466
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->enterDockEdit(I)V

    .line 467
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 453
    :pswitch_22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 456
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getShortcutAndComponents(I)Ljava/util/List;

    move-result-object p1

    .line 457
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v0

    .line 443
    :pswitch_23
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 446
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDockItems(I)Ljava/util/List;

    move-result-object p1

    .line 447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v0

    .line 431
    :pswitch_24
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 436
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->cancelSystemBar(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 437
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 419
    :pswitch_25
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/xuimanager/systemui/systembar/ISystemBarListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/systemui/systembar/ISystemBarListener;

    move-result-object p2

    .line 424
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->unRegisterSystemBarListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/systembar/ISystemBarListener;)I

    move-result p1

    .line 425
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 407
    :pswitch_26
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/xuimanager/systemui/systembar/ISystemBarListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/systemui/systembar/ISystemBarListener;

    move-result-object p2

    .line 412
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->registerSystemBarListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/systembar/ISystemBarListener;)I

    move-result p1

    .line 413
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 388
    :pswitch_27
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    .line 395
    sget-object v1, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;

    .line 400
    :cond_c
    invoke-virtual {p0, p1, p4, v2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->showSystemBar(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;)I

    move-result p1

    .line 401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 376
    :pswitch_28
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/systemui/masklayer/IMaskLayerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/systemui/masklayer/IMaskLayerListener;

    move-result-object p1

    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 381
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->dismissMaskLayer(Lcom/xiaopeng/xuimanager/systemui/masklayer/IMaskLayerListener;I)I

    move-result p1

    .line 382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 362
    :pswitch_29
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/systemui/masklayer/IMaskLayerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/systemui/masklayer/IMaskLayerListener;

    move-result-object p1

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_d

    move v3, v0

    .line 368
    :cond_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 369
    invoke-virtual {p0, p1, v3, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->showMaskLayer(Lcom/xiaopeng/xuimanager/systemui/masklayer/IMaskLayerListener;ZI)I

    move-result p1

    .line 370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 348
    :pswitch_2a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getPopPanelContainer()Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;

    move-result-object p1

    .line 350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_e

    .line 352
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    invoke-virtual {p1, p3, v0}, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 356
    :cond_e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v0

    .line 334
    :pswitch_2b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getPopPanelConfig()Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;

    move-result-object p1

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_f

    .line 338
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    invoke-virtual {p1, p3, v0}, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 342
    :cond_f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v0

    .line 324
    :pswitch_2c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 327
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->isPopPanelShowing(I)Z

    move-result p1

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 314
    :pswitch_2d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 317
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->hideAllOsd(I)I

    move-result p1

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 302
    :pswitch_2e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/systemui/osd/IOsdListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/systemui/osd/IOsdListener;

    move-result-object p1

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 307
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->hideOsd(Lcom/xiaopeng/xuimanager/systemui/osd/IOsdListener;Ljava/lang/String;)I

    move-result p1

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 290
    :pswitch_2f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_10

    move v3, v0

    .line 295
    :cond_10
    invoke-virtual {p0, p1, v3}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->setOsdViewEnable(IZ)I

    move-result p1

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 276
    :pswitch_30
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/systemui/osd/IPopPanelListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/systemui/osd/IPopPanelListener;

    move-result-object p1

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 283
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->hidePopPanel(Lcom/xiaopeng/xuimanager/systemui/osd/IPopPanelListener;II)I

    move-result p1

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 260
    :pswitch_31
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/systemui/osd/IPopPanelListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/systemui/osd/IPopPanelListener;

    move-result-object p1

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 269
    invoke-virtual {p0, p1, p4, v1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->showPopPanel(Lcom/xiaopeng/xuimanager/systemui/osd/IPopPanelListener;III)I

    move-result p1

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 246
    :pswitch_32
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/systemui/osd/IOsdListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/systemui/osd/IOsdListener;

    move-result-object p1

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 253
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->showOsd(Lcom/xiaopeng/xuimanager/systemui/osd/IOsdListener;ILjava/lang/String;)I

    move-result p1

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 238
    :cond_11
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
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
