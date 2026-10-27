.class public abstract Lcom/nforetek/bt/aidl/UiCommand$Stub;
.super Landroid/os/Binder;
.source "UiCommand.java"

# interfaces
.implements Lcom/nforetek/bt/aidl/UiCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nforetek/bt/aidl/UiCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.nforetek.bt.aidl.UiCommand"

.field static final TRANSACTION_cancelBtDiscovery:I = 0x46

.field static final TRANSACTION_connectDevice:I = 0xe6

.field static final TRANSACTION_disConnectDevice:I = 0xe5

.field static final TRANSACTION_enableDevice:I = 0xe1

.field static final TRANSACTION_getA2dpConnectedAddress:I = 0xf

.field static final TRANSACTION_getA2dpConnectionState:I = 0xd

.field static final TRANSACTION_getA2dpStreamType:I = 0x16

.field static final TRANSACTION_getAvrcpConnectedAddress:I = 0x1b

.field static final TRANSACTION_getAvrcpConnectionState:I = 0x19

.field static final TRANSACTION_getBtAutoConnectCondition:I = 0x59

.field static final TRANSACTION_getBtAutoConnectPeriod:I = 0x5a

.field static final TRANSACTION_getBtAutoConnectState:I = 0x5b

.field static final TRANSACTION_getBtAutoConnectingAddress:I = 0x5c

.field static final TRANSACTION_getBtLocalAddress:I = 0x4c

.field static final TRANSACTION_getBtLocalName:I = 0x4a

.field static final TRANSACTION_getBtRemoteDeviceName:I = 0x4b

.field static final TRANSACTION_getBtRemoteUuids:I = 0x55

.field static final TRANSACTION_getBtRoleMode:I = 0x57

.field static final TRANSACTION_getBtState:I = 0x4f

.field static final TRANSACTION_getConnectedDevice:I = 0xe9

.field static final TRANSACTION_getConnectionState:I = 0xe8

.field static final TRANSACTION_getGattAddedGattCharacteristicUuidList:I = 0xc7

.field static final TRANSACTION_getGattAddedGattDescriptorUuidList:I = 0xc8

.field static final TRANSACTION_getGattAddedGattServiceUuidList:I = 0xc6

.field static final TRANSACTION_getGattServerConnectionState:I = 0xbb

.field static final TRANSACTION_getHfpAudioConnectionState:I = 0x62

.field static final TRANSACTION_getHfpCallList:I = 0x66

.field static final TRANSACTION_getHfpConnectedAddress:I = 0x61

.field static final TRANSACTION_getHfpConnectionState:I = 0x5f

.field static final TRANSACTION_getHfpRemoteBatteryIndicator:I = 0x68

.field static final TRANSACTION_getHfpRemoteNetworkOperator:I = 0x74

.field static final TRANSACTION_getHfpRemoteSignalStrength:I = 0x65

.field static final TRANSACTION_getHfpRemoteSubscriberNumber:I = 0x75

.field static final TRANSACTION_getHidConnectedAddress:I = 0x99

.field static final TRANSACTION_getHidConnectionState:I = 0x97

.field static final TRANSACTION_getLocalUsbConnectionState:I = 0xdc

.field static final TRANSACTION_getMapCurrentState:I = 0xa9

.field static final TRANSACTION_getMapRegisterState:I = 0xaa

.field static final TRANSACTION_getNfServiceVersionName:I = 0x42

.field static final TRANSACTION_getOppFilePath:I = 0xb2

.field static final TRANSACTION_getPbapConnectionState:I = 0x7e

.field static final TRANSACTION_getPbapDownloadingAddress:I = 0x80

.field static final TRANSACTION_getProfileConnectionState:I = 0xdd

.field static final TRANSACTION_getTargetAddress:I = 0xb6

.field static final TRANSACTION_getUiServiceVersionName:I = 0x1

.field static final TRANSACTION_getUsbAddress:I = 0xda

.field static final TRANSACTION_getUsbBtLocalName:I = 0xd8

.field static final TRANSACTION_getUsbConnectedDevice:I = 0xdb

.field static final TRANSACTION_getUsbConnectionState:I = 0xd5

.field static final TRANSACTION_isA2dpConnected:I = 0xe

.field static final TRANSACTION_isA2dpServiceReady:I = 0x3

.field static final TRANSACTION_isAvrcp13Supported:I = 0x1e

.field static final TRANSACTION_isAvrcp14BrowsingChannelEstablished:I = 0x36

.field static final TRANSACTION_isAvrcp14Supported:I = 0x1f

.field static final TRANSACTION_isAvrcpConnected:I = 0x1a

.field static final TRANSACTION_isAvrcpServiceReady:I = 0x2

.field static final TRANSACTION_isBluetoothServiceReady:I = 0x5

.field static final TRANSACTION_isBtAutoConnectEnable:I = 0x52

.field static final TRANSACTION_isBtDiscoverable:I = 0x51

.field static final TRANSACTION_isBtDiscovering:I = 0x50

.field static final TRANSACTION_isBtEnabled:I = 0x4e

.field static final TRANSACTION_isDeviceEnabled:I = 0xe0

.field static final TRANSACTION_isDiscovering:I = 0xe2

.field static final TRANSACTION_isGattServiceReady:I = 0xb8

.field static final TRANSACTION_isHfpConnected:I = 0x60

.field static final TRANSACTION_isHfpInBandRingtoneSupport:I = 0x7b

.field static final TRANSACTION_isHfpMicMute:I = 0x79

.field static final TRANSACTION_isHfpRemoteOnRoaming:I = 0x67

.field static final TRANSACTION_isHfpRemoteTelecomServiceOn:I = 0x69

.field static final TRANSACTION_isHfpRemoteVoiceDialOn:I = 0x6a

.field static final TRANSACTION_isHfpServiceReady:I = 0x6

.field static final TRANSACTION_isHidConnected:I = 0x98

.field static final TRANSACTION_isHidServiceReady:I = 0x7

.field static final TRANSACTION_isMapNotificationRegistered:I = 0xa4

.field static final TRANSACTION_isMapServiceReady:I = 0xa

.field static final TRANSACTION_isOppServiceReady:I = 0x9

.field static final TRANSACTION_isPbapDownloading:I = 0x7f

.field static final TRANSACTION_isPbapServiceReady:I = 0x8

.field static final TRANSACTION_isSppConnected:I = 0x93

.field static final TRANSACTION_isSppServiceReady:I = 0x4

.field static final TRANSACTION_isUsbA2dpConnected:I = 0xd4

.field static final TRANSACTION_isUsbAvrcpConnected:I = 0xd6

.field static final TRANSACTION_isUsbDiscovering:I = 0xd2

.field static final TRANSACTION_isUsbEnabled:I = 0xd1

.field static final TRANSACTION_isUsbHfpConnected:I = 0xd3

.field static final TRANSACTION_muteHfpMic:I = 0x7a

.field static final TRANSACTION_pauseA2dpRender:I = 0x12

.field static final TRANSACTION_pauseHfpRender:I = 0x77

.field static final TRANSACTION_registerA2dpCallback:I = 0xb

.field static final TRANSACTION_registerAvrcpCallback:I = 0x17

.field static final TRANSACTION_registerBtCallback:I = 0x40

.field static final TRANSACTION_registerGattServerCallback:I = 0xb9

.field static final TRANSACTION_registerHfpCallback:I = 0x5d

.field static final TRANSACTION_registerHidCallback:I = 0x95

.field static final TRANSACTION_registerMapCallback:I = 0x9e

.field static final TRANSACTION_registerOppCallback:I = 0xaf

.field static final TRANSACTION_registerPbapCallback:I = 0x7c

.field static final TRANSACTION_registerSppCallback:I = 0x8e

.field static final TRANSACTION_registerUsbCallback:I = 0xc9

.field static final TRANSACTION_reqA2dpConnect:I = 0x10

.field static final TRANSACTION_reqA2dpDisconnect:I = 0x11

.field static final TRANSACTION_reqAvrcp13GetCapabilitiesSupportEvent:I = 0x2b

.field static final TRANSACTION_reqAvrcp13GetElementAttributesPlaying:I = 0x30

.field static final TRANSACTION_reqAvrcp13GetPlayStatus:I = 0x31

.field static final TRANSACTION_reqAvrcp13GetPlayerSettingAttributesList:I = 0x2c

.field static final TRANSACTION_reqAvrcp13GetPlayerSettingCurrentValues:I = 0x2e

.field static final TRANSACTION_reqAvrcp13GetPlayerSettingValuesList:I = 0x2d

.field static final TRANSACTION_reqAvrcp13NextGroup:I = 0x34

.field static final TRANSACTION_reqAvrcp13PreviousGroup:I = 0x35

.field static final TRANSACTION_reqAvrcp13SetPlayerSettingValue:I = 0x2f

.field static final TRANSACTION_reqAvrcp14AddToNowPlaying:I = 0x3e

.field static final TRANSACTION_reqAvrcp14ChangePath:I = 0x3a

