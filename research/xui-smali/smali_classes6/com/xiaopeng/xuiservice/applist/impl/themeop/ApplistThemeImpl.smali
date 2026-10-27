.class public Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl;
.super Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;
.source "ApplistThemeImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl$SINGLETON;,
        Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl$ApplistThemeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ApplistThemeImpl"


# instance fields
.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl$ApplistThemeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl;->mListeners:Ljava/util/List;

    .line 54
    const-string v0, "ApplistThemeImpl"

    const-string v1, "ApplistThemeImpl create..."

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->getInstance()Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->addThemeResourceHandler(Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;)V

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl$1;

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl;
    .locals 1

    .line 59
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl$SINGLETON;->access$100()Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$doInit$0(Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl$ApplistThemeListener;)V
    .locals 0
    .param p0, "item"    # Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl$ApplistThemeListener;

    .line 65
    invoke-interface {p0}, Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl$ApplistThemeListener;->doThemeInit()V

    return-void
.end method

.method static synthetic lambda$doOnThemeAdded$1(Lcom/xiaopeng/xuimanager/theme/Theme;Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl$ApplistThemeListener;)V
    .locals 0
    .param p0, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p1, "item"    # Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl$ApplistThemeListener;

    .line 71
    invoke-interface {p1, p0}, Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl$ApplistThemeListener;->doOnThemeAdded(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    return-void
.end method

.method static synthetic lambda$doOnThemeDeleted$2(Lcom/xiaopeng/xuimanager/theme/Theme;Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl$ApplistThemeListener;)V
    .locals 0
    .param p0, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p1, "item"    # Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl$ApplistThemeListener;

    .line 77
    invoke-interface {p1, p0}, Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl$ApplistThemeListener;->doOnThemeDeleted(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    return-void
.end method

.method static synthetic lambda$doOnThemeSelected$4(Lcom/xiaopeng/xuimanager/theme/Theme;Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl$ApplistThemeListener;)V
    .locals 0
    .param p0, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p1, "item"    # Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl$ApplistThemeListener;

    .line 89
    invoke-interface {p1, p0}, Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl$ApplistThemeListener;->doOnThemeSelected(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    return-void
.end method

.method static synthetic lambda$doOnThemeUpdated$3(Lcom/xiaopeng/xuimanager/theme/Theme;Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl$ApplistThemeListener;)V
    .locals 0
    .param p0, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p1, "item"    # Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl$ApplistThemeListener;

    .line 83
    invoke-interface {p1, p0}, Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl$ApplistThemeListener;->doOnThemeUpdated(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    return-void
.end method


# virtual methods
.method public addApplistThemeListener(Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl$ApplistThemeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl$ApplistThemeListener;

    .line 93
    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_0
    return-void
.end method

.method protected doInit()V
    .locals 2

    .line 64
    const-string v0, "ApplistThemeImpl"

    const-string v1, "doInit"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl;->mListeners:Ljava/util/List;

    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/themeop/-$$Lambda$ApplistThemeImpl$bpZZ_6K-KfZ0mrpjtQNZEQKeUW0;->INSTANCE:Lcom/xiaopeng/xuiservice/applist/impl/themeop/-$$Lambda$ApplistThemeImpl$bpZZ_6K-KfZ0mrpjtQNZEQKeUW0;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 66
    return-void
.end method

.method protected doOnThemeAdded(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 2
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 70
    const-string v0, "ApplistThemeImpl"

    const-string v1, "doOnThemeAdded"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl;->mListeners:Ljava/util/List;

    new-instance v1, Lcom/xiaopeng/xuiservice/applist/impl/themeop/-$$Lambda$ApplistThemeImpl$_QrvyqcQmZfsHBM405m5c6Rvqqc;

    invoke-direct {v1, p1}, Lcom/xiaopeng/xuiservice/applist/impl/themeop/-$$Lambda$ApplistThemeImpl$_QrvyqcQmZfsHBM405m5c6Rvqqc;-><init>(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 72
    return-void
.end method

.method protected doOnThemeDeleted(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 2
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 76
    const-string v0, "ApplistThemeImpl"

    const-string v1, "doOnThemeDeleted"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl;->mListeners:Ljava/util/List;

    new-instance v1, Lcom/xiaopeng/xuiservice/applist/impl/themeop/-$$Lambda$ApplistThemeImpl$hPD-rLzFUhc2fIS3q0Qwmd_I8lU;

    invoke-direct {v1, p1}, Lcom/xiaopeng/xuiservice/applist/impl/themeop/-$$Lambda$ApplistThemeImpl$hPD-rLzFUhc2fIS3q0Qwmd_I8lU;-><init>(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 78
    return-void
.end method

.method protected doOnThemeSelected(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 2
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 88
    const-string v0, "ApplistThemeImpl"

    const-string v1, "doOnThemeSelected"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl;->mListeners:Ljava/util/List;

    new-instance v1, Lcom/xiaopeng/xuiservice/applist/impl/themeop/-$$Lambda$ApplistThemeImpl$ACarP2hgnLIIqUQ4pRz_PlzP-h8;

    invoke-direct {v1, p1}, Lcom/xiaopeng/xuiservice/applist/impl/themeop/-$$Lambda$ApplistThemeImpl$ACarP2hgnLIIqUQ4pRz_PlzP-h8;-><init>(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 90
    return-void
.end method

.method protected doOnThemeUpdated(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 2
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 82
    const-string v0, "ApplistThemeImpl"

    const-string v1, "doOnThemeUpdated"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl;->mListeners:Ljava/util/List;

    new-instance v1, Lcom/xiaopeng/xuiservice/applist/impl/themeop/-$$Lambda$ApplistThemeImpl$Zs6_fP5CVyymZmV6wy-X0-VRiTY;

    invoke-direct {v1, p1}, Lcom/xiaopeng/xuiservice/applist/impl/themeop/-$$Lambda$ApplistThemeImpl$Zs6_fP5CVyymZmV6wy-X0-VRiTY;-><init>(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 84
    return-void
.end method

.method public removeApplistThemeListener(Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl$ApplistThemeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl$ApplistThemeListener;

    .line 99
    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    return-void
.end method
