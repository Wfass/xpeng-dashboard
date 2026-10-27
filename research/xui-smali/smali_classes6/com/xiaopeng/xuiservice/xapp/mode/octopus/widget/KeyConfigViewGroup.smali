.class public Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "KeyConfigViewGroup.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/mode/octopus/IConfigViewRoot;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$EventCallback;,
        Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$ConfigViewButton;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyConfigViewGroup"

.field public static final VIEW_CONFIG_CLEAR:I = 0x2

.field public static final VIEW_CONFIG_CLOSE:I = 0x0

.field public static final VIEW_CONFIG_COLLAPSE:I = 0x3

.field public static final VIEW_CONFIG_EXPAND:I = 0x4

.field public static final VIEW_CONFIG_SAVE:I = 0x1


# instance fields
.field private mClearBtn:Landroid/view/View;

.field private mCollapseBtn:Landroid/view/View;

.field private mEventCallback:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$EventCallback;

.field private mExitBtn:Landroid/view/View;

.field private mIsConfigMode:Z

.field private mKeyBgView:Landroid/view/View;

.field private mKeyViewInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyViewRect:Landroid/graphics/Rect;

.field private mKeyViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;",
            ">;"
        }
    .end annotation
.end field

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPackageName:Ljava/lang/String;

.field private mRemoveRect:Landroid/graphics/Rect;

.field private mRemoveView:Landroid/view/View;

.field private mSaveBtn:Landroid/view/View;

.field private mSelectConfigDropMenu:Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;

.field private mSelectConfigName:Ljava/lang/String;

.field private mXpPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mRemoveRect:Landroid/graphics/Rect;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mKeyViewRect:Landroid/graphics/Rect;

    .line 302
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$2;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 81
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->init()V

    .line 82
    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;
    .param p1, "x1"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mSelectConfigName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;

    .line 40
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->addKeyViews()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$EventCallback;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mEventCallback:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$EventCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;

    .line 40
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->saveKeyConfig()V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;

    .line 40
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->hideOrShowKeyButtonViews()V

    return-void
.end method

