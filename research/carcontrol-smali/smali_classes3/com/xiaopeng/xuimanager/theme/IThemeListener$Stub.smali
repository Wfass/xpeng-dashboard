.class public abstract Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;
.super Landroid/os/Binder;
.source "IThemeListener.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/theme/IThemeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/theme/IThemeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onDownloadCancel:I = 0xb

.field static final TRANSACTION_onDownloadError:I = 0xc

.field static final TRANSACTION_onDownloadInProgress:I = 0x9

.field static final TRANSACTION_onDownloadPaused:I = 0xa

.field static final TRANSACTION_onDownloadStart:I = 0x8

.field static final TRANSACTION_onQueryRemoteThemeFailed:I = 0x7

.field static final TRANSACTION_onQueryRemoteThemeSuccess:I = 0x6

.field static final TRANSACTION_onThemeAdded:I = 0x1

.field static final TRANSACTION_onThemeDeleted:I = 0x2

.field static final TRANSACTION_onThemeSelected:I = 0x5

.field static final TRANSACTION_onThemeUpdated:I = 0x3

.field static final TRANSACTION_onThemeUpdated2:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.theme.IThemeListener"

    .line 57
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/theme/IThemeListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.theme.IThemeListener"

    .line 68
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    if-eqz v1, :cond_1

    .line 70
    check-cast v0, Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    return-object v0

    .line 72
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeListener;
    .locals 1

    .line 582
    sget-object v0, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/theme/IThemeListener;)Z
    .locals 1

    .line 572
    sget-object v0, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 576
    sput-object p0, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 573
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

    const-string v1, "com.xiaopeng.xuimanager.theme.IThemeListener"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_b

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 250
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 235
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 238
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 244
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 245
    invoke-virtual {p0, v2, p1}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->onDownloadError(Lcom/xiaopeng/xuimanager/theme/Theme;I)V

    return v0

    .line 222
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 225
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 230
    :cond_1
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->onDownloadCancel(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    return v0

    .line 209
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 212
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 217
    :cond_2
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->onDownloadPaused(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    return v0

    .line 194
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 197
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 203
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 204
    invoke-virtual {p0, v2, p1}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->onDownloadInProgress(Lcom/xiaopeng/xuimanager/theme/Theme;F)V

    return v0

    .line 181
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 184
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 189
    :cond_4
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->onDownloadStart(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    return v0

    .line 173
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 176
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->onQueryRemoteThemeFailed(I)V

    return v0

    .line 165
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 168
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->onQueryRemoteThemeSuccess(Ljava/util/List;)V

    return v0

    .line 152
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 155
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 160
    :cond_5
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->onThemeSelected(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    return v0

    .line 132
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 135
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xuimanager/theme/Theme;

    goto :goto_0

    :cond_6
    move-object p1, v2

    .line 141
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_7

    .line 142
    sget-object p3, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 147
    :cond_7
    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->onThemeUpdated2(Lcom/xiaopeng/xuimanager/theme/Theme;Lcom/xiaopeng/xuimanager/theme/Theme;)V

    return v0

    .line 119
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 122
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 127
    :cond_8
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->onThemeUpdated(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    return v0

    .line 106
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9

    .line 109
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 114
    :cond_9
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->onThemeDeleted(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    return v0

    .line 93
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    .line 96
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 101
    :cond_a
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->onThemeAdded(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    return v0

    .line 85
    :cond_b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
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
