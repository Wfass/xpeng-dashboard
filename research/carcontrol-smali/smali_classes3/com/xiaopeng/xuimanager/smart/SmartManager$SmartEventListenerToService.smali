.class Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListenerToService;
.super Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub;
.source "SmartManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/smart/SmartManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmartEventListenerToService"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xuimanager/smart/SmartManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/smart/SmartManager;)V
    .locals 1

    .line 2146
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub;-><init>()V

    .line 2147
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onError(II)V
    .locals 1

    .line 2152
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/smart/SmartManager;

    if-eqz v0, :cond_0

    .line 2154
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->access$1000(Lcom/xiaopeng/xuimanager/smart/SmartManager;II)V

    :cond_0
    return-void
.end method

.method public onLightEffectFinishEvent(II)V
    .locals 1

    .line 2160
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/smart/SmartManager;

    if-eqz v0, :cond_0

    .line 2162
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->access$1100(Lcom/xiaopeng/xuimanager/smart/SmartManager;II)V

    :cond_0
    return-void
.end method

.method public onLightEffectShowError(Ljava/lang/String;I)V
    .locals 1

    .line 2192
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/smart/SmartManager;

    if-eqz v0, :cond_0

    .line 2194
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->access$1500(Lcom/xiaopeng/xuimanager/smart/SmartManager;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onLightEffectShowFinishEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2184
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/smart/SmartManager;

    if-eqz v0, :cond_0

    .line 2186
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->access$1400(Lcom/xiaopeng/xuimanager/smart/SmartManager;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLightEffectShowStartEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2168
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/smart/SmartManager;

    if-eqz v0, :cond_0

    .line 2170
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->access$1200(Lcom/xiaopeng/xuimanager/smart/SmartManager;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLightEffectShowStopEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2176
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/smart/SmartManager;

    if-eqz v0, :cond_0

    .line 2178
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->access$1300(Lcom/xiaopeng/xuimanager/smart/SmartManager;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
