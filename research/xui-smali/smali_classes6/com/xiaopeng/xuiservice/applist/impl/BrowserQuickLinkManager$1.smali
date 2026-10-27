.class Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager$1;
.super Ljava/lang/Object;
.source "BrowserQuickLinkManager.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/applist/AppEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager$1;->this$0:Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onAppEvent$0(Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager$1;)V
    .locals 6

    .line 69
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->getInstance()Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->queryByCategory(I)Ljava/util/List;

    move-result-object v0

    .line 71
    .local v0, "metaList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 74
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    .line 75
    .local v2, "appMeta":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    const-string v3, "BrowserQuickLinkManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete app meta:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->getInstance()Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaRepository;->delete(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V

    .line 77
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager$1;->this$0:Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;

    invoke-static {v3, v2}, Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;->access$000(Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager;Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V

    .line 78
    .end local v2    # "appMeta":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    goto :goto_0

    .line 79
    :cond_1
    return-void

    .line 72
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V
    .locals 6
    .param p1, "eventType"    # I
    .param p2, "infos"    # [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .param p3, "params"    # [Ljava/lang/String;

    .line 50
    const/4 v0, 0x4

    if-eq v0, p1, :cond_0

    .line 51
    return-void

    .line 54
    :cond_0
    if-eqz p2, :cond_5

    array-length v0, p2

    const/4 v1, 0x1

    if-lt v0, v1, :cond_5

    const/4 v0, 0x0

    aget-object v1, p2, v0

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getCategory()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_2

    .line 57
    :cond_1
    const/4 v1, 0x0

    .line 58
    .local v1, "holdingPkgRemoved":Z
    array-length v2, p2

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, p2, v0

    .line 59
    .local v3, "appInfo":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    const-string v4, "com.xp.xpbrowser"

    invoke-virtual {v3}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 60
    const/4 v1, 0x1

    .line 61
    const-string v0, "BrowserQuickLinkManager"

    const-string v2, "holding package removed,will clear all browser quick link"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    goto :goto_1

    .line 58
    .end local v3    # "appInfo":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 66
    return-void

    .line 68
    :cond_4
    invoke-static {}, Lcom/xiaopeng/xuimanager/utils/WorkHandler;->getInstance()Lcom/xiaopeng/xuimanager/utils/WorkHandler;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$BrowserQuickLinkManager$1$ggNN3hJzcy_az88mqKvFerG6VLw;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$BrowserQuickLinkManager$1$ggNN3hJzcy_az88mqKvFerG6VLw;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/BrowserQuickLinkManager$1;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/utils/WorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 80
    return-void

    .line 55
    .end local v1    # "holdingPkgRemoved":Z
    :cond_5
    :goto_2
    return-void
.end method
