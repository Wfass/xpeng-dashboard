.class public abstract Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;
.super Landroid/os/Binder;
.source "IXpDiagnostic.java"

# interfaces
.implements Landroid/car/hardware/XpVehicle/IXpDiagnostic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/XpVehicle/IXpDiagnostic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.hardware.XpVehicle.IXpDiagnostic"

.field static final TRANSACTION_getAebState:I = 0x64

.field static final TRANSACTION_getAgsFailureState:I = 0x5e

.field static final TRANSACTION_getAirbagFaultSt:I = 0x2c

.field static final TRANSACTION_getAllEcusFailureStates:I = 0x4f

.field static final TRANSACTION_getAllMsmModulesFailureStates:I = 0x60

.field static final TRANSACTION_getAllTirePerssureSensorsFailureStates:I = 0x56

.field static final TRANSACTION_getAllTireTemperatureWarnings:I = 0x55

.field static final TRANSACTION_getAlsErrorSt:I = 0x2d

.field static final TRANSACTION_getAndLastDiagCmd:I = 0x5

.field static final TRANSACTION_getAtlsErrSt:I = 0x23

.field static final TRANSACTION_getAvasFault:I = 0x29

.field static final TRANSACTION_getBatteryOverheatingState:I = 0x57

.field static final TRANSACTION_getBatteryPtcFailureStates:I = 0x68

.field static final TRANSACTION_getBatteryVoltageLowState:I = 0x5a

.field static final TRANSACTION_getCcsWorkState:I = 0x58

.field static final TRANSACTION_getCdcDataUploadSt:I = 0x40

.field static final TRANSACTION_getCiuSdcardFailureState:I = 0x62

.field static final TRANSACTION_getDcdcFailureState:I = 0x59

.field static final TRANSACTION_getDhcErr:I = 0x2e

.field static final TRANSACTION_getDvrFailureState:I = 0x61

.field static final TRANSACTION_getElectricMotorSystemHotState:I = 0x5b

.field static final TRANSACTION_getElectricVacuumPumpFailureState:I = 0x5c

.field static final TRANSACTION_getEpbSysFailureState:I = 0x53

.field static final TRANSACTION_getEpsWarnLamp:I = 0x3f

.field static final TRANSACTION_getEspAbsFault:I = 0x3c

.field static final TRANSACTION_getEspApbErrSt:I = 0x3b

.field static final TRANSACTION_getEspAvhFault:I = 0x3d

.field static final TRANSACTION_getEspEspFault:I = 0x3a

.field static final TRANSACTION_getFrontIpuFailureState:I = 0x51

.field static final TRANSACTION_getHdcFailureState:I = 0x54

.field static final TRANSACTION_getHighBeamFailState:I = 0x19

.field static final TRANSACTION_getHighVoltageRelayAdhesionState:I = 0x5d

.field static final TRANSACTION_getHvacCompressorFailureStates:I = 0x67

.field static final TRANSACTION_getHvacPtcFailureState:I = 0x66

.field static final TRANSACTION_getIbtFailureLamp:I = 0x3e

.field static final TRANSACTION_getLDtrOutputFailState:I = 0x1f

.field static final TRANSACTION_getLTurnLampFailState:I = 0x1b

.field static final TRANSACTION_getLdwState:I = 0x63

.field static final TRANSACTION_getLluErrSt:I = 0x22

.field static final TRANSACTION_getLowBeamFailState:I = 0x1a

.field static final TRANSACTION_getMaterSlaveSettings:I = 0x17

.field static final TRANSACTION_getMcuLastDiagCmd:I = 0x3

.field static final TRANSACTION_getMsmdEcuErr:I = 0x24

.field static final TRANSACTION_getMsmdHeatSysErr:I = 0x26

.field static final TRANSACTION_getMsmdVentilationMotorErr:I = 0x25

.field static final TRANSACTION_getMsmpEcuErr:I = 0x27

.field static final TRANSACTION_getMsmpHeatSysErr:I = 0x28

.field static final TRANSACTION_getParkingLampFailState:I = 0x20

.field static final TRANSACTION_getRDtrOutputFailState:I = 0x1e

.field static final TRANSACTION_getRTurnLampFailState:I = 0x1c

