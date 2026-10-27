.class public abstract Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Stub;
.super Landroid/os/Binder;
.source "IDockEventListener.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onDockEvent:I = 0x4

.field static final TRANSACTION_onDockItemAdd:I = 0x1

.field static final TRANSACTION_onDockItemRemoved:I = 0x2

.field static final TRANSACTION_onEnterEdit:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.systemui.dock.IDockEventListener"

    .line 33
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.systemui.dock.IDockEventListener"

    .line 44
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;

    if-eqz v1, :cond_1

    .line 46
    check-cast v0, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;

    return-object v0

    .line 48
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;
    .locals 1

    .line 276
    sget-object v0, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;)Z
    .locals 1

    .line 266
    sget-object v0, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 270
    sput-object p0, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 267
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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.xiaopeng.xuimanager.systemui.dock.IDockEventListener"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_8

    const/4 v2, 0x0

    if-eq p1, v0, :cond_6

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    const/4 v3, 0x4

    if-eq p1, v3, :cond_0

    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 112
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/os/Bundle;

    .line 124
    :cond_1
    invoke-virtual {p0, p1, p4, v2}, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Stub;->onDockEvent(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 101
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_3

    move p2, v0

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 106
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Stub;->onEnterEdit(IZ)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 85
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_5

    .line 90
    sget-object p4, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;

    .line 95
    :cond_5
    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Stub;->onDockItemRemoved(ILcom/xiaopeng/xuimanager/systemui/dock/DockItem;)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 69
    :cond_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_7

    .line 74
    sget-object p4, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;

    .line 79
    :cond_7
    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Stub;->onDockItemAdd(ILcom/xiaopeng/xuimanager/systemui/dock/DockItem;)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 61
    :cond_8
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
