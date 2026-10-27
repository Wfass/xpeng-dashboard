.class Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartCommonEventListenerToService;
.super Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener$Stub;
.source "SmartManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/smart/SmartManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmartCommonEventListenerToService"
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

    .line 2202
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener$Stub;-><init>()V

    .line 2203
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartCommonEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onSmartCommonEvent(III)V
    .locals 1

    .line 2208
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartCommonEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/smart/SmartManager;

    if-eqz v0, :cond_0

    .line 2210
    invoke-static {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->access$1600(Lcom/xiaopeng/xuimanager/smart/SmartManager;III)V

    :cond_0
    return-void
.end method

.method public onSmartSpeechTtsEvent(ILjava/lang/String;)V
    .locals 1

    .line 2216
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartCommonEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/smart/SmartManager;

    if-eqz v0, :cond_0

    .line 2218
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->access$1700(Lcom/xiaopeng/xuimanager/smart/SmartManager;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
