.class public abstract Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener$Stub;
.super Landroid/os/Binder;
.source "ISDVisualizerDataListener.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_OnFftDataCapture:I = 0x1

.field static final TRANSACTION_OnRatioData:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.mediacenter.visualizer.ISDVisualizerDataListener"

    .line 31
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.mediacenter.visualizer.ISDVisualizerDataListener"

    .line 42
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;

    if-eqz v1, :cond_1

    .line 44
    check-cast v0, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;

    return-object v0

    .line 46
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;
    .locals 1

    .line 182
    sget-object v0, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;)Z
    .locals 1

    .line 172
    sget-object v0, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 176
    sput-object p0, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 173
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

    const-string v1, "com.xiaopeng.xuimanager.mediacenter.visualizer.ISDVisualizerDataListener"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 82
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    .line 91
    invoke-virtual {p0, p1, p4, v1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener$Stub;->OnRatioData(ILjava/lang/String;FF)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 67
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 76
    invoke-virtual {p0, p1, p4, v1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener$Stub;->OnFftDataCapture(ILjava/lang/String;[BI)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 59
    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
