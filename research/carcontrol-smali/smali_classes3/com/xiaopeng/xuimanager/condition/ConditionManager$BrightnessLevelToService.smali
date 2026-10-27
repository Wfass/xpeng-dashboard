.class Lcom/xiaopeng/xuimanager/condition/ConditionManager$BrightnessLevelToService;
.super Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener$Stub;
.source "ConditionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/condition/ConditionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BrightnessLevelToService"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xuimanager/condition/ConditionManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/condition/ConditionManager;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener$Stub;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager$BrightnessLevelToService;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onBrightnessLevelChanged(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ConditionManager$BrightnessLevelToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;

    if-eqz v0, :cond_0

    .line 76
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->access$200(Lcom/xiaopeng/xuimanager/condition/ConditionManager;II)V

    :cond_0
    return-void
.end method
