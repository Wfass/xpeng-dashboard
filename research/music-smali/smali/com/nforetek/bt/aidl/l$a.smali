.class public abstract Lcom/nforetek/bt/aidl/l$a;
.super Landroid/os/Binder;
.source "UiCommand.java"

# interfaces
.implements Lcom/nforetek/bt/aidl/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nforetek/bt/aidl/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nforetek/bt/aidl/l$a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/l;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.nforetek.bt.aidl.UiCommand"

    .line 42
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    instance-of v1, v0, Lcom/nforetek/bt/aidl/l;

    if-eqz v1, :cond_1

    .line 44
    check-cast v0, Lcom/nforetek/bt/aidl/l;

    return-object v0

    .line 46
    :cond_1
    new-instance v0, Lcom/nforetek/bt/aidl/l$a$a;

    invoke-direct {v0, p0}, Lcom/nforetek/bt/aidl/l$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17

    move-object/from16 v13, p0

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v14, p3

    const v2, 0x5f4e5446

    const/4 v15, 0x1

    const-string v3, "com.nforetek.bt.aidl.UiCommand"

    if-eq v0, v2, :cond_13

    const/4 v2, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2248
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 2238
    :pswitch_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2241
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->Q(Ljava/lang/String;)Z

    move-result v0

    .line 2242
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2243
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 2228
    :pswitch_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2231
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->i(I)I

    move-result v0

    .line 2232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2233
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 2220
    :pswitch_2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2221
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->ba()I

    move-result v0

    .line 2222
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2223
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 2212
    :pswitch_3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2213
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->aZ()Ljava/lang/String;

    move-result-object v0

    .line 2214
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2215
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    .line 2204
    :pswitch_4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2205
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->aY()Ljava/lang/String;

    move-result-object v0

    .line 2206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2207
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    .line 2194
    :pswitch_5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2197
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->P(Ljava/lang/String;)Z

    move-result v0

    .line 2198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2199
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 2186
    :pswitch_6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2187
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->aX()Ljava/lang/String;

    move-result-object v0

    .line 2188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2189
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    .line 2178
    :pswitch_7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2179
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->aW()Ljava/util/List;

    move-result-object v0

    .line 2180
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2181
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v15

    .line 2168
    :pswitch_8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2171
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->O(Ljava/lang/String;)Z

    move-result v0

    .line 2172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2173
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 2158
    :pswitch_9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2161
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->N(Ljava/lang/String;)I

    move-result v0

    .line 2162
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2163
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 2148
    :pswitch_a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2151
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->M(Ljava/lang/String;)Z

    move-result v0

    .line 2152
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2153
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 2138
    :pswitch_b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2141
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->L(Ljava/lang/String;)Z

    move-result v0

    .line 2142
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2143
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 2130
    :pswitch_c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2131
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->aV()Z

    move-result v0

    .line 2132
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2133
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 2122
    :pswitch_d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2123
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->aU()Z

    move-result v0

    .line 2124
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2125
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 2112
    :pswitch_e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v4, v15

    .line 2115
    :cond_0
    invoke-virtual {v13, v4}, Lcom/nforetek/bt/aidl/l$a;->f(Z)Z

    move-result v0

    .line 2116
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2117
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 2102
    :pswitch_f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2105
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->K(Ljava/lang/String;)Z

    move-result v0

    .line 2106
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2107
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 2094
    :pswitch_10
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2095
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->aT()Z

    move-result v0

    .line 2096
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2097
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 2084
    :pswitch_11
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2086
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2087
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->J(Ljava/lang/String;)Z

    move-result v0

    .line 2088
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2089
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 2076
    :pswitch_12
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2077
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->aS()Z

    move-result v0

    .line 2078
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2079
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 2068
    :pswitch_13
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2069
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->aR()Z

    move-result v0

    .line 2070
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2071
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 2058
    :pswitch_14
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2060
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/k$a;->a(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/k;

    move-result-object v0

    .line 2061
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->b(Lcom/nforetek/bt/aidl/k;)Z

    move-result v0

    .line 2062
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2063
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 2048
    :pswitch_15
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2050
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/k$a;->a(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/k;

    move-result-object v0

    .line 2051
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->a(Lcom/nforetek/bt/aidl/k;)Z

    move-result v0

    .line 2052
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2053
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 2026
    :pswitch_16
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2028
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2029
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 2035
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 2036
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/os/ParcelUuid;

    .line 2041
    :cond_2
    invoke-virtual {v13, v0, v2}, Lcom/nforetek/bt/aidl/l$a;->a(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Ljava/util/List;

    move-result-object v0

    .line 2042
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2043
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v15

    .line 2011
    :pswitch_17
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2013
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2014
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/ParcelUuid;

    .line 2019
    :cond_3
    invoke-virtual {v13, v2}, Lcom/nforetek/bt/aidl/l$a;->a(Landroid/os/ParcelUuid;)Ljava/util/List;

    move-result-object v0

    .line 2020
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2021
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v15

    .line 2003
    :pswitch_18
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2004
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->aQ()Ljava/util/List;

    move-result-object v0

    .line 2005
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2006
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v15

    .line 1973
    :pswitch_19
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1975
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1977
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1979
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1980
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    move-object v6, v0

    goto :goto_1

    :cond_4
    move-object v6, v2

    .line 1986
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 1987
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    move-object v7, v0

    goto :goto_2

    :cond_5
    move-object v7, v2

    .line 1993
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v8, v15

    goto :goto_3

    :cond_6
    move v8, v4

    .line 1995
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v5

    move-object v3, v6

    move-object v4, v7

    move v5, v8

    move-object v6, v9

    .line 1996
    invoke-virtual/range {v0 .. v6}, Lcom/nforetek/bt/aidl/l$a;->a(Ljava/lang/String;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;Z[B)Z

    move-result v0

    .line 1997
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1998
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1955
    :pswitch_1a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1957
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1959
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1961
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1963
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1965
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    .line 1966
    invoke-virtual/range {v0 .. v5}, Lcom/nforetek/bt/aidl/l$a;->a(Ljava/lang/String;III[B)Z

    move-result v0

    .line 1967
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1968
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1945
    :pswitch_1b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    move v4, v15

    .line 1948
    :cond_7
    invoke-virtual {v13, v4}, Lcom/nforetek/bt/aidl/l$a;->e(Z)Z

    move-result v0

    .line 1949
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1950
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1937
    :pswitch_1c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1938
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->aP()Z

    move-result v0

    .line 1939
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1940
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1920
    :pswitch_1d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1922
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1924
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    .line 1925
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/os/ParcelUuid;

    .line 1930
    :cond_8
    invoke-virtual {v13, v0, v2}, Lcom/nforetek/bt/aidl/l$a;->b(ILandroid/os/ParcelUuid;)Z

    move-result v0

    .line 1931
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1932
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1912
    :pswitch_1e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1913
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->aO()Z

    move-result v0

    .line 1914
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1915
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1895
    :pswitch_1f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1897
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 1898
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/ParcelUuid;

    .line 1904
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1905
    invoke-virtual {v13, v2, v0}, Lcom/nforetek/bt/aidl/l$a;->a(Landroid/os/ParcelUuid;I)Z

    move-result v0

    .line 1906
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1907
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1876
    :pswitch_20
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1878
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 1879
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/ParcelUuid;

    .line 1885
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1887
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1888
    invoke-virtual {v13, v2, v0, v1}, Lcom/nforetek/bt/aidl/l$a;->a(Landroid/os/ParcelUuid;II)Z

    move-result v0

    .line 1889
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1890
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1859
    :pswitch_21
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1861
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1863
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    .line 1864
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/os/ParcelUuid;

    .line 1869
    :cond_b
    invoke-virtual {v13, v0, v2}, Lcom/nforetek/bt/aidl/l$a;->a(ILandroid/os/ParcelUuid;)Z

    move-result v0

    .line 1870
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1871
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1849
    :pswitch_22
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1851
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1852
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->I(Ljava/lang/String;)Z

    move-result v0

    .line 1853
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1854
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1841
    :pswitch_23
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1842
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->aN()I

    move-result v0

    .line 1843
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1844
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1831
    :pswitch_24
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1833
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/d$a;->a(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/d;

    move-result-object v0

    .line 1834
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->b(Lcom/nforetek/bt/aidl/d;)Z

    move-result v0

    .line 1835
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1836
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1821
    :pswitch_25
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1823
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/d$a;->a(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/d;

    move-result-object v0

    .line 1824
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->a(Lcom/nforetek/bt/aidl/d;)Z

    move-result v0

    .line 1825
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1826
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1813
    :pswitch_26
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1814
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->aM()Z

    move-result v0

    .line 1815
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1816
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1806
    :pswitch_27
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1807
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->aL()V

    .line 1808
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    .line 1798
    :pswitch_28
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1799
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->aK()Ljava/lang/String;

    move-result-object v0

    .line 1800
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1801
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    .line 1789
    :pswitch_29
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1792
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->H(Ljava/lang/String;)V

    .line 1793
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    .line 1781
    :pswitch_2a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1782
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->aJ()Z

    move-result v0

    .line 1783
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1784
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1771
    :pswitch_2b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1773
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    move v4, v15

    .line 1774
    :cond_c
    invoke-virtual {v13, v4}, Lcom/nforetek/bt/aidl/l$a;->d(Z)Z

    move-result v0

    .line 1775
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1776
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1763
    :pswitch_2c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1764
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->aI()Ljava/lang/String;

    move-result-object v0

    .line 1765
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1766
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    .line 1753
    :pswitch_2d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1755
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1756
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->G(Ljava/lang/String;)Z

    move-result v0

    .line 1757
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1758
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1743
    :pswitch_2e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/h$a;->a(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/h;

    move-result-object v0

    .line 1746
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->b(Lcom/nforetek/bt/aidl/h;)Z

    move-result v0

    .line 1747
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1748
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1733
    :pswitch_2f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1735
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/h$a;->a(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/h;

    move-result-object v0

    .line 1736
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->a(Lcom/nforetek/bt/aidl/h;)Z

    move-result v0

    .line 1737
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1738
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1723
    :pswitch_30
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1725
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1726
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->h(I)Z

    move-result v0

    .line 1727
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1728
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1707
    :pswitch_31
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1711
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1713
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1715
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    move v4, v15

    .line 1716
    :cond_d
    invoke-virtual {v13, v0, v2, v3, v4}, Lcom/nforetek/bt/aidl/l$a;->a(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v0

    .line 1717
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1718
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1693
    :pswitch_32
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1697
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1699
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1700
    invoke-virtual {v13, v0, v2, v1}, Lcom/nforetek/bt/aidl/l$a;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    .line 1701
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1702
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1679
    :pswitch_33
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1683
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1685
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1686
    invoke-virtual {v13, v0, v2, v1}, Lcom/nforetek/bt/aidl/l$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1687
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1688
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1669
    :pswitch_34
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1671
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1672
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->F(Ljava/lang/String;)I

    move-result v0

    .line 1673
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1674
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1659
    :pswitch_35
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1662
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->E(Ljava/lang/String;)I

    move-result v0

    .line 1663
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1664
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1652
    :pswitch_36
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1653
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->aH()V

    .line 1654
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    .line 1643
    :pswitch_37
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1645
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1646
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->D(Ljava/lang/String;)V

    .line 1647
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    .line 1636
    :pswitch_38
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1637
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->aG()V

    .line 1638
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    .line 1626
    :pswitch_39
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1628
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1629
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->C(Ljava/lang/String;)Z

    move-result v0

    .line 1630
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1631
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1616
    :pswitch_3a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1618
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1619
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->B(Ljava/lang/String;)Z

    move-result v0

    .line 1620
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1621
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1607
    :pswitch_3b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1610
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->A(Ljava/lang/String;)V

    .line 1611
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    .line 1595
    :pswitch_3c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1597
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    move v4, v15

    .line 1600
    :cond_e
    invoke-virtual {v13, v0, v4}, Lcom/nforetek/bt/aidl/l$a;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 1601
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1602
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1563
    :pswitch_3d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    move v4, v15

    .line 1571
    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1573
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1577
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1581
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1583
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 1585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    move/from16 v12, v16

    .line 1588
    invoke-virtual/range {v0 .. v12}, Lcom/nforetek/bt/aidl/l$a;->a(Ljava/lang/String;IZIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    .line 1589
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1590
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1547
    :pswitch_3e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1549
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1556
    invoke-virtual {v13, v0, v2, v3, v1}, Lcom/nforetek/bt/aidl/l$a;->a(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    .line 1557
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1558
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1537
    :pswitch_3f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1539
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/g$a;->a(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/g;

    move-result-object v0

    .line 1540
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->b(Lcom/nforetek/bt/aidl/g;)Z

    move-result v0

    .line 1541
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1542
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1527
    :pswitch_40
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1529
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/g$a;->a(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/g;

    move-result-object v0

    .line 1530
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->a(Lcom/nforetek/bt/aidl/g;)Z

    move-result v0

    .line 1531
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1532
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1515
    :pswitch_41
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1520
    invoke-virtual {v13, v0, v1}, Lcom/nforetek/bt/aidl/l$a;->b(II)Z

    move-result v0

    .line 1521
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1522
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1499
    :pswitch_42
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1501
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1503
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1505
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1508
    invoke-virtual {v13, v0, v2, v3, v1}, Lcom/nforetek/bt/aidl/l$a;->a(IIII)Z

    move-result v0

    .line 1509
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1510
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1489
    :pswitch_43
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1492
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->z(Ljava/lang/String;)Z

    move-result v0

    .line 1493
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1494
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1479
    :pswitch_44
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1482
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->y(Ljava/lang/String;)Z

    move-result v0

    .line 1483
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1484
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1471
    :pswitch_45
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1472
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->aF()Ljava/lang/String;

    move-result-object v0

    .line 1473
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1474
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    .line 1463
    :pswitch_46
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1464
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->aE()Z

    move-result v0

    .line 1465
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1466
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1455
    :pswitch_47
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1456
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->aD()I

    move-result v0

    .line 1457
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1458
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1445
    :pswitch_48
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1447
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/f$a;->a(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/f;

    move-result-object v0

    .line 1448
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->b(Lcom/nforetek/bt/aidl/f;)Z

    move-result v0

    .line 1449
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1450
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1435
    :pswitch_49
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/f$a;->a(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/f;

    move-result-object v0

    .line 1438
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->a(Lcom/nforetek/bt/aidl/f;)Z

    move-result v0

    .line 1439
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1440
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1424
    :pswitch_4a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1429
    invoke-virtual {v13, v0, v1}, Lcom/nforetek/bt/aidl/l$a;->a(Ljava/lang/String;[B)V

    .line 1430
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    .line 1414
    :pswitch_4b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1417
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->x(Ljava/lang/String;)Z

    move-result v0

    .line 1418
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1419
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1407
    :pswitch_4c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1408
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->aC()V

    .line 1409
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    .line 1397
    :pswitch_4d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1400
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->w(Ljava/lang/String;)Z

    move-result v0

    .line 1401
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1402
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1387
    :pswitch_4e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1390
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->v(Ljava/lang/String;)Z

    move-result v0

    .line 1391
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1392
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1377
    :pswitch_4f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/j$a;->a(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/j;

    move-result-object v0

    .line 1380
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->b(Lcom/nforetek/bt/aidl/j;)Z

    move-result v0

    .line 1381
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1382
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1367
    :pswitch_50
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/j$a;->a(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/j;

    move-result-object v0

    .line 1370
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->a(Lcom/nforetek/bt/aidl/j;)Z

    move-result v0

    .line 1371
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1372
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1357
    :pswitch_51
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1360
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->g(I)Z

    move-result v0

    .line 1361
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1362
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1347
    :pswitch_52
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1350
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->u(Ljava/lang/String;)Z

    move-result v0

    .line 1351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1352
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1340
    :pswitch_53
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1341
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->aB()V

    .line 1342
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    .line 1331
    :pswitch_54
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1334
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->t(Ljava/lang/String;)V

    .line 1335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    .line 1322
    :pswitch_55
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1325
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->s(Ljava/lang/String;)V

    .line 1326
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    .line 1309
    :pswitch_56
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1316
    invoke-virtual {v13, v0, v2, v1}, Lcom/nforetek/bt/aidl/l$a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1317
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    .line 1298
    :pswitch_57
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1303
    invoke-virtual {v13, v0, v1}, Lcom/nforetek/bt/aidl/l$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    .line 1280
    :pswitch_58
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    .line 1291
    invoke-virtual/range {v0 .. v5}, Lcom/nforetek/bt/aidl/l$a;->c(Ljava/lang/String;IIII)Z

    move-result v0

    .line 1292
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1293
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1266
    :pswitch_59
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1273
    invoke-virtual {v13, v0, v2, v1}, Lcom/nforetek/bt/aidl/l$a;->c(Ljava/lang/String;II)Z

    move-result v0

    .line 1274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1275
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1248
    :pswitch_5a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    .line 1259
    invoke-virtual/range {v0 .. v5}, Lcom/nforetek/bt/aidl/l$a;->b(Ljava/lang/String;IIII)Z

    move-result v0

    .line 1260
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1261
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1234
    :pswitch_5b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1238
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1241
    invoke-virtual {v13, v0, v2, v1}, Lcom/nforetek/bt/aidl/l$a;->b(Ljava/lang/String;II)Z

    move-result v0

    .line 1242
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1243
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1216
    :pswitch_5c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    .line 1227
    invoke-virtual/range {v0 .. v5}, Lcom/nforetek/bt/aidl/l$a;->a(Ljava/lang/String;IIII)Z

    move-result v0

    .line 1228
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1229
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1202
    :pswitch_5d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1209
    invoke-virtual {v13, v0, v2, v1}, Lcom/nforetek/bt/aidl/l$a;->a(Ljava/lang/String;II)Z

    move-result v0

    .line 1210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1211
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1194
    :pswitch_5e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1195
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->aA()Ljava/lang/String;

    move-result-object v0

    .line 1196
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1197
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    .line 1186
    :pswitch_5f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1187
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->az()Z

    move-result v0

    .line 1188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1189
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1178
    :pswitch_60
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1179
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->ay()I

    move-result v0

    .line 1180
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1181
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1168
    :pswitch_61
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/i$a;->a(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/i;

    move-result-object v0

    .line 1171
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->b(Lcom/nforetek/bt/aidl/i;)Z

    move-result v0

    .line 1172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1173
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1158
    :pswitch_62
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/i$a;->a(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/i;

    move-result-object v0

    .line 1161
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->a(Lcom/nforetek/bt/aidl/i;)Z

    move-result v0

    .line 1162
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1163
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1150
    :pswitch_63
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1151
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->ax()Z

    move-result v0

    .line 1152
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1153
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1141
    :pswitch_64
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    move v4, v15

    .line 1144
    :cond_10
    invoke-virtual {v13, v4}, Lcom/nforetek/bt/aidl/l$a;->c(Z)V

    .line 1145
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    .line 1133
    :pswitch_65
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1134
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->aw()Z

    move-result v0

    .line 1135
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1136
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1126
    :pswitch_66
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1127
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->av()V

    .line 1128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    .line 1119
    :pswitch_67
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1120
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->au()V

    .line 1121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    .line 1109
    :pswitch_68
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    move v4, v15

    .line 1112
    :cond_11
    invoke-virtual {v13, v4}, Lcom/nforetek/bt/aidl/l$a;->b(Z)Z

    move-result v0

    .line 1113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1114
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1101
    :pswitch_69
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1102
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->at()Ljava/lang/String;

    move-result-object v0

    .line 1103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1104
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    .line 1093
    :pswitch_6a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1094
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->as()Ljava/lang/String;

    move-result-object v0

    .line 1095
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1096
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    .line 1085
    :pswitch_6b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1086
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->ar()Z

    move-result v0

    .line 1087
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1077
    :pswitch_6c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1078
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->aq()Z

    move-result v0

    .line 1079
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1080
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1067
    :pswitch_6d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1069
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1070
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->r(Ljava/lang/String;)Z

    move-result v0

    .line 1071
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1059
    :pswitch_6e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1060
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->ap()Z

    move-result v0

    .line 1061
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1062
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1051
    :pswitch_6f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1052
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->ao()Z

    move-result v0

    .line 1053
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1054
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1041
    :pswitch_70
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1043
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1044
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->f(I)Z

    move-result v0

    .line 1045
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1031
    :pswitch_71
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1033
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1034
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->q(Ljava/lang/String;)Z

    move-result v0

    .line 1035
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1036
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1023
    :pswitch_72
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1024
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->an()Z

    move-result v0

    .line 1025
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1026
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1013
    :pswitch_73
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1015
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1016
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->p(Ljava/lang/String;)Z

    move-result v0

    .line 1017
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1018
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 1005
    :pswitch_74
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1006
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->am()Z

    move-result v0

    .line 1007
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1008
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 997
    :pswitch_75
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->al()Z

    move-result v0

    .line 999
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1000
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 989
    :pswitch_76
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 990
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->ak()I

    move-result v0

    .line 991
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 981
    :pswitch_77
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->aj()Z

    move-result v0

    .line 983
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 973
    :pswitch_78
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 974
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->ai()Ljava/util/List;

    move-result-object v0

    .line 975
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v15

    .line 965
    :pswitch_79
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 966
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->ah()I

    move-result v0

    .line 967
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 955
    :pswitch_7a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 957
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 958
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->o(Ljava/lang/String;)Z

    move-result v0

    .line 959
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 945
    :pswitch_7b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 948
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->n(Ljava/lang/String;)Z

    move-result v0

    .line 949
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 937
    :pswitch_7c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 938
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->ag()I

    move-result v0

    .line 939
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 929
    :pswitch_7d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 930
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->af()Ljava/lang/String;

    move-result-object v0

    .line 931
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 932
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    .line 921
    :pswitch_7e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 922
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->ae()Z

    move-result v0

    .line 923
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 913
    :pswitch_7f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 914
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->ad()I

    move-result v0

    .line 915
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 903
    :pswitch_80
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 905
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/e$a;->a(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/e;

    move-result-object v0

    .line 906
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->b(Lcom/nforetek/bt/aidl/e;)Z

    move-result v0

    .line 907
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 908
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 893
    :pswitch_81
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 895
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/e$a;->a(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/e;

    move-result-object v0

    .line 896
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->a(Lcom/nforetek/bt/aidl/e;)Z

    move-result v0

    .line 897
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 885
    :pswitch_82
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 886
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->ac()Ljava/lang/String;

    move-result-object v0

    .line 887
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    .line 877
    :pswitch_83
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->ab()I

    move-result v0

    .line 879
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 869
    :pswitch_84
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 870
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->aa()I

    move-result v0

    .line 871
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 872
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 861
    :pswitch_85
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->Z()I

    move-result v0

    .line 863
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 864
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 850
    :pswitch_86
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 854
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 855
    invoke-virtual {v13, v0, v1}, Lcom/nforetek/bt/aidl/l$a;->a(II)V

    .line 856
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    .line 842
    :pswitch_87
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 843
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->Y()I

    move-result v0

    .line 844
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 832
    :pswitch_88
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 835
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->e(I)Z

    move-result v0

    .line 836
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 822
    :pswitch_89
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 825
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->m(Ljava/lang/String;)I

    move-result v0

    .line 826
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 814
    :pswitch_8a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 815
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->X()I

    move-result v0

    .line 816
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 804
    :pswitch_8b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 806
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 807
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->l(Ljava/lang/String;)I

    move-result v0

    .line 808
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 796
    :pswitch_8c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->W()Z

    move-result v0

    .line 798
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 788
    :pswitch_8d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 789
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->V()Z

    move-result v0

    .line 790
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 780
    :pswitch_8e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 781
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->U()Z

    move-result v0

    .line 782
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 772
    :pswitch_8f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 773
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->T()I

    move-result v0

    .line 774
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 764
    :pswitch_90
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 765
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->S()Z

    move-result v0

    .line 766
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 754
    :pswitch_91
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 757
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->k(Ljava/lang/String;)Z

    move-result v0

    .line 758
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 759
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 746
    :pswitch_92
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->R()Ljava/lang/String;

    move-result-object v0

    .line 748
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    .line 736
    :pswitch_93
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 739
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 740
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    .line 728
    :pswitch_94
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 729
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->Q()Ljava/lang/String;

    move-result-object v0

    .line 730
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    .line 720
    :pswitch_95
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 721
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->P()Z

    move-result v0

    .line 722
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 710
    :pswitch_96
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 713
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->i(Ljava/lang/String;)Z

    move-result v0

    .line 714
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 700
    :pswitch_97
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 703
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->h(Ljava/lang/String;)Z

    move-result v0

    .line 704
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 692
    :pswitch_98
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->O()Z

    move-result v0

    .line 694
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 684
    :pswitch_99
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->N()Z

    move-result v0

    .line 686
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 674
    :pswitch_9a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 677
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->d(I)Z

    move-result v0

    .line 678
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 664
    :pswitch_9b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    move v4, v15

    .line 667
    :cond_12
    invoke-virtual {v13, v4}, Lcom/nforetek/bt/aidl/l$a;->a(Z)Z

    move-result v0

    .line 668
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 656
    :pswitch_9c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->M()Ljava/lang/String;

    move-result-object v0

    .line 658
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    .line 646
    :pswitch_9d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/c$a;->a(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/c;

    move-result-object v0

    .line 649
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->b(Lcom/nforetek/bt/aidl/c;)Z

    move-result v0

    .line 650
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 636
    :pswitch_9e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/c$a;->a(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/c;

    move-result-object v0

    .line 639
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->a(Lcom/nforetek/bt/aidl/c;)Z

    move-result v0

    .line 640
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 626
    :pswitch_9f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 629
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->d(B)Z

    move-result v0

    .line 630
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 612
    :pswitch_a0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 618
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 619
    invoke-virtual {v13, v0, v2, v3, v4}, Lcom/nforetek/bt/aidl/l$a;->c(BIJ)Z

    move-result v0

    .line 620
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 602
    :pswitch_a1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 605
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->g(Ljava/lang/String;)Z

    move-result v0

    .line 606
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 588
    :pswitch_a2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 592
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 594
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 595
    invoke-virtual {v13, v0, v2, v3, v4}, Lcom/nforetek/bt/aidl/l$a;->b(BIJ)Z

    move-result v0

    .line 596
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 574
    :pswitch_a3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 580
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 581
    invoke-virtual {v13, v0, v2, v3, v4}, Lcom/nforetek/bt/aidl/l$a;->a(BIJ)Z

    move-result v0

    .line 582
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 560
    :pswitch_a4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 566
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 567
    invoke-virtual {v13, v0, v2, v3, v1}, Lcom/nforetek/bt/aidl/l$a;->a(IJB)Z

    move-result v0

    .line 568
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 550
    :pswitch_a5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 553
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->c(B)Z

    move-result v0

    .line 554
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 540
    :pswitch_a6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 543
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->c(I)Z

    move-result v0

    .line 544
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 530
    :pswitch_a7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 533
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->b(I)Z

    move-result v0

    .line 534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 522
    :pswitch_a8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->L()Z

    move-result v0

    .line 524
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 514
    :pswitch_a9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->K()Z

    move-result v0

    .line 516
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 506
    :pswitch_aa
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->J()Z

    move-result v0

    .line 508
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 496
    :pswitch_ab
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 499
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->b(B)Z

    move-result v0

    .line 500
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 484
    :pswitch_ac
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 489
    invoke-virtual {v13, v0, v1, v2}, Lcom/nforetek/bt/aidl/l$a;->a(BJ)Z

    move-result v0

    .line 490
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 476
    :pswitch_ad
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->I()Z

    move-result v0

    .line 478
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 468
    :pswitch_ae
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->H()Z

    move-result v0

    .line 470
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 456
    :pswitch_af
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 461
    invoke-virtual {v13, v0, v1}, Lcom/nforetek/bt/aidl/l$a;->a(BB)Z

    move-result v0

    .line 462
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 448
    :pswitch_b0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->G()Z

    move-result v0

    .line 450
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 438
    :pswitch_b1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 441
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->a(B)Z

    move-result v0

    .line 442
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 430
    :pswitch_b2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->F()Z

    move-result v0

    .line 432
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 422
    :pswitch_b3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->E()Z

    move-result v0

    .line 424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 414
    :pswitch_b4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->D()Z

    move-result v0

    .line 416
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 406
    :pswitch_b5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->C()Z

    move-result v0

    .line 408
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 398
    :pswitch_b6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->B()Z

    move-result v0

    .line 400
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 390
    :pswitch_b7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->A()Z

    move-result v0

    .line 392
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 382
    :pswitch_b8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->z()Z

    move-result v0

    .line 384
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 374
    :pswitch_b9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->y()Z

    move-result v0

    .line 376
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 366
    :pswitch_ba
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->x()Z

    move-result v0

    .line 368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 358
    :pswitch_bb
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->w()Z

    move-result v0

    .line 360
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 350
    :pswitch_bc
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->v()Z

    move-result v0

    .line 352
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 342
    :pswitch_bd
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->u()Z

    move-result v0

    .line 344
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 334
    :pswitch_be
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->t()Z

    move-result v0

    .line 336
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 324
    :pswitch_bf
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->f(Ljava/lang/String;)Z

    move-result v0

    .line 328
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 314
    :pswitch_c0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->e(Ljava/lang/String;)Z

    move-result v0

    .line 318
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 304
    :pswitch_c1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->d(Ljava/lang/String;)Z

    move-result v0

    .line 308
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 294
    :pswitch_c2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->c(Ljava/lang/String;)Z

    move-result v0

    .line 298
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 286
    :pswitch_c3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->s()Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    .line 278
    :pswitch_c4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->r()Z

    move-result v0

    .line 280
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 270
    :pswitch_c5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->q()I

    move-result v0

    .line 272
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 260
    :pswitch_c6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/b$a;->a(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/b;

    move-result-object v0

    .line 263
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->b(Lcom/nforetek/bt/aidl/b;)Z

    move-result v0

    .line 264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 250
    :pswitch_c7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/b$a;->a(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/b;

    move-result-object v0

    .line 253
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->a(Lcom/nforetek/bt/aidl/b;)Z

    move-result v0

    .line 254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 242
    :pswitch_c8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->p()I

    move-result v0

    .line 244
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 232
    :pswitch_c9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 235
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->a(I)Z

    move-result v0

    .line 236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 222
    :pswitch_ca
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 225
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->a(F)Z

    move-result v0

    .line 226
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 215
    :pswitch_cb
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->o()V

    .line 217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    .line 208
    :pswitch_cc
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->n()V

    .line 210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    .line 198
    :pswitch_cd
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->b(Ljava/lang/String;)Z

    move-result v0

    .line 202
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 188
    :pswitch_ce
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->a(Ljava/lang/String;)Z

    move-result v0

    .line 192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 180
    :pswitch_cf
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->m()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    .line 172
    :pswitch_d0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->l()Z

    move-result v0

    .line 174
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 164
    :pswitch_d1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->k()I

    move-result v0

    .line 166
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 154
    :pswitch_d2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/a$a;->a(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/a;

    move-result-object v0

    .line 157
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->b(Lcom/nforetek/bt/aidl/a;)Z

    move-result v0

    .line 158
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 144
    :pswitch_d3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/nforetek/bt/aidl/a$a;->a(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/a;

    move-result-object v0

    .line 147
    invoke-virtual {v13, v0}, Lcom/nforetek/bt/aidl/l$a;->a(Lcom/nforetek/bt/aidl/a;)Z

    move-result v0

    .line 148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 136
    :pswitch_d4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->j()Z

    move-result v0

    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 128
    :pswitch_d5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->i()Z

    move-result v0

    .line 130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 120
    :pswitch_d6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->h()Z

    move-result v0

    .line 122
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 112
    :pswitch_d7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->g()Z

    move-result v0

    .line 114
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 104
    :pswitch_d8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->f()Z

    move-result v0

    .line 106
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 96
    :pswitch_d9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->e()Z

    move-result v0

    .line 98
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 88
    :pswitch_da
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->d()Z

    move-result v0

    .line 90
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 80
    :pswitch_db
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->c()Z

    move-result v0

    .line 82
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 72
    :pswitch_dc
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->b()Z

    move-result v0

    .line 74
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 64
    :pswitch_dd
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/l$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    .line 59
    :cond_13
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
