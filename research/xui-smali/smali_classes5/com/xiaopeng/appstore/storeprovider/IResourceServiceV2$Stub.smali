.class public abstract Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;
.super Landroid/os/Binder;
.source "IResourceServiceV2.java"

# interfaces
.implements Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.appstore.storeprovider.IResourceServiceV2"

.field static final TRANSACTION_assembleAction:I = 0x2

.field static final TRANSACTION_assembleEnqueue:I = 0x1

.field static final TRANSACTION_assembleEnqueueAll:I = 0xb

.field static final TRANSACTION_getAssembleInfoList:I = 0x3

.field static final TRANSACTION_getAssembleInfoListAll:I = 0x9

.field static final TRANSACTION_query:I = 0x6

.field static final TRANSACTION_queryAppGroups:I = 0x7

.field static final TRANSACTION_queryAppStoreCloud:I = 0xa

.field static final TRANSACTION_queryOperationApps:I = 0x8

.field static final TRANSACTION_registerAssembleListener:I = 0x4

.field static final TRANSACTION_unregisterAssembleListener:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 73
    const-string v0, "com.xiaopeng.appstore.storeprovider.IResourceServiceV2"

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 81
    if-nez p0, :cond_0

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_0
    const-string v0, "com.xiaopeng.appstore.storeprovider.IResourceServiceV2"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 85
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    if-eqz v1, :cond_1

    .line 86
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    return-object v1

    .line 88
    :cond_1
    new-instance v1, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;
    .locals 1

    .line 656
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;)Z
    .locals 2
    .param p0, "impl"    # Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 646
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    if-nez v0, :cond_1

    .line 649
    if-eqz p0, :cond_0

    .line 650
    sput-object p0, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    .line 651
    const/4 v0, 0x1

    return v0

    .line 653
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 647
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 92
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 96
    const-string v10, "com.xiaopeng.appstore.storeprovider.IResourceServiceV2"

    .line 97
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_c

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v7, :pswitch_data_0

    .line 301
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 278
    :pswitch_0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;

    .local v0, "_arg1":Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;
    goto :goto_0

    .line 286
    .end local v0    # "_arg1":Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;
    :cond_0
    nop

    .line 288
    .restart local v0    # "_arg1":Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;
    :goto_0
    invoke-virtual {v6, v2, v0}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->assembleEnqueueAll(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    move-result-object v3

    .line 289
    .local v3, "_result":Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    if-eqz v3, :cond_1

    .line 291
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    invoke-virtual {v3, v9, v11}, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 295
    :cond_1
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    :goto_1
    return v11

    .line 255
    .end local v0    # "_arg1":Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    :pswitch_1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 259
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 261
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 265
    .local v3, "_arg2":Landroid/os/Bundle;
    :goto_2
    move-object v3, v0

    goto :goto_3

    .end local v3    # "_arg2":Landroid/os/Bundle;
    :cond_2
    goto :goto_2

    .line 268
    .restart local v3    # "_arg2":Landroid/os/Bundle;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 270
    .local v14, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback;

    move-result-object v15

    .line 271
    .local v15, "_arg4":Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback;
    move-object v0, v6

    move v1, v12

    move-object v2, v13

    move-object v4, v14

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->queryAppStoreCloud(ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback;)I

    move-result v0

    .line 272
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    return v11

    .line 241
    .end local v0    # "_result":I
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg3":Ljava/lang/String;
    .end local v15    # "_arg4":Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback;
    :pswitch_2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 245
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    move v1, v11

    nop

    .line 247
    .local v1, "_arg1":Z
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->getAssembleInfoListAll(IZLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 249
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 251
    return v11

    .line 225
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;>;"
    :pswitch_3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;

    .line 228
    .local v0, "_arg0":[Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->queryOperationApps([Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;)Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;

    move-result-object v2

    .line 229
    .local v2, "_result":Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    if-eqz v2, :cond_4

    .line 231
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    invoke-virtual {v2, v9, v11}, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 235
    :cond_4
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    :goto_4
    return v11

    .line 209
    .end local v0    # "_arg0":[Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;
    .end local v2    # "_result":Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    :pswitch_4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 212
    .local v0, "_arg0":[I
    invoke-virtual {v6, v0}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->queryAppGroups([I)Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;

    move-result-object v2

    .line 213
    .restart local v2    # "_result":Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    if-eqz v2, :cond_5

    .line 215
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    invoke-virtual {v2, v9, v11}, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 219
    :cond_5
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    :goto_5
    return v11

    .line 186
    .end local v0    # "_arg0":[I
    .end local v2    # "_result":Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    :pswitch_5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 191
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;

    .local v0, "_arg1":Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;
    goto :goto_6

    .line 194
    .end local v0    # "_arg1":Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;
    :cond_6
    nop

    .line 196
    .restart local v0    # "_arg1":Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;
    :goto_6
    invoke-virtual {v6, v2, v0}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->query(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;)Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;

    move-result-object v3

    .line 197
    .local v3, "_result":Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v3, :cond_7

    .line 199
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    invoke-virtual {v3, v9, v11}, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    .line 203
    :cond_7
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    :goto_7
    return v11

    .line 177
    .end local v0    # "_arg1":Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;
    :pswitch_6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/appstore/storeprovider/IAssembleListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;

    move-result-object v0

    .line 180
    .local v0, "_arg0":Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->unregisterAssembleListener(Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;)V

    .line 181
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    return v11

    .line 164
    .end local v0    # "_arg0":Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;
    :pswitch_7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 168
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/appstore/storeprovider/IAssembleListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;

    move-result-object v2

    .line 171
    .local v2, "_arg2":Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;
    invoke-virtual {v6, v0, v1, v2}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->registerAssembleListener(ILjava/lang/String;Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;)V

    .line 172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    return v11

    .line 152
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;
    :pswitch_8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 156
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 157
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->getAssembleInfoList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 158
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 160
    return v11

    .line 129
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;>;"
    :pswitch_9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    .line 134
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;

    .local v0, "_arg1":Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;
    goto :goto_8

    .line 137
    .end local v0    # "_arg1":Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;
    :cond_8
    nop

    .line 139
    .restart local v0    # "_arg1":Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;
    :goto_8
    invoke-virtual {v6, v2, v0}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->assembleAction(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    move-result-object v3

    .line 140
    .local v3, "_result":Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v3, :cond_9

    .line 142
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    invoke-virtual {v3, v9, v11}, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 146
    :cond_9
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    :goto_9
    return v11

    .line 106
    .end local v0    # "_arg1":Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    :pswitch_a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 110
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    .line 111
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;

    .local v0, "_arg1":Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;
    goto :goto_a

    .line 114
    .end local v0    # "_arg1":Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;
    :cond_a
    nop

    .line 116
    .restart local v0    # "_arg1":Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;
    :goto_a
    invoke-virtual {v6, v2, v0}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->assembleEnqueue(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    move-result-object v3

    .line 117
    .restart local v3    # "_result":Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v3, :cond_b

    .line 119
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    invoke-virtual {v3, v9, v11}, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    .line 123
    :cond_b
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    :goto_b
    return v11

    .line 101
    .end local v0    # "_arg1":Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    :cond_c
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return v11

    :pswitch_data_0
    .packed-switch 0x1
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
