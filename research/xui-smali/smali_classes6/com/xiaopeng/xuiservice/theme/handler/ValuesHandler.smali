.class public Lcom/xiaopeng/xuiservice/theme/handler/ValuesHandler;
.super Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;
.source "ValuesHandler.java"


# static fields
.field private static final EMPTY:Lcom/xiaopeng/xuiservice/theme/Values;


# instance fields
.field private final valuesMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/xiaopeng/xuimanager/theme/Theme;",
            "Lcom/xiaopeng/xuiservice/theme/Values;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/xiaopeng/xuiservice/theme/Values;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/theme/Values;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/theme/handler/ValuesHandler;->EMPTY:Lcom/xiaopeng/xuiservice/theme/Values;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;-><init>()V

    .line 16
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/theme/handler/ValuesHandler;->valuesMap:Landroid/util/ArrayMap;

    return-void
.end method

.method private loadValuesFor(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 2
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 58
    if-eqz p1, :cond_1

    sget-object v0, Lcom/xiaopeng/xuiservice/theme/Themes;->DEFAULT_THEME:Lcom/xiaopeng/xuimanager/theme/Theme;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/theme/Theme;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/theme/parser/ThemeValuesParser;->parseFrom(Lcom/xiaopeng/xuimanager/theme/Theme;)Lcom/xiaopeng/xuiservice/theme/Values;

    move-result-object v0

    .line 62
    .local v0, "values":Lcom/xiaopeng/xuiservice/theme/Values;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/theme/handler/ValuesHandler;->valuesMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void

    .line 59
    .end local v0    # "values":Lcom/xiaopeng/xuiservice/theme/Values;
    :cond_1
    :goto_0
    return-void
.end method

.method private unloadValuesFor(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 1
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 66
    if-nez p1, :cond_0

    .line 67
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/handler/ValuesHandler;->valuesMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method


# virtual methods
.method protected doInit()V
    .locals 0

    .line 34
    return-void
.end method

.method protected doOnThemeAdded(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 0
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 39
    return-void
.end method

.method protected doOnThemeDeleted(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 0
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 43
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/theme/handler/ValuesHandler;->unloadValuesFor(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 44
    return-void
.end method

.method protected doOnThemeSelected(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 0
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 55
    return-void
.end method

.method protected doOnThemeUpdated(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 0
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 49
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/theme/handler/ValuesHandler;->unloadValuesFor(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 50
    return-void
.end method

.method public getValues(Lcom/xiaopeng/xuimanager/theme/Theme;)Lcom/xiaopeng/xuiservice/theme/Values;
    .locals 2
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 20
    if-eqz p1, :cond_3

    sget-object v0, Lcom/xiaopeng/xuiservice/theme/Themes;->DEFAULT_THEME:Lcom/xiaopeng/xuimanager/theme/Theme;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/theme/Theme;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/handler/ValuesHandler;->valuesMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/theme/Values;

    .line 24
    .local v0, "values":Lcom/xiaopeng/xuiservice/theme/Values;
    if-nez v0, :cond_1

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/theme/handler/ValuesHandler;->loadValuesFor(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 26
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/theme/handler/ValuesHandler;->valuesMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/xiaopeng/xuiservice/theme/Values;

    .line 28
    :cond_1
    if-eqz v0, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/xiaopeng/xuiservice/theme/handler/ValuesHandler;->EMPTY:Lcom/xiaopeng/xuiservice/theme/Values;

    :goto_0
    return-object v1

    .line 21
    .end local v0    # "values":Lcom/xiaopeng/xuiservice/theme/Values;
    :cond_3
    :goto_1
    sget-object v0, Lcom/xiaopeng/xuiservice/theme/handler/ValuesHandler;->EMPTY:Lcom/xiaopeng/xuiservice/theme/Values;

    return-object v0
.end method
