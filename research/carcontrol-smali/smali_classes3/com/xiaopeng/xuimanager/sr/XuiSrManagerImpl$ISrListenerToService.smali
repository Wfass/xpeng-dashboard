.class Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$ISrListenerToService;
.super Lcom/xiaopeng/xuimanager/sr/ISrListener$Stub;
.source "XuiSrManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ISrListenerToService"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;)V
    .locals 1

    .line 150
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/sr/ISrListener$Stub;-><init>()V

    .line 151
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$ISrListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onHideSrIcon(Lcom/xiaopeng/xuimanager/sr/SrIcon;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$ISrListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;

    if-eqz v0, :cond_0

    .line 166
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;->access$300(Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;Lcom/xiaopeng/xuimanager/sr/SrIcon;)V

    :cond_0
    return-void
.end method

.method public onShowSrIcon(Lcom/xiaopeng/xuimanager/sr/SrIcon;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$ISrListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;

    if-eqz v0, :cond_0

    .line 158
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;->access$200(Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;Lcom/xiaopeng/xuimanager/sr/SrIcon;)V

    :cond_0
    return-void
.end method
