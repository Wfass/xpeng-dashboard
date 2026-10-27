.class Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager$1;
.super Ljava/lang/Object;
.source "PreDownloadedAppManager.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/applist/AppEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager$1;->this$0:Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onAppEvent$0(Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager$1;[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)V
    .locals 8
    .param p1, "infos"    # [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 65
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 66
    .local v3, "appInfo":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->access$000()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 67
    .local v4, "preDownApp":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    if-eqz v4, :cond_0

    .line 68
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager$1;->this$0:Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;

    invoke-static {v5, v4, v1}, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->access$100(Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;Lcom/xiaopeng/xuimanager/applist/data/AppInfo;Z)V

    goto :goto_1

    .line 70
    :cond_0
    const-string v5, "PreDownloadedAppManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onAppEvent,app not found in pre-downloaded apps,appInfo="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .end local v3    # "appInfo":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .end local v4    # "preDownApp":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    :cond_1
    return-void
.end method


# virtual methods
.method public onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V
    .locals 2
    .param p1, "eventType"    # I
    .param p2, "infos"    # [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .param p3, "params"    # [Ljava/lang/String;

    .line 57
    const/4 v0, 0x4

    if-eq v0, p1, :cond_0

    .line 58
    return-void

    .line 61
    :cond_0
    if-eqz p2, :cond_2

    array-length v0, p2

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getCategory()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 64
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$1$PTPC5RLS-V3ru7OV0udu7I8OT6E;

    invoke-direct {v1, p0, p2}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$1$PTPC5RLS-V3ru7OV0udu7I8OT6E;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager$1;[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 74
    return-void

    .line 62
    :cond_2
    :goto_0
    return-void
.end method
