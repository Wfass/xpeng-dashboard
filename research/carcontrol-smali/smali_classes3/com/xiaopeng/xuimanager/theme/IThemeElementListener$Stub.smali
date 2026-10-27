.class public abstract Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;
.super Landroid/os/Binder;
.source "IThemeElementListener.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onQueryRemoteThemeElementFailed:I = 0x6

.field static final TRANSACTION_onQueryRemoteThemeElementSuccess:I = 0x5

.field static final TRANSACTION_onThemeElementAdded:I = 0x1

.field static final TRANSACTION_onThemeElementDeleted:I = 0x2

.field static final TRANSACTION_onThemeElementDownloadCancel:I = 0xa

.field static final TRANSACTION_onThemeElementDownloadError:I = 0xb

.field static final TRANSACTION_onThemeElementDownloadInProgress:I = 0x8

.field static final TRANSACTION_onThemeElementDownloadPaused:I = 0x9

.field static final TRANSACTION_onThemeElementDownloadStart:I = 0x7

.field static final TRANSACTION_onThemeElementSelectionChanged:I = 0x4

.field static final TRANSACTION_onThemeElementUpdated:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.theme.IThemeElementListener"

    .line 54
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.theme.IThemeElementListener"

    .line 65
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    if-eqz v1, :cond_1

    .line 67
    check-cast v0, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    return-object v0

    .line 69
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;
    .locals 1

    .line 546
    sget-object v0, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;)Z
    .locals 1

    .line 536
    sget-object v0, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 540
    sput-object p0, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 537
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.xiaopeng.xuimanager.theme.IThemeElementListener"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_8

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 242
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 225
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_0

    .line 230
    sget-object p3, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 236
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 237
    invoke-virtual {p0, p1, v2, p2}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->onThemeElementDownloadError(ILcom/xiaopeng/xuimanager/theme/ThemeElement;I)V

    return v0

    .line 210
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_1

    .line 215
    sget-object p3, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 220
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->onThemeElementDownloadCancel(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    return v0

    .line 195
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_2

    .line 200
    sget-object p3, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 205
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->onThemeElementDownloadPaused(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    return v0

    .line 178
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_3

    .line 183
    sget-object p3, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 189
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    .line 190
    invoke-virtual {p0, p1, v2, p2}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->onThemeElementDownloadInProgress(ILcom/xiaopeng/xuimanager/theme/ThemeElement;F)V

    return v0

    .line 163
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_4

    .line 168
    sget-object p3, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 173
    :cond_4
    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->onThemeElementDownloadStart(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    return v0

    .line 153
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 158
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->onQueryRemoteThemeElementFailed(II)V

    return v0

    .line 143
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 147
    sget-object p3, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->onQueryRemoteThemeElementSuccess(ILjava/util/List;)V

    return v0

    .line 135
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 138
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->onThemeElementSelectionChanged(I)V

    return v0

    .line 120
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_5

    .line 125
    sget-object p3, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 130
    :cond_5
    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->onThemeElementUpdated(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    return v0

    .line 105
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_6

    .line 110
    sget-object p3, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 115
    :cond_6
    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->onThemeElementDeleted(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    return v0

    .line 90
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_7

    .line 95
    sget-object p3, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 100
    :cond_7
    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->onThemeElementAdded(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    return v0

    .line 82
    :cond_8
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

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
