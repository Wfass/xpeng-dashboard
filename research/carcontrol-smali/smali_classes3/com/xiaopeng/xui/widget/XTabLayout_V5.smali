.class public Lcom/xiaopeng/xui/widget/XTabLayout_V5;
.super Lcom/google/android/material/tabs/TabLayout;
.source "XTabLayout_V5.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/VuiView;
.implements Lcom/xiaopeng/vui/commons/IVuiElementListener;
.implements Lcom/xiaopeng/xui/vui/XuiView;


# instance fields
.field private mTitles:[Ljava/lang/String;

.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-static {p0, p2}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 42
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x32

    .line 47
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->setTouchSlop(I)V

    .line 48
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_V5:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_V5_tab_text_array:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->mTitles:[Ljava/lang/String;

    .line 52
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_V5_tab_text_array:I

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->mTitles:[Ljava/lang/String;

    invoke-interface {v1, p1, v0, v2, v3}, Lcom/xiaopeng/xui/lang/LangPresenter;->parseStringArray(Landroid/content/Context;Landroid/content/res/TypedArray;I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->mTitles:[Ljava/lang/String;

    .line 57
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->initView()V

    .line 59
    invoke-static {p0, p2, p3}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;I)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 60
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 61
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->addVuiListener()V

    return-void
.end method

.method private addVuiListener()V
    .locals 1

    .line 65
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isVuiEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lcom/xiaopeng/xui/widget/XTabLayout_V5$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5$1;-><init>(Lcom/xiaopeng/xui/widget/XTabLayout_V5;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->mTitles:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 87
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 88
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->addTabItem(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addTabItem(Ljava/lang/String;)V
    .locals 3

    .line 150
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    .line 151
    sget v1, Lcom/xiaopeng/xpui/R$layout;->x_tab_item_v5:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 152
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$id;->x_tab_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez p1, :cond_0

    const-string p1, ""

    .line 153
    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 155
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->updateVui(Landroid/view/View;)V

    return-void
.end method

.method public addTabItem(Ljava/lang/String;I)V
    .locals 3

    .line 159
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    .line 160
    sget v1, Lcom/xiaopeng/xpui/R$layout;->x_tab_item_v5:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 161
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$id;->x_tab_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez p1, :cond_0

    const-string p1, ""

    .line 162
    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-virtual {p0, v0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    .line 164
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->updateVui(Landroid/view/View;)V

    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 133
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 134
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->releaseVui()V

    return-void
.end method

.method public synthetic lambda$onVuiElementEvent$0$XTabLayout_V5(Ljava/lang/Double;Landroid/view/View;)V
    .locals 2

    .line 206
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 207
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 208
    invoke-static {p2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    goto :goto_0

    .line 210
    :cond_0
    invoke-static {p2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    :goto_0
    const/4 p2, 0x1

    .line 212
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->setPerformVuiAction(Z)V

    .line 213
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    const/4 p1, 0x0

    .line 214
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->setPerformVuiAction(Z)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 103
    invoke-super {p0}, Lcom/google/android/material/tabs/TabLayout;->onAttachedToWindow()V

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->vuiViewAttachedToWindow()V

    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 3

    .line 177
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->getSelectedTabPosition()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->setVuiValue(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 178
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->getTabCount()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 179
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 180
    sget v1, Lcom/xiaopeng/xpui/R$id;->x_tab_text:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    .line 181
    invoke-virtual {v0, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiPosition(I)V

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiElementId(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string v1, "isTabLayoutChild"

    const/4 v2, 0x1

    .line 188
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 189
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->setVuiProps(Lorg/json/JSONObject;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 191
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBuildVuiElement:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->logD(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 95
    invoke-super {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 112
    invoke-super {p0}, Lcom/google/android/material/tabs/TabLayout;->onDetachedFromWindow()V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->vuiViewDetachedFromWindow()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 242
    invoke-super {p0, p1, p2}, Lcom/google/android/material/tabs/TabLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 243
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->onVisibilityChangedThemeRefresh(I)V

    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 1

    const-string v0, "tablayout onVuiElementEvent"

    .line 200
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->logD(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 202
    :cond_0
    invoke-virtual {p2, p2}, Lcom/xiaopeng/vui/commons/model/VuiEvent;->getEventValue(Lcom/xiaopeng/vui/commons/model/VuiEvent;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    if-eqz p2, :cond_1

    .line 204
    new-instance v0, Lcom/xiaopeng/xui/widget/-$$Lambda$XTabLayout_V5$M8FrOImBLZl2Yi2WABFtLQ5w79Q;

    invoke-direct {v0, p0, p2, p1}, Lcom/xiaopeng/xui/widget/-$$Lambda$XTabLayout_V5$M8FrOImBLZl2Yi2WABFtLQ5w79Q;-><init>(Lcom/xiaopeng/xui/widget/XTabLayout_V5;Ljava/lang/Double;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 139
    invoke-super {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setEnabled(Z)V

    .line 140
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 142
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 144
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 127
    invoke-super {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setSelected(Z)V

    .line 128
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->setVuiSelected(Landroid/view/View;Z)V

    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setThemeRefreshable(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 2

    .line 231
    :try_start_0
    const-class v0, Landroid/widget/HorizontalScrollView;

    const-string v1, "mTouchSlop"

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 234
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 236
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 121
    invoke-super {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setVisibility(I)V

    .line 122
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->setVuiVisibility(Landroid/view/View;I)V

    return-void
.end method
