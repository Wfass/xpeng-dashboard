.class public Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;
.super Lcom/xiaopeng/xuimanager/theme/ThemeManagerSubModule;
.source "ThemeManager_IThemeElement.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/theme/IThemeElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$EventCallbackHandler;,
        Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$ThemeElementListenerToService;
    }
.end annotation


# static fields
.field private static final MSG_ON_QUERY_REMOTE_THEME_ELEMENT_FAILED:I = 0x6

.field private static final MSG_ON_QUERY_REMOTE_THEME_ELEMENT_SUCCESS:I = 0x5

.field private static final MSG_ON_THEME_ELEMENT_ADDED:I = 0x1

.field private static final MSG_ON_THEME_ELEMENT_DELETED:I = 0x2

.field private static final MSG_ON_THEME_ELEMENT_DOWNLOAD_CANCEL:I = 0xa

.field private static final MSG_ON_THEME_ELEMENT_DOWNLOAD_ERROR:I = 0xb

.field private static final MSG_ON_THEME_ELEMENT_DOWNLOAD_IN_PROGRESS:I = 0x8

.field private static final MSG_ON_THEME_ELEMENT_DOWNLOAD_PAUSED:I = 0x9

.field private static final MSG_ON_THEME_ELEMENT_DOWNLOAD_START:I = 0x7

.field private static final MSG_ON_THEME_ELEMENT_SELECTION_CHANGED:I = 0x4

.field private static final MSG_ON_THEME_ELEMENT_UPDATED:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final registerAndNotify:Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotify;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xpTheme_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/xuimanager/theme/ThemeManager;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerSubModule;-><init>(Lcom/xiaopeng/xuimanager/theme/ThemeManager;)V

    .line 23
    new-instance p1, Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotify;

    new-instance v0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$1;-><init>(Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;)V

    invoke-direct {p1, v0}, Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotify;-><init>(Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->registerAndNotify:Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotify;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;)Landroid/os/Handler;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;)Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotify;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->registerAndNotify:Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotify;

    return-object p0
.end method


# virtual methods
.method public addThemeElement(ILjava/lang/String;)V
    .locals 4

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->addThemeElement(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 125
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addThemeElement elementType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", themeElementPath="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public cancelDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 4

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->cancelDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 175
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelDownloadThemeElement: "

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
    .locals 4

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->deleteThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 134
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteThemeElement themeElement="

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

.method public getCurrentAppliedThemeElement(I)Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    .locals 4

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getCurrentAppliedThemeElement(I)Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 94
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentAppliedThemeElement elementType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getRemoteThemeElements(I)V
    .locals 4

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getRemoteThemeElements(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 65
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRemoteThemeElements elementType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getSelectedThemeElement(I)Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    .locals 4

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getSelectedThemeElement(I)Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 84
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSelectedThemeElement elementType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getThemeElementDownloadStatusInfo(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;
    .locals 4

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getThemeElementDownloadStatusInfo(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->toDownloadStatusInfo(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 185
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThemeElementDownloadStatusInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getThemeElements(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/theme/ThemeElement;",
            ">;"
        }
    .end annotation

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getThemeElements(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 74
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThemeElements elementType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public pauseDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 4

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->pauseDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 157
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseDownloadThemeElement: "

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

.method public registerThemeElementListener(ILcom/xiaopeng/xuimanager/theme/ThemeElementListener;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->registerAndNotify:Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotify;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotify;->register(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public resumeDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 4

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->resumeDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 166
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeDownloadThemeElement: "

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
    .locals 4

    const-string v0, "can\'t select null, use unselectThemeElement if you want to delete selection"

    .line 102
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->selectThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 107
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectThemeElement themeElement="

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

.method setLooper(Landroid/os/Looper;)V
    .locals 1

    .line 315
    invoke-super {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerSubModule;->setLooper(Landroid/os/Looper;)V

    .line 316
    new-instance v0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$EventCallbackHandler;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$EventCallbackHandler;-><init>(Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public startDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 140
    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->startDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V

    return-void
.end method

.method public startDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V
    .locals 2

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ITheme;->startDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 148
    sget-object p3, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDownloadThemeElement: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public unregisterThemeElementListener(ILcom/xiaopeng/xuimanager/theme/ThemeElementListener;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->registerAndNotify:Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotify;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/util/ThemeElementListenerRegisterAndNotify;->unregister(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public unselectThemeElement(I)V
    .locals 4

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->unselectThemeElement(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 116
    sget-object v1, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unselectThemeElement elementType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
