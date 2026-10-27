.class Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$LightLanuageListenerToService;
.super Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener$Stub;
.source "LightLanuageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LightLanuageListenerToService"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;)V
    .locals 1

    .line 184
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener$Stub;-><init>()V

    .line 185
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$LightLanuageListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onErrorEvent(Ljava/lang/String;I)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$LightLanuageListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    if-eqz v0, :cond_0

    .line 216
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->access$500(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onFinishEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$LightLanuageListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    if-eqz v0, :cond_0

    .line 208
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->access$400(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStartEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$LightLanuageListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    if-eqz v0, :cond_0

    .line 192
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->access$200(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStopEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$LightLanuageListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    if-eqz v0, :cond_0

    .line 200
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->access$300(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUpgradeEvent(II)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$LightLanuageListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    if-eqz v0, :cond_0

    .line 224
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->access$600(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;II)V

    :cond_0
    return-void
.end method
