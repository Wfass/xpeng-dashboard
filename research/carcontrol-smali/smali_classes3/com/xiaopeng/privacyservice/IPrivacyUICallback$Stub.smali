.class public abstract Lcom/xiaopeng/privacyservice/IPrivacyUICallback$Stub;
.super Landroid/os/Binder;
.source "IPrivacyUICallback.java"

# interfaces
.implements Lcom/xiaopeng/privacyservice/IPrivacyUICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/privacyservice/IPrivacyUICallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/privacyservice/IPrivacyUICallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.privacyservice.IPrivacyUICallback"

.field static final TRANSACTION_onNegativeButtonClick:I = 0x7

.field static final TRANSACTION_onPageAccidentClose:I = 0x5

.field static final TRANSACTION_onPageClose:I = 0x4

.field static final TRANSACTION_onPageLoadFailed:I = 0x3

.field static final TRANSACTION_onPageLoadFinished:I = 0x2

.field static final TRANSACTION_onPageLoadStart:I = 0x1

.field static final TRANSACTION_onPositiveButtonClick:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.privacyservice.IPrivacyUICallback"

    .line 45
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/privacyservice/IPrivacyUICallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/privacyservice/IPrivacyUICallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.privacyservice.IPrivacyUICallback"

    .line 56
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 57
    instance-of v1, v0, Lcom/xiaopeng/privacyservice/IPrivacyUICallback;

    if-eqz v1, :cond_1

    .line 58
    check-cast v0, Lcom/xiaopeng/privacyservice/IPrivacyUICallback;

    return-object v0

    .line 60
    :cond_1
    new-instance v0, Lcom/xiaopeng/privacyservice/IPrivacyUICallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/privacyservice/IPrivacyUICallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/privacyservice/IPrivacyUICallback;
    .locals 1

    .line 319
    sget-object v0, Lcom/xiaopeng/privacyservice/IPrivacyUICallback$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/privacyservice/IPrivacyUICallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/privacyservice/IPrivacyUICallback;)Z
    .locals 1

    .line 312
    sget-object v0, Lcom/xiaopeng/privacyservice/IPrivacyUICallback$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/privacyservice/IPrivacyUICallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 313
    sput-object p0, Lcom/xiaopeng/privacyservice/IPrivacyUICallback$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/privacyservice/IPrivacyUICallback;

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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.xiaopeng.privacyservice.IPrivacyUICallback"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 138
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-virtual {p0, p1}, Lcom/xiaopeng/privacyservice/IPrivacyUICallback$Stub;->onNegativeButtonClick(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 129
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-virtual {p0, p1}, Lcom/xiaopeng/privacyservice/IPrivacyUICallback$Stub;->onPositiveButtonClick(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 118
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/privacyservice/IPrivacyUICallback$Stub;->onPageAccidentClose(Ljava/lang/String;I)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 109
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-virtual {p0, p1}, Lcom/xiaopeng/privacyservice/IPrivacyUICallback$Stub;->onPageClose(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 96
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 103
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/privacyservice/IPrivacyUICallback$Stub;->onPageLoadFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 87
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-virtual {p0, p1}, Lcom/xiaopeng/privacyservice/IPrivacyUICallback$Stub;->onPageLoadFinished(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 78
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/xiaopeng/privacyservice/IPrivacyUICallback$Stub;->onPageLoadStart(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 73
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
