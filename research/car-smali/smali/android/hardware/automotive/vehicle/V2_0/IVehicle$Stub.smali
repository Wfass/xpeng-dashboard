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

    .line 540
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 543
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 585
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 586
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 587
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 588
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 589
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

    .line 561
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
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
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

    .line 548
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

    .line 555
    const-string v0, "android.hardware.automotive.vehicle@2.0::IVehicle"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 574
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 594
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 595
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 9
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 623
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_e

    .line 934
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 935
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_25

    .line 936
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 937
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 938
    goto/16 :goto_e

    .line 921
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 922
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 923
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 924
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 925
    goto/16 :goto_e

    .line 926
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 928
    invoke-virtual {p0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->notifySyspropsChanged()V

    .line 929
    goto/16 :goto_e

    .line 905
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 906
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 907
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 908
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 909
    goto/16 :goto_e

    .line 910
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    invoke-virtual {p0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 913
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 914
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 915
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 916
    goto/16 :goto_e

    .line 890
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 891
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 892
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 893
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 894
    goto/16 :goto_e

    .line 895
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-virtual {p0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->ping()V

    .line 898
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 899
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 900
    goto/16 :goto_e

    .line 880
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 881
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_25

    .line 882
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 883
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 884
    goto/16 :goto_e

    .line 867
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 868
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 869
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 870
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 871
    goto/16 :goto_e

    .line 872
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 874
    invoke-virtual {p0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->setHALInstrumentation()V

    .line 875
    goto/16 :goto_e

    .line 834
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 835
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 836
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 837
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 838
    goto/16 :goto_e

    .line 839
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 842
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 844
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 846
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 847
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 848
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 849
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 850
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 852
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 853
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 854
    nop

    .line 850
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 857
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 859
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 861
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 862
    goto/16 :goto_e

    .line 818
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 819
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 820
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 821
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 822
    goto/16 :goto_e

    .line 823
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 825
    invoke-virtual {p0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 826
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 827
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 828
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 829
    goto/16 :goto_e

    .line 804
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 805
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 806
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 807
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 808
    goto/16 :goto_e

    .line 809
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 811
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 812
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 813
    goto/16 :goto_e

    .line 788
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 789
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 790
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 791
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 792
    goto/16 :goto_e

    .line 793
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    invoke-virtual {p0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 796
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 797
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 798
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 799
    goto/16 :goto_e

    .line 772
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    goto :goto_7

    :cond_13
    move v2, v1

    .line 773
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_7
    if-eqz v2, :cond_14

    .line 774
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 775
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 776
    goto/16 :goto_e

    .line 777
    :cond_14
    const-string v0, "android.hardware.automotive.vehicle@2.0::IVehicle"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 779
    invoke-virtual {p0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->debugDump()Ljava/lang/String;

    move-result-object v0

    .line 780
    .local v0, "_hidl_out_s":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 781
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 783
    goto/16 :goto_e

    .line 754
    .end local v0    # "_hidl_out_s":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    goto :goto_8

    :cond_15
    move v2, v1

    .line 755
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_8
    if-eqz v2, :cond_16

    .line 756
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 757
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 758
    goto/16 :goto_e

    .line 759
    :cond_16
    const-string v0, "android.hardware.automotive.vehicle@2.0::IVehicle"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 761
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;

    move-result-object v0

    .line 762
    .local v0, "callback":Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 763
    .local v3, "propId":I
    invoke-virtual {p0, v0, v3}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->unsubscribe(Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;I)I

    move-result v4

    .line 764
    .local v4, "_hidl_out_status":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 765
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 766
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 767
    goto/16 :goto_e

    .line 736
    .end local v0    # "callback":Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "propId":I
    .end local v4    # "_hidl_out_status":I
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    goto :goto_9

    :cond_17
    move v2, v1

    .line 737
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_9
    if-eqz v2, :cond_18

    .line 738
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 739
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 740
    goto/16 :goto_e

    .line 741
    :cond_18
    const-string v0, "android.hardware.automotive.vehicle@2.0::IVehicle"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;

    move-result-object v0

    .line 744
    .restart local v0    # "callback":Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;
    invoke-static {p2}, Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 745
    .local v3, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;>;"
    invoke-virtual {p0, v0, v3}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->subscribe(Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;Ljava/util/ArrayList;)I

    move-result v4

    .line 746
    .restart local v4    # "_hidl_out_status":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 747
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 748
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 749
    goto/16 :goto_e

    .line 719
    .end local v0    # "callback":Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;>;"
    .end local v4    # "_hidl_out_status":I
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    goto :goto_a

    :cond_19
    move v2, v1

    .line 720
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_a
    if-eqz v2, :cond_1a

    .line 721
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 722
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 723
    goto/16 :goto_e

    .line 724
    :cond_1a
    const-string v0, "android.hardware.automotive.vehicle@2.0::IVehicle"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    invoke-static {p2}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 727
    .local v0, "propValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;"
    invoke-virtual {p0, v0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->setMulti(Ljava/util/ArrayList;)I

    move-result v3

    .line 728
    .local v3, "_hidl_out_status":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 729
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 730
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 731
    goto/16 :goto_e

    .line 701
    .end local v0    # "propValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;"
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":I
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    goto :goto_b

    :cond_1b
    move v2, v1

    .line 702
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_b
    if-eqz v2, :cond_1c

    .line 703
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 704
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 705
    goto/16 :goto_e

    .line 706
    :cond_1c
    const-string v0, "android.hardware.automotive.vehicle@2.0::IVehicle"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 708
    new-instance v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    invoke-direct {v0}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;-><init>()V

    .line 709
    .local v0, "propValue":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    invoke-virtual {v0, p2}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->readFromParcel(Landroid/os/HwParcel;)V

    .line 710
    invoke-virtual {p0, v0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->set(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)I

    move-result v3

    .line 711
    .restart local v3    # "_hidl_out_status":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 712
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 713
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 714
    goto/16 :goto_e

    .line 679
    .end local v0    # "propValue":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":I
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    .line 680
    .local v1, "_hidl_is_oneway":Z
    :cond_1d
    if-eqz v1, :cond_1e

    .line 681
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 682
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 683
    goto/16 :goto_e

    .line 684
    :cond_1e
    const-string v0, "android.hardware.automotive.vehicle@2.0::IVehicle"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    new-instance v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    invoke-direct {v0}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;-><init>()V

    .line 687
    .local v0, "requestedPropValue":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    invoke-virtual {v0, p2}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->readFromParcel(Landroid/os/HwParcel;)V

    .line 688
    new-instance v2, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub$2;

    invoke-direct {v2, p0, p3}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub$2;-><init>(Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v2}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->get(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;Landroid/hardware/automotive/vehicle/V2_0/IVehicle$getCallback;)V

    .line 696
    goto/16 :goto_e

    .line 658
    .end local v0    # "requestedPropValue":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 659
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eqz v1, :cond_20

    .line 660
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 661
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 662
    goto :goto_e

    .line 663
    :cond_20
    const-string v0, "android.hardware.automotive.vehicle@2.0::IVehicle"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 666
    .local v0, "props":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v2, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub$1;

    invoke-direct {v2, p0, p3}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub$1;-><init>(Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v2}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->getPropConfigs(Ljava/util/ArrayList;Landroid/hardware/automotive/vehicle/V2_0/IVehicle$getPropConfigsCallback;)V

    .line 674
    goto :goto_e

    .line 642
    .end local v0    # "props":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    goto :goto_c

    :cond_21
    move v2, v1

    .line 643
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_c
    if-eqz v2, :cond_22

    .line 644
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 645
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 646
    goto :goto_e

    .line 647
    :cond_22
    const-string v0, "android.hardware.automotive.vehicle@2.0::IVehicle"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->getRefreshAllPropConfigs()Ljava/util/ArrayList;

    move-result-object v0

    .line 650
    .local v0, "_hidl_out_propConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 651
    invoke-static {p3, v0}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 652
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 653
    goto :goto_e

    .line 626
    .end local v0    # "_hidl_out_propConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    goto :goto_d

    :cond_23
    move v2, v1

    .line 627
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_d
    if-eqz v2, :cond_24

    .line 628
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 629
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 630
    goto :goto_e

    .line 631
    :cond_24
    const-string v0, "android.hardware.automotive.vehicle@2.0::IVehicle"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->getAllPropConfigs()Ljava/util/ArrayList;

    move-result-object v0

    .line 634
    .restart local v0    # "_hidl_out_propConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 635
    invoke-static {p3, v0}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 636
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 637
    nop

    .line 943
    .end local v0    # "_hidl_out_propConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :cond_25
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

    .line 579
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 605
    const-string v0, "android.hardware.automotive.vehicle@2.0::IVehicle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    return-object p0

    .line 608
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 612
    invoke-virtual {p0, p1}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->registerService(Ljava/lang/String;)V

    .line 613
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 570
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 599
    const/4 v0, 0x1

    return v0
.end method
