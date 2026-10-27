.class public abstract Lcom/xiaopeng/privacyservice/IPrivacyUIService$Stub;
.super Landroid/os/Binder;
.source "IPrivacyUIService.java"

# interfaces
.implements Lcom/xiaopeng/privacyservice/IPrivacyUIService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/privacyservice/IPrivacyUIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/privacyservice/IPrivacyUIService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.privacyservice.IPrivacyUIService"

.field static final TRANSACTION_dismissAllDisplay:I = 0x5

.field static final TRANSACTION_dismissDisplay:I = 0x4

.field static final TRANSACTION_isAnyProtocolInShowing:I = 0x2

.field static final TRANSACTION_isPrivacyOnShowing:I = 0x3

.field static final TRANSACTION_showSystemDialog:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.privacyservice.IPrivacyUIService"

    .line 43
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/privacyservice/IPrivacyUIService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/privacyservice/IPrivacyUIService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.privacyservice.IPrivacyUIService"

    .line 54
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    instance-of v1, v0, Lcom/xiaopeng/privacyservice/IPrivacyUIService;

    if-eqz v1, :cond_1

    .line 56
    check-cast v0, Lcom/xiaopeng/privacyservice/IPrivacyUIService;

    return-object v0

    .line 58
    :cond_1
    new-instance v0, Lcom/xiaopeng/privacyservice/IPrivacyUIService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/privacyservice/IPrivacyUIService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/privacyservice/IPrivacyUIService;
    .locals 1

    .line 268
    sget-object v0, Lcom/xiaopeng/privacyservice/IPrivacyUIService$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/privacyservice/IPrivacyUIService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/privacyservice/IPrivacyUIService;)Z
    .locals 1

    .line 261
    sget-object v0, Lcom/xiaopeng/privacyservice/IPrivacyUIService$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/privacyservice/IPrivacyUIService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 262
    sput-object p0, Lcom/xiaopeng/privacyservice/IPrivacyUIService$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/privacyservice/IPrivacyUIService;

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

    const/4 v0, 0x1

    const-string v1, "com.xiaopeng.privacyservice.IPrivacyUIService"

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 71
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 119
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/xiaopeng/privacyservice/IPrivacyUIService$Stub;->dismissAllDisplay()V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 110
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-virtual {p0, p1}, Lcom/xiaopeng/privacyservice/IPrivacyUIService$Stub;->dismissDisplay(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 100
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-virtual {p0, p1}, Lcom/xiaopeng/privacyservice/IPrivacyUIService$Stub;->isPrivacyOnShowing(Ljava/lang/String;)Z

    move-result p1

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 92
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/xiaopeng/privacyservice/IPrivacyUIService$Stub;->isAnyProtocolInShowing()Z

    move-result p1

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 76
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 79
    sget-object p1, Lcom/xiaopeng/privacyservice/ProtocolInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/privacyservice/ProtocolInfo;

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    .line 85
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/privacyservice/IPrivacyUICallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/privacyservice/IPrivacyUICallback;

    move-result-object p2

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/privacyservice/IPrivacyUIService$Stub;->showSystemDialog(Lcom/xiaopeng/privacyservice/ProtocolInfo;Lcom/xiaopeng/privacyservice/IPrivacyUICallback;)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
