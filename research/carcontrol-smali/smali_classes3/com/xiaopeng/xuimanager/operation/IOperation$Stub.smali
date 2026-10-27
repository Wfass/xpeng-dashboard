.class public abstract Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;
.super Landroid/os/Binder;
.source "IOperation.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/operation/IOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/operation/IOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/operation/IOperation$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addNewResource:I = 0x3

.field static final TRANSACTION_checkResourceExist:I = 0x5

.field static final TRANSACTION_deleteResource:I = 0x6

.field static final TRANSACTION_downloadResource:I = 0xb

.field static final TRANSACTION_getDownLoadResourceList:I = 0x7

.field static final TRANSACTION_getInfo:I = 0xa

.field static final TRANSACTION_getLocalResourceList:I = 0x4

.field static final TRANSACTION_getResource:I = 0x8

.field static final TRANSACTION_operateResource:I = 0x9

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.operation.IOperation"

    .line 62
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/operation/IOperation;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.operation.IOperation"

    .line 73
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/operation/IOperation;

    if-eqz v1, :cond_1

    .line 75
    check-cast v0, Lcom/xiaopeng/xuimanager/operation/IOperation;

    return-object v0

    .line 77
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/operation/IOperation;
    .locals 1

    .line 545
    sget-object v0, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/operation/IOperation;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/operation/IOperation;)Z
    .locals 1

    .line 535
    sget-object v0, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/operation/IOperation;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 539
    sput-object p0, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/operation/IOperation;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 536
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

    const-string v1, "com.xiaopeng.xuimanager.operation.IOperation"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 235
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 217
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/PendingIntent;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 229
    :goto_0
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->downloadResource(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 203
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 210
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->getInfo(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 190
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 197
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->operateResource(Ljava/lang/String;ILjava/lang/String;)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 178
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 183
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->getResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 168
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 171
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->getDownLoadResourceList(I)Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 154
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 161
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->deleteResource(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 142
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 147
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->checkResourceExist(ILjava/lang/String;)Z

    move-result p1

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 132
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 135
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->getLocalResourceList(I)Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 116
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 125
    invoke-virtual {p0, p1, p4, v1, p2}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->addNewResource(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 107
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/operation/IOperationEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/operation/IOperationEventListener;

    move-result-object p1

    .line 110
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->unregisterListener(Lcom/xiaopeng/xuimanager/operation/IOperationEventListener;)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 98
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/operation/IOperationEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/operation/IOperationEventListener;

    move-result-object p1

    .line 101
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->registerListener(Lcom/xiaopeng/xuimanager/operation/IOperationEventListener;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 90
    :cond_1
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
