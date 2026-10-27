.class public Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;
.super Ljava/lang/Object;
.source "ThemeManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/theme/ThemeManager;
.implements Lcom/xiaopeng/xuimanager/XUIManagerBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$EventCallbackHandler;,
        Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$ThemeListenerToService;,
        Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$SingletonHolder;
    }
.end annotation


# static fields
.field private static final MSG_ON_DOWNLOAD_CANCEL:I = 0xa

.field private static final MSG_ON_DOWNLOAD_ERROR:I = 0xb

.field private static final MSG_ON_DOWNLOAD_IN_PROGRESS:I = 0x8

.field private static final MSG_ON_DOWNLOAD_PAUSED:I = 0x9

.field private static final MSG_ON_DOWNLOAD_START:I = 0x7

.field private static final MSG_QUERY_REMOTE_THEME_FAILED:I = 0x6

.field private static final MSG_QUERY_REMOTE_THEME_SUCCESS:I = 0x5

.field private static final MSG_THEME_ADDED:I = 0x1

.field private static final MSG_THEME_DELETED:I = 0x3

.field private static final MSG_THEME_SELECTED:I = 0x4

.field private static final MSG_THEME_UPDATED:I = 0x2

.field private static final MSG_THEME_UPDATED2:I = 0xc

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final downloadImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeDownload;

.field private final elementsImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

.field private final fileImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;

.field private final imageImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeImage;

.field private mHandler:Landroid/os/Handler;

.field private mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

.field private final pathImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;

.field private final registerAndNotify:Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

.field private serverDisconnected:Z

.field private serviceName:Ljava/lang/String;

