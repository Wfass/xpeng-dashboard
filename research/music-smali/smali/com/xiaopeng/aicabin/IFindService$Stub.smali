.class public abstract Lcom/xiaopeng/aicabin/IFindService$Stub;
.super Landroid/os/Binder;
.source "IFindService.java"

# interfaces
.implements Lcom/xiaopeng/aicabin/IFindService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aicabin/IFindService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/aicabin/IFindService$Stub$a;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.aicabin.IFindService"

.field public static final TRANSACTION_getPublishService:I = 0x2

.field public static final TRANSACTION_publish:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.aicabin.IFindService"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/aicabin/IFindService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.aicabin.IFindService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/xiaopeng/aicabin/IFindService;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/xiaopeng/aicabin/IFindService;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lcom/xiaopeng/aicabin/IFindService$Stub$a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/aicabin/IFindService$Stub$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/aicabin/IFindService;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaopeng/aicabin/IFindService$Stub$a;->a:Lcom/xiaopeng/aicabin/IFindService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/aicabin/IFindService;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaopeng/aicabin/IFindService$Stub$a;->a:Lcom/xiaopeng/aicabin/IFindService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 5
    sput-object p0, Lcom/xiaopeng/aicabin/IFindService$Stub$a;->a:Lcom/xiaopeng/aicabin/IFindService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 6
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
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "com.xiaopeng.aicabin.IFindService"

    if-eq p1, v2, :cond_4

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 28
    :cond_1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 31
    sget-object p1, Lcom/xiaopeng/aicabin/DataReq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/xiaopeng/aicabin/DataReq;

    .line 36
    :cond_2
    invoke-interface {p0, v1}, Lcom/xiaopeng/aicabin/IFindService;->getPublishService(Lcom/xiaopeng/aicabin/DataReq;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 39
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    invoke-virtual {p1, p3, v2}, Lcom/xiaopeng/aicabin/DataResp;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 43
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v2

    .line 44
    :cond_4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 47
    sget-object p1, Lcom/xiaopeng/aicabin/DataReq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/xiaopeng/aicabin/DataReq;

    .line 52
    :cond_5
    invoke-interface {p0, v1}, Lcom/xiaopeng/aicabin/IFindService;->publish(Lcom/xiaopeng/aicabin/DataReq;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_6

    .line 55
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    invoke-virtual {p1, p3, v2}, Lcom/xiaopeng/aicabin/DataResp;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 59
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v2
.end method
