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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mCallbacks:Ljava/util/List;

    const/4 v0, 0x1

    .line 233
    iput-boolean v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mRefresh:Z

    const/4 v0, 0x0

    .line 234
    iput-boolean v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mPendingChange:Z

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    iput p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mUiMode:I

    if-eqz p2, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object p2, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    return-void
.end method

.method public static varargs asList([Ljava/lang/String;)Ljava/util/List;
    .locals 0
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

    if-eqz p0, :cond_0

    .line 64
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static asMaps(Ljava/lang/String;Ljava/util/List;)Ljava/util/HashMap;
    .locals 1
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
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs asMaps(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
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
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static create(Landroid/content/Context;)Lcom/xiaopeng/libtheme/ThemeViewModel;
    .locals 2

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    new-instance v1, Lcom/xiaopeng/libtheme/ThemeViewModel;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/libtheme/ThemeViewModel;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    return-object v1
.end method

.method public static create(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/xiaopeng/libtheme/ThemeViewModel;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-static {p0, p1, v0, v0, v1}, Lcom/xiaopeng/libtheme/ThemeManager;->resolveAttribute(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    .line 41
    new-instance v0, Lcom/xiaopeng/libtheme/ThemeViewModel;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/xiaopeng/libtheme/ThemeViewModel;
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaopeng/libtheme/ThemeManager;->resolveAttribute(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    .line 45
    new-instance p2, Lcom/xiaopeng/libtheme/ThemeViewModel;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    return-object p2
.end method

.method public static create(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/Object;)Lcom/xiaopeng/libtheme/ThemeViewModel;
    .locals 0

    .line 58
    invoke-static {p4}, Lcom/xiaopeng/libtheme/ThemeViewModel;->getExtra(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object p4

    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/libtheme/ThemeManager;->resolveAttribute(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    .line 59
    new-instance p2, Lcom/xiaopeng/libtheme/ThemeViewModel;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    return-object p2
.end method

.method private getAttrInfo()Ljava/lang/String;
    .locals 1

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    if-eqz v0, :cond_0

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

    :catch_0
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static getExtra(Ljava/lang/Object;)Ljava/util/HashMap;
    .locals 1
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

    if-eqz p0, :cond_1

    .line 87
    :try_start_0
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    const-string v0, "extra_append"

    .line 88
    check-cast p0, Ljava/util/List;

    invoke-static {v0, p0}, Lcom/xiaopeng/libtheme/ThemeViewModel;->asMaps(Ljava/lang/String;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    .line 89
    :cond_0
    instance-of v0, p0, Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 90
    check-cast p0, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getViewInfo(Landroid/view/View;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 262
    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "view null"

    :goto_0
    return-object p1
.end method

.method private isUiModeChanged(I)Z
    .locals 1

    .line 236
    iget v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mUiMode:I

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private updateThemeResource(Landroid/view/View;)V
    .locals 2

    .line 239
    sget-boolean v0, Lcom/xiaopeng/libtheme/ThemeManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThemeViewModel updateThemeResource view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->getViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " attr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaopeng/libtheme/ThemeViewModel;->getAttrInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    invoke-static {p1, v0}, Lcom/xiaopeng/libtheme/ThemeManager;->updateAttribute(Landroid/view/View;Ljava/util/HashMap;)V

    .line 241
    iget-object p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mCallback:Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;

    if-eqz p1, :cond_1

    .line 242
    invoke-interface {p1}, Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;->onThemeChanged()V

    .line 244
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mCallbacks:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 245
    iget-object p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;

    if-eqz v0, :cond_2

    .line 247
    invoke-interface {v0}, Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;->onThemeChanged()V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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
    .locals 3

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 113
    invoke-static {v0}, Lcom/xiaopeng/libtheme/ThemeManager;->getUiMode(Landroid/content/Context;)I

    move-result v0

    .line 114
    sget-boolean v1, Lcom/xiaopeng/libtheme/ThemeManager;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThemeViewModel onAttachedToWindow newMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " oldMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mUiMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRefresh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mRefresh:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->getViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V

    .line 115
    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/libtheme/ThemeViewModel;->isUiModeChanged(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    iget-boolean v1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mRefresh:Z

    if-eqz v1, :cond_1

    .line 117
    invoke-direct {p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->updateThemeResource(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 119
    iput-boolean p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mPendingChange:Z

    .line 122
    :cond_2
    :goto_0
    iput v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mUiMode:I

    return-void
.end method

.method public onConfigurationChanged(Landroid/view/View;Landroid/content/res/Configuration;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 156
    iget v0, p2, Landroid/content/res/Configuration;->uiMode:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 157
    :goto_0
    invoke-static {p2}, Lcom/xiaopeng/libtheme/ThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result v1

    .line 158
    sget-boolean v2, Lcom/xiaopeng/libtheme/ThemeManager;->DEBUG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThemeViewModel onConfigurationChanged isThemeChanged="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " oldMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mUiMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRefresh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mRefresh:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->getViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V

    .line 159
    :cond_1
    invoke-direct {p0, v0}, Lcom/xiaopeng/libtheme/ThemeViewModel;->isUiModeChanged(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 160
    iget-boolean v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mRefresh:Z

    if-eqz v0, :cond_2

    .line 161
    invoke-direct {p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->updateThemeResource(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    .line 163
    iput-boolean p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mPendingChange:Z

    :goto_1
    if-eqz p2, :cond_3

    .line 165
    iget p1, p2, Landroid/content/res/Configuration;->uiMode:I

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mUiMode:I

    :goto_2
    iput p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mUiMode:I

    :cond_4
    return-void
.end method

.method public onDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_3

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 128
    invoke-static {p2}, Lcom/xiaopeng/libtheme/ThemeManager;->getUiMode(Landroid/content/Context;)I

    move-result p2

    .line 129
    sget-boolean v0, Lcom/xiaopeng/libtheme/ThemeManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThemeViewModel onWindowFocusChanged newMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " oldMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mUiMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRefresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mRefresh:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->getViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V

    .line 130
    :cond_0
    invoke-direct {p0, p2}, Lcom/xiaopeng/libtheme/ThemeViewModel;->isUiModeChanged(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    iget-boolean v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mRefresh:Z

    if-eqz v0, :cond_1

    .line 132
    invoke-direct {p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->updateThemeResource(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 134
    iput-boolean p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mPendingChange:Z

    .line 137
    :cond_2
    :goto_0
    iput p2, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mUiMode:I

    :cond_3
    return-void
.end method

.method public onWindowVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    if-nez p2, :cond_3

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 143
    invoke-static {p2}, Lcom/xiaopeng/libtheme/ThemeManager;->getUiMode(Landroid/content/Context;)I

    move-result p2

    .line 144
    sget-boolean v0, Lcom/xiaopeng/libtheme/ThemeManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThemeViewModel onWindowVisibilityChanged newMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " oldMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mUiMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRefresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mRefresh:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->getViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V

    .line 145
    :cond_0
    invoke-direct {p0, p2}, Lcom/xiaopeng/libtheme/ThemeViewModel;->isUiModeChanged(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    iget-boolean v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mRefresh:Z

    if-eqz v0, :cond_1

    .line 147
    invoke-direct {p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->updateThemeResource(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 149
    iput-boolean p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mPendingChange:Z

    .line 152
    :cond_2
    :goto_0
    iput p2, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mUiMode:I

    :cond_3
    return-void
.end method

.method public removeCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 189
    iget-object p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "background"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    .line 192
    iget-object p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "background"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 198
    iget-object p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "background"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "background"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mCallback:Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;

    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 2

    if-eqz p1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "drawableStart"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    .line 181
    iget-object p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "drawableTop"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p3, :cond_2

    .line 182
    iget-object p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "drawableEnd"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p4, :cond_3

    .line 183
    iget-object p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "drawableBottom"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 2

    if-eqz p1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "drawableLeft"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    .line 175
    iget-object p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "drawableTop"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p3, :cond_2

    .line 176
    iget-object p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "drawableRight"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p4, :cond_3

    .line 177
    iget-object p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "drawableBottom"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 204
    iget-object p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "src"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 210
    iget-object p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "src"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setImageResource(I)V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "src"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "textColor"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setThemeAttribute(Ljava/lang/String;I)V
    .locals 1

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

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setThemeRefreshable(Landroid/view/View;Z)V
    .locals 2

    .line 221
    sget-boolean v0, Lcom/xiaopeng/libtheme/ThemeManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThemeViewModel setThemeRefreshable newRefresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " oldRefresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mRefresh:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " oldMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mUiMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->getViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V

    .line 222
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mRefresh:Z

    if-eq p2, v0, :cond_1

    .line 223
    iput-boolean p2, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mRefresh:Z

    if-eqz p2, :cond_1

    .line 224
    iget-boolean p2, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mPendingChange:Z

    if-eqz p2, :cond_1

    .line 225
    invoke-direct {p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->updateThemeResource(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 226
    iput-boolean p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mPendingChange:Z

    :cond_1
    return-void
.end method