.method private addKeyViews()V
    .locals 6

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mSelectConfigDropMenu:Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->getSelectionTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mSelectConfigName:Ljava/lang/String;

    .line 111
    const-string v0, "KeyConfigViewGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addKeyViews mSelectConfigName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mSelectConfigName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mSelectConfigName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->initSelectConfig(Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->removeKeyViews()V

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mKeyViewInfos:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mKeyViewInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mKeyViewInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;

    .line 118
    .local v1, "keyViewInfo":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;
    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;-><init>(Landroid/content/Context;)V

    .line 119
    .local v2, "keyView":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;
    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;->setKeyViewInfo(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;)V

    .line 120
    invoke-virtual {v2, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;->setConfigViewRoot(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/IConfigViewRoot;)V

    .line 121
    iget v3, v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mKeyImgResourceId:I

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;->setImageResource(I)V

    .line 122
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mWidth:I

    iget v5, v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mHeight:I

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 124
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 125
    iget-object v4, v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 126
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mKeyViews:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {p0, v2, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    .end local v1    # "keyViewInfo":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;
    .end local v2    # "keyView":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_0

    .line 129
    :cond_1
    return-void

    .line 115
    :cond_2
    :goto_1
    return-void
.end method

.method private checkRemoveHit(Landroid/view/View;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 397
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mKeyViewRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 398
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mRemoveView:Landroid/view/View;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mRemoveRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 399
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mKeyViewRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mRemoveRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method private convertKeyConfigToKeyMap(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;
    .locals 13
    .param p1, "keyConfig"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;

    .line 169
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;-><init>()V

    .line 170
    .local v0, "keyMapInfos":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;
    iget-object v1, p1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->configName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;->setConfigName(Ljava/lang/String;)V

    .line 171
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->configInfo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 173
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->configInfo:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 174
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "touchRect"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 175
    .local v2, "rectJsonObject":Lorg/json/JSONObject;
    new-instance v3, Landroid/graphics/Rect;

    const-string v4, "left"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "top"

    .line 176
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "right"

    .line 177
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "bottom"

    .line 178
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 179
    .local v3, "naviRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;->setTouchRect(Landroid/graphics/Rect;)V

    .line 180
    const-string v4, "keyMap"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 181
    .local v4, "keyMapArray":Lorg/json/JSONArray;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v5, "keyMapList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;>;"
    const/4 v6, 0x0

    .line 182
    .local v6, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 183
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 184
    .local v7, "keyValue":Lorg/json/JSONObject;
    const-string v8, "keycode"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 185
    .local v8, "keycode":I
    const-string v9, "desc"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 186
    .local v9, "desc":Ljava/lang/String;
    const-string/jumbo v10, "x"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 187
    .local v10, "x":I
    const-string/jumbo v11, "y"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    .line 188
    .local v11, "y":I
    new-instance v12, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;

    invoke-direct {v12}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;-><init>()V

    .line 189
    .local v12, "keyMapInfo":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;
    iput v8, v12, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;->keycode:I

    .line 190
    iput-object v9, v12, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;->desc:Ljava/lang/String;

    .line 191
    iput v10, v12, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;->x:I

    .line 192
    iput v11, v12, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;->y:I

    .line 193
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    .end local v7    # "keyValue":Lorg/json/JSONObject;
    .end local v8    # "keycode":I
    .end local v9    # "desc":Ljava/lang/String;
    .end local v10    # "x":I
    .end local v11    # "y":I
    .end local v12    # "keyMapInfo":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 195
    .end local v6    # "i":I
    :cond_0
    invoke-virtual {v0, v5}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;->setKeyMap(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "rectJsonObject":Lorg/json/JSONObject;
    .end local v3    # "naviRect":Landroid/graphics/Rect;
    .end local v4    # "keyMapArray":Lorg/json/JSONArray;
    .end local v5    # "keyMapList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;>;"
    goto :goto_1

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 200
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_1
    return-object v0
.end method

.method private getKeyViewInfosFromConfig(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;)Ljava/util/List;
    .locals 16
    .param p1, "keyConfig"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;",
            ">;"
        }
    .end annotation

    .line 145
    const-string v0, "KeyConfigViewGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKeyViewInfosFromConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    iget-object v3, v2, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->configInfo:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-direct/range {p0 .. p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->convertKeyConfigToKeyMap(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;

    move-result-object v0

    .line 147
    .local v0, "keyMapInfos":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v1, "keyViewInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;>;"
    const/16 v3, 0x1f41

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getViewInfoByKeyCode(I)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;

    move-result-object v3

    .line 150
    .local v3, "naviKeyBasicInfo":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;
    new-instance v11, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;

    const-string v6, "l"

    .line 152
    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;->getResId()I

    move-result v7

    new-instance v8, Landroid/graphics/Point;

    .line 153
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;->getTouchRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;->getTouchRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-direct {v8, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 154
    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;->getWidth()I

    move-result v9

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;->getHeight()I

    move-result v10

    const/16 v5, 0x1f41

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;-><init>(ILjava/lang/String;ILandroid/graphics/Point;II)V

    .line 155
    .local v4, "navikeyViewInfo":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;->getKeyMap()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;

    .line 157
    .local v6, "keyMapInfo":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;
    iget v7, v6, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;->keycode:I

    invoke-static {v7}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getViewInfoByKeyCode(I)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;

    move-result-object v7

    .line 158
    .local v7, "tempBasicInfo":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;
    if-eqz v7, :cond_0

    .line 159
    new-instance v15, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;

    iget v9, v6, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;->keycode:I

    invoke-virtual {v7}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;->getDesc()Ljava/lang/String;

    move-result-object v10

    .line 160
    invoke-virtual {v7}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;->getResId()I

    move-result v11

    new-instance v12, Landroid/graphics/Point;

    iget v8, v6, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;->x:I

    iget v13, v6, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;->y:I

    invoke-direct {v12, v8, v13}, Landroid/graphics/Point;-><init>(II)V

    .line 161
    invoke-virtual {v7}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;->getWidth()I

    move-result v13

    .line 162
    invoke-virtual {v7}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;->getHeight()I

    move-result v14

    move-object v8, v15

    invoke-direct/range {v8 .. v14}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;-><init>(ILjava/lang/String;ILandroid/graphics/Point;II)V

    .line 159
    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    .end local v6    # "keyMapInfo":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;
    .end local v7    # "tempBasicInfo":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;
    :cond_0
    goto :goto_0

    .line 165
    :cond_1
    return-object v1
.end method

.method private hideKeyButtonViews()V
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mKeyViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 251
    .local v1, "keyButton":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 252
    .end local v1    # "keyButton":Landroid/view/View;
    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mKeyBgView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mEventCallback:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$EventCallback;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mEventCallback:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$EventCallback;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$EventCallback;->onButtonClick(I)V

    .line 257
    :cond_1
    return-void
.end method

.method private hideOrShowKeyButtonViews()V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mKeyBgView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->hideKeyButtonViews()V

    goto :goto_0

    .line 245
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->showKeyButtonViews()V

    .line 247
    :goto_0
    return-void
.end method

.method private init()V
    .locals 1

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mKeyViews:Ljava/util/List;

    .line 90
    return-void
.end method

.method private initSelectConfig(Ljava/lang/String;)V
    .locals 6
    .param p1, "configName"    # Ljava/lang/String;

    .line 132
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->getCurrentKeyConfigs()Ljava/util/List;

    move-result-object v0

    .line 133
    .local v0, "currentKeyConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 134
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;

    .line 135
    .local v2, "keyConfig":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;
    const-string v3, "KeyConfigViewGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key configs :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->configName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->getKeyViewInfosFromConfig(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mKeyViewInfos:Ljava/util/List;

    .line 138
    goto :goto_1

    .line 140
    .end local v2    # "keyConfig":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;
    :cond_0
    goto :goto_0

    .line 142
    :cond_1
    :goto_1
    return-void
.end method

.method private initViews()V
    .locals 2

    .line 218
    const v0, 0x7f09004e

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mExitBtn:Landroid/view/View;

    .line 219
    const v0, 0x7f090055

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mSaveBtn:Landroid/view/View;

    .line 220
    const v0, 0x7f09004c

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mClearBtn:Landroid/view/View;

    .line 221
    const v0, 0x7f09004f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mCollapseBtn:Landroid/view/View;

    .line 222
    const v0, 0x7f0900ac

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mKeyBgView:Landroid/view/View;

    .line 223
    const v0, 0x7f090082

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mSelectConfigDropMenu:Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;

    .line 224
    const v0, 0x7f090054

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mRemoveView:Landroid/view/View;

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mExitBtn:Landroid/view/View;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mSaveBtn:Landroid/view/View;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mClearBtn:Landroid/view/View;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mCollapseBtn:Landroid/view/View;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mSelectConfigDropMenu:Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->setOnItemClickListener(Lcom/xiaopeng/xui/widget/XExposedDropdownMenu$OnItemSelectedListener;)V

    .line 239
    return-void
.end method

.method private refreshRemoveViewPressed(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 386
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mRemoveView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->checkRemoveHit(Landroid/view/View;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 387
    return-void
.end method

.method private removeKeyViews()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mKeyViews:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mKeyViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mKeyViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;

    .line 206
    .local v1, "keyButtonView":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->removeView(Landroid/view/View;)V

    .line 207
    .end local v1    # "keyButtonView":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;
    goto :goto_0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mKeyViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 210
    return-void
.end method

.method private resetKeyView(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;)V
    .locals 1
    .param p1, "keyChild"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;

    .line 390
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->checkRemoveHit(Landroid/view/View;)Z

    move-result v0

    .line 391
    .local v0, "isHit":Z
    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;->resetLayoutPosition()V

    .line 394
    :cond_0
    return-void
.end method

.method private saveKeyConfig()V
    .locals 8

    .line 270
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;-><init>()V

    .line 271
    .local v0, "keyMapInfos":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;
    const-string v1, "KeyConfigViewGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current selection index :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mSelectConfigDropMenu:Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->getSelection()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mSelectConfigDropMenu:Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mSelectConfigDropMenu:Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;

    .line 273
    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->getSelection()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->getTitleWithIndex(I)Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;->setConfigName(Ljava/lang/String;)V

    .line 274
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v1, "keyMapArrays":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;>;"
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mKeyViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;

    .line 276
    .local v3, "keyButtonView":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;
    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;->getKeyViewInfo()Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;

    move-result-object v4

    .line 277
    .local v4, "keyViewInfo":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;
    iget v5, v4, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mKeyCode:I

    const/16 v6, 0x1f41

    if-ne v5, v6, :cond_0

    .line 278
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 279
    .local v5, "rect":Landroid/graphics/Rect;
    invoke-virtual {v3, v5}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 280
    invoke-virtual {v0, v5}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;->setTouchRect(Landroid/graphics/Rect;)V

    .line 281
    goto :goto_0

    .line 282
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_0
    iget v5, v4, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mKeyCode:I

    const/16 v6, 0x1f42

    if-ne v5, v6, :cond_1

    .line 283
    goto :goto_0

    .line 285
    :cond_1
    new-instance v5, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;

    invoke-direct {v5}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;-><init>()V

    .line 286
    .local v5, "keyMapInfo":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;
    iget v6, v4, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mKeyCode:I

    iput v6, v5, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;->keycode:I

    .line 287
    iget-object v6, v4, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mKeyCodeIndexName:Ljava/lang/String;

    iput-object v6, v5, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;->desc:Ljava/lang/String;

    .line 288
    iget-object v6, v4, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iput v6, v5, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;->x:I

    .line 289
    iget-object v6, v4, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iput v6, v5, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;->y:I

    .line 290
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    .end local v3    # "keyButtonView":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;
    .end local v4    # "keyViewInfo":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;
    .end local v5    # "keyMapInfo":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;
    goto :goto_0

    .line 292
    :cond_2
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;->setKeyMap(Ljava/util/List;)V

    .line 293
    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;

    invoke-direct {v2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;-><init>()V

    .line 294
    .local v2, "keyConfig":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;->getConfigName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->configName:Ljava/lang/String;

    .line 295
    const/4 v3, 0x1

    iput v3, v2, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->selected:I

    .line 296
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mPackageName:Ljava/lang/String;

    iput-object v3, v2, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->pkgName:Ljava/lang/String;

    .line 297
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->configInfo:Ljava/lang/String;

    .line 298
    const-string v3, "KeyConfigViewGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveKeyConfig configInfo :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->configInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->onUserUpdateConfig(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;)V

    .line 300
    return-void
.end method

.method private showKeyButtonViews()V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mEventCallback:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$EventCallback;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mEventCallback:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$EventCallback;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$EventCallback;->onButtonClick(I)V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mKeyBgView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mKeyViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 265
    .local v2, "keyButton":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 266
    .end local v2    # "keyButton":Landroid/view/View;
    goto :goto_0

    .line 267
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized enterConfigMode(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;)V
    .locals 4
    .param p1, "moveView"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;

    monitor-enter p0

    .line 337
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mIsConfigMode:Z

    if-nez v0, :cond_2

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mIsConfigMode:Z

    .line 339
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mRemoveView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 340
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->getChildCount()I

    move-result v0

    .line 341
    .local v0, "childCount":I
    nop

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 342
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 343
    .local v2, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mRemoveView:Landroid/view/View;

    if-eq v2, v3, :cond_1

    if-ne v2, p1, :cond_0

    .line 344
    goto :goto_1

    .line 346
    :cond_0
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    .end local v2    # "child":Landroid/view/View;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 349
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_2
    monitor-exit p0

    return-void

    .line 336
    .end local p1    # "moveView":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;
    throw p1
.end method

.method public declared-synchronized exitConfigMode(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;)V
    .locals 5
    .param p1, "moveView"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;

    monitor-enter p0

    .line 352
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mIsConfigMode:Z

    if-eqz v0, :cond_2

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mIsConfigMode:Z

    .line 354
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mRemoveView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 355
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->getChildCount()I

    move-result v1

    .line 356
    .local v1, "childCount":I
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 357
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 358
    .local v3, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mRemoveView:Landroid/view/View;

    if-eq v3, v4, :cond_1

    if-ne v3, p1, :cond_0

    .line 359
    goto :goto_1

    .line 361
    :cond_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 364
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_2
    monitor-exit p0

    return-void

    .line 351
    .end local p1    # "moveView":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;
    throw p1
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 105
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onAttachedToWindow()V

    .line 106
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->addKeyViews()V

    .line 107
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 214
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onDetachedFromWindow()V

    .line 215
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 99
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onFinishInflate()V

    .line 100
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->initViews()V

    .line 101
    return-void
.end method

.method public onKeyViewTouchEvent(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "moveView"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 368
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 370
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->enterConfigMode(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;)V

    .line 371
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->refreshRemoveViewPressed(Landroid/view/View;)V

    .line 372
    goto :goto_0

    .line 376
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->exitConfigMode(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;)V

    .line 377
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->resetKeyView(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;)V

    .line 378
    nop

    .line 383
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEventCallback(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$EventCallback;)V
    .locals 0
    .param p1, "eventCallback"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$EventCallback;

    .line 85
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mEventCallback:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$EventCallback;

    .line 86
    return-void
.end method

.method public setupWithPackageInfo(Ljava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 93
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mPackageName:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->mXpPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    .line 95
    return-void
.end method
