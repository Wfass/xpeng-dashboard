.class Lcom/xiaopeng/system/delegate/ISystemDelegateInterface$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISystemDelegateInterface.java"

# interfaces
.implements Lcom/xiaopeng/system/delegate/ISystemDelegateInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/system/delegate/ISystemDelegateInterface$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/xiaopeng/system/delegate/ISystemDelegateInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/system/delegate/ISystemDelegateInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.system.delegate.ISystemDelegateInterface"

    return-object v0
.end method
