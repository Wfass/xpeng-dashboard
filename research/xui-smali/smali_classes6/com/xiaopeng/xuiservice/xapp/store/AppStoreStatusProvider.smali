.class public Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;
.super Ljava/lang/Object;
.source "AppStoreStatusProvider.java"


# static fields
.field private static final APP_STORE_AUTHORITY_URI:Landroid/net/Uri;

.field private static final ASSEMBLE_URI:Landroid/net/Uri;

.field private static final ASSEMBLE_URI_APP:Landroid/net/Uri;

.field private static final AUTHORITY:Ljava/lang/String; = "appstore"

.field private static final COLUMN_KEY:Ljava/lang/String; = "key"

.field public static final DOWNLOAD_START_NOT_DONE_AGREEMENT:I = 0x69

.field public static final DOWNLOAD_START_NOT_LOGIN:I = 0x64

.field public static final DOWNLOAD_START_SATISFY:I = 0x0

.field private static final INDEX_ASSEMBLE_STATE:I = 0x5

.field public static final INDEX_CAN_START_DOWNLOAD:I = 0x0

.field private static final INDEX_PROMPT_TEXT:I = 0x4

.field private static final INDEX_PROMPT_TITLE:I = 0x3

.field public static final LOCAL_STATE_PATH:Ljava/lang/String; = "app_local_states"

.field public static final LOCAL_STATE_PROVIDER_URI:Landroid/net/Uri;

.field private static final PACKAGE_NAME_COLUMN:Ljava/lang/String; = "packageName"

.field private static final PACKAGE_NAME_INDEX:I = 0x0

.field public static final REMOTE_STATE_PATH:Ljava/lang/String; = "remote_states"

.field private static final REMOTE_STATE_PROVIDER_URI:Landroid/net/Uri;

.field private static final RES_TYPE_APP:I = 0x3e8

.field public static final STATE_FORCE_UPDATE:I = 0x41b

.field private static final STATE_INDEX:I = 0x1

.field public static final STATE_NORMAL_UPDATE:I = 0x64

.field public static final STATE_OFF_SHELF:I = 0x439

.field public static final STATE_SUSPENDED:I = 0x3e9

.field public static final STATE_TIPS:I = 0x3ea

.field private static final TAG:Ljava/lang/String; = "AppStoreStatusProvider"

.field private static mAppOnlineStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;


