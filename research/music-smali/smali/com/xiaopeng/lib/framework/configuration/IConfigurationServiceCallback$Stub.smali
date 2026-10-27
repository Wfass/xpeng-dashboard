.class public abstract Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IConfigurationServiceCallback.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.lib.framework.configuration.IConfigurationServiceCallback"

.field static final TRANSACTION_onConfigurationChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.lib.framework.configuration.IConfigurationServiceCallback"

    .line 14
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.lib.framework.configuration.IConfigurationServiceCallback"

    .line 25
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 26
    instance-of v1, v0, Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceCallback;

    if-eqz v1, :cond_1

    .line 27
    check-cast v0, Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceCallback;

    return-object v0

    .line 29
    :cond_1
    new-instance v0, Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "com.xiaopeng.lib.framework.configuration.IConfigurationServiceCallback"

    if-eq p1, v0, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 56
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 42
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 47
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    sget-object p1, Lcom/xiaopeng/lib/framework/configuration/ConfigurationDataImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceCallback$Stub;->onConfigurationChanged(Ljava/util/List;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
