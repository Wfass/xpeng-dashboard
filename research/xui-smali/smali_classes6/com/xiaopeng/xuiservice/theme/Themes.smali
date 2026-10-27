.class public Lcom/xiaopeng/xuiservice/theme/Themes;
.super Ljava/lang/Object;
.source "Themes.java"


# static fields
.field public static final DEBUG:Z = true

.field public static final DEFAULT_THEME:Lcom/xiaopeng/xuimanager/theme/Theme;

.field public static final LOG_TAG_PREFIX:Ljava/lang/String; = "xpTheme_"

.field private static final TAG:Ljava/lang/String; = "xpTheme_Themes"

.field private static volatile selectedTheme:Lcom/xiaopeng/xuimanager/theme/Theme;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static volatile themes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/theme/Theme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    sget-object v0, Lcom/xiaopeng/xuimanager/theme/ThemeManager;->DEFAULT_THEME:Lcom/xiaopeng/xuimanager/theme/Theme;

    sput-object v0, Lcom/xiaopeng/xuiservice/theme/Themes;->DEFAULT_THEME:Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 33
    sget-object v0, Lcom/xiaopeng/xuiservice/theme/Themes;->DEFAULT_THEME:Lcom/xiaopeng/xuimanager/theme/Theme;

    sput-object v0, Lcom/xiaopeng/xuiservice/theme/Themes;->selectedTheme:Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 35
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/theme/Themes;->themes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 3
    .param p0, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 84
    sget-object v0, Lcom/xiaopeng/xuiservice/theme/Themes;->themes:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    const-string/jumbo v0, "xpTheme_Themes"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static deleteTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 3
    .param p0, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 92
    sget-object v0, Lcom/xiaopeng/xuiservice/theme/Themes;->themes:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 95
    const-string/jumbo v0, "xpTheme_Themes"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteTheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method private static dumpThemes()V
    .locals 6

    .line 148
    sget-object v0, Lcom/xiaopeng/xuiservice/theme/Themes;->themes:Ljava/util/List;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/CollectionUtil;->sizeOf(Ljava/util/Collection;)I

    move-result v0

    .line 149
    .local v0, "size":I
    const-string/jumbo v1, "xpTheme_Themes"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "themes: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v1, 0x0

    .line 151
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 152
    sget-object v2, Lcom/xiaopeng/xuiservice/theme/Themes;->themes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 153
    .local v2, "theme":Lcom/xiaopeng/xuimanager/theme/Theme;
    const-string/jumbo v3, "xpTheme_Themes"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/theme/Theme;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v1    # "i":I
    .end local v2    # "theme":Lcom/xiaopeng/xuimanager/theme/Theme;
    :cond_0
    return-void
.end method

.method public static getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 44
    sget-object v0, Lcom/xiaopeng/xuiservice/theme/Themes;->selectedTheme:Lcom/xiaopeng/xuimanager/theme/Theme;

    return-object v0
.end method

.method public static getThemes()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/theme/Theme;",
            ">;"
        }
    .end annotation

    .line 69
    sget-object v0, Lcom/xiaopeng/xuiservice/theme/Themes;->themes:Ljava/util/List;

    return-object v0
.end method

