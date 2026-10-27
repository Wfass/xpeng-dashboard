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

.field static final TRANSACTION_getAssembleInfoList:I = 0x3

.field static final TRANSACTION_query:I = 0x6

.field static final TRANSACTION_registerAssembleListener:I = 0x4

.field static final TRANSACTION_unregisterAssembleListener:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.appstore.storeprovider.IResourceServiceV2"

    .line 51
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.appstore.storeprovider.IResourceServiceV2"

    .line 62
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    instance-of v1, v0, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    if-eqz v1, :cond_1

    .line 64
    check-cast v0, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    return-object v0

    .line 66
    :cond_1
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;
    .locals 1

    .line 396
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;)Z
    .locals 1

    .line 386
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 390
    sput-object p0, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 387
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "setDefaultImpl() called twice"

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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.xiaopeng.appstore.storeprovider.IResourceServiceV2"

    if-eq p1, v0, :cond_6

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 187
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 164
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    .line 169
    sget-object p4, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;

    .line 174
    :cond_0
    invoke-virtual {p0, p1, v3}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->query(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;)Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;

    move-result-object p1

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 177
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    invoke-virtual {p1, p3, v1}, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 155
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/appstore/storeprovider/IAssembleListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;

    move-result-object p1

    .line 158
    invoke-virtual {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->unregisterAssembleListener(Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 142
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/appstore/storeprovider/IAssembleListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;

    move-result-object p2

    .line 149
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->registerAssembleListener(ILjava/lang/String;Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 130
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 135
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->getAssembleInfoList(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 107
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    .line 112
    sget-object p4, Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;

    .line 117
    :cond_2
    invoke-virtual {p0, p1, v3}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->assembleAction(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    move-result-object p1

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 120
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    invoke-virtual {p1, p3, v1}, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 124
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 84
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_4

    .line 89
    sget-object p4, Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;

    .line 94
    :cond_4
    invoke-virtual {p0, p1, v3}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->assembleEnqueue(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    move-result-object p1

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_5

    .line 97
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    invoke-virtual {p1, p3, v1}, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 101
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v1

    .line 79
    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
