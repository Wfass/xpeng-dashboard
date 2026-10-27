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
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-static {p0, p2}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 42
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->setTouchSlop(I)V

    .line 48
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_V5:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_V5_tab_text_array:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 50
    .local v1, "titles":I
    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->mTitles:[Ljava/lang/String;

    .line 52
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object v2

    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XTabLayout_V5_tab_text_array:I

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->mTitles:[Ljava/lang/String;

    invoke-interface {v2, p1, v0, v3, v4}, Lcom/xiaopeng/xui/lang/LangPresenter;->parseStringArray(Landroid/content/Context;Landroid/content/res/TypedArray;I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->mTitles:[Ljava/lang/String;

    .line 57
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->initView()V

    .line 59
    invoke-static {p0, p2, p3}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;I)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 60
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 61
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->addVuiListener()V

    .line 62
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

    .line 83
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->mTitles:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->mTitles:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 88
    .local v3, "mTitle":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->addTabItem(Ljava/lang/String;)V

    .line 87
    .end local v3    # "mTitle":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    :cond_0
    return-void
.end method

.method public static synthetic lambda$onVuiElementEvent$0(Lcom/xiaopeng/xui/widget/XTabLayout_V5;Ljava/lang/Double;Landroid/view/View;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Double;
    .param p2, "view"    # Landroid/view/View;

    .line 204
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 205
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 206
    .local v0, "elementView":Lcom/google/android/material/tabs/TabLayout$TabView;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    goto :goto_0

    .line 208
    .end local v0    # "elementView":Lcom/google/android/material/tabs/TabLayout$TabView;
    :cond_0
    invoke-static {p2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 210
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->setPerformVuiAction(Z)V

    .line 211
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->setPerformVuiAction(Z)V

    .line 213
    return-void
.end method


# virtual methods
.method public addTabItem(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .line 148
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    .line 149
    .local v0, "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    sget v1, Lcom/xiaopeng/xpui/R$layout;->x_tab_item_v5:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 150
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$id;->x_tab_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 151
    .local v1, "textview":Landroid/widget/TextView;
    if-nez p1, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 153
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->updateVui(Landroid/view/View;)V

    .line 154
    return-void
.end method

.method public addTabItem(Ljava/lang/String;I)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "position"    # I

    .line 157
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    .line 158
    .local v0, "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    sget v1, Lcom/xiaopeng/xpui/R$layout;->x_tab_item_v5:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 159
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$id;->x_tab_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 160
    .local v1, "textview":Landroid/widget/TextView;
    if-nez p1, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {p0, v0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    .line 162
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->updateVui(Landroid/view/View;)V

    .line 163
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 131
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 132
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->releaseVui()V

    .line 133
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
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 107
    :cond_0
    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 6
    .param p1, "elementId"    # Ljava/lang/String;
    .param p2, "vuiElementBuilder"    # Lcom/xiaopeng/vui/commons/IVuiElementBuilder;

    .line 175
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->getSelectedTabPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->setVuiValue(Ljava/lang/Object;)V

    .line 176
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 177
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 178
    .local v1, "tab":Lcom/google/android/material/tabs/TabLayout$TabView;
    sget v2, Lcom/xiaopeng/xpui/R$id;->x_tab_text:I

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout$TabView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xui/widget/XTextView;

    .line 179
    .local v2, "textView":Lcom/xiaopeng/xui/widget/XTextView;
    invoke-virtual {v2, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiPosition(I)V

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiElementId(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v3

    .line 183
    .local v3, "jsonObject":Lorg/json/JSONObject;
    if-nez v3, :cond_0

    .line 184
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    move-object v3, v4

    .line 186
    :cond_0
    const-string v4, "isTabLayoutChild"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 187
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->setVuiProps(Lorg/json/JSONObject;)V

    .line 176
    .end local v1    # "tab":Lcom/google/android/material/tabs/TabLayout$TabView;
    .end local v2    # "textView":Lcom/xiaopeng/xui/widget/XTextView;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBuildVuiElement:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->logD(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    goto :goto_1

    .line 190
    :catch_0
    move-exception v0

    .line 193
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 95
    invoke-super {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 99
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 111
    invoke-super {p0}, Lcom/google/android/material/tabs/TabLayout;->onDetachedFromWindow()V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 115
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 240
    invoke-super {p0, p1, p2}, Lcom/google/android/material/tabs/TabLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 241
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->onVisibilityChangedThemeRefresh(I)V

    .line 242
    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "vuiEvent"    # Lcom/xiaopeng/vui/commons/model/VuiEvent;

    .line 198
    const-string v0, "tablayout onVuiElementEvent"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->logD(Ljava/lang/String;)V

    .line 199
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 200
    :cond_0
    invoke-virtual {p2, p2}, Lcom/xiaopeng/vui/commons/model/VuiEvent;->getEventValue(Lcom/xiaopeng/vui/commons/model/VuiEvent;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 201
    .local v1, "value":Ljava/lang/Double;
    if-eqz v1, :cond_1

    .line 202
    new-instance v0, Lcom/xiaopeng/xui/widget/-$$Lambda$XTabLayout_V5$oWCgVyu0LUmnvUIV5dMay2by8lU;

    invoke-direct {v0, p0, v1, p1}, Lcom/xiaopeng/xui/widget/-$$Lambda$XTabLayout_V5$oWCgVyu0LUmnvUIV5dMay2by8lU;-><init>(Lcom/xiaopeng/xui/widget/XTabLayout_V5;Ljava/lang/Double;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->post(Ljava/lang/Runnable;)Z

    .line 214
    const/4 v0, 0x1

    return v0

    .line 216
    :cond_1
    return v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 137
    invoke-super {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setEnabled(Z)V

    .line 138
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    if-eqz p1, :cond_0

    .line 140
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->setAlpha(F)V

    goto :goto_0

    .line 142
    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->setAlpha(F)V

    .line 145
    :cond_1
    :goto_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .line 125
    invoke-super {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setSelected(Z)V

    .line 126
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->setVuiSelected(Landroid/view/View;Z)V

    .line 127
    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1
    .param p1, "refreshable"    # Z

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setThemeRefreshable(Landroid/view/View;Z)V

    .line 224
    :cond_0
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 3
    .param p1, "touchSlop"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SoonBlockedPrivateApi"
        }
    .end annotation

    .line 229
    :try_start_0
    const-class v0, Landroid/widget/HorizontalScrollView;

    .line 230
    .local v0, "scrollView":Ljava/lang/Class;
    const-string v1, "mTouchSlop"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 231
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 232
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v0    # "scrollView":Ljava/lang/Class;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 236
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 119
    invoke-super {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setVisibility(I)V

    .line 120
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->setVuiVisibility(Landroid/view/View;I)V

    .line 121
    return-void
.end method
