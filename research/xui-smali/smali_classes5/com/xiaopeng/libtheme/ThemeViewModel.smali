.class public Lcom/xiaopeng/libtheme/ThemeViewModel;
.super Ljava/lang/Object;
.source "ThemeViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;
    }
.end annotation


# instance fields
.field private mAttributeSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChange:Z

.field private mRefresh:Z

.field private mUiMode:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p2, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mCallbacks:Ljava/util/List;

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mRefresh:Z

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mPendingChange:Z

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mUiMode:I

    .line 33
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    move-object p2, v0

    iput-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    .line 34
    return-void
.end method

.method public static varargs asList([Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "value"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    if-eqz p0, :cond_0

    .line 64
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 66
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static asMaps(Ljava/lang/String;Ljava/util/List;)Ljava/util/HashMap;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 77
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 79
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-object v0

    .line 82
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static varargs asMaps(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 69
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 71
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-object v0

    .line 74
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static create(Landroid/content/Context;)Lcom/xiaopeng/libtheme/ThemeViewModel;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v1, Lcom/xiaopeng/libtheme/ThemeViewModel;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/libtheme/ThemeViewModel;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    return-object v1
.end method

.method public static create(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/xiaopeng/libtheme/ThemeViewModel;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v0, v1}, Lcom/xiaopeng/libtheme/ThemeManager;->resolveAttribute(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    .line 41
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v1, Lcom/xiaopeng/libtheme/ThemeViewModel;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/libtheme/ThemeViewModel;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    return-object v1
.end method

.method public static create(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/xiaopeng/libtheme/ThemeViewModel;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 44
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaopeng/libtheme/ThemeManager;->resolveAttribute(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    .line 45
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v1, Lcom/xiaopeng/libtheme/ThemeViewModel;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/libtheme/ThemeViewModel;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    return-object v1
.end method

.method public static create(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/Object;)Lcom/xiaopeng/libtheme/ThemeViewModel;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I
    .param p4, "extras"    # Ljava/lang/Object;

    .line 58
    invoke-static {p4}, Lcom/xiaopeng/libtheme/ThemeViewModel;->getExtra(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaopeng/libtheme/ThemeManager;->resolveAttribute(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    .line 59
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v1, Lcom/xiaopeng/libtheme/ThemeViewModel;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/libtheme/ThemeViewModel;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    return-object v1
.end method

.method private getAttrInfo()Ljava/lang/String;
    .locals 1

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 258
    :cond_0
    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 259
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public static getExtra(Ljava/lang/Object;)Ljava/util/HashMap;
    .locals 2
    .param p0, "extras"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 85
    if-eqz p0, :cond_2

    .line 87
    :try_start_0
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "extra_append"

    move-object v1, p0

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->asMaps(Ljava/lang/String;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    instance-of v0, p0, Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 90
    move-object v0, p0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 93
    :cond_1
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 95
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getViewInfo(Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 262
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "view null"

    :goto_0
    return-object v0
.end method

.method private isUiModeChanged(I)Z
    .locals 1
    .param p1, "uiMode"    # I

    .line 236
    iget v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mUiMode:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateThemeResource(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 239
    sget-boolean v0, Lcom/xiaopeng/libtheme/ThemeManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThemeViewModel updateThemeResource view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->getViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " attr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaopeng/libtheme/ThemeViewModel;->getAttrInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    invoke-static {p1, v0}, Lcom/xiaopeng/libtheme/ThemeManager;->updateAttribute(Landroid/view/View;Ljava/util/HashMap;)V

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mCallback:Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mCallback:Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;

    invoke-interface {v0}, Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;->onThemeChanged()V

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;

    .line 246
    .local v1, "callback":Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;
    if-eqz v1, :cond_2

    .line 247
    invoke-interface {v1}, Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;->onThemeChanged()V

    .line 249
    .end local v1    # "callback":Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;
    :cond_2
    goto :goto_0

    .line 251
    :cond_3
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;

    .line 102
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_0
    return-void
.end method

.method public getThemeRefreshable()Z
    .locals 1

    .line 231
    iget-boolean v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mRefresh:Z

    return v0
.end method

.method public onAttachedToWindow(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 113
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/xiaopeng/libtheme/ThemeManager;->getUiMode(Landroid/content/Context;)I

    move-result v1

    .line 114
    .local v1, "uiMode":I
    sget-boolean v2, Lcom/xiaopeng/libtheme/ThemeManager;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThemeViewModel onAttachedToWindow newMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " oldMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mUiMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mRefresh="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mRefresh:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->getViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V

    .line 115
    :cond_0
    invoke-direct {p0, v1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->isUiModeChanged(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    iget-boolean v2, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mRefresh:Z

    if-eqz v2, :cond_1

    .line 117
    invoke-direct {p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->updateThemeResource(Landroid/view/View;)V

    goto :goto_0

    .line 119
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mPendingChange:Z

    .line 122
    :cond_2
    :goto_0
    iput v1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mUiMode:I

    .line 123
    return-void
.end method

.method public onConfigurationChanged(Landroid/view/View;Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 156
    if-eqz p2, :cond_0

    iget v0, p2, Landroid/content/res/Configuration;->uiMode:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 157
    .local v0, "uiMode":I
    :goto_0
    invoke-static {p2}, Lcom/xiaopeng/libtheme/ThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result v1

    .line 158
    .local v1, "isThemeChanged":Z
    sget-boolean v2, Lcom/xiaopeng/libtheme/ThemeManager;->DEBUG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThemeViewModel onConfigurationChanged isThemeChanged="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " newMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " oldMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mUiMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mRefresh="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mRefresh:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->getViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V

    .line 159
    :cond_1
    invoke-direct {p0, v0}, Lcom/xiaopeng/libtheme/ThemeViewModel;->isUiModeChanged(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 160
    iget-boolean v2, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mRefresh:Z

    if-eqz v2, :cond_2

    .line 161
    invoke-direct {p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->updateThemeResource(Landroid/view/View;)V

    goto :goto_1

    .line 163
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mPendingChange:Z

    .line 165
    :goto_1
    if-eqz p2, :cond_3

    iget v2, p2, Landroid/content/res/Configuration;->uiMode:I

    goto :goto_2

    :cond_3
    iget v2, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mUiMode:I

    :goto_2
    iput v2, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mUiMode:I

    .line 167
    :cond_4
    return-void
.end method

.method public onDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 124
    return-void
.end method

.method public onWindowFocusChanged(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasWindowFocus"    # Z

    .line 126
    if-eqz p2, :cond_3

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 128
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/xiaopeng/libtheme/ThemeManager;->getUiMode(Landroid/content/Context;)I

    move-result v1

    .line 129
    .local v1, "uiMode":I
    sget-boolean v2, Lcom/xiaopeng/libtheme/ThemeManager;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThemeViewModel onWindowFocusChanged newMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " oldMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mUiMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mRefresh="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mRefresh:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->getViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V

    .line 130
    :cond_0
    invoke-direct {p0, v1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->isUiModeChanged(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 131
    iget-boolean v2, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mRefresh:Z

    if-eqz v2, :cond_1

    .line 132
    invoke-direct {p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->updateThemeResource(Landroid/view/View;)V

    goto :goto_0

    .line 134
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mPendingChange:Z

    .line 137
    :cond_2
    :goto_0
    iput v1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mUiMode:I

    .line 139
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "uiMode":I
    :cond_3
    return-void
.end method

.method public onWindowVisibilityChanged(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 141
    if-nez p2, :cond_3

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 143
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/xiaopeng/libtheme/ThemeManager;->getUiMode(Landroid/content/Context;)I

    move-result v1

    .line 144
    .local v1, "uiMode":I
    sget-boolean v2, Lcom/xiaopeng/libtheme/ThemeManager;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThemeViewModel onWindowVisibilityChanged newMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " oldMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mUiMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mRefresh="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mRefresh:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->getViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V

    .line 145
    :cond_0
    invoke-direct {p0, v1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->isUiModeChanged(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    iget-boolean v2, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mRefresh:Z

    if-eqz v2, :cond_1

    .line 147
    invoke-direct {p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->updateThemeResource(Landroid/view/View;)V

    goto :goto_0

    .line 149
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mPendingChange:Z

    .line 152
    :cond_2
    :goto_0
    iput v1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mUiMode:I

    .line 154
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "uiMode":I
    :cond_3
    return-void
.end method

.method public removeCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;

    .line 107
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    const-string v1, "background"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 3
    .param p1, "color"    # I

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    const-string v1, "background"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    const-string v1, "background"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 3
    .param p1, "resId"    # I

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    const-string v1, "background"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-void
.end method

.method public setCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mCallback:Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;

    .line 100
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 180
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    const-string v1, "drawableStart"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    const-string v1, "drawableTop"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    const-string v1, "drawableEnd"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_2
    if-eqz p4, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    const-string v1, "drawableBottom"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_3
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 174
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    const-string v1, "drawableLeft"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    const-string v1, "drawableTop"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    const-string v1, "drawableRight"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_2
    if-eqz p4, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    const-string v1, "drawableBottom"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_3
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    const-string v1, "src"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    const-string v1, "src"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    return-void
.end method

.method public setImageResource(I)V
    .locals 3
    .param p1, "resId"    # I

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    const-string v1, "src"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-void
.end method

.method public setTextColor(I)V
    .locals 3
    .param p1, "resId"    # I

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    const-string v1, "textColor"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-void
.end method

.method public setThemeAttribute(Ljava/lang/String;I)V
    .locals 2
    .param p1, "attr"    # Ljava/lang/String;
    .param p2, "resid"    # I

    .line 216
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_0
    return-void
.end method

.method public setThemeRefreshable(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isRefresh"    # Z

    .line 221
    sget-boolean v0, Lcom/xiaopeng/libtheme/ThemeManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThemeViewModel setThemeRefreshable newRefresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " oldRefresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mRefresh:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " oldMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mUiMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->getViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V

    .line 222
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mRefresh:Z

    if-eq p2, v0, :cond_1

    .line 223
    iput-boolean p2, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mRefresh:Z

    .line 224
    iget-boolean v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mRefresh:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mPendingChange:Z

    if-eqz v0, :cond_1

    .line 225
    invoke-direct {p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->updateThemeResource(Landroid/view/View;)V

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mPendingChange:Z

    .line 229
    :cond_1
    return-void
.end method
