.class Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientLightListenerToService;
.super Lcom/xiaopeng/xuimanager/ambient/IAmbientEventListener$Stub;
.source "AmbientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/ambient/AmbientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AmbientLightListenerToService"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xuimanager/ambient/AmbientManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/ambient/AmbientManager;)V
    .locals 1

    .line 194
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/ambient/IAmbientEventListener$Stub;-><init>()V

    .line 195
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientLightListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientLightListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    if-eqz v0, :cond_0

    .line 202
    invoke-static {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->access$200(Lcom/xiaopeng/xuimanager/ambient/AmbientManager;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
