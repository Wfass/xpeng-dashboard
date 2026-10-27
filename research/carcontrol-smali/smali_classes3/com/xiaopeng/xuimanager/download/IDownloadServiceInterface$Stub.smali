.class public abstract Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub;
.super Landroid/os/Binder;
.source "IDownloadServiceInterface.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_basicTypes:I = 0x1

.field static final TRANSACTION_enqueue:I = 0x2

.field static final TRANSACTION_enqueueWithHeader:I = 0x4

.field static final TRANSACTION_enqueueWtihTitleDescription:I = 0x3

.field static final TRANSACTION_getState:I = 0x5

.field static final TRANSACTION_getStatusListByPackageName:I = 0x8

.field static final TRANSACTION_registerListener:I = 0x6

.field static final TRANSACTION_unRegisterListener:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.download.IDownloadServiceInterface"

    .line 55
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.download.IDownloadServiceInterface"

    .line 66
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    if-eqz v1, :cond_1

    .line 68
    check-cast v0, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    return-object v0

    .line 70
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;
    .locals 1

    .line 434
    sget-object v0, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;)Z
    .locals 1

    .line 424
    sget-object v0, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 428
    sput-object p0, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 425
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
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.xiaopeng.xuimanager.download.IDownloadServiceInterface"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 196
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 184
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub;->getStatusListByPackageName(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p1

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v0

    .line 175
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    move-result-object p1

    .line 178
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub;->unRegisterListener(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 166
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    move-result-object p1

    .line 169
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub;->registerListener(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 154
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-virtual {p0, v1, v2, p1}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub;->getState(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 137
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 146
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p2

    .line 147
    invoke-virtual {p0, p1, p4, v1, p2}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub;->enqueueWithHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)J

    move-result-wide p1

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v0

    .line 120
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 129
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p2

    .line 130
    invoke-virtual {p0, p1, p4, v1, p2}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub;->enqueueWtihTitleDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)J

    move-result-wide p1

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v0

    .line 110
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub;->enqueue(Ljava/lang/String;)J

    move-result-wide p1

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v0

    .line 91
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    move v5, p1

    .line 99
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object v1, p0

    .line 104
    invoke-virtual/range {v1 .. v9}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub;->basicTypes(IJZFDLjava/lang/String;)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 83
    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
