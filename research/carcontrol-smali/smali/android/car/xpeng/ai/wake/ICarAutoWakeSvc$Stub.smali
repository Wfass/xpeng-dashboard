.class public abstract Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;
.super Landroid/os/Binder;
.source "ICarAutoWakeSvc.java"

# interfaces
.implements Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.xpeng.ai.wake.ICarAutoWakeSvc"

.field static final TRANSACTION_deleteAllAutoWakeTask:I = 0x3

.field static final TRANSACTION_deleteAutoWakeTaskId:I = 0x4

.field static final TRANSACTION_getRunningAutoWakeTaskId:I = 0x7

.field static final TRANSACTION_insertOrUpdateAutoWakeTask:I = 0x5

.field static final TRANSACTION_notifyNoRunningScene:I = 0xa

.field static final TRANSACTION_overrideAutoWakeTask:I = 0x6

.field static final TRANSACTION_registerAutoWakeListener:I = 0x1

.field static final TRANSACTION_startRootSceneByUser:I = 0x9

.field static final TRANSACTION_stopRootSceneByUser:I = 0x8

.field static final TRANSACTION_unregisterAutoWakeListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.xpeng.ai.wake.ICarAutoWakeSvc"

    .line 58
    invoke-virtual {p0, p0, v0}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.xpeng.ai.wake.ICarAutoWakeSvc"

    .line 69
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    instance-of v1, v0, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    if-eqz v1, :cond_1

    .line 71
    check-cast v0, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    return-object v0

    .line 73
    :cond_1
    new-instance v0, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;
    .locals 1

    .line 406
    sget-object v0, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub$Proxy;->sDefaultImpl:Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;)Z
    .locals 1

    .line 399
    sget-object v0, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub$Proxy;->sDefaultImpl:Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 400
    sput-object p0, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub$Proxy;->sDefaultImpl:Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

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

    const-string v2, "android.car.xpeng.ai.wake.ICarAutoWakeSvc"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 176
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 169
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;->notifyNoRunningScene()V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 151
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-virtual {p0, p1}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;->startRootSceneByUser(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 160
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 163
    invoke-virtual {p0, p1}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;->stopRootSceneByUser(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 143
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;->getRunningAutoWakeTaskId()Ljava/util/List;

    move-result-object p1

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 134
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    sget-object p1, Landroid/car/xpeng/ai/wake/AutoWakeTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 137
    invoke-virtual {p0, p1}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;->overrideAutoWakeTask(Ljava/util/List;)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 125
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    sget-object p1, Landroid/car/xpeng/ai/wake/AutoWakeTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 128
    invoke-virtual {p0, p1}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;->insertOrUpdateAutoWakeTask(Ljava/util/List;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 116
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 119
    invoke-virtual {p0, p1}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;->deleteAutoWakeTaskId(Ljava/util/List;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 109
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;->deleteAllAutoWakeTask()V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 100
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;

    move-result-object p1

    .line 103
    invoke-virtual {p0, p1}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;->unregisterAutoWakeListener(Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 91
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;

    move-result-object p1

    .line 94
    invoke-virtual {p0, p1}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;->registerAutoWakeListener(Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 86
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
