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

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mCallbacks:Ljava/util/List;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    iput p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mUiMode:I

    .line 32
    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object p2, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    .line 33
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

    .line 62
    if-eqz p0, :cond_0

    .line 63
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 65
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

    .line 76
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 78
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-object v0

    .line 81
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

    .line 68
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-object v0

    .line 73
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static create(Landroid/content/Context;)Lcom/xiaopeng/libtheme/ThemeViewModel;
    .locals 2

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    new-instance v1, Lcom/xiaopeng/libtheme/ThemeViewModel;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/libtheme/ThemeViewModel;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    return-object v1
.end method

.method public static create(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/xiaopeng/libtheme/ThemeViewModel;
    .locals 2

    .line 39
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v0, v1}, Lcom/xiaopeng/libtheme/ThemeManager;->resolveAttribute(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    .line 40
    new-instance v0, Lcom/xiaopeng/libtheme/ThemeViewModel;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/xiaopeng/libtheme/ThemeViewModel;
    .locals 1

    .line 43
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaopeng/libtheme/ThemeManager;->resolveAttribute(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    .line 44
    new-instance p2, Lcom/xiaopeng/libtheme/ThemeViewModel;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    return-object p2
.end method

.method public static create(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/Object;)Lcom/xiaopeng/libtheme/ThemeViewModel;
    .locals 0

    .line 57
    invoke-static {p4}, Lcom/xiaopeng/libtheme/ThemeViewModel;->getExtra(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object p4

    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/libtheme/ThemeManager;->resolveAttribute(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    .line 58
    new-instance p2, Lcom/xiaopeng/libtheme/ThemeViewModel;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    return-object p2
.end method

.method private getAttrInfo()Ljava/lang/String;
    .locals 1

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
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

    .line 215
    :cond_0
    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 216
    :goto_0
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

    .line 84
    if-eqz p0, :cond_2

    .line 86
    :try_start_0
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "extra_append"

    check-cast p0, Ljava/util/List;

    invoke-static {v0, p0}, Lcom/xiaopeng/libtheme/ThemeViewModel;->asMaps(Ljava/lang/String;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    .line 88
    :cond_0
    instance-of v0, p0, Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 89
    check-cast p0, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 92
    :cond_1
    goto :goto_0

    .line 91
    :catch_0
    move-exception p0

    .line 94
    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getViewInfo(Landroid/view/View;)Ljava/lang/String;
    .locals 0

    .line 219
    if-eqz p1, :cond_0

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

    .line 193
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

    .line 196
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

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    invoke-static {p1, v0}, Lcom/xiaopeng/libtheme/ThemeManager;->updateAttribute(Landroid/view/View;Ljava/util/HashMap;)V

    .line 198
    iget-object p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mCallback:Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;

    if-eqz p1, :cond_0

    .line 199
    iget-object p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mCallback:Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;

    invoke-interface {p1}, Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;->onThemeChanged()V

    .line 201
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mCallbacks:Ljava/util/List;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 202
    iget-object p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;

    .line 203
    if-eqz v0, :cond_1

    .line 204
    invoke-interface {v0}, Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;->onThemeChanged()V

    .line 206
    :cond_1
    goto :goto_0

    .line 208
    :cond_2
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V
    .locals 1

    .line 101
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_0
    return-void
.end method

.method public onAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lcom/xiaopeng/libtheme/ThemeManager;->getUiMode(Landroid/content/Context;)I

    move-result v0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThemeViewModel onAttachedToWindow newMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " oldMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mUiMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->getViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, v0}, Lcom/xiaopeng/libtheme/ThemeViewModel;->isUiModeChanged(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-direct {p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->updateThemeResource(Landroid/view/View;)V

    .line 117
    :cond_0
    iput v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mUiMode:I

    .line 118
    return-void
.end method

.method public onConfigurationChanged(Landroid/view/View;Landroid/content/res/Configuration;)V
    .locals 4

    .line 143
    if-eqz p2, :cond_0

    iget v0, p2, Landroid/content/res/Configuration;->uiMode:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 144
    :goto_0
    invoke-static {p2}, Lcom/xiaopeng/libtheme/ThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result v1

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThemeViewModel onConfigurationChanged isThemeChanged="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " uiMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " view="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->getViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V

    .line 146
    if-eqz v1, :cond_2

    .line 147
    invoke-direct {p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->updateThemeResource(Landroid/view/View;)V

    .line 148
    if-eqz p2, :cond_1

    iget p1, p2, Landroid/content/res/Configuration;->uiMode:I

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mUiMode:I

    :goto_1
    iput p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mUiMode:I

    .line 150
    :cond_2
    return-void
.end method

.method public onDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 119
    return-void
.end method

.method public onWindowFocusChanged(Landroid/view/View;Z)V
    .locals 2

    .line 121
    if-eqz p2, :cond_1

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 123
    invoke-static {p2}, Lcom/xiaopeng/libtheme/ThemeManager;->getUiMode(Landroid/content/Context;)I

    move-result p2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThemeViewModel onWindowFocusChanged newMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 125
    invoke-direct {p0, p2}, Lcom/xiaopeng/libtheme/ThemeViewModel;->isUiModeChanged(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->updateThemeResource(Landroid/view/View;)V

    .line 128
    :cond_0
    iput p2, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mUiMode:I

    .line 130
    :cond_1
    return-void
.end method

.method public onWindowVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    .line 132
    if-nez p2, :cond_1

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 134
    invoke-static {p2}, Lcom/xiaopeng/libtheme/ThemeManager;->getUiMode(Landroid/content/Context;)I

    move-result p2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThemeViewModel onWindowVisibilityChanged newMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 136
    invoke-direct {p0, p2}, Lcom/xiaopeng/libtheme/ThemeViewModel;->isUiModeChanged(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-direct {p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->updateThemeResource(Landroid/view/View;)V

    .line 139
    :cond_0
    iput p2, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mUiMode:I

    .line 141
    :cond_1
    return-void
.end method

.method public removeCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V
    .locals 1

    .line 106
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 109
    :cond_0
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 160
    iget-object p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    const-string v0, "background"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    .line 163
    iget-object p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    const-string v0, "background"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 169
    iget-object p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    const-string v0, "background"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    const-string v1, "background"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-void
.end method

.method public setCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mCallback:Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;

    .line 99
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 175
    iget-object p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    const-string v0, "src"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 181
    iget-object p1, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    const-string v0, "src"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    return-void
.end method

.method public setImageResource(I)V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    const-string v1, "src"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    const-string v1, "textColor"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    return-void
.end method

.method public setThemeAttribute(Ljava/lang/String;I)V
    .locals 1

    .line 187
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeViewModel;->mAttributeSet:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_0
    return-void
.end method