.field private final subModules:[Lcom/xiaopeng/xuimanager/theme/ThemeManagerSubModule;

.field private final valuesImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xpTheme_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeDownload;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeDownload;-><init>(Lcom/xiaopeng/xuimanager/theme/ThemeManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->downloadImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeDownload;

    .line 36
    new-instance v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;-><init>(Lcom/xiaopeng/xuimanager/theme/ThemeManager;)V

    iput-object v1, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->pathImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;

    .line 38
    new-instance v2, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;-><init>(Lcom/xiaopeng/xuimanager/theme/ThemeManager;)V

    iput-object v2, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->valuesImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;

    .line 40
    new-instance v3, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;-><init>(Lcom/xiaopeng/xuimanager/theme/ThemeManager;)V

    iput-object v3, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->fileImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;

    .line 42
    new-instance v4, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeImage;

    invoke-direct {v4, p0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeImage;-><init>(Lcom/xiaopeng/xuimanager/theme/ThemeManager;)V

    iput-object v4, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->imageImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeImage;

    .line 44
    new-instance v5, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    invoke-direct {v5, p0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;-><init>(Lcom/xiaopeng/xuimanager/theme/ThemeManager;)V

    iput-object v5, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->elementsImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    const/4 v6, 0x6

    new-array v6, v6, [Lcom/xiaopeng/xuimanager/theme/ThemeManagerSubModule;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    .line 46
    iput-object v6, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->subModules:[Lcom/xiaopeng/xuimanager/theme/ThemeManagerSubModule;

    .line 48
    new-instance v0, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    new-instance v1, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$1;-><init>(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;)V

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;-><init>(Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->registerAndNotify:Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    .line 72
    iput-boolean v7, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->serverDisconnected:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$1;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;)Lcom/xiaopeng/xuimanager/theme/ITheme;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->handleOnDownloadStart(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;Lcom/xiaopeng/xuimanager/theme/Theme;F)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->handleOnDownloadInProgress(Lcom/xiaopeng/xuimanager/theme/Theme;F)V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->handleOnDownloadPaused(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->handleOnDownloadCancel(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;Lcom/xiaopeng/xuimanager/theme/Theme;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->handleOnDownloadError(Lcom/xiaopeng/xuimanager/theme/Theme;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;)Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->registerAndNotify:Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->handleThemeAdded(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->handleThemeDeleted(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->handleThemeUpdated(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;Lcom/xiaopeng/xuimanager/theme/Theme;Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->handleThemeUpdated(Lcom/xiaopeng/xuimanager/theme/Theme;Lcom/xiaopeng/xuimanager/theme/Theme;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->handleThemeSelected(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;Ljava/util/List;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->handleQueryRemoteThemeSuccess(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->handleQueryRemoteThemeFailed(I)V

    return-void
.end method

.method private bindingLooper(Landroid/os/Looper;)V
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->subModules:[Lcom/xiaopeng/xuimanager/theme/ThemeManagerSubModule;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 150
    invoke-virtual {v3, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerSubModule;->setLooper(Landroid/os/Looper;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bindingService()V
    .locals 5

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->subModules:[Lcom/xiaopeng/xuimanager/theme/ThemeManagerSubModule;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 144
    iget-object v4, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerSubModule;->setService(Lcom/xiaopeng/xuimanager/theme/ITheme;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;
    .locals 1

    .line 81
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$SingletonHolder;->access$200()Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method private handleOnDownloadCancel(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private handleOnDownloadError(Lcom/xiaopeng/xuimanager/theme/Theme;I)V
    .locals 3

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 316
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private handleOnDownloadInProgress(Lcom/xiaopeng/xuimanager/theme/Theme;F)V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 p1, 0x8

    invoke-static {v0, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 303
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private handleOnDownloadPaused(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private handleOnDownloadStart(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private handleQueryRemoteThemeFailed(I)V
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private handleQueryRemoteThemeSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/theme/Theme;",
            ">;)V"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private handleThemeAdded(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private handleThemeDeleted(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private handleThemeSelected(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private handleThemeUpdated(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private handleThemeUpdated(Lcom/xiaopeng/xuimanager/theme/Theme;Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 p1, 0xc

    invoke-static {v0, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public addTheme(Ljava/lang/String;)V
    .locals 4

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->addTheme(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 199
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public addThemeElement(ILjava/lang/String;)V
    .locals 1

    .line 856
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->elementsImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->addThemeElement(ILjava/lang/String;)V

    return-void
.end method

.method public cancelDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->downloadImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeDownload;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeDownload;->cancelDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    return-void
.end method

.method public cancelDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 1

    .line 896
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->elementsImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->cancelDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    return-void
.end method

.method public deleteTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 4

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->deleteTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 208
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteTheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public deleteThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 1

    .line 861
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->elementsImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->deleteThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    return-void
.end method

.method public getAmbientLightDir()Ljava/nio/file/Path;
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->pathImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->getAmbientLightDir()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getAmbientLightDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->pathImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->getAmbientLightDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public getBitmap(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->imageImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeImage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeImage;->getBitmap(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->imageImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeImage;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeImage;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->imageImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeImage;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeImage;->getBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getBoolean(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Z)Z
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->valuesImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->getBoolean(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->valuesImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getBooleanArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;[Z)[Z
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->valuesImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->getBooleanArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;[Z)[Z

    move-result-object p1

    return-object p1
.end method

.method public getBooleanArray(Ljava/lang/String;[Z)[Z
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->valuesImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->getBooleanArray(Ljava/lang/String;[Z)[Z

    move-result-object p1

    return-object p1
.end method

.method public getBootAniDir()Ljava/nio/file/Path;
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->pathImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->getBootAniDir()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getBootAniDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 1

    .line 724
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->pathImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->getBootAniDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public getBootSoundDir()Ljava/nio/file/Path;
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->pathImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->getBootSoundDir()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getBootSoundDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->pathImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->getBootSoundDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public getColor(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;I)I
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->valuesImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->getColor(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getColor(Ljava/lang/String;I)I
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->valuesImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->getColor(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getColorArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;[I)[I
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->valuesImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->getColorArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;[I)[I

    move-result-object p1

    return-object p1
.end method

.method public getColorArray(Ljava/lang/String;[I)[I
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->valuesImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->getColorArray(Ljava/lang/String;[I)[I

    move-result-object p1

    return-object p1
.end method

.method public getCurrentAppliedThemeElement(I)Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    .locals 1

    .line 841
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->elementsImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->getCurrentAppliedThemeElement(I)Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    move-result-object p1

    return-object p1
.end method

.method public getDimension(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;I)I
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->valuesImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->getDimension(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getDimension(Ljava/lang/String;I)I
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->valuesImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->getDimension(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getDimensionArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;[I)[I
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->valuesImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->getDimensionArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;[I)[I

    move-result-object p1

    return-object p1
.end method

.method public getDimensionArray(Ljava/lang/String;[I)[I
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->valuesImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->getDimensionArray(Ljava/lang/String;[I)[I

    move-result-object p1

    return-object p1
.end method

.method public getDownloadStatusInfo(Lcom/xiaopeng/xuimanager/theme/Theme;)Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->downloadImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeDownload;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeDownload;->getDownloadStatusInfo(Lcom/xiaopeng/xuimanager/theme/Theme;)Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;

    move-result-object p1

    return-object p1
.end method

.method public getDrawable(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->imageImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeImage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeImage;->getDrawable(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->imageImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeImage;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeImage;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->imageImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeImage;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeImage;->getDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getFileBytes(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;[B)[B
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->fileImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;->getFileBytes(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public getFileBytes(Ljava/lang/String;)[B
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->fileImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;->getFileBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getFileBytes(Ljava/lang/String;[B)[B
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->fileImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;->getFileBytes(Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public getFileText(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->fileImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;->getFileText(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFileText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->fileImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;->getFileText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFileText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->fileImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeFile;->getFileText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFloat(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;D)D
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->valuesImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->getFloat(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;D)D

    move-result-wide p1

    return-wide p1
.end method

.method public getFloat(Ljava/lang/String;D)D
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->valuesImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->getFloat(Ljava/lang/String;D)D

    move-result-wide p1

    return-wide p1
.end method

.method public getFloatArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;[D)[D
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->valuesImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->getFloatArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;[D)[D

    move-result-object p1

    return-object p1
.end method

.method public getFloatArray(Ljava/lang/String;[D)[D
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->valuesImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->getFloatArray(Ljava/lang/String;[D)[D

    move-result-object p1

    return-object p1
.end method

.method public getIconsDir()Ljava/nio/file/Path;
    .locals 1

    .line 769
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->pathImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->getIconsDir()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getIconsDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->pathImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->getIconsDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public getInteger(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;I)I
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->valuesImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->getInteger(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getInteger(Ljava/lang/String;I)I
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->valuesImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->getInteger(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getIntegerArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;[I)[I
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->valuesImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->getIntegerArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;[I)[I

    move-result-object p1

    return-object p1
.end method

.method public getIntegerArray(Ljava/lang/String;[I)[I
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->valuesImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->getIntegerArray(Ljava/lang/String;[I)[I

    move-result-object p1

    return-object p1
.end method

.method public getLightLangDir()Ljava/nio/file/Path;
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->pathImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->getLightLangDir()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getLightLangDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 1

    .line 744
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->pathImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->getLightLangDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public getModuleDir(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 1

    .line 814
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->pathImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->getModuleDir(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public getModuleDir(Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 1

    .line 819
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->pathImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->getModuleDir(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public getNaviDir()Ljava/nio/file/Path;
    .locals 1

    .line 809
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->pathImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->getNaviDir()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getNaviDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->pathImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->getNaviDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public getOverlayDir()Ljava/nio/file/Path;
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->pathImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->getOverlayDir()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getOverlayDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->pathImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->getOverlayDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public getRemoteThemeElements(I)V
    .locals 1

    .line 826
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->elementsImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->getRemoteThemeElements(I)V

    return-void
.end method

.method public getRemoteThemes()V
    .locals 3

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getRemoteThemes()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 161
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "getRemoteThemes"

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getSRDir()Ljava/nio/file/Path;
    .locals 1

    .line 799
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->pathImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->getSRDir()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getSRDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->pathImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->getSRDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;
    .locals 3

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 180
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "getSelectedTheme"

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedThemeElement(I)Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    .locals 1

    .line 836
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->elementsImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->getSelectedThemeElement(I)Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    move-result-object p1

    return-object p1
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getSoundThemeDir()Ljava/nio/file/Path;
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->pathImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->getSoundThemeDir()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getSoundThemeDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 1

    .line 754
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->pathImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->getSoundThemeDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public getString(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->valuesImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->getString(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->valuesImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->valuesImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->getStringArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->valuesImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeValues;->getStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSystemFileDir()Ljava/nio/file/Path;
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->pathImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->getSystemFileDir()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getSystemFileDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->pathImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->getSystemFileDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public getSystemImageDir()Ljava/nio/file/Path;
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->pathImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->getSystemImageDir()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getSystemImageDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 1

    .line 704
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->pathImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->getSystemImageDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public getSystemValuesDir()Ljava/nio/file/Path;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->pathImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->getSystemValuesDir()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getSystemValuesDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->pathImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->getSystemValuesDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public getThemeElementDownloadStatusInfo(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;
    .locals 1

    .line 901
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->elementsImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->getThemeElementDownloadStatusInfo(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;

    move-result-object p1

    return-object p1
.end method

.method public getThemeElements(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/theme/ThemeElement;",
            ">;"
        }
    .end annotation

    .line 831
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->elementsImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->getThemeElements(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getThemeJsonFile()Ljava/nio/file/Path;
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->pathImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->getThemeJsonFile()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getThemeJsonFile(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->pathImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->getThemeJsonFile(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public getThemes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/theme/Theme;",
            ">;"
        }
    .end annotation

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getThemes()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 170
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "getThemes"

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getXiaoPDir()Ljava/nio/file/Path;
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->pathImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->getXiaoPDir()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getXiaoPDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;
    .locals 1

    .line 784
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->pathImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemePath;->getXiaoPDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 134
    invoke-super {p0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    .line 135
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    .line 136
    new-instance p1, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$EventCallbackHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$EventCallbackHandler;-><init>(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->mHandler:Landroid/os/Handler;

    .line 138
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->bindingLooper(Landroid/os/Looper;)V

    .line 139
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->bindingService()V

    return-void
.end method

.method public onServerDisconnected()V
    .locals 2

    .line 125
    invoke-super {p0}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->onServerDisconnected()V

    .line 126
    sget-object v0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onServerDisconnected"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->serverDisconnected:Z

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->registerAndNotify:Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->disconnect()V

    return-void
.end method

.method public onXUIConnected(Landroid/os/IBinder;)V
    .locals 3

    .line 98
    invoke-super {p0, p1}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->onXUIConnected(Landroid/os/IBinder;)V

    .line 99
    sget-object v0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onXUIConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->serverDisconnected:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->serverDisconnected:Z

    .line 107
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    .line 108
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->bindingService()V

    .line 110
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->registerAndNotify:Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->connect()V

    return-void
.end method

.method public onXUIDisconnected()V
    .locals 2

    .line 92
    sget-object v0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onXUIDisconnected"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->registerAndNotify:Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->disconnect()V

    return-void
.end method

.method public pauseDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->downloadImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeDownload;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeDownload;->pauseDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    return-void
.end method

.method public pauseDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 1

    .line 886
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->elementsImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->pauseDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    return-void
.end method

.method public registerThemeElementListener(ILcom/xiaopeng/xuimanager/theme/ThemeElementListener;)V
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->elementsImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->registerThemeElementListener(ILcom/xiaopeng/xuimanager/theme/ThemeElementListener;)V

    return-void
.end method

.method public registerThemeListener(Lcom/xiaopeng/xuimanager/theme/ThemeListener;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->registerAndNotify:Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->register(Ljava/lang/Object;)Z

    return-void
.end method

.method public resumeDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->downloadImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeDownload;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeDownload;->resumeDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    return-void
.end method

.method public resumeDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 1

    .line 891
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->elementsImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->resumeDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    return-void
.end method

.method public selectTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 4

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->selectTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 190
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectTheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public selectThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->elementsImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->selectThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->serviceName:Ljava/lang/String;

    return-void
.end method

.method public startDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->downloadImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeDownload;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeDownload;->startDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    return-void
.end method

.method public startDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->downloadImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeDownload;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeDownload;->startDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V

    return-void
.end method

.method public startDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 1

    .line 876
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->elementsImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->startDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    return-void
.end method

.method public startDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V
    .locals 1

    .line 881
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->elementsImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->startDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V

    return-void
.end method

.method public unregisterThemeElementListener(ILcom/xiaopeng/xuimanager/theme/ThemeElementListener;)V
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->elementsImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->unregisterThemeElementListener(ILcom/xiaopeng/xuimanager/theme/ThemeElementListener;)V

    return-void
.end method

.method public unregisterThemeListener(Lcom/xiaopeng/xuimanager/theme/ThemeListener;)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->registerAndNotify:Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/util/ThemeListenerRegisterAndNotify;->unregister(Ljava/lang/Object;)Z

    return-void
.end method

.method public unselectThemeElement(I)V
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->elementsImpl:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->unselectThemeElement(I)V

    return-void
.end method
