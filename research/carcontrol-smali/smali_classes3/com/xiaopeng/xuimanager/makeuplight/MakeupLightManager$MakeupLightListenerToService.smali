.class Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$MakeupLightListenerToService;
.super Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener$Stub;
.source "MakeupLightManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MakeupLightListenerToService"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;)V
    .locals 1

    .line 177
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener$Stub;-><init>()V

    .line 178
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$MakeupLightListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAvailableEvent(Z)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$MakeupLightListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;

    if-eqz v0, :cond_0

    .line 185
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->access$200(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;Z)V

    :cond_0
    return-void
.end method

.method public onColorTemperatureEvent(II)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$MakeupLightListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;

    if-eqz v0, :cond_0

    .line 193
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->access$300(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;II)V

    :cond_0
    return-void
.end method

.method public onEffectEvent(Ljava/lang/String;I)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$MakeupLightListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;

    if-eqz v0, :cond_0

    .line 209
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->access$500(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onLuminanceEvent(I)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$MakeupLightListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;

    if-eqz v0, :cond_0

    .line 201
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->access$400(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;I)V

    :cond_0
    return-void
.end method
