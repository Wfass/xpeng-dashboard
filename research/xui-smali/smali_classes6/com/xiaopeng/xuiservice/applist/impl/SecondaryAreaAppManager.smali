.class public Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;
.super Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
.source "SecondaryAreaAppManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager$PresetAppListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SecondaryAreaAppManager"

.field private static final mPresetAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final mThirdAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->mPresetAppList:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->mThirdAppList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;-><init>()V

    return-void
.end method

.method private applistInit()V
    .locals 1

    .line 186
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->getInstance()Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->addPresetAppListener(Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager$PresetAppListener;)V

    .line 187
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->loadPresetApps()V

    .line 188
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->loadThirdApps()V

    .line 189
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->notifyAppsAdd()V

    .line 190
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;
    .locals 1

    .line 34
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager$SingletonHolder;->access$000()Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$init$0(Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->applistInit()V

    return-void
.end method

.method public static synthetic lambda$init$1(Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;)V
    .locals 2

    .line 46
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$SecondaryAreaAppManager$QZdAnsCdDXoBdhfXSc0IqKf5KHc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$SecondaryAreaAppManager$QZdAnsCdDXoBdhfXSc0IqKf5KHc;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 47
    return-void
.end method

.method public static synthetic lambda$init$2(Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->applistInit()V

    return-void
.end method

.method private loadPresetApps()V
    .locals 5

    .line 193
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->mPresetAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 194
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->getInstance()Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->getOneThirdAppList()Ljava/util/List;

    move-result-object v0

    .line 195
    .local v0, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;"
    const-string v1, "SecondaryAreaAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadPresetApps: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 197
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 198
    .local v2, "app":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->copy()Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    move-result-object v3

    .line 199
    .local v3, "appInfo":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    if-nez v3, :cond_1

    .line 200
    goto :goto_1

    .line 202
    :cond_1
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setCategory(I)V

    .line 203
    invoke-virtual {v3}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setAppId(Ljava/lang/String;)V

    .line 204
    sget-object v4, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->mPresetAppList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v2    # "app":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    .end local v3    # "appInfo":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    goto :goto_1

    .line 207
    :cond_2
    return-void
.end method

.method private loadThirdApps()V
    .locals 5

    .line 210
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->mThirdAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 211
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->getInstance()Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->getOneThirdAppList()Ljava/util/List;

    move-result-object v0

    .line 212
    .local v0, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 213
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 214
    .local v2, "app":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->copy()Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    move-result-object v3

    .line 215
    .local v3, "appInfo":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    if-nez v3, :cond_0

    .line 216
    goto :goto_0

    .line 218
    :cond_0
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setCategory(I)V

    .line 219
    invoke-virtual {v3}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setAppId(Ljava/lang/String;)V

    .line 220
    sget-object v4, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->mThirdAppList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    .end local v2    # "app":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    .end local v3    # "appInfo":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    goto :goto_0

    .line 223
    :cond_1
    return-void
.end method

.method private notifyAppsAdd()V
    .locals 5

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v0, "notifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;"
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->mPresetAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->mPresetAppList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 230
    :cond_0
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->mThirdAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 231
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->mThirdAppList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 233
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 234
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    const/4 v2, 0x2

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 236
    :cond_2
    return-void
.end method


# virtual methods
.method public getAppInfo(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    .line 141
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->mPresetAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->mPresetAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 143
    .local v1, "app":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    return-object v1

    .line 146
    .end local v1    # "app":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    :cond_0
    goto :goto_0

    .line 148
    :cond_1
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->mThirdAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 149
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->mThirdAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 150
    .restart local v1    # "app":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    return-object v1

    .line 153
    .end local v1    # "app":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    :cond_2
    goto :goto_1

    .line 156
    :cond_3
    const-string v0, "SecondaryAreaAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppInfo: app not found, appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppInfoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation

    .line 55
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->mPresetAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->mThirdAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "SecondaryAreaAppManager"

    const-string v1, "getAppInfoList: app list is empty"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v0, "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->mPresetAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->mPresetAppList:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->innerList2OutList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 64
    :cond_1
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->mThirdAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 65
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->mThirdAppList:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->innerList2OutList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 68
    :cond_2
    return-object v0
.end method

.method public getAppInfoList(I)Ljava/util/List;
    .locals 1
    .param p1, "screenId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->getAppInfoList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getManagerName()Ljava/lang/String;
    .locals 1

    .line 39
    const-string v0, "SecondaryAreaAppManager"

    return-object v0
.end method

.method public init()V
    .locals 2

    .line 44
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$SecondaryAreaAppManager$4mKxCrMov-bUTGtXE23U_iosuec;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$SecondaryAreaAppManager$4mKxCrMov-bUTGtXE23U_iosuec;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->addUserUnlockedTask(Ljava/lang/Runnable;)V

    .line 48
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->isBootComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$SecondaryAreaAppManager$9fb_VqbUIk8ZW5z2PfM8rrHFLYA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$SecondaryAreaAppManager$9fb_VqbUIk8ZW5z2PfM8rrHFLYA;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 51
    :cond_0
    return-void
.end method

.method public onAppOperationChanged(ILjava/lang/String;)V
    .locals 0
    .param p1, "groupType"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 163
    return-void
.end method

.method public onPresetAppListChanged(ILjava/lang/String;)V
    .locals 6
    .param p1, "screenId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 167
    const-string v0, "SecondaryAreaAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPresetAppListChanged: screenId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",preset size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->mPresetAppList:Ljava/util/List;

    .line 168
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const/16 v0, 0x64

    if-ne v0, p1, :cond_4

    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->mPresetAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 172
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    if-nez p2, :cond_1

    .line 173
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->loadPresetApps()V

    .line 174
    sget-object v2, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    sget-object v3, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->mPresetAppList:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->innerList2OutArray(Ljava/util/List;)[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    move-result-object v3

    invoke-interface {v2, v1, v3, v0}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    goto :goto_1

    .line 176
    :cond_1
    sget-object v2, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->mPresetAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 177
    .local v3, "app":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    invoke-virtual {v3}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 178
    sget-object v2, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-interface {v2, v1, v4, v0}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 179
    goto :goto_1

    .line 181
    .end local v3    # "app":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    :cond_2
    goto :goto_0

    .line 183
    :cond_3
    :goto_1
    return-void

    .line 170
    :cond_4
    :goto_2
    return-void
.end method

.method public resetAppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 1
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public startApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;Landroid/os/Bundle;)I
    .locals 6
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .param p2, "extra"    # Landroid/os/Bundle;

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "innerAppInfo":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->mPresetAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 96
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->mPresetAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 97
    .local v2, "app":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    move-object v0, v2

    .line 99
    goto :goto_1

    .line 101
    .end local v2    # "app":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    :cond_0
    goto :goto_0

    .line 103
    :cond_1
    :goto_1
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->mThirdAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 104
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/SecondaryAreaAppManager;->mThirdAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 105
    .restart local v2    # "app":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 106
    move-object v0, v2

    .line 107
    goto :goto_3

    .line 109
    .end local v2    # "app":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    :cond_2
    goto :goto_2

    .line 112
    :cond_3
    :goto_3
    const/16 v1, -0x3ea

    if-nez v0, :cond_4

    .line 113
    const-string v2, "SecondaryAreaAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startApp: app not found, appId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return v1

    .line 117
    :cond_4
    const/4 v2, 0x0

    .line 118
    .local v2, "componentStr":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0xb

    invoke-static {v5}, Lcom/xiaopeng/xuimanager/applist/ApplistConst;->getCategoryName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".applist_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 120
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 121
    :cond_5
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/xiaopeng/xuimanager/applist/ApplistConst;->getCategoryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 126
    :goto_4
    if-nez v2, :cond_6

    .line 127
    const-string v3, "SecondaryAreaAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startApp: componentStr is null, appId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return v1

    .line 131
    :cond_6
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v1

    const-string v3, "secondary"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3, v2, v4}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->setHome(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 135
    const-string v1, "SecondaryAreaAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startApp,appId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",componentStr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return v5
.end method

.method public updateAppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 1
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public updateApplist(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;)I"
        }
    .end annotation

    .line 78
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    const/4 v0, 0x0

    return v0
.end method