.method public static isOperationTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)Z
    .locals 1
    .param p0, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 64
    if-eqz p0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/theme/Themes;->DEFAULT_THEME:Lcom/xiaopeng/xuimanager/theme/Theme;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/theme/Theme;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSelectedTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)Z
    .locals 1
    .param p0, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 54
    if-eqz p0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/theme/Themes;->selectedTheme:Lcom/xiaopeng/xuimanager/theme/Theme;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/theme/Theme;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static loadSelectedTheme()V
    .locals 4

    .line 118
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    const v1, 0x107b24

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getSelectedResource(I)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    move-result-object v0

    .line 119
    .local v0, "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    if-nez v0, :cond_0

    sget-object v1, Lcom/xiaopeng/xuiservice/theme/Themes;->DEFAULT_THEME:Lcom/xiaopeng/xuimanager/theme/Theme;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/theme/Themes;->resourceInfoToTheme(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v1

    :goto_0
    sput-object v1, Lcom/xiaopeng/xuiservice/theme/Themes;->selectedTheme:Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 122
    const-string/jumbo v1, "xpTheme_Themes"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadSelectedTheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/xiaopeng/xuiservice/theme/Themes;->selectedTheme:Lcom/xiaopeng/xuimanager/theme/Theme;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static loadThemes()V
    .locals 2

    .line 73
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    const v1, 0x107b24

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getLocalResourceList(I)Ljava/util/List;

    move-result-object v0

    .line 74
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$sgYpkfFePzBG5jzvn09aIugJUkk;->INSTANCE:Lcom/xiaopeng/xuiservice/theme/-$$Lambda$sgYpkfFePzBG5jzvn09aIugJUkk;

    .line 75
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 76
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/xiaopeng/xuiservice/theme/Themes;->themes:Ljava/util/List;

    .line 79
    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/Themes;->dumpThemes()V

    .line 81
    return-void
.end method

.method public static operationResourceToTheme(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lcom/xiaopeng/xuimanager/theme/Theme;
    .locals 2
    .param p0, "operationResource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 136
    new-instance v0, Lcom/xiaopeng/xuimanager/theme/Theme;

    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/theme/Theme;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "theme":Lcom/xiaopeng/xuimanager/theme/Theme;
    invoke-static {p0}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->toJson(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/theme/Theme;->setResourceJson(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getTargetPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/theme/parser/ThemeJsonParser;->parseThemeJson(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)V

    .line 139
    return-object v0
.end method

.method public static operationResourceToThemeElement(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    .locals 3
    .param p0, "operationResource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 159
    new-instance v0, Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceType()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;-><init>(Ljava/lang/String;I)V

    .line 160
    .local v0, "themeElement":Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    invoke-static {p0}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->toJson(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->setResourceJson(Ljava/lang/String;)V

    .line 161
    return-object v0
.end method

.method public static resourceInfoToTheme(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Lcom/xiaopeng/xuimanager/theme/Theme;
    .locals 2
    .param p0, "resourceInfo"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 128
    new-instance v0, Lcom/xiaopeng/xuimanager/theme/Theme;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/theme/Theme;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "theme":Lcom/xiaopeng/xuimanager/theme/Theme;
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/operation/utils/DataBuild;->toJson(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/theme/Theme;->setResourceJson(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->targetPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/theme/parser/ThemeJsonParser;->parseThemeJson(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)V

    .line 131
    return-object v0
.end method

.method public static resourceInfoToThemeElement(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    .locals 3
    .param p0, "resourceInfo"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 165
    new-instance v0, Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;-><init>(Ljava/lang/String;I)V

    .line 166
    .local v0, "themeElement":Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/operation/utils/DataBuild;->toJson(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->setResourceJson(Ljava/lang/String;)V

    .line 167
    return-object v0
.end method

.method public static themeElementToOperationResource(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .locals 1
    .param p0, "themeElement"    # Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 171
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->getResourceJson()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v0

    return-object v0
.end method

.method public static themeToOperationResource(Lcom/xiaopeng/xuimanager/theme/Theme;)Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .locals 1
    .param p0, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 144
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/theme/Theme;->getResourceJson()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v0

    return-object v0
.end method

.method public static updateTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 4
    .param p0, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 100
    sget-object v0, Lcom/xiaopeng/xuiservice/theme/Themes;->themes:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/xiaopeng/xuiservice/utils/CollectionUtil;->indexOf(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 101
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 102
    sget-object v1, Lcom/xiaopeng/xuiservice/theme/Themes;->themes:Ljava/util/List;

    invoke-interface {v1, v0, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v1, Lcom/xiaopeng/xuiservice/theme/Themes;->selectedTheme:Lcom/xiaopeng/xuimanager/theme/Theme;

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuimanager/theme/Theme;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    sput-object p0, Lcom/xiaopeng/xuiservice/theme/Themes;->selectedTheme:Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 107
    :cond_0
    const-string/jumbo v1, "xpTheme_Themes"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_1
    const-string/jumbo v1, "xpTheme_Themes"

    const-string v2, "updateTheme, theme is not in cache"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/Themes;->dumpThemes()V

    .line 115
    :goto_0
    return-void
.end method
