.class public abstract Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback$Stub;
.super Landroid/os/Binder;
.source "IRMDownloadCallback.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_basicTypes:I = 0x1

.field static final TRANSACTION_onDownloadCallback:I = 0x2

.field static final TRANSACTION_onMenuOpenCallback:I = 0x3

.field static final TRANSACTION_unbindService:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.store.IRMDownloadCallback"

    .line 38
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.store.IRMDownloadCallback"

    .line 49
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback;

    if-eqz v1, :cond_1

    .line 51
    check-cast v0, Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback;

    return-object v0

    .line 53
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback;
    .locals 1

    .line 263
    sget-object v0, Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback;)Z
    .locals 1

    .line 253
    sget-object v0, Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 257
    sput-object p0, Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 254
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

    const-string v1, "com.xiaopeng.xuimanager.store.IRMDownloadCallback"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_6

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 118
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback$Stub;->unbindService()V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 109
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback$Stub;->onMenuOpenCallback(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 93
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_3

    .line 98
    sget-object p4, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 103
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback$Stub;->onDownloadCallback(ILcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 74
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    move v5, v0

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    move v5, p1

    .line 82
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object v1, p0

    .line 87
    invoke-virtual/range {v1 .. v9}, Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback$Stub;->basicTypes(IJZFDLjava/lang/String;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 66
    :cond_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
