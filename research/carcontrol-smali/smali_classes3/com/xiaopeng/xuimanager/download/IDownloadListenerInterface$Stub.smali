.class public abstract Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;
.super Landroid/os/Binder;
.source "IDownloadListenerInterface.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_basicTypes:I = 0x1

.field static final TRANSACTION_onDownloadCancel:I = 0x9

.field static final TRANSACTION_onDownloadCompleted:I = 0xb

.field static final TRANSACTION_onDownloadError:I = 0xa

.field static final TRANSACTION_onDownloadInProgress:I = 0x7

.field static final TRANSACTION_onDownloadPause:I = 0x8

.field static final TRANSACTION_onDownloadStart:I = 0x6

.field static final TRANSACTION_onRegisterError:I = 0x3

.field static final TRANSACTION_onRegisterSuccess:I = 0x2

.field static final TRANSACTION_onUnRegisterError:I = 0x5

.field static final TRANSACTION_onUnRegisterSuccess:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.download.IDownloadListenerInterface"

    .line 59
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.download.IDownloadListenerInterface"

    .line 70
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 71
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    if-eqz v1, :cond_1

    .line 72
    check-cast v0, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    return-object v0

    .line 74
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;
    .locals 1

    .line 529
    sget-object v0, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;)Z
    .locals 1

    .line 519
    sget-object v0, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 523
    sput-object p0, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 520
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
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v9, p0

    move v0, p1

    move-object v1, p2

    const/4 v10, 0x1

    const-string v2, "com.xiaopeng.xuimanager.download.IDownloadListenerInterface"

    const v3, 0x5f4e5446

    if-eq v0, v3, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 230
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 217
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->onDownloadCompleted(JLjava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 204
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->onDownloadError(JLjava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 193
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-virtual {p0, v2, v3, v0}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->onDownloadCancel(JLjava/lang/String;)V

    .line 199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 182
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-virtual {p0, v2, v3, v0}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->onDownloadPause(JLjava/lang/String;)V

    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 165
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    move-object v0, p0

    move-wide v1, v2

    move-object v3, v4

    move-wide v4, v5

    move v6, v7

    move-wide v7, v11

    .line 176
    invoke-virtual/range {v0 .. v8}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->onDownloadInProgress(JLjava/lang/String;JFJ)V

    .line 177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 154
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {p0, v2, v3, v0}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->onDownloadStart(JLjava/lang/String;)V

    .line 160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 143
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    move-result-object v0

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->onUnRegisterError(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 134
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    move-result-object v0

    .line 137
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->onUnRegisterSuccess(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;)V

    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 123
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    move-result-object v0

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->onRegisterError(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 114
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    move-result-object v0

    .line 117
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->onRegisterSuccess(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;)V

    .line 118
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 95
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v5, v10

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v5, v0

    .line 103
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    move-object v0, p0

    move v1, v2

    move-wide v2, v3

    move v4, v5

    move v5, v6

    move-wide v6, v7

    move-object v8, v11

    .line 108
    invoke-virtual/range {v0 .. v8}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->basicTypes(IJZFDLjava/lang/String;)V

    .line 109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :cond_1
    move-object/from16 v0, p3

    .line 87
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

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