.field static final TRANSACTION_reqAvrcp14GetFolderItems:I = 0x39

.field static final TRANSACTION_reqAvrcp14GetItemAttributes:I = 0x3b

.field static final TRANSACTION_reqAvrcp14PlaySelectedItem:I = 0x3c

.field static final TRANSACTION_reqAvrcp14Search:I = 0x3d

.field static final TRANSACTION_reqAvrcp14SetAbsoluteVolume:I = 0x3f

.field static final TRANSACTION_reqAvrcp14SetAddressedPlayer:I = 0x37

.field static final TRANSACTION_reqAvrcp14SetBrowsedPlayer:I = 0x38

.field static final TRANSACTION_reqAvrcpBackward:I = 0x24

.field static final TRANSACTION_reqAvrcpConnect:I = 0x1c

.field static final TRANSACTION_reqAvrcpDisconnect:I = 0x1d

.field static final TRANSACTION_reqAvrcpForward:I = 0x23

.field static final TRANSACTION_reqAvrcpPause:I = 0x22

.field static final TRANSACTION_reqAvrcpPlay:I = 0x20

.field static final TRANSACTION_reqAvrcpRegisterEventWatcher:I = 0x32

.field static final TRANSACTION_reqAvrcpStartFastForward:I = 0x27

.field static final TRANSACTION_reqAvrcpStartRewind:I = 0x29

.field static final TRANSACTION_reqAvrcpStop:I = 0x21

.field static final TRANSACTION_reqAvrcpStopFastForward:I = 0x28

.field static final TRANSACTION_reqAvrcpStopRewind:I = 0x2a

.field static final TRANSACTION_reqAvrcpUnregisterEventWatcher:I = 0x33

.field static final TRANSACTION_reqAvrcpUpdateSongStatus:I = 0xb7

.field static final TRANSACTION_reqAvrcpVolumeDown:I = 0x26

.field static final TRANSACTION_reqAvrcpVolumeUp:I = 0x25

.field static final TRANSACTION_reqBtConnectHfpA2dp:I = 0x53

.field static final TRANSACTION_reqBtDisconnectAll:I = 0x54

.field static final TRANSACTION_reqBtPair:I = 0x47

.field static final TRANSACTION_reqBtPairedDevices:I = 0x49

.field static final TRANSACTION_reqBtUnpair:I = 0x48

.field static final TRANSACTION_reqGattServerAddCharacteristic:I = 0xbe

.field static final TRANSACTION_reqGattServerAddDescriptor:I = 0xbf

.field static final TRANSACTION_reqGattServerBeginServiceDeclaration:I = 0xbd

.field static final TRANSACTION_reqGattServerClearServices:I = 0xc2

.field static final TRANSACTION_reqGattServerDisconnect:I = 0xbc

.field static final TRANSACTION_reqGattServerEndServiceDeclaration:I = 0xc0

.field static final TRANSACTION_reqGattServerListen:I = 0xc3

.field static final TRANSACTION_reqGattServerRemoveService:I = 0xc1

.field static final TRANSACTION_reqGattServerSendNotification:I = 0xc5

.field static final TRANSACTION_reqGattServerSendResponse:I = 0xc4

.field static final TRANSACTION_reqHfpAnswerCall:I = 0x6e

.field static final TRANSACTION_reqHfpAudioTransferToCarkit:I = 0x72

.field static final TRANSACTION_reqHfpAudioTransferToPhone:I = 0x73

.field static final TRANSACTION_reqHfpConnect:I = 0x63

.field static final TRANSACTION_reqHfpDialCall:I = 0x6b

.field static final TRANSACTION_reqHfpDisconnect:I = 0x64

.field static final TRANSACTION_reqHfpMemoryDial:I = 0x6d

.field static final TRANSACTION_reqHfpReDial:I = 0x6c

.field static final TRANSACTION_reqHfpRejectIncomingCall:I = 0x6f

.field static final TRANSACTION_reqHfpSendDtmf:I = 0x71

.field static final TRANSACTION_reqHfpTerminateCurrentCall:I = 0x70

.field static final TRANSACTION_reqHfpVoiceDial:I = 0x76

.field static final TRANSACTION_reqHidConnect:I = 0x9a

.field static final TRANSACTION_reqHidDisconnect:I = 0x9b

.field static final TRANSACTION_reqMapChangeReadStatus:I = 0xad

.field static final TRANSACTION_reqMapCleanDatabase:I = 0xa8

.field static final TRANSACTION_reqMapDatabaseAvailable:I = 0xa6

.field static final TRANSACTION_reqMapDeleteDatabaseByAddress:I = 0xa7

.field static final TRANSACTION_reqMapDeleteMessage:I = 0xac

.field static final TRANSACTION_reqMapDownloadInterrupt:I = 0xa5

.field static final TRANSACTION_reqMapDownloadMessage:I = 0xa1

.field static final TRANSACTION_reqMapDownloadSingleMessage:I = 0xa0

.field static final TRANSACTION_reqMapRegisterNotification:I = 0xa2

.field static final TRANSACTION_reqMapSendMessage:I = 0xab

.field static final TRANSACTION_reqMapUnregisterNotification:I = 0xa3

.field static final TRANSACTION_reqOppAcceptReceiveFile:I = 0xb3

.field static final TRANSACTION_reqOppInterruptReceiveFile:I = 0xb4

.field static final TRANSACTION_reqPbapCleanDatabase:I = 0x8b

.field static final TRANSACTION_reqPbapDatabaseAvailable:I = 0x89

.field static final TRANSACTION_reqPbapDatabaseQueryNameByNumber:I = 0x87

.field static final TRANSACTION_reqPbapDatabaseQueryNameByPartialNumber:I = 0x88

.field static final TRANSACTION_reqPbapDeleteDatabaseByAddress:I = 0x8a

.field static final TRANSACTION_reqPbapDownload:I = 0x81

.field static final TRANSACTION_reqPbapDownloadInterrupt:I = 0x8c

.field static final TRANSACTION_reqPbapDownloadRange:I = 0x82

.field static final TRANSACTION_reqPbapDownloadRangeToContactsProvider:I = 0x86

.field static final TRANSACTION_reqPbapDownloadRangeToDatabase:I = 0x84

.field static final TRANSACTION_reqPbapDownloadToContactsProvider:I = 0x85

.field static final TRANSACTION_reqPbapDownloadToDatabase:I = 0x83

.field static final TRANSACTION_reqSendHidMouseCommand:I = 0x9c

.field static final TRANSACTION_reqSendHidVirtualKeyCommand:I = 0x9d

.field static final TRANSACTION_reqSppConnect:I = 0x90

.field static final TRANSACTION_reqSppConnectedDeviceAddressList:I = 0x92

.field static final TRANSACTION_reqSppDisconnect:I = 0x91

.field static final TRANSACTION_reqSppSendData:I = 0x94

.field static final TRANSACTION_reqUsbBtPairedDevices:I = 0xd7

.field static final TRANSACTION_reqXpBtPairedDevices:I = 0xe7

.field static final TRANSACTION_setA2dpLocalVolume:I = 0x14

.field static final TRANSACTION_setA2dpStreamType:I = 0x15

.field static final TRANSACTION_setBtAutoConnect:I = 0x58

.field static final TRANSACTION_setBtDiscoverableTimeout:I = 0x44

.field static final TRANSACTION_setBtEnable:I = 0x43

.field static final TRANSACTION_setBtLocalName:I = 0x4d

.field static final TRANSACTION_setMapDownloadNotify:I = 0xae

.field static final TRANSACTION_setOppFilePath:I = 0xb1

.field static final TRANSACTION_setPbapDownloadNotify:I = 0x8d

.field static final TRANSACTION_setTargetAddress:I = 0xb5

.field static final TRANSACTION_setUsbBtLocalName:I = 0xd9

.field static final TRANSACTION_setUsbEnabled:I = 0xd0

.field static final TRANSACTION_startA2dpRender:I = 0x13

.field static final TRANSACTION_startBtDiscovery:I = 0x45

.field static final TRANSACTION_startHfpRender:I = 0x78

.field static final TRANSACTION_startSearch:I = 0xdf

.field static final TRANSACTION_stopSearch:I = 0xe4

.field static final TRANSACTION_switchBtRoleMode:I = 0x56

.field static final TRANSACTION_unpair:I = 0xe3

.field static final TRANSACTION_unregisterA2dpCallback:I = 0xc

.field static final TRANSACTION_unregisterAvrcpCallback:I = 0x18

.field static final TRANSACTION_unregisterBtCallback:I = 0x41

.field static final TRANSACTION_unregisterGattServerCallback:I = 0xba

.field static final TRANSACTION_unregisterHfpCallback:I = 0x5e

.field static final TRANSACTION_unregisterHidCallback:I = 0x96

.field static final TRANSACTION_unregisterMapCallback:I = 0x9f

.field static final TRANSACTION_unregisterOppCallback:I = 0xb0

.field static final TRANSACTION_unregisterPbapCallback:I = 0x7d

