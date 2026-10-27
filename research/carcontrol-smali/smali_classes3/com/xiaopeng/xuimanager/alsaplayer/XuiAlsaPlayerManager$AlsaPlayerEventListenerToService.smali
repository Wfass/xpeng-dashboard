.class Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager$AlsaPlayerEventListenerToService;
.super Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener$Stub;
.source "XuiAlsaPlayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlsaPlayerEventListenerToService"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener$Stub;-><init>()V

    .line 97
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager$AlsaPlayerEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAlsaPlayerChangeEvent(ILjava/lang/String;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager$AlsaPlayerEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;

    if-eqz v0, :cond_0

    .line 104
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->access$200(Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onError(II)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager$AlsaPlayerEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;

    if-eqz v0, :cond_0

    .line 112
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->access$300(Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;II)V

    :cond_0
    return-void
.end method