# instance fields
.field mContentObserver:Landroid/database/ContentObserver;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 87
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 20
    const-string v0, "content://appstore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->APP_STORE_AUTHORITY_URI:Landroid/net/Uri;

    .line 22
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->APP_STORE_AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "remote_states"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->REMOTE_STATE_PROVIDER_URI:Landroid/net/Uri;

    .line 34
    const-string v0, "content://resource_service/assemble"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->ASSEMBLE_URI:Landroid/net/Uri;

    .line 36
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->ASSEMBLE_URI:Landroid/net/Uri;

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->ASSEMBLE_URI_APP:Landroid/net/Uri;

    .line 41
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->APP_STORE_AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "app_local_states"

    .line 42
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->LOCAL_STATE_PROVIDER_URI:Landroid/net/Uri;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->mAppOnlineStatus:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider$2;

    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider$2;-><init>(Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->mContentObserver:Landroid/database/ContentObserver;

    .line 51
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->init()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;
    .param p1, "x1"    # Landroid/content/Context;

    .line 17
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->syncAppOnlineStatus(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100()Landroid/net/Uri;
    .locals 1

    .line 17
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->REMOTE_STATE_PROVIDER_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;
    .locals 2

    .line 55
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->mInstance:Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;

    if-nez v0, :cond_1

    .line 56
    const-class v0, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->mInstance:Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->mInstance:Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;

    .line 60
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 62
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->mInstance:Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;

    return-object v0
.end method

.method private init()V
    .locals 2

    .line 66
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->registerAppOnlineStatusChanged()V

    .line 67
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 73
    return-void
.end method

.method public static isPreparing(I)Z
    .locals 2
    .param p0, "state"    # I

    .line 147
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0x64

    if-ge p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRunning(I)Z
    .locals 1
    .param p0, "state"    # I

    .line 151
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private registerAppOnlineStatusChanged()V
    .locals 4

    .line 95
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->REMOTE_STATE_PROVIDER_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->mContentObserver:Landroid/database/ContentObserver;

    .line 96
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppStoreStatusProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerAppOnlineStatusChanged failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private syncAppOnlineStatus(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 103
    const-string v0, "AppStoreStatusProvider"

    const-string v1, "syncAppOnlineStatus start"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->mAppOnlineStatus:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 105
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->REMOTE_STATE_PROVIDER_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 107
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "pkgName":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 111
    .local v3, "state":I
    sget-object v4, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->mAppOnlineStatus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v4, "AppStoreStatusProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncAppOnlineStatus pkgName:="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v3    # "state":I
    goto :goto_0

    .line 115
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 105
    :catch_0
    move-exception v1

    move-object v2, v1

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    :goto_1
    if-eqz v0, :cond_0

    :try_start_3
    invoke-static {v2, v0}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_0
    throw v1

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v2, v0}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 117
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_2
    goto :goto_2

    .line 115
    :catch_1
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppStoreStatusProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncAppOnlineStatus e= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method


# virtual methods
.method public getAppTipsContent(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->REMOTE_STATE_PROVIDER_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "packageName LIKE ?"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v6, v8

    const/4 v7, 0x0

    .line 77
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 76
    .local v2, "cursor":Landroid/database/Cursor;
    nop

    .line 79
    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_2

    .line 80
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 81
    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "tipsTitle":Ljava/lang/String;
    const/4 v4, 0x4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "tipsText":Ljava/lang/String;
    const-string v5, "AppStoreStatusProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAppTipsText pkgName:="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " tipsTitle"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " & tipsText="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object v3, v5, v8

    aput-object v4, v5, v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    if-eqz v2, :cond_0

    :try_start_2
    invoke-static {v0, v2}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 84
    :cond_0
    return-object v5

    .line 87
    .end local v3    # "tipsTitle":Ljava/lang/String;
    .end local v4    # "tipsText":Ljava/lang/String;
    :catchall_0
    move-exception v1

    move-object v3, v0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    :catchall_1
    move-exception v3

    move-object v9, v3

    move-object v3, v1

    move-object v1, v9

    :goto_0
    if-eqz v2, :cond_1

    :try_start_4
    invoke-static {v3, v2}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    throw v1

    :cond_2
    if-eqz v2, :cond_3

    invoke-static {v0, v2}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 89
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_3
    goto :goto_1

    .line 87
    :catch_1
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AppStoreStatusProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncAppOnlineStatus e= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public queryAppOnlineStatus(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "status":I
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->mAppOnlineStatus:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->mAppOnlineStatus:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 125
    :cond_0
    const-string v1, "AppStoreStatusProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryAppOnlineStatus: packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " &currentStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return v0
.end method

.method public queryCanDownloadStatus(Landroid/content/Context;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->LOCAL_STATE_PROVIDER_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 157
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_2

    .line 158
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 159
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    if-eqz v0, :cond_0

    invoke-static {v2, v0}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 159
    :cond_0
    return v1

    .line 163
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 155
    :catch_0
    move-exception v1

    move-object v2, v1

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v2, v0}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    throw v1

    .line 162
    :cond_2
    nop

    .line 163
    if-eqz v0, :cond_3

    invoke-static {v2, v0}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 162
    :cond_3
    return v1
.end method

.method public queryIsAssembling(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->ASSEMBLE_URI_APP:Landroid/net/Uri;

    const-string v3, "key LIKE ?"

    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v4, v7

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 132
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_3

    .line 133
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 134
    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 135
    .local v2, "state":I
    const-string v3, "AppStoreStatusProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryIsAssembling finish: pn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->isRunning(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->isPreparing(I)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    move v6, v7

    goto :goto_1

    .line 137
    :cond_1
    :goto_0
    nop

    .line 142
    :goto_1
    if-eqz v0, :cond_2

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 137
    :cond_2
    return v6

    .line 142
    .end local v2    # "state":I
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 130
    :catch_0
    move-exception v1

    goto :goto_2

    .line 140
    :cond_3
    :try_start_1
    const-string v2, "AppStoreStatusProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryIsAssembling finish: no data relative to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :cond_4
    if-eqz v0, :cond_5

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 143
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_5
    return v7

    .line 130
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :goto_2
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    :goto_3
    if-eqz v0, :cond_6

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_6
    throw v2
.end method