.field static final TRANSACTION_unregisterSppCallback:I = 0x8f

.field static final TRANSACTION_unregisterUsbCallback:I = 0xca

.field static final TRANSACTION_usbConnect:I = 0xcd

.field static final TRANSACTION_usbDisConnect:I = 0xce

.field static final TRANSACTION_usbDisConnectDevice:I = 0xde

.field static final TRANSACTION_usbReqUnpair:I = 0xcf

.field static final TRANSACTION_usbSearch:I = 0xcb

.field static final TRANSACTION_usbStopSearch:I = 0xcc


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {p0, p0, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/UiCommand;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 39
    if-nez p0, :cond_0

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_0
    const-string v0, "com.nforetek.bt.aidl.UiCommand"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v1, :cond_1

    .line 44
    move-object v1, v0

    check-cast v1, Lcom/nforetek/bt/aidl/UiCommand;

    return-object v1

    .line 46
    :cond_1
    new-instance v1, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 50
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 29
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p3

    .line 54
    const-string v11, "com.nforetek.bt.aidl.UiCommand"

    .line 55
    .local v11, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/16 v16, 0x1

    if-eq v14, v0, :cond_14

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v14, :pswitch_data_0

    .line 2368
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 2358
    :pswitch_0
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2361
    .local v0, "_arg0":I
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getConnectedDevice(I)Ljava/lang/String;

    move-result-object v1

    .line 2362
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2363
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2364
    return v16

    .line 2346
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2350
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2351
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getConnectionState(ILjava/lang/String;)I

    move-result v2

    .line 2352
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2353
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2354
    return v16

    .line 2336
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_2
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2339
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqXpBtPairedDevices(I)Ljava/util/List;

    move-result-object v1

    .line 2340
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/nforetek/bt/aidl/XpBluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2341
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2342
    return v16

    .line 2324
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/nforetek/bt/aidl/XpBluetoothDevice;>;"
    :pswitch_3
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2328
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2329
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->connectDevice(ILjava/lang/String;)Z

    move-result v2

    .line 2330
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2331
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2332
    return v16

    .line 2312
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_4
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2316
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2317
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->disConnectDevice(ILjava/lang/String;)Z

    move-result v2

    .line 2318
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2319
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2320
    return v16

    .line 2302
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_5
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2305
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->stopSearch(I)Z

    move-result v1

    .line 2306
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2307
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2308
    return v16

    .line 2290
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_6
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2294
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2295
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->unpair(ILjava/lang/String;)Z

    move-result v2

    .line 2296
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2297
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2298
    return v16

    .line 2280
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_7
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2283
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isDiscovering(I)Z

    move-result v1

    .line 2284
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2285
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2286
    return v16

    .line 2268
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_8
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2272
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move/from16 v1, v16

    nop

    .line 2273
    .local v1, "_arg1":Z
    :cond_0
    invoke-virtual {v13, v0, v1}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->enableDevice(IZ)Z

    move-result v2

    .line 2274
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2275
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2276
    return v16

    .line 2258
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_9
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2261
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isDeviceEnabled(I)Z

    move-result v1

    .line 2262
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2263
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2264
    return v16

    .line 2248
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_a
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2251
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->startSearch(I)Z

    move-result v1

    .line 2252
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2253
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2254
    return v16

    .line 2238
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_b
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2241
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->usbDisConnectDevice(Ljava/lang/String;)Z

    move-result v1

    .line 2242
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2243
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2244
    return v16

    .line 2228
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_c
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2231
    .local v0, "_arg0":I
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getProfileConnectionState(I)I

    move-result v1

    .line 2232
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2233
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2234
    return v16

    .line 2220
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_d
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2221
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getLocalUsbConnectionState()I

    move-result v0

    .line 2222
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2223
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2224
    return v16

    .line 2212
    .end local v0    # "_result":I
    :pswitch_e
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2213
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getUsbConnectedDevice()Ljava/lang/String;

    move-result-object v0

    .line 2214
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2215
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2216
    return v16

    .line 2204
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_f
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2205
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getUsbAddress()Ljava/lang/String;

    move-result-object v0

    .line 2206
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2207
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2208
    return v16

    .line 2194
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_10
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2197
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->setUsbBtLocalName(Ljava/lang/String;)Z

    move-result v1

    .line 2198
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2199
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2200
    return v16

    .line 2186
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_11
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2187
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getUsbBtLocalName()Ljava/lang/String;

    move-result-object v0

    .line 2188
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2189
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2190
    return v16

    .line 2178
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_12
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2179
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqUsbBtPairedDevices()Ljava/util/List;

    move-result-object v0

    .line 2180
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/nforetek/bt/aidl/UsbBluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2181
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2182
    return v16

    .line 2168
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/nforetek/bt/aidl/UsbBluetoothDevice;>;"
    :pswitch_13
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2171
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isUsbAvrcpConnected(Ljava/lang/String;)Z

    move-result v1

    .line 2172
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2173
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2174
    return v16

    .line 2158
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_14
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2161
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getUsbConnectionState(Ljava/lang/String;)I

    move-result v1

    .line 2162
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2163
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2164
    return v16

    .line 2148
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_15
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2151
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isUsbA2dpConnected(Ljava/lang/String;)Z

    move-result v1

    .line 2152
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2153
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2154
    return v16

    .line 2138
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_16
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2141
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isUsbHfpConnected(Ljava/lang/String;)Z

    move-result v1

    .line 2142
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2143
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2144
    return v16

    .line 2130
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_17
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2131
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isUsbDiscovering()Z

    move-result v0

    .line 2132
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2133
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2134
    return v16

    .line 2122
    .end local v0    # "_result":Z
    :pswitch_18
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2123
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isUsbEnabled()Z

    move-result v0

    .line 2124
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2125
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2126
    return v16

    .line 2112
    .end local v0    # "_result":Z
    :pswitch_19
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move/from16 v1, v16

    nop

    :cond_1
    move v0, v1

    .line 2115
    .local v0, "_arg0":Z
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->setUsbEnabled(Z)Z

    move-result v1

    .line 2116
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2117
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2118
    return v16

    .line 2102
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_1a
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2105
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->usbReqUnpair(Ljava/lang/String;)Z

    move-result v1

    .line 2106
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2107
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2108
    return v16

    .line 2094
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_1b
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2095
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->usbDisConnect()Z

    move-result v0

    .line 2096
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2097
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2098
    return v16

    .line 2084
    .end local v0    # "_result":Z
    :pswitch_1c
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2086
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2087
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->usbConnect(Ljava/lang/String;)Z

    move-result v1

    .line 2088
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2089
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2090
    return v16

    .line 2076
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_1d
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2077
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->usbStopSearch()Z

    move-result v0

    .line 2078
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2079
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2080
    return v16

    .line 2068
    .end local v0    # "_result":Z
    :pswitch_1e
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2069
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->usbSearch()Z

    move-result v0

    .line 2070
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2071
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2072
    return v16

    .line 2058
    .end local v0    # "_result":Z
    :pswitch_1f
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2060
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth;

    move-result-object v0

    .line 2061
    .local v0, "_arg0":Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->unregisterUsbCallback(Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth;)Z

    move-result v1

    .line 2062
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2063
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2064
    return v16

    .line 2048
    .end local v0    # "_arg0":Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth;
    .end local v1    # "_result":Z
    :pswitch_20
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2050
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth;

    move-result-object v0

    .line 2051
    .restart local v0    # "_arg0":Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->registerUsbCallback(Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth;)Z

    move-result v1

    .line 2052
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2053
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2054
    return v16

    .line 2026
    .end local v0    # "_arg0":Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth;
    .end local v1    # "_result":Z
    :pswitch_21
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2028
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 2029
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .local v1, "_arg0":Landroid/os/ParcelUuid;
    goto :goto_0

    .line 2032
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    :cond_2
    move-object v1, v0

    .line 2035
    .restart local v1    # "_arg0":Landroid/os/ParcelUuid;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 2036
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .local v0, "_arg1":Landroid/os/ParcelUuid;
    goto :goto_1

    .line 2039
    .end local v0    # "_arg1":Landroid/os/ParcelUuid;
    :cond_3
    nop

    .line 2041
    .restart local v0    # "_arg1":Landroid/os/ParcelUuid;
    :goto_1
    invoke-virtual {v13, v1, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getGattAddedGattDescriptorUuidList(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Ljava/util/List;

    move-result-object v2

    .line 2042
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2043
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2044
    return v16

    .line 2011
    .end local v0    # "_arg1":Landroid/os/ParcelUuid;
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :pswitch_22
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2013
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 2014
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .local v0, "_arg0":Landroid/os/ParcelUuid;
    goto :goto_2

    .line 2017
    .end local v0    # "_arg0":Landroid/os/ParcelUuid;
    :cond_4
    nop

    .line 2019
    .restart local v0    # "_arg0":Landroid/os/ParcelUuid;
    :goto_2
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getGattAddedGattCharacteristicUuidList(Landroid/os/ParcelUuid;)Ljava/util/List;

    move-result-object v1

    .line 2020
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2021
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2022
    return v16

    .line 2003
    .end local v0    # "_arg0":Landroid/os/ParcelUuid;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :pswitch_23
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2004
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getGattAddedGattServiceUuidList()Ljava/util/List;

    move-result-object v0

    .line 2005
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2006
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2007
    return v16

    .line 1973
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :pswitch_24
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1975
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1977
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1979
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 1980
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 1983
    .local v2, "_arg2":Landroid/os/ParcelUuid;
    move-object v3, v2

    goto :goto_3

    .end local v2    # "_arg2":Landroid/os/ParcelUuid;
    :cond_5
    move-object v3, v0

    .line 1986
    .local v3, "_arg2":Landroid/os/ParcelUuid;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 1987
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 1990
    .local v4, "_arg3":Landroid/os/ParcelUuid;
    :goto_4
    move-object v4, v0

    goto :goto_5

    .end local v4    # "_arg3":Landroid/os/ParcelUuid;
    :cond_6
    goto :goto_4

    .line 1993
    .restart local v4    # "_arg3":Landroid/os/ParcelUuid;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    move/from16 v5, v16

    goto :goto_6

    :cond_7
    move v5, v1

    .line 1995
    .local v5, "_arg4":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 1996
    .local v9, "_arg5":[B
    move-object v0, v13

    move-object v1, v7

    move v2, v8

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqGattServerSendNotification(Ljava/lang/String;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;Z[B)Z

    move-result v0

    .line 1997
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1998
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1999
    return v16

    .line 1955
    .end local v0    # "_result":Z
    .end local v3    # "_arg2":Landroid/os/ParcelUuid;
    .end local v4    # "_arg3":Landroid/os/ParcelUuid;
    .end local v5    # "_arg4":Z
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg5":[B
    :pswitch_25
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1957
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1959
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1961
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1963
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1965
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 1966
    .local v10, "_arg4":[B
    move-object v0, v13

    move-object v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqGattServerSendResponse(Ljava/lang/String;III[B)Z

    move-result v0

    .line 1967
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1968
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1969
    return v16

    .line 1945
    .end local v0    # "_result":Z
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":[B
    :pswitch_26
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    move/from16 v1, v16

    nop

    :cond_8
    move v0, v1

    .line 1948
    .local v0, "_arg0":Z
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqGattServerListen(Z)Z

    move-result v1

    .line 1949
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1950
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1951
    return v16

    .line 1937
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_27
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1938
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqGattServerClearServices()Z

    move-result v0

    .line 1939
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1940
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1941
    return v16

    .line 1920
    .end local v0    # "_result":Z
    :pswitch_28
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1922
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1924
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    .line 1925
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .local v0, "_arg1":Landroid/os/ParcelUuid;
    goto :goto_7

    .line 1928
    .end local v0    # "_arg1":Landroid/os/ParcelUuid;
    :cond_9
    nop

    .line 1930
    .restart local v0    # "_arg1":Landroid/os/ParcelUuid;
    :goto_7
    invoke-virtual {v13, v1, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqGattServerRemoveService(ILandroid/os/ParcelUuid;)Z

    move-result v2

    .line 1931
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1932
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1933
    return v16

    .line 1912
    .end local v0    # "_arg1":Landroid/os/ParcelUuid;
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_29
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1913
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqGattServerEndServiceDeclaration()Z

    move-result v0

    .line 1914
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1915
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1916
    return v16

    .line 1895
    .end local v0    # "_result":Z
    :pswitch_2a
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1897
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 1898
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .local v0, "_arg0":Landroid/os/ParcelUuid;
    goto :goto_8

    .line 1901
    .end local v0    # "_arg0":Landroid/os/ParcelUuid;
    :cond_a
    nop

    .line 1904
    .restart local v0    # "_arg0":Landroid/os/ParcelUuid;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1905
    .local v1, "_arg1":I
    invoke-virtual {v13, v0, v1}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqGattServerAddDescriptor(Landroid/os/ParcelUuid;I)Z

    move-result v2

    .line 1906
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1907
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1908
    return v16

    .line 1876
    .end local v0    # "_arg0":Landroid/os/ParcelUuid;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_2b
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1878
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    .line 1879
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .restart local v0    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_9

    .line 1882
    .end local v0    # "_arg0":Landroid/os/ParcelUuid;
    :cond_b
    nop

    .line 1885
    .restart local v0    # "_arg0":Landroid/os/ParcelUuid;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1887
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1888
    .local v2, "_arg2":I
    invoke-virtual {v13, v0, v1, v2}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqGattServerAddCharacteristic(Landroid/os/ParcelUuid;II)Z

    move-result v3

    .line 1889
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1890
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1891
    return v16

    .line 1859
    .end local v0    # "_arg0":Landroid/os/ParcelUuid;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_2c
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1861
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1863
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    .line 1864
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .local v0, "_arg1":Landroid/os/ParcelUuid;
    goto :goto_a

    .line 1867
    .end local v0    # "_arg1":Landroid/os/ParcelUuid;
    :cond_c
    nop

    .line 1869
    .restart local v0    # "_arg1":Landroid/os/ParcelUuid;
    :goto_a
    invoke-virtual {v13, v1, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqGattServerBeginServiceDeclaration(ILandroid/os/ParcelUuid;)Z

    move-result v2

    .line 1870
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1871
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1872
    return v16

    .line 1849
    .end local v0    # "_arg1":Landroid/os/ParcelUuid;
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_2d
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1851
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1852
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqGattServerDisconnect(Ljava/lang/String;)Z

    move-result v1

    .line 1853
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1854
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1855
    return v16

    .line 1841
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_2e
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1842
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getGattServerConnectionState()I

    move-result v0

    .line 1843
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1844
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1845
    return v16

    .line 1831
    .end local v0    # "_result":I
    :pswitch_2f
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1833
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/UiCallbackGattServer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/UiCallbackGattServer;

    move-result-object v0

    .line 1834
    .local v0, "_arg0":Lcom/nforetek/bt/aidl/UiCallbackGattServer;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->unregisterGattServerCallback(Lcom/nforetek/bt/aidl/UiCallbackGattServer;)Z

    move-result v1

    .line 1835
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1836
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1837
    return v16

    .line 1821
    .end local v0    # "_arg0":Lcom/nforetek/bt/aidl/UiCallbackGattServer;
    .end local v1    # "_result":Z
    :pswitch_30
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1823
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/UiCallbackGattServer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/UiCallbackGattServer;

    move-result-object v0

    .line 1824
    .restart local v0    # "_arg0":Lcom/nforetek/bt/aidl/UiCallbackGattServer;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->registerGattServerCallback(Lcom/nforetek/bt/aidl/UiCallbackGattServer;)Z

    move-result v1

    .line 1825
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1826
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1827
    return v16

    .line 1813
    .end local v0    # "_arg0":Lcom/nforetek/bt/aidl/UiCallbackGattServer;
    .end local v1    # "_result":Z
    :pswitch_31
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1814
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isGattServiceReady()Z

    move-result v0

    .line 1815
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1816
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1817
    return v16

    .line 1806
    .end local v0    # "_result":Z
    :pswitch_32
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1807
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcpUpdateSongStatus()V

    .line 1808
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1809
    return v16

    .line 1798
    :pswitch_33
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1799
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getTargetAddress()Ljava/lang/String;

    move-result-object v0

    .line 1800
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1801
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1802
    return v16

    .line 1789
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_34
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1792
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->setTargetAddress(Ljava/lang/String;)V

    .line 1793
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1794
    return v16

    .line 1781
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_35
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1782
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqOppInterruptReceiveFile()Z

    move-result v0

    .line 1783
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1784
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1785
    return v16

    .line 1771
    .end local v0    # "_result":Z
    :pswitch_36
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1773
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    move/from16 v1, v16

    nop

    :cond_d
    move v0, v1

    .line 1774
    .local v0, "_arg0":Z
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqOppAcceptReceiveFile(Z)Z

    move-result v1

    .line 1775
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1776
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1777
    return v16

    .line 1763
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_37
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1764
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getOppFilePath()Ljava/lang/String;

    move-result-object v0

    .line 1765
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1766
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1767
    return v16

    .line 1753
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_38
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1755
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1756
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->setOppFilePath(Ljava/lang/String;)Z

    move-result v1

    .line 1757
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1758
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1759
    return v16

    .line 1743
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_39
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/UiCallbackOpp$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/UiCallbackOpp;

    move-result-object v0

    .line 1746
    .local v0, "_arg0":Lcom/nforetek/bt/aidl/UiCallbackOpp;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->unregisterOppCallback(Lcom/nforetek/bt/aidl/UiCallbackOpp;)Z

    move-result v1

    .line 1747
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1748
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1749
    return v16

    .line 1733
    .end local v0    # "_arg0":Lcom/nforetek/bt/aidl/UiCallbackOpp;
    .end local v1    # "_result":Z
    :pswitch_3a
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1735
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/UiCallbackOpp$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/UiCallbackOpp;

    move-result-object v0

    .line 1736
    .restart local v0    # "_arg0":Lcom/nforetek/bt/aidl/UiCallbackOpp;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->registerOppCallback(Lcom/nforetek/bt/aidl/UiCallbackOpp;)Z

    move-result v1

    .line 1737
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1738
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1739
    return v16

    .line 1723
    .end local v0    # "_arg0":Lcom/nforetek/bt/aidl/UiCallbackOpp;
    .end local v1    # "_result":Z
    :pswitch_3b
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1725
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1726
    .local v0, "_arg0":I
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->setMapDownloadNotify(I)Z

    move-result v1

    .line 1727
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1728
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1729
    return v16

    .line 1707
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_3c
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1711
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1713
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1715
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    move/from16 v1, v16

    nop

    .line 1716
    .local v1, "_arg3":Z
    :cond_e
    invoke-virtual {v13, v0, v2, v3, v1}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqMapChangeReadStatus(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v4

    .line 1717
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1718
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1719
    return v16

    .line 1693
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg3":Z
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_3d
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1697
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1699
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1700
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqMapDeleteMessage(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    .line 1701
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1702
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1703
    return v16

    .line 1679
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_3e
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1683
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1685
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1686
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqMapSendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1687
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1688
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1689
    return v16

    .line 1669
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_3f
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1671
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1672
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getMapRegisterState(Ljava/lang/String;)I

    move-result v1

    .line 1673
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1674
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1675
    return v16

    .line 1659
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_40
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1662
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getMapCurrentState(Ljava/lang/String;)I

    move-result v1

    .line 1663
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1664
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1665
    return v16

    .line 1652
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_41
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1653
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqMapCleanDatabase()V

    .line 1654
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1655
    return v16

    .line 1643
    :pswitch_42
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1645
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1646
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqMapDeleteDatabaseByAddress(Ljava/lang/String;)V

    .line 1647
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1648
    return v16

    .line 1636
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_43
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1637
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqMapDatabaseAvailable()V

    .line 1638
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1639
    return v16

    .line 1626
    :pswitch_44
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1628
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1629
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqMapDownloadInterrupt(Ljava/lang/String;)Z

    move-result v1

    .line 1630
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1631
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1632
    return v16

    .line 1616
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_45
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1618
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1619
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isMapNotificationRegistered(Ljava/lang/String;)Z

    move-result v1

    .line 1620
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1621
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1622
    return v16

    .line 1607
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_46
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1610
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqMapUnregisterNotification(Ljava/lang/String;)V

    .line 1611
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1612
    return v16

    .line 1595
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_47
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1597
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1599
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f

    move/from16 v1, v16

    nop

    .line 1600
    .local v1, "_arg1":Z
    :cond_f
    invoke-virtual {v13, v0, v1}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqMapRegisterNotification(Ljava/lang/String;Z)Z

    move-result v2

    .line 1601
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1602
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1603
    return v16

    .line 1563
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_48
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1567
    .local v17, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1569
    .local v18, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    move/from16 v3, v16

    goto :goto_b

    :cond_10
    move v3, v1

    .line 1571
    .local v3, "_arg2":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1573
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1575
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1577
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1579
    .local v22, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1581
    .local v23, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1583
    .local v24, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 1585
    .local v25, "_arg9":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 1587
    .local v26, "_arg10":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1588
    .local v27, "_arg11":I
    move-object v0, v13

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-object v14, v11

    move/from16 v11, v26

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v14, "descriptor":Ljava/lang/String;
    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqMapDownloadMessage(Ljava/lang/String;IZIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    .line 1589
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1590
    move-object/from16 v6, p3

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1591
    return v16

    .line 1547
    .end local v0    # "_result":Z
    .end local v3    # "_arg2":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v18    # "_arg1":I
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":Ljava/lang/String;
    .end local v23    # "_arg7":Ljava/lang/String;
    .end local v24    # "_arg8":Ljava/lang/String;
    .end local v25    # "_arg9":Ljava/lang/String;
    .end local v26    # "_arg10":I
    .end local v27    # "_arg11":I
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_49
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1549
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1551
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1553
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1555
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1556
    .local v3, "_arg3":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqMapDownloadSingleMessage(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v4

    .line 1557
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1558
    invoke-virtual {v6, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1559
    return v16

    .line 1537
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_4a
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1539
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/UiCallbackMap$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/UiCallbackMap;

    move-result-object v0

    .line 1540
    .local v0, "_arg0":Lcom/nforetek/bt/aidl/UiCallbackMap;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->unregisterMapCallback(Lcom/nforetek/bt/aidl/UiCallbackMap;)Z

    move-result v1

    .line 1541
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1542
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1543
    return v16

    .line 1527
    .end local v0    # "_arg0":Lcom/nforetek/bt/aidl/UiCallbackMap;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_4b
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1529
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/UiCallbackMap$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/UiCallbackMap;

    move-result-object v0

    .line 1530
    .restart local v0    # "_arg0":Lcom/nforetek/bt/aidl/UiCallbackMap;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->registerMapCallback(Lcom/nforetek/bt/aidl/UiCallbackMap;)Z

    move-result v1

    .line 1531
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1532
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1533
    return v16

    .line 1515
    .end local v0    # "_arg0":Lcom/nforetek/bt/aidl/UiCallbackMap;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_4c
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1519
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1520
    .local v1, "_arg1":I
    invoke-virtual {v13, v0, v1}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqSendHidVirtualKeyCommand(II)Z

    move-result v2

    .line 1521
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1522
    invoke-virtual {v6, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1523
    return v16

    .line 1499
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_4d
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1501
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1503
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1505
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1507
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1508
    .restart local v3    # "_arg3":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqSendHidMouseCommand(IIII)Z

    move-result v4

    .line 1509
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1510
    invoke-virtual {v6, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1511
    return v16

    .line 1489
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_4e
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1492
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqHidDisconnect(Ljava/lang/String;)Z

    move-result v1

    .line 1493
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1494
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1495
    return v16

    .line 1479
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_4f
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1482
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqHidConnect(Ljava/lang/String;)Z

    move-result v1

    .line 1483
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1484
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1485
    return v16

    .line 1471
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_50
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1472
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getHidConnectedAddress()Ljava/lang/String;

    move-result-object v0

    .line 1473
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1474
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1475
    return v16

    .line 1463
    .end local v0    # "_result":Ljava/lang/String;
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_51
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1464
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isHidConnected()Z

    move-result v0

    .line 1465
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1466
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1467
    return v16

    .line 1455
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_52
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1456
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getHidConnectionState()I

    move-result v0

    .line 1457
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1458
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1459
    return v16

    .line 1445
    .end local v0    # "_result":I
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_53
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1447
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/UiCallbackHid$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/UiCallbackHid;

    move-result-object v0

    .line 1448
    .local v0, "_arg0":Lcom/nforetek/bt/aidl/UiCallbackHid;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->unregisterHidCallback(Lcom/nforetek/bt/aidl/UiCallbackHid;)Z

    move-result v1

    .line 1449
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1450
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1451
    return v16

    .line 1435
    .end local v0    # "_arg0":Lcom/nforetek/bt/aidl/UiCallbackHid;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_54
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/UiCallbackHid$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/UiCallbackHid;

    move-result-object v0

    .line 1438
    .restart local v0    # "_arg0":Lcom/nforetek/bt/aidl/UiCallbackHid;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->registerHidCallback(Lcom/nforetek/bt/aidl/UiCallbackHid;)Z

    move-result v1

    .line 1439
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1440
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1441
    return v16

    .line 1424
    .end local v0    # "_arg0":Lcom/nforetek/bt/aidl/UiCallbackHid;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_55
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1428
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1429
    .local v1, "_arg1":[B
    invoke-virtual {v13, v0, v1}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqSppSendData(Ljava/lang/String;[B)V

    .line 1430
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1431
    return v16

    .line 1414
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_56
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1417
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isSppConnected(Ljava/lang/String;)Z

    move-result v1

    .line 1418
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1419
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1420
    return v16

    .line 1407
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_57
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1408
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqSppConnectedDeviceAddressList()V

    .line 1409
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1410
    return v16

    .line 1397
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_58
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1400
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqSppDisconnect(Ljava/lang/String;)Z

    move-result v1

    .line 1401
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1402
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1403
    return v16

    .line 1387
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_59
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1390
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqSppConnect(Ljava/lang/String;)Z

    move-result v1

    .line 1391
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1392
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1393
    return v16

    .line 1377
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5a
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/UiCallbackSpp$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/UiCallbackSpp;

    move-result-object v0

    .line 1380
    .local v0, "_arg0":Lcom/nforetek/bt/aidl/UiCallbackSpp;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->unregisterSppCallback(Lcom/nforetek/bt/aidl/UiCallbackSpp;)Z

    move-result v1

    .line 1381
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1382
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1383
    return v16

    .line 1367
    .end local v0    # "_arg0":Lcom/nforetek/bt/aidl/UiCallbackSpp;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5b
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/UiCallbackSpp$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/UiCallbackSpp;

    move-result-object v0

    .line 1370
    .restart local v0    # "_arg0":Lcom/nforetek/bt/aidl/UiCallbackSpp;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->registerSppCallback(Lcom/nforetek/bt/aidl/UiCallbackSpp;)Z

    move-result v1

    .line 1371
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1372
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1373
    return v16

    .line 1357
    .end local v0    # "_arg0":Lcom/nforetek/bt/aidl/UiCallbackSpp;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5c
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1360
    .local v0, "_arg0":I
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->setPbapDownloadNotify(I)Z

    move-result v1

    .line 1361
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1362
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1363
    return v16

    .line 1347
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5d
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1350
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqPbapDownloadInterrupt(Ljava/lang/String;)Z

    move-result v1

    .line 1351
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1352
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1353
    return v16

    .line 1340
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5e
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1341
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqPbapCleanDatabase()V

    .line 1342
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1343
    return v16

    .line 1331
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5f
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1334
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqPbapDeleteDatabaseByAddress(Ljava/lang/String;)V

    .line 1335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1336
    return v16

    .line 1322
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_60
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1325
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqPbapDatabaseAvailable(Ljava/lang/String;)V

    .line 1326
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1327
    return v16

    .line 1309
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_61
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1313
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1315
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1316
    .restart local v2    # "_arg2":I
    invoke-virtual {v13, v0, v1, v2}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqPbapDatabaseQueryNameByPartialNumber(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1317
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1318
    return v16

    .line 1298
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_62
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1302
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1303
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqPbapDatabaseQueryNameByNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1305
    return v16

    .line 1280
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_63
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1284
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1286
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1288
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1290
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1291
    .local v11, "_arg4":I
    move-object v0, v13

    move-object v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqPbapDownloadRangeToContactsProvider(Ljava/lang/String;IIII)Z

    move-result v0

    .line 1292
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1293
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1294
    return v16

    .line 1266
    .end local v0    # "_result":Z
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v14    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_64
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1270
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1272
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1273
    .restart local v2    # "_arg2":I
    invoke-virtual {v13, v0, v1, v2}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqPbapDownloadToContactsProvider(Ljava/lang/String;II)Z

    move-result v3

    .line 1274
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1275
    invoke-virtual {v6, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1276
    return v16

    .line 1248
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_65
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1252
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1254
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1256
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1258
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1259
    .local v11, "_arg4":I
    move-object v0, v13

    move-object v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqPbapDownloadRangeToDatabase(Ljava/lang/String;IIII)Z

    move-result v0

    .line 1260
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1261
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1262
    return v16

    .line 1234
    .end local v0    # "_result":Z
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v14    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_66
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1238
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1240
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1241
    .restart local v2    # "_arg2":I
    invoke-virtual {v13, v0, v1, v2}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqPbapDownloadToDatabase(Ljava/lang/String;II)Z

    move-result v3

    .line 1242
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1243
    invoke-virtual {v6, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1244
    return v16

    .line 1216
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_67
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1220
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1222
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1224
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1226
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1227
    .local v11, "_arg4":I
    move-object v0, v13

    move-object v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqPbapDownloadRange(Ljava/lang/String;IIII)Z

    move-result v0

    .line 1228
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1229
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1230
    return v16

    .line 1202
    .end local v0    # "_result":Z
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v14    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_68
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1206
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1208
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1209
    .restart local v2    # "_arg2":I
    invoke-virtual {v13, v0, v1, v2}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqPbapDownload(Ljava/lang/String;II)Z

    move-result v3

    .line 1210
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1211
    invoke-virtual {v6, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1212
    return v16

    .line 1194
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_69
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1195
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getPbapDownloadingAddress()Ljava/lang/String;

    move-result-object v0

    .line 1196
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1197
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1198
    return v16

    .line 1186
    .end local v0    # "_result":Ljava/lang/String;
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_6a
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1187
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isPbapDownloading()Z

    move-result v0

    .line 1188
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1189
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1190
    return v16

    .line 1178
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_6b
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1179
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getPbapConnectionState()I

    move-result v0

    .line 1180
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1181
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1182
    return v16

    .line 1168
    .end local v0    # "_result":I
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_6c
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/UiCallbackPbap$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/UiCallbackPbap;

    move-result-object v0

    .line 1171
    .local v0, "_arg0":Lcom/nforetek/bt/aidl/UiCallbackPbap;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->unregisterPbapCallback(Lcom/nforetek/bt/aidl/UiCallbackPbap;)Z

    move-result v1

    .line 1172
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1173
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1174
    return v16

    .line 1158
    .end local v0    # "_arg0":Lcom/nforetek/bt/aidl/UiCallbackPbap;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_6d
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/UiCallbackPbap$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/UiCallbackPbap;

    move-result-object v0

    .line 1161
    .restart local v0    # "_arg0":Lcom/nforetek/bt/aidl/UiCallbackPbap;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->registerPbapCallback(Lcom/nforetek/bt/aidl/UiCallbackPbap;)Z

    move-result v1

    .line 1162
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1163
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1164
    return v16

    .line 1150
    .end local v0    # "_arg0":Lcom/nforetek/bt/aidl/UiCallbackPbap;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_6e
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1151
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isHfpInBandRingtoneSupport()Z

    move-result v0

    .line 1152
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1153
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1154
    return v16

    .line 1141
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_6f
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    move/from16 v1, v16

    nop

    :cond_11
    move v0, v1

    .line 1144
    .local v0, "_arg0":Z
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->muteHfpMic(Z)V

    .line 1145
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1146
    return v16

    .line 1133
    .end local v0    # "_arg0":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_70
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1134
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isHfpMicMute()Z

    move-result v0

    .line 1135
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1136
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1137
    return v16

    .line 1126
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_71
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1127
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->startHfpRender()V

    .line 1128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1129
    return v16

    .line 1119
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_72
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1120
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->pauseHfpRender()V

    .line 1121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1122
    return v16

    .line 1109
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_73
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    move/from16 v1, v16

    nop

    :cond_12
    move v0, v1

    .line 1112
    .local v0, "_arg0":Z
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqHfpVoiceDial(Z)Z

    move-result v1

    .line 1113
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1114
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1115
    return v16

    .line 1101
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_74
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1102
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getHfpRemoteSubscriberNumber()Ljava/lang/String;

    move-result-object v0

    .line 1103
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1104
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1105
    return v16

    .line 1093
    .end local v0    # "_result":Ljava/lang/String;
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_75
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1094
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getHfpRemoteNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 1095
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1096
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1097
    return v16

    .line 1085
    .end local v0    # "_result":Ljava/lang/String;
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_76
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1086
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqHfpAudioTransferToPhone()Z

    move-result v0

    .line 1087
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1089
    return v16

    .line 1077
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_77
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1078
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqHfpAudioTransferToCarkit()Z

    move-result v0

    .line 1079
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1080
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1081
    return v16

    .line 1067
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_78
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1069
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1070
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqHfpSendDtmf(Ljava/lang/String;)Z

    move-result v1

    .line 1071
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1073
    return v16

    .line 1059
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_79
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1060
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqHfpTerminateCurrentCall()Z

    move-result v0

    .line 1061
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1062
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1063
    return v16

    .line 1051
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_7a
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1052
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqHfpRejectIncomingCall()Z

    move-result v0

    .line 1053
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1054
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1055
    return v16

    .line 1041
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_7b
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1043
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1044
    .local v0, "_arg0":I
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqHfpAnswerCall(I)Z

    move-result v1

    .line 1045
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1047
    return v16

    .line 1031
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_7c
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1033
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1034
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqHfpMemoryDial(Ljava/lang/String;)Z

    move-result v1

    .line 1035
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1036
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1037
    return v16

    .line 1023
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_7d
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1024
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqHfpReDial()Z

    move-result v0

    .line 1025
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1026
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1027
    return v16

    .line 1013
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_7e
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1015
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1016
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqHfpDialCall(Ljava/lang/String;)Z

    move-result v1

    .line 1017
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1018
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1019
    return v16

    .line 1005
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_7f
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1006
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isHfpRemoteVoiceDialOn()Z

    move-result v0

    .line 1007
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1008
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1009
    return v16

    .line 997
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_80
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isHfpRemoteTelecomServiceOn()Z

    move-result v0

    .line 999
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1000
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1001
    return v16

    .line 989
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_81
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 990
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getHfpRemoteBatteryIndicator()I

    move-result v0

    .line 991
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 993
    return v16

    .line 981
    .end local v0    # "_result":I
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_82
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isHfpRemoteOnRoaming()Z

    move-result v0

    .line 983
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 985
    return v16

    .line 973
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_83
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 974
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getHfpCallList()Ljava/util/List;

    move-result-object v0

    .line 975
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/nforetek/bt/aidl/NfHfpClientCall;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 977
    return v16

    .line 965
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/nforetek/bt/aidl/NfHfpClientCall;>;"
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_84
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 966
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getHfpRemoteSignalStrength()I

    move-result v0

    .line 967
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 969
    return v16

    .line 955
    .end local v0    # "_result":I
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_85
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 957
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 958
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqHfpDisconnect(Ljava/lang/String;)Z

    move-result v1

    .line 959
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 961
    return v16

    .line 945
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_86
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 948
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqHfpConnect(Ljava/lang/String;)Z

    move-result v1

    .line 949
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 951
    return v16

    .line 937
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_87
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 938
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getHfpAudioConnectionState()I

    move-result v0

    .line 939
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 941
    return v16

    .line 929
    .end local v0    # "_result":I
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_88
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 930
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getHfpConnectedAddress()Ljava/lang/String;

    move-result-object v0

    .line 931
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 932
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 933
    return v16

    .line 921
    .end local v0    # "_result":Ljava/lang/String;
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_89
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 922
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isHfpConnected()Z

    move-result v0

    .line 923
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 925
    return v16

    .line 913
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_8a
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 914
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getHfpConnectionState()I

    move-result v0

    .line 915
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 917
    return v16

    .line 903
    .end local v0    # "_result":I
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_8b
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 905
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/UiCallbackHfp$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/UiCallbackHfp;

    move-result-object v0

    .line 906
    .local v0, "_arg0":Lcom/nforetek/bt/aidl/UiCallbackHfp;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->unregisterHfpCallback(Lcom/nforetek/bt/aidl/UiCallbackHfp;)Z

    move-result v1

    .line 907
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 908
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 909
    return v16

    .line 893
    .end local v0    # "_arg0":Lcom/nforetek/bt/aidl/UiCallbackHfp;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_8c
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 895
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/UiCallbackHfp$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/UiCallbackHfp;

    move-result-object v0

    .line 896
    .restart local v0    # "_arg0":Lcom/nforetek/bt/aidl/UiCallbackHfp;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->registerHfpCallback(Lcom/nforetek/bt/aidl/UiCallbackHfp;)Z

    move-result v1

    .line 897
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 899
    return v16

    .line 885
    .end local v0    # "_arg0":Lcom/nforetek/bt/aidl/UiCallbackHfp;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_8d
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 886
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getBtAutoConnectingAddress()Ljava/lang/String;

    move-result-object v0

    .line 887
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 889
    return v16

    .line 877
    .end local v0    # "_result":Ljava/lang/String;
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_8e
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getBtAutoConnectState()I

    move-result v0

    .line 879
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 881
    return v16

    .line 869
    .end local v0    # "_result":I
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_8f
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 870
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getBtAutoConnectPeriod()I

    move-result v0

    .line 871
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 872
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 873
    return v16

    .line 861
    .end local v0    # "_result":I
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_90
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getBtAutoConnectCondition()I

    move-result v0

    .line 863
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 864
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 865
    return v16

    .line 850
    .end local v0    # "_result":I
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_91
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 854
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 855
    .local v1, "_arg1":I
    invoke-virtual {v13, v0, v1}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->setBtAutoConnect(II)V

    .line 856
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    return v16

    .line 842
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_92
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 843
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getBtRoleMode()I

    move-result v0

    .line 844
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 846
    return v16

    .line 832
    .end local v0    # "_result":I
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_93
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 835
    .local v0, "_arg0":I
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->switchBtRoleMode(I)Z

    move-result v1

    .line 836
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 838
    return v16

    .line 822
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_94
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getBtRemoteUuids(Ljava/lang/String;)I

    move-result v1

    .line 826
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    return v16

    .line 814
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_95
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 815
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqBtDisconnectAll()I

    move-result v0

    .line 816
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    return v16

    .line 804
    .end local v0    # "_result":I
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_96
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 806
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 807
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqBtConnectHfpA2dp(Ljava/lang/String;)I

    move-result v1

    .line 808
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 810
    return v16

    .line 796
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_97
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isBtAutoConnectEnable()Z

    move-result v0

    .line 798
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 800
    return v16

    .line 788
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_98
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 789
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isBtDiscoverable()Z

    move-result v0

    .line 790
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 792
    return v16

    .line 780
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_99
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 781
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isBtDiscovering()Z

    move-result v0

    .line 782
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 784
    return v16

    .line 772
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_9a
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 773
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getBtState()I

    move-result v0

    .line 774
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 776
    return v16

    .line 764
    .end local v0    # "_result":I
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_9b
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 765
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isBtEnabled()Z

    move-result v0

    .line 766
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    return v16

    .line 754
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_9c
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->setBtLocalName(Ljava/lang/String;)Z

    move-result v1

    .line 758
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 759
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 760
    return v16

    .line 746
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_9d
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getBtLocalAddress()Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 750
    return v16

    .line 736
    .end local v0    # "_result":Ljava/lang/String;
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_9e
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 739
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getBtRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 740
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 742
    return v16

    .line 728
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_9f
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 729
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getBtLocalName()Ljava/lang/String;

    move-result-object v0

    .line 730
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 732
    return v16

    .line 720
    .end local v0    # "_result":Ljava/lang/String;
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a0
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 721
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqBtPairedDevices()Z

    move-result v0

    .line 722
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 724
    return v16

    .line 710
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a1
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqBtUnpair(Ljava/lang/String;)Z

    move-result v1

    .line 714
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 716
    return v16

    .line 700
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a2
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 703
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqBtPair(Ljava/lang/String;)Z

    move-result v1

    .line 704
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 706
    return v16

    .line 692
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a3
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->cancelBtDiscovery()Z

    move-result v0

    .line 694
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    return v16

    .line 684
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a4
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->startBtDiscovery()Z

    move-result v0

    .line 686
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    return v16

    .line 674
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a5
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 677
    .local v0, "_arg0":I
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->setBtDiscoverableTimeout(I)Z

    move-result v1

    .line 678
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    return v16

    .line 664
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a6
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    move/from16 v1, v16

    nop

    :cond_13
    move v0, v1

    .line 667
    .local v0, "_arg0":Z
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->setBtEnable(Z)Z

    move-result v1

    .line 668
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    return v16

    .line 656
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a7
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getNfServiceVersionName()Ljava/lang/String;

    move-result-object v0

    .line 658
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 660
    return v16

    .line 646
    .end local v0    # "_result":Ljava/lang/String;
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a8
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/UiCallbackBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/UiCallbackBluetooth;

    move-result-object v0

    .line 649
    .local v0, "_arg0":Lcom/nforetek/bt/aidl/UiCallbackBluetooth;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->unregisterBtCallback(Lcom/nforetek/bt/aidl/UiCallbackBluetooth;)Z

    move-result v1

    .line 650
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    return v16

    .line 636
    .end local v0    # "_arg0":Lcom/nforetek/bt/aidl/UiCallbackBluetooth;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a9
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/UiCallbackBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/UiCallbackBluetooth;

    move-result-object v0

    .line 639
    .restart local v0    # "_arg0":Lcom/nforetek/bt/aidl/UiCallbackBluetooth;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->registerBtCallback(Lcom/nforetek/bt/aidl/UiCallbackBluetooth;)Z

    move-result v1

    .line 640
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    return v16

    .line 626
    .end local v0    # "_arg0":Lcom/nforetek/bt/aidl/UiCallbackBluetooth;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_aa
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 629
    .local v0, "_arg0":B
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcp14SetAbsoluteVolume(B)Z

    move-result v1

    .line 630
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    return v16

    .line 612
    .end local v0    # "_arg0":B
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_ab
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 616
    .restart local v0    # "_arg0":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 618
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 619
    .local v2, "_arg2":J
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcp14AddToNowPlaying(BIJ)Z

    move-result v4

    .line 620
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    invoke-virtual {v6, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    return v16

    .line 602
    .end local v0    # "_arg0":B
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":J
    .end local v4    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_ac
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 605
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcp14Search(Ljava/lang/String;)Z

    move-result v1

    .line 606
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 608
    return v16

    .line 588
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_ad
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 592
    .local v0, "_arg0":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 594
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 595
    .restart local v2    # "_arg2":J
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcp14PlaySelectedItem(BIJ)Z

    move-result v4

    .line 596
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    invoke-virtual {v6, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    return v16

    .line 574
    .end local v0    # "_arg0":B
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":J
    .end local v4    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_ae
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 578
    .restart local v0    # "_arg0":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 580
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 581
    .restart local v2    # "_arg2":J
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcp14GetItemAttributes(BIJ)Z

    move-result v4

    .line 582
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    invoke-virtual {v6, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    return v16

    .line 560
    .end local v0    # "_arg0":B
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":J
    .end local v4    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_af
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 564
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 566
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 567
    .local v3, "_arg2":B
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcp14ChangePath(IJB)Z

    move-result v4

    .line 568
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    invoke-virtual {v6, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    return v16

    .line 550
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":B
    .end local v4    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_b0
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 553
    .local v0, "_arg0":B
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcp14GetFolderItems(B)Z

    move-result v1

    .line 554
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 556
    return v16

    .line 540
    .end local v0    # "_arg0":B
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_b1
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 543
    .local v0, "_arg0":I
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcp14SetBrowsedPlayer(I)Z

    move-result v1

    .line 544
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    return v16

    .line 530
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_b2
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 533
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcp14SetAddressedPlayer(I)Z

    move-result v1

    .line 534
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    return v16

    .line 522
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_b3
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isAvrcp14BrowsingChannelEstablished()Z

    move-result v0

    .line 524
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    return v16

    .line 514
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_b4
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcp13PreviousGroup()Z

    move-result v0

    .line 516
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    return v16

    .line 506
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_b5
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcp13NextGroup()Z

    move-result v0

    .line 508
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    return v16

    .line 496
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_b6
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 499
    .local v0, "_arg0":B
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcpUnregisterEventWatcher(B)Z

    move-result v1

    .line 500
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    return v16

    .line 484
    .end local v0    # "_arg0":B
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_b7
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 488
    .restart local v0    # "_arg0":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 489
    .local v1, "_arg1":J
    invoke-virtual {v13, v0, v1, v2}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcpRegisterEventWatcher(BJ)Z

    move-result v3

    .line 490
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    invoke-virtual {v6, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    return v16

    .line 476
    .end local v0    # "_arg0":B
    .end local v1    # "_arg1":J
    .end local v3    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_b8
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcp13GetPlayStatus()Z

    move-result v0

    .line 478
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    return v16

    .line 468
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_b9
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcp13GetElementAttributesPlaying()Z

    move-result v0

    .line 470
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    return v16

    .line 456
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_ba
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 460
    .local v0, "_arg0":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 461
    .local v1, "_arg1":B
    invoke-virtual {v13, v0, v1}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcp13SetPlayerSettingValue(BB)Z

    move-result v2

    .line 462
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    invoke-virtual {v6, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    return v16

    .line 448
    .end local v0    # "_arg0":B
    .end local v1    # "_arg1":B
    .end local v2    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_bb
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcp13GetPlayerSettingCurrentValues()Z

    move-result v0

    .line 450
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    return v16

    .line 438
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_bc
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 441
    .local v0, "_arg0":B
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcp13GetPlayerSettingValuesList(B)Z

    move-result v1

    .line 442
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    return v16

    .line 430
    .end local v0    # "_arg0":B
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_bd
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcp13GetPlayerSettingAttributesList()Z

    move-result v0

    .line 432
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    return v16

    .line 422
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_be
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcp13GetCapabilitiesSupportEvent()Z

    move-result v0

    .line 424
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    return v16

    .line 414
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_bf
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcpStopRewind()Z

    move-result v0

    .line 416
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    return v16

    .line 406
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_c0
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcpStartRewind()Z

    move-result v0

    .line 408
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    return v16

    .line 398
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_c1
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcpStopFastForward()Z

    move-result v0

    .line 400
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    return v16

    .line 390
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_c2
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcpStartFastForward()Z

    move-result v0

    .line 392
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    return v16

    .line 382
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_c3
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcpVolumeDown()Z

    move-result v0

    .line 384
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    return v16

    .line 374
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_c4
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcpVolumeUp()Z

    move-result v0

    .line 376
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    return v16

    .line 366
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_c5
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcpBackward()Z

    move-result v0

    .line 368
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    return v16

    .line 358
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_c6
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcpForward()Z

    move-result v0

    .line 360
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    return v16

    .line 350
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_c7
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcpPause()Z

    move-result v0

    .line 352
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    return v16

    .line 342
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_c8
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcpStop()Z

    move-result v0

    .line 344
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    return v16

    .line 334
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_c9
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcpPlay()Z

    move-result v0

    .line 336
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    return v16

    .line 324
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_ca
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isAvrcp14Supported(Ljava/lang/String;)Z

    move-result v1

    .line 328
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    return v16

    .line 314
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_cb
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 317
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isAvrcp13Supported(Ljava/lang/String;)Z

    move-result v1

    .line 318
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    return v16

    .line 304
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_cc
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 307
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcpDisconnect(Ljava/lang/String;)Z

    move-result v1

    .line 308
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    return v16

    .line 294
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_cd
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 297
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqAvrcpConnect(Ljava/lang/String;)Z

    move-result v1

    .line 298
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    return v16

    .line 286
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_ce
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getAvrcpConnectedAddress()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    return v16

    .line 278
    .end local v0    # "_result":Ljava/lang/String;
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_cf
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isAvrcpConnected()Z

    move-result v0

    .line 280
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    return v16

    .line 270
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d0
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getAvrcpConnectionState()I

    move-result v0

    .line 272
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    return v16

    .line 260
    .end local v0    # "_result":I
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d1
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/UiCallbackAvrcp;

    move-result-object v0

    .line 263
    .local v0, "_arg0":Lcom/nforetek/bt/aidl/UiCallbackAvrcp;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->unregisterAvrcpCallback(Lcom/nforetek/bt/aidl/UiCallbackAvrcp;)Z

    move-result v1

    .line 264
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    return v16

    .line 250
    .end local v0    # "_arg0":Lcom/nforetek/bt/aidl/UiCallbackAvrcp;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d2
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/UiCallbackAvrcp;

    move-result-object v0

    .line 253
    .restart local v0    # "_arg0":Lcom/nforetek/bt/aidl/UiCallbackAvrcp;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->registerAvrcpCallback(Lcom/nforetek/bt/aidl/UiCallbackAvrcp;)Z

    move-result v1

    .line 254
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    return v16

    .line 242
    .end local v0    # "_arg0":Lcom/nforetek/bt/aidl/UiCallbackAvrcp;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d3
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getA2dpStreamType()I

    move-result v0

    .line 244
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    return v16

    .line 232
    .end local v0    # "_result":I
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d4
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 235
    .local v0, "_arg0":I
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->setA2dpStreamType(I)Z

    move-result v1

    .line 236
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    return v16

    .line 222
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d5
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 225
    .local v0, "_arg0":F
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->setA2dpLocalVolume(F)Z

    move-result v1

    .line 226
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    return v16

    .line 215
    .end local v0    # "_arg0":F
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d6
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->startA2dpRender()V

    .line 217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    return v16

    .line 208
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d7
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->pauseA2dpRender()V

    .line 210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    return v16

    .line 198
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d8
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqA2dpDisconnect(Ljava/lang/String;)Z

    move-result v1

    .line 202
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    return v16

    .line 188
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d9
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 191
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->reqA2dpConnect(Ljava/lang/String;)Z

    move-result v1

    .line 192
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    return v16

    .line 180
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_da
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getA2dpConnectedAddress()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    return v16

    .line 172
    .end local v0    # "_result":Ljava/lang/String;
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_db
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isA2dpConnected()Z

    move-result v0

    .line 174
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    return v16

    .line 164
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_dc
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getA2dpConnectionState()I

    move-result v0

    .line 166
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    return v16

    .line 154
    .end local v0    # "_result":I
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_dd
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/UiCallbackA2dp$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/UiCallbackA2dp;

    move-result-object v0

    .line 157
    .local v0, "_arg0":Lcom/nforetek/bt/aidl/UiCallbackA2dp;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->unregisterA2dpCallback(Lcom/nforetek/bt/aidl/UiCallbackA2dp;)Z

    move-result v1

    .line 158
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    return v16

    .line 144
    .end local v0    # "_arg0":Lcom/nforetek/bt/aidl/UiCallbackA2dp;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_de
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/UiCallbackA2dp$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/UiCallbackA2dp;

    move-result-object v0

    .line 147
    .restart local v0    # "_arg0":Lcom/nforetek/bt/aidl/UiCallbackA2dp;
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->registerA2dpCallback(Lcom/nforetek/bt/aidl/UiCallbackA2dp;)Z

    move-result v1

    .line 148
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    return v16

    .line 136
    .end local v0    # "_arg0":Lcom/nforetek/bt/aidl/UiCallbackA2dp;
    .end local v1    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_df
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isMapServiceReady()Z

    move-result v0

    .line 138
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    return v16

    .line 128
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_e0
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isOppServiceReady()Z

    move-result v0

    .line 130
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    return v16

    .line 120
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_e1
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isPbapServiceReady()Z

    move-result v0

    .line 122
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    return v16

    .line 112
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_e2
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isHidServiceReady()Z

    move-result v0

    .line 114
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    return v16

    .line 104
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_e3
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isHfpServiceReady()Z

    move-result v0

    .line 106
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    return v16

    .line 96
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_e4
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isBluetoothServiceReady()Z

    move-result v0

    .line 98
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    return v16

    .line 88
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_e5
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isSppServiceReady()Z

    move-result v0

    .line 90
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    return v16

    .line 80
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_e6
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isA2dpServiceReady()Z

    move-result v0

    .line 82
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    return v16

    .line 72
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_e7
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->isAvrcpServiceReady()Z

    move-result v0

    .line 74
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    return v16

    .line 64
    .end local v0    # "_result":Z
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_e8
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->getUiServiceVersionName()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    return v16

    .line 59
    .end local v0    # "_result":Ljava/lang/String;
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :cond_14
    move-object v14, v11

    move-object v6, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v6, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    return v16

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
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