.field static final TRANSACTION_getRearFogFailState:I = 0x1d

.field static final TRANSACTION_getRearIpuFailureState:I = 0x52

.field static final TRANSACTION_getScuAlcCtrlRemind:I = 0x4d

.field static final TRANSACTION_getScuBsdSw:I = 0x43

.field static final TRANSACTION_getScuDowSw:I = 0x44

.field static final TRANSACTION_getScuIcmApaErrTips:I = 0x4e

.field static final TRANSACTION_getScuIhbSw:I = 0x42

.field static final TRANSACTION_getScuIslcSw:I = 0x4c

.field static final TRANSACTION_getScuLongCtrlRemind:I = 0x4b

.field static final TRANSACTION_getScuRctaSw:I = 0x45

.field static final TRANSACTION_getScuRcwSw:I = 0x46

.field static final TRANSACTION_getSideReversingState:I = 0x65

.field static final TRANSACTION_getSrrFlFailState:I = 0x47

.field static final TRANSACTION_getSrrFrFailState:I = 0x48

.field static final TRANSACTION_getSrrRlFailState:I = 0x49

.field static final TRANSACTION_getSrrRrFailState:I = 0x4a

.field static final TRANSACTION_getSysErrorWarn:I = 0x21

.field static final TRANSACTION_getSystemDiagContent:I = 0x7

.field static final TRANSACTION_getTcmMotorFailureStates:I = 0x5f

.field static final TRANSACTION_getTpmsAbnormalPrWarn:I = 0x2b

.field static final TRANSACTION_getTpmsSysFaultWarn:I = 0x2a

.field static final TRANSACTION_getVcuBCruiseErr:I = 0x34

.field static final TRANSACTION_getVcuChgPortHotDsp:I = 0x37

.field static final TRANSACTION_getVcuDeadBatteryFlag:I = 0x39

.field static final TRANSACTION_getVcuEbsErrDsp:I = 0x31

.field static final TRANSACTION_getVcuEvErrLampDsp:I = 0x2f

.field static final TRANSACTION_getVcuEvErrorMessage:I = 0x50

.field static final TRANSACTION_getVcuGearWarning:I = 0x30

.field static final TRANSACTION_getVcuLiquidHighTempErr:I = 0x32

.field static final TRANSACTION_getVcuObcMsgLost:I = 0x38

.field static final TRANSACTION_getVcuPowerLimitationDsp:I = 0x36

.field static final TRANSACTION_getVcuThermoRunawaySt:I = 0x35

.field static final TRANSACTION_getVcuWaterSensorErr:I = 0x33

.field static final TRANSACTION_getXpuXpuFailState:I = 0x41

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_sendAndDiagCmd:I = 0x6

.field static final TRANSACTION_sendCableDiagToMcu:I = 0xb

.field static final TRANSACTION_sendInsufficientSQI:I = 0x11

.field static final TRANSACTION_sendIpErr:I = 0x12

.field static final TRANSACTION_sendLinkStatus:I = 0xc

.field static final TRANSACTION_sendMaterSlaveMode:I = 0x16

.field static final TRANSACTION_sendMaterSlaveSettingsResponse:I = 0x18

.field static final TRANSACTION_sendMcuDiagCmdAck:I = 0x4

.field static final TRANSACTION_sendReceivedPak:I = 0xf

.field static final TRANSACTION_sendResetPhyToMcu:I = 0x9

.field static final TRANSACTION_sendSQI1000Base:I = 0x15

.field static final TRANSACTION_sendSQI100Base:I = 0x14

.field static final TRANSACTION_sendSQIMax:I = 0x13

.field static final TRANSACTION_sendSQIValue:I = 0xd

.field static final TRANSACTION_sendTestModeToMcu:I = 0xa

.field static final TRANSACTION_sendTransmittedPak:I = 0xe

.field static final TRANSACTION_sendUnexpectedLnkLoss:I = 0x10

.field static final TRANSACTION_setCarServiceDebugEnabled:I = 0x8

