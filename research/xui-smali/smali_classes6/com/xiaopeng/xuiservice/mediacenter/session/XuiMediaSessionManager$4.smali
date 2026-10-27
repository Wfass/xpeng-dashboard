.class Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$4;
.super Ljava/lang/Object;
.source "XuiMediaSessionManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$BTStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    .line 499
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$4;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBtStatusChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .line 502
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$4;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->access$702(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;Z)Z

    .line 503
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->getCallingPlayBtPackage()Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, "currentCallingPlayBt":Ljava/lang/String;
    const-string v1, "MCService-XuiMediaSessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBtStatusChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " &currentCallingPlayBt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$4;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->access$700(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.xiaopeng.musicradio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 506
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$4;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->access$800(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;)V

    .line 508
    :cond_1
    return-void
.end method
