.class public abstract Lcom/xiaopeng/privacyservice/IPrivacyService$Stub;
.super Landroid/os/Binder;
.source "IPrivacyService.java"

# interfaces
.implements Lcom/xiaopeng/privacyservice/IPrivacyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/privacyservice/IPrivacyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/privacyservice/IPrivacyService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.privacyservice.IPrivacyService"

.field static final TRANSACTION_cancelFetchTask:I = 0x9

.field static final TRANSACTION_cancelPrivacyDialog:I = 0x5

.field static final TRANSACTION_dismissPrivacyDialog:I = 0x4

.field static final TRANSACTION_fetchProtocol:I = 0x8

.field static final TRANSACTION_getPrivacyContent:I = 0x3

.field static final TRANSACTION_getPrivacyPath:I = 0x2

.field static final TRANSACTION_haveDialogOnScreen:I = 0x6

.field static final TRANSACTION_showPrivacyDialog:I = 0x1

.field static final TRANSACTION_signProtocol:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.privacyservice.IPrivacyService"

    .line 55
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/privacyservice/IPrivacyService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.privacyservice.IPrivacyService"

    .line 66
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    instance-of v1, v0, Lcom/xiaopeng/privacyservice/IPrivacyService;

    if-eqz v1, :cond_1

    .line 68
    check-cast v0, Lcom/xiaopeng/privacyservice/IPrivacyService;

    return-object v0

    .line 70
    :cond_1
    new-instance v0, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/privacyservice/IPrivacyService;
    .locals 1

    .line 396
    sget-object v0, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/privacyservice/IPrivacyService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/privacyservice/IPrivacyService;)Z
    .locals 1

    .line 389
    sget-object v0, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/privacyservice/IPrivacyService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 390
    sput-object p0, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/privacyservice/IPrivacyService;

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

    const-string v2, "com.xiaopeng.privacyservice.IPrivacyService"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 168
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 171
    invoke-virtual {p0, p1}, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub;->cancelFetchTask(I)V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 157
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/privacyservice/IFetchProtocolCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/privacyservice/IFetchProtocolCallback;

    move-result-object p2

    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub;->fetchProtocol(ILcom/xiaopeng/privacyservice/IFetchProtocolCallback;)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 148
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 151
    invoke-virtual {p0, p1}, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub;->signProtocol(I)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 140
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub;->haveDialogOnScreen()Z

    move-result p1

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 131
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-virtual {p0, p1}, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub;->cancelPrivacyDialog(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 122
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-virtual {p0, p1}, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub;->dismissPrivacyDialog(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 112
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 115
    invoke-virtual {p0, p1}, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub;->getPrivacyContent(I)Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 102
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 105
    invoke-virtual {p0, p1}, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub;->getPrivacyPath(I)Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 88
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/privacyservice/IPrivacyDialogCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/privacyservice/IPrivacyDialogCallback;

    move-result-object p2

    .line 95
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub;->showPrivacyDialog(IILcom/xiaopeng/privacyservice/IPrivacyDialogCallback;)Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 83
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

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
.end method