.field static final TRANSACTION_setDiagnSoaConfig:I = 0x69

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 423
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 424
    invoke-virtual {p0, p0, v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/hardware/XpVehicle/IXpDiagnostic;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 435
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 436
    instance-of v1, v0, Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    if-eqz v1, :cond_1

    .line 437
    check-cast v0, Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    return-object v0

    .line 439
    :cond_1
    new-instance v0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;
    .locals 1

    .line 3551
    sget-object v0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->sDefaultImpl:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/hardware/XpVehicle/IXpDiagnostic;)Z
    .locals 1

    .line 3544
    sget-object v0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->sDefaultImpl:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 3545
    sput-object p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->sDefaultImpl:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1330
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 1321
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1323
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1324
    invoke-virtual {p0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->setDiagnSoaConfig(Ljava/lang/String;)V

    .line 1325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1313
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getBatteryPtcFailureStates()[I

    move-result-object p1

    .line 1315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1316
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v1

    .line 1305
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1306
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getHvacCompressorFailureStates()[I

    move-result-object p1

    .line 1307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1308
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v1

    .line 1297
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1298
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getHvacPtcFailureState()I

    move-result p1

    .line 1299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1300
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1289
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1290
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getSideReversingState()I

    move-result p1

    .line 1291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1292
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1281
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1282
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getAebState()I

    move-result p1

    .line 1283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1284
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1273
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1274
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getLdwState()I

    move-result p1

    .line 1275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1276
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1265
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1266
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getCiuSdcardFailureState()I

    move-result p1

    .line 1267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1268
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1257
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1258
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDvrFailureState()I

    move-result p1

    .line 1259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1260
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1249
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1250
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getAllMsmModulesFailureStates()[I

    move-result-object p1

    .line 1251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1252
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v1

    .line 1241
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1242
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getTcmMotorFailureStates()[I

    move-result-object p1

    .line 1243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1244
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v1

    .line 1233
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1234
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getAgsFailureState()I

    move-result p1

    .line 1235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1236
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1225
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1226
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getHighVoltageRelayAdhesionState()I

    move-result p1

    .line 1227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1228
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1217
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1218
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getElectricVacuumPumpFailureState()I

    move-result p1

    .line 1219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1220
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1209
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1210
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getElectricMotorSystemHotState()I

    move-result p1

    .line 1211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1212
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1201
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1202
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getBatteryVoltageLowState()I

    move-result p1

    .line 1203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1204
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1193
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDcdcFailureState()I

    move-result p1

    .line 1195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1196
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1185
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1186
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getCcsWorkState()I

    move-result p1

    .line 1187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1188
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1177
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1178
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getBatteryOverheatingState()I

    move-result p1

    .line 1179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1169
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getAllTirePerssureSensorsFailureStates()[I

    move-result-object p1

    .line 1171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1172
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v1

    .line 1161
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1162
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getAllTireTemperatureWarnings()[I

    move-result-object p1

    .line 1163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1164
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v1

    .line 1153
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1154
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getHdcFailureState()I

    move-result p1

    .line 1155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1156
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1145
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getEpbSysFailureState()I

    move-result p1

    .line 1147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1148
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1137
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getRearIpuFailureState()I

    move-result p1

    .line 1139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1140
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1129
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getFrontIpuFailureState()I

    move-result p1

    .line 1131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1132
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1121
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getVcuEvErrorMessage()I

    move-result p1

    .line 1123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1124
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1107
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1108
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getAllEcusFailureStates()Landroid/car/diagnostic/EcusFailureStates;

    move-result-object p1

    .line 1109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 1111
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1112
    invoke-virtual {p1, p3, v1}, Landroid/car/diagnostic/EcusFailureStates;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1115
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 1099
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getScuIcmApaErrTips()I

    move-result p1

    .line 1101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1102
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1091
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1092
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getScuAlcCtrlRemind()I

    move-result p1

    .line 1093
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1094
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1083
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1084
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getScuIslcSw()I

    move-result p1

    .line 1085
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1075
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1076
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getScuLongCtrlRemind()I

    move-result p1

    .line 1077
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1078
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1067
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getSrrRrFailState()I

    move-result p1

    .line 1069
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1070
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1059
    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getSrrRlFailState()I

    move-result p1

    .line 1061
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1062
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1051
    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1052
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getSrrFrFailState()I

    move-result p1

    .line 1053
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1054
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1043
    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1044
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getSrrFlFailState()I

    move-result p1

    .line 1045
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1035
    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1036
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getScuRcwSw()I

    move-result p1

    .line 1037
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1038
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1027
    :pswitch_24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getScuRctaSw()I

    move-result p1

    .line 1029
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1030
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1019
    :pswitch_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getScuDowSw()I

    move-result p1

    .line 1021
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1022
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1011
    :pswitch_26
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1012
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getScuBsdSw()I

    move-result p1

    .line 1013
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1014
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1003
    :pswitch_27
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getScuIhbSw()I

    move-result p1

    .line 1005
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1006
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 995
    :pswitch_28
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 996
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getXpuXpuFailState()I

    move-result p1

    .line 997
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 998
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 987
    :pswitch_29
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 988
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getCdcDataUploadSt()I

    move-result p1

    .line 989
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 990
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 979
    :pswitch_2a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 980
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getEpsWarnLamp()I

    move-result p1

    .line 981
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 971
    :pswitch_2b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 972
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getIbtFailureLamp()I

    move-result p1

    .line 973
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 963
    :pswitch_2c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 964
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getEspAvhFault()I

    move-result p1

    .line 965
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 966
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 955
    :pswitch_2d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 956
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getEspAbsFault()I

    move-result p1

    .line 957
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 947
    :pswitch_2e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 948
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getEspApbErrSt()I

    move-result p1

    .line 949
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 939
    :pswitch_2f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 940
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getEspEspFault()I

    move-result p1

    .line 941
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 931
    :pswitch_30
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getVcuDeadBatteryFlag()I

    move-result p1

    .line 933
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 923
    :pswitch_31
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 924
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getVcuObcMsgLost()I

    move-result p1

    .line 925
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 915
    :pswitch_32
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 916
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getVcuChgPortHotDsp()I

    move-result p1

    .line 917
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 918
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 907
    :pswitch_33
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 908
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getVcuPowerLimitationDsp()I

    move-result p1

    .line 909
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 899
    :pswitch_34
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getVcuThermoRunawaySt()I

    move-result p1

    .line 901
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 891
    :pswitch_35
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 892
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getVcuBCruiseErr()I

    move-result p1

    .line 893
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 883
    :pswitch_36
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 884
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getVcuWaterSensorErr()I

    move-result p1

    .line 885
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 875
    :pswitch_37
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 876
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getVcuLiquidHighTempErr()I

    move-result p1

    .line 877
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 878
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 867
    :pswitch_38
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getVcuEbsErrDsp()I

    move-result p1

    .line 869
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 859
    :pswitch_39
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 860
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getVcuGearWarning()I

    move-result p1

    .line 861
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 851
    :pswitch_3a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getVcuEvErrLampDsp()I

    move-result p1

    .line 853
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 843
    :pswitch_3b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 844
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDhcErr()I

    move-result p1

    .line 845
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 835
    :pswitch_3c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 836
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getAlsErrorSt()I

    move-result p1

    .line 837
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 827
    :pswitch_3d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 828
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getAirbagFaultSt()I

    move-result p1

    .line 829
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 819
    :pswitch_3e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 820
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getTpmsAbnormalPrWarn()I

    move-result p1

    .line 821
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 822
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 811
    :pswitch_3f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 812
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getTpmsSysFaultWarn()I

    move-result p1

    .line 813
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 803
    :pswitch_40
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getAvasFault()I

    move-result p1

    .line 805
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 806
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 795
    :pswitch_41
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 796
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getMsmpHeatSysErr()I

    move-result p1

    .line 797
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 787
    :pswitch_42
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getMsmpEcuErr()I

    move-result p1

    .line 789
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 779
    :pswitch_43
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 780
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getMsmdHeatSysErr()I

    move-result p1

    .line 781
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 771
    :pswitch_44
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 772
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getMsmdVentilationMotorErr()I

    move-result p1

    .line 773
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 763
    :pswitch_45
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getMsmdEcuErr()I

    move-result p1

    .line 765
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 755
    :pswitch_46
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getAtlsErrSt()I

    move-result p1

    .line 757
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 747
    :pswitch_47
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 748
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getLluErrSt()I

    move-result p1

    .line 749
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 739
    :pswitch_48
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getSysErrorWarn()I

    move-result p1

    .line 741
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 731
    :pswitch_49
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 732
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getParkingLampFailState()I

    move-result p1

    .line 733
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 723
    :pswitch_4a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getLDtrOutputFailState()I

    move-result p1

    .line 725
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 715
    :pswitch_4b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getRDtrOutputFailState()I

    move-result p1

    .line 717
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 707
    :pswitch_4c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 708
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getRearFogFailState()I

    move-result p1

    .line 709
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 699
    :pswitch_4d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 700
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getRTurnLampFailState()I

    move-result p1

    .line 701
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 691
    :pswitch_4e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getLTurnLampFailState()I

    move-result p1

    .line 693
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 683
    :pswitch_4f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 684
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getLowBeamFailState()I

    move-result p1

    .line 685
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 675
    :pswitch_50
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getHighBeamFailState()I

    move-result p1

    .line 677
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 666
    :pswitch_51
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 669
    invoke-virtual {p0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->sendMaterSlaveSettingsResponse([B)V

    .line 670
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 658
    :pswitch_52
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getMaterSlaveSettings()[B

    move-result-object p1

    .line 660
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    return v1

    .line 649
    :pswitch_53
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 652
    invoke-virtual {p0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->sendMaterSlaveMode([B)V

    .line 653
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 640
    :pswitch_54
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 643
    invoke-virtual {p0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->sendSQI1000Base([B)V

    .line 644
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 631
    :pswitch_55
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 634
    invoke-virtual {p0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->sendSQI100Base([B)V

    .line 635
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 622
    :pswitch_56
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 625
    invoke-virtual {p0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->sendSQIMax([B)V

    .line 626
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 613
    :pswitch_57
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 616
    invoke-virtual {p0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->sendIpErr([B)V

    .line 617
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 604
    :pswitch_58
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 607
    invoke-virtual {p0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->sendInsufficientSQI([B)V

    .line 608
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 595
    :pswitch_59
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 598
    invoke-virtual {p0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->sendUnexpectedLnkLoss([B)V

    .line 599
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 586
    :pswitch_5a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 589
    invoke-virtual {p0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->sendReceivedPak([B)V

    .line 590
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 577
    :pswitch_5b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 580
    invoke-virtual {p0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->sendTransmittedPak([B)V

    .line 581
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 568
    :pswitch_5c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 571
    invoke-virtual {p0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->sendSQIValue([B)V

    .line 572
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 559
    :pswitch_5d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 562
    invoke-virtual {p0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->sendLinkStatus([B)V

    .line 563
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 550
    :pswitch_5e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 553
    invoke-virtual {p0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->sendCableDiagToMcu([B)V

    .line 554
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 541
    :pswitch_5f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 544
    invoke-virtual {p0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->sendTestModeToMcu([B)V

    .line 545
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 532
    :pswitch_60
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 535
    invoke-virtual {p0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->sendResetPhyToMcu([B)V

    .line 536
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 523
    :pswitch_61
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    .line 526
    :cond_1
    invoke-virtual {p0, v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->setCarServiceDebugEnabled(Z)V

    .line 527
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 515
    :pswitch_62
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getSystemDiagContent()I

    move-result p1

    .line 517
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 506
    :pswitch_63
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 509
    invoke-virtual {p0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->sendAndDiagCmd([B)V

    .line 510
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 498
    :pswitch_64
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getAndLastDiagCmd()[B

    move-result-object p1

    .line 500
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    return v1

    .line 489
    :pswitch_65
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 492
    invoke-virtual {p0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->sendMcuDiagCmdAck([B)V

    .line 493
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 481
    :pswitch_66
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getMcuLastDiagCmd()[B

    move-result-object p1

    .line 483
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    return v1

    .line 470
    :pswitch_67
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/car/hardware/property/ICarPropertyEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/property/ICarPropertyEventListener;

    move-result-object p2

    .line 475
    invoke-virtual {p0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->unregisterListener(ILandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 476
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 457
    :pswitch_68
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p4

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/car/hardware/property/ICarPropertyEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/property/ICarPropertyEventListener;

    move-result-object p2

    .line 464
    invoke-virtual {p0, p1, p4, p2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->registerListener(IFLandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 452
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
