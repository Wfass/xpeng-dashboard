.class Lcom/xiaopeng/xuimanager/xapp/XAppManager$XMiniProgEventListenerToService;
.super Lcom/xiaopeng/xuimanager/xapp/IXMiniProgEventListener$Stub;
.source "XAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/xapp/XAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XMiniProgEventListenerToService"
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

    .line 1057
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/xapp/IXMiniProgEventListener$Stub;-><init>()V

    .line 1058
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/XAppManager$XMiniProgEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onMiniProgCallBack(ILcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;)V
    .locals 2

    .line 1063
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuimanager/xapp/XAppManager;->access$600()Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/xapp/XAppManager$XMiniProgEventListener;

    .line 1064
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/xapp/XAppManager$XMiniProgEventListener;->onMiniProgCallBack(ILcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method
