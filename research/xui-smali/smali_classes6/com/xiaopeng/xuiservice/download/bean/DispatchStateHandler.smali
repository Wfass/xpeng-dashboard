.class public Lcom/xiaopeng/xuiservice/download/bean/DispatchStateHandler;
.super Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;
.source "DispatchStateHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;

    .line 19
    .local v0, "stateBean":Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->dispatchDownloadCallbackByType(Lcom/xiaopeng/xuiservice/download/bean/DownloadStateBean;)Z

    .line 20
    return-void
.end method
