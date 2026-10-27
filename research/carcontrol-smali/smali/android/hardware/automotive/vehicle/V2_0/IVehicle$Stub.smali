.class public abstract Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;
.super Landroid/os/HwBinder;
.source "IVehicle.java"

# interfaces
.implements Landroid/hardware/automotive/vehicle/V2_0/IVehicle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/automotive/vehicle/V2_0/IVehicle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 585
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 638
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 639
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v1, 0x0

    .line 640
    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v1, 0x0

    .line 641
    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 613
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 593
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.automotive.vehicle@2.0::IVehicle"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "android.hardware.automotive.vehicle@2.0::IVehicle"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 648
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.hardware.automotive.vehicle@2.0::IVehicle"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_e

    :sswitch_0
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_0

    move v2, v3

    :cond_0
    if-eqz v2, :cond_26

    .line 1000
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1001
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_e

    :sswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1

    move v2, v3

    :cond_1
    if-eq v2, v3, :cond_2

    .line 987
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 988
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_e

    .line 990
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 992
    invoke-virtual {p0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->notifySyspropsChanged()V

    goto/16 :goto_e

    :sswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    if-eqz v3, :cond_4

    .line 971
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 972
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_e

    .line 974
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 976
    invoke-virtual {p0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 977
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 978
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 979
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_e

    :sswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_1
    if-eqz v3, :cond_6

    .line 956
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 957
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_e

    .line 959
    :cond_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 961
    invoke-virtual {p0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->ping()V

    .line 962
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 963
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_e

    :sswitch_4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7

    move v2, v3

    :cond_7
    if-eqz v2, :cond_26

    .line 946
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 947
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_e

    :sswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8

    move v2, v3

    :cond_8
    if-eq v2, v3, :cond_9

    .line 933
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 934
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_e

    .line 936
    :cond_9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 938
    invoke-virtual {p0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->setHALInstrumentation()V

    goto/16 :goto_e

    :sswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    move v3, v2

    :goto_2
    if-eqz v3, :cond_b

    .line 894
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 895
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_e

    .line 897
    :cond_b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 899
    invoke-virtual {p0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 900
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 902
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 904
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    const-wide/16 v0, 0x8

    .line 905
    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 906
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 907
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_3
    if-ge v2, p4, :cond_d

    mul-int/lit8 v1, v2, 0x20

    int-to-long v3, v1

    .line 911
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_c

    .line 913
    array-length v5, v1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_c

    .line 917
    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 914
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    const-wide/16 v1, 0x0

    .line 921
    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 923
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 925
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_e

    :sswitch_7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_e

    goto :goto_4

    :cond_e
    move v3, v2

    :goto_4
    if-eqz v3, :cond_f

    .line 878
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 879
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_e

    .line 881
    :cond_f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 883
    invoke-virtual {p0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 884
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 885
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 886
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_e

    :sswitch_8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_10

    goto :goto_5

    :cond_10
    move v3, v2

    :goto_5
    if-eqz v3, :cond_11

    .line 861
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 862
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_e

    .line 864
    :cond_11
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 866
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 867
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 868
    invoke-virtual {p0, p1, p2}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 869
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 870
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_e

    :sswitch_9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_12

    goto :goto_6

    :cond_12
    move v3, v2

    :goto_6
    if-eqz v3, :cond_13

    .line 845
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 846
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_e

    .line 848
    :cond_13
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    invoke-virtual {p0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 851
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 852
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 853
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_e

    :pswitch_0
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_14

    goto :goto_7

    :cond_14
    move v3, v2

    :goto_7
    if-eqz v3, :cond_15

    .line 829
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 830
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_e

    .line 832
    :cond_15
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    invoke-virtual {p0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->debugDump()Ljava/lang/String;

    move-result-object p1

    .line 835
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 836
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 837
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_e

    :pswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_16

    goto :goto_8

    :cond_16
    move v3, v2

    :goto_8
    if-eqz v3, :cond_17

    .line 811
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 812
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_e

    .line 814
    :cond_17
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;

    move-result-object p1

    .line 817
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 818
    invoke-virtual {p0, p1, p2}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->unsubscribe(Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;I)I

    move-result p1

    .line 819
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 820
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 821
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_e

    :pswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_18

    goto :goto_9

    :cond_18
    move v3, v2

    :goto_9
    if-eqz v3, :cond_19

    .line 793
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 794
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_e

    .line 796
    :cond_19
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 798
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;

    move-result-object p1

    .line 799
    invoke-static {p2}, Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 800
    invoke-virtual {p0, p1, p2}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->subscribe(Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;Ljava/util/ArrayList;)I

    move-result p1

    .line 801
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 802
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 803
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_e

    :pswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1a

    goto :goto_a

    :cond_1a
    move v3, v2

    :goto_a
    if-eqz v3, :cond_1b

    .line 776
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 777
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_e

    .line 779
    :cond_1b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 781
    invoke-static {p2}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 782
    invoke-virtual {p0, p1}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->setMulti(Ljava/util/ArrayList;)I

    move-result p1

    .line 783
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 784
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 785
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_e

    :pswitch_4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1c

    goto :goto_b

    :cond_1c
    move v3, v2

    :goto_b
    if-eqz v3, :cond_1d

    .line 758
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 759
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_e

    .line 761
    :cond_1d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 763
    new-instance p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    invoke-direct {p1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;-><init>()V

    .line 764
    invoke-virtual {p1, p2}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->readFromParcel(Landroid/os/HwParcel;)V

    .line 765
    invoke-virtual {p0, p1}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->set(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)I

    move-result p1

    .line 766
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 767
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 768
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_e

    :pswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1e

    move v2, v3

    :cond_1e
    if-eqz v2, :cond_1f

    .line 736
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 737
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_e

    .line 739
    :cond_1f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    new-instance p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    invoke-direct {p1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;-><init>()V

    .line 742
    invoke-virtual {p1, p2}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->readFromParcel(Landroid/os/HwParcel;)V

    .line 743
    new-instance p2, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub$2;

    invoke-direct {p2, p0, p3}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub$2;-><init>(Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1, p2}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->get(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;Landroid/hardware/automotive/vehicle/V2_0/IVehicle$getCallback;)V

    goto :goto_e

    :pswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_20

    move v2, v3

    :cond_20
    if-eqz v2, :cond_21

    .line 715
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 716
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_e

    .line 718
    :cond_21
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 721
    new-instance p2, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub$1;

    invoke-direct {p2, p0, p3}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub$1;-><init>(Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1, p2}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->getPropConfigs(Ljava/util/ArrayList;Landroid/hardware/automotive/vehicle/V2_0/IVehicle$getPropConfigsCallback;)V

    goto :goto_e

    :pswitch_7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_22

    goto :goto_c

    :cond_22
    move v3, v2

    :goto_c
    if-eqz v3, :cond_23

    .line 699
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 700
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_e

    .line 702
    :cond_23
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual {p0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->getRefreshAllPropConfigs()Ljava/util/ArrayList;

    move-result-object p1

    .line 705
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 706
    invoke-static {p3, p1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 707
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_e

    :pswitch_8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_24

    goto :goto_d

    :cond_24
    move v3, v2

    :goto_d
    if-eqz v3, :cond_25

    .line 683
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 684
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_e

    .line 686
    :cond_25
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->getAllPropConfigs()Ljava/util/ArrayList;

    move-result-object p1

    .line 689
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 690
    invoke-static {p3, p1}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 691
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :cond_26
    :goto_e
    return-void

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

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_9
        0xf444247 -> :sswitch_8
        0xf445343 -> :sswitch_7
        0xf485348 -> :sswitch_6
        0xf494e54 -> :sswitch_5
        0xf4c5444 -> :sswitch_4
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_2
        0xf535953 -> :sswitch_1
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string v0, "android.hardware.automotive.vehicle@2.0::IVehicle"

    .line 660
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 667
    invoke-virtual {p0, p1}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
