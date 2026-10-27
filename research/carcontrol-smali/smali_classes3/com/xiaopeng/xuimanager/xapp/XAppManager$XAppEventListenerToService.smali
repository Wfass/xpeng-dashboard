.class Lcom/xiaopeng/xuimanager/xapp/XAppManager$XAppEventListenerToService;
.super Lcom/xiaopeng/xuimanager/xapp/IXAppEventListener$Stub;
.source "XAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/xapp/XAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XAppEventListenerToService"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xuimanager/xapp/XAppManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/xapp/XAppManager;)V
    .locals 1

    .line 137
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/xapp/IXAppEventListener$Stub;-><init>()V

    .line 138
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/XAppManager$XAppEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onError(II)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/XAppManager$XAppEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/xapp/XAppManager;

    if-eqz v0, :cond_0

    .line 145
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/xapp/XAppManager;->access$200(Lcom/xiaopeng/xuimanager/xapp/XAppManager;II)V

    :cond_0
    return-void
.end method

.method public onStartAppEvent(Landroid/os/Bundle;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/XAppManager$XAppEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/xapp/XAppManager;

    if-eqz v0, :cond_0

    .line 153
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/xapp/XAppManager;->access$300(Lcom/xiaopeng/xuimanager/xapp/XAppManager;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
