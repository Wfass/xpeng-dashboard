.class public abstract Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub;
.super Landroid/os/Binder;
.source "IRMDownloadCallback.java"

# interfaces
.implements Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.appstore.storeprovider.store.IRMDownloadCallback"

.field static final TRANSACTION_basicTypes:I = 0x1

.field static final TRANSACTION_onDownloadCallback:I = 0x2

.field static final TRANSACTION_onMenuOpenCallback:I = 0x3

.field static final TRANSACTION_unbindService:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "com.xiaopeng.appstore.storeprovider.store.IRMDownloadCallback"

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;
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

    .line 48
    if-nez p0, :cond_0

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_0
    const-string v0, "com.xiaopeng.appstore.storeprovider.store.IRMDownloadCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;

    if-eqz v1, :cond_1

    .line 53
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;

    return-object v1

    .line 55
    :cond_1
    new-instance v1, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;
    .locals 1

    .line 254
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;)Z
    .locals 2
    .param p0, "impl"    # Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 244
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;

    if-nez v0, :cond_1

    .line 247
    if-eqz p0, :cond_0

    .line 248
    sput-object p0, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;

    .line 249
    const/4 v0, 0x1

    return v0

    .line 251
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 245
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 59
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
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

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    .line 63
    const-string v12, "com.xiaopeng.appstore.storeprovider.store.IRMDownloadCallback"

    .line 64
    .local v12, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v13, 0x1

    if-eq v10, v0, :cond_2

    packed-switch v10, :pswitch_data_0

    .line 124
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 117
    :pswitch_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub;->unbindService()V

    .line 119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    return v13

    .line 108
    :pswitch_1
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub;->onMenuOpenCallback(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    return v13

    .line 92
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 96
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    sget-object v1, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;

    .local v1, "_arg1":Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;
    goto :goto_0

    .line 100
    .end local v1    # "_arg1":Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;
    :cond_0
    const/4 v1, 0x0

    .line 102
    .restart local v1    # "_arg1":Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;
    :goto_0
    invoke-virtual {v9, v0, v1}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub;->onDownloadCallback(ILcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;)V

    .line 103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    return v13

    .line 73
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;
    :pswitch_3
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 77
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 79
    .local v15, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v4, v13

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move v4, v0

    .line 81
    .local v4, "_arg2":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v17

    .line 83
    .local v17, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v18

    .line 85
    .local v18, "_arg4":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 86
    .local v20, "_arg5":Ljava/lang/String;
    move-object v0, v9

    move v1, v14

    move-wide v2, v15

    move/from16 v5, v17

    move-wide/from16 v6, v18

    move-object/from16 v8, v20

    invoke-virtual/range {v0 .. v8}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub;->basicTypes(IJZFDLjava/lang/String;)V

    .line 87
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    return v13

    .line 68
    .end local v4    # "_arg2":Z
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":J
    .end local v17    # "_arg3":F
    .end local v18    # "_arg4":D
    .end local v20    # "_arg5":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
