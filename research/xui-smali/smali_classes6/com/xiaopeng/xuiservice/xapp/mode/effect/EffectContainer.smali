.class public Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "EffectContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer$ViewHolder;
    }
.end annotation


# static fields
.field private static final COLUMN:I = 0x5


# instance fields
.field private final itemViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer;->itemViews:Landroid/util/SparseArray;

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer;->setOrientation(I)V

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer;->init()V

    .line 40
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/effect/-$$Lambda$EffectContainer$h8zHiEmq7GUVLmtNnrhbkCUlZC8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/-$$Lambda$EffectContainer$h8zHiEmq7GUVLmtNnrhbkCUlZC8;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->registerCallback(Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager$Callback;)V

    .line 41
    return-void
.end method

.method private bindView(Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer$ViewHolder;Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectItem;)V
    .locals 3
    .param p1, "viewHolder"    # Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer$ViewHolder;
    .param p2, "effectItem"    # Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectItem;

    .line 76
    iget-object v0, p1, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer$ViewHolder;->mEffectName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {p2}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectItem;->getIndex()I

    move-result v0

    .line 78
    .local v0, "index":I
    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 79
    iget-object v1, p1, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer$ViewHolder;->mAvatarName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v1, p1, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer$ViewHolder;->mAvatarName:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectResources;->getAvatarDes(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v1, p1, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer$ViewHolder;->mAvatarName:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    :goto_0
    iget-object v1, p1, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer$ViewHolder;->mEffectName:Landroid/widget/TextView;

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/mode/effect/-$$Lambda$EffectContainer$QJDX2O5tOYnUWFDCXTs7NVJvmF8;

    invoke-direct {v2, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/-$$Lambda$EffectContainer$QJDX2O5tOYnUWFDCXTs7NVJvmF8;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method

.method private init()V
    .locals 13

    .line 44
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->getEffectList()Ljava/util/List;

    move-result-object v0

    .line 45
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectItem;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 47
    .local v2, "size":I
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 48
    .local v3, "context":Landroid/content/Context;
    const/4 v4, 0x0

    .line 50
    .local v4, "row":Lcom/xiaopeng/xui/widget/XLinearLayout;
    move-object v5, v4

    move v4, v1

    .local v4, "i":I
    .local v5, "row":Lcom/xiaopeng/xui/widget/XLinearLayout;
    :goto_1
    if-ge v4, v2, :cond_3

    .line 51
    rem-int/lit8 v6, v4, 0x5

    if-nez v6, :cond_1

    .line 52
    new-instance v6, Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;)V

    move-object v5, v6

    .line 53
    invoke-virtual {v5, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setOrientation(I)V

    .line 54
    const/4 v6, -0x2

    invoke-virtual {p0, v5, v6, v6}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer;->addView(Landroid/view/View;II)V

    .line 56
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectItem;

    .line 57
    .local v6, "item":Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectItem;
    const v7, 0x7f0c0033

    const/4 v8, 0x0

    invoke-static {v3, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 58
    .local v7, "view":Landroid/view/View;
    new-instance v8, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer$ViewHolder;

    invoke-direct {v8, v7}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer$ViewHolder;-><init>(Landroid/view/View;)V

    .line 60
    .local v8, "viewHolder":Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer$ViewHolder;
    invoke-direct {p0, v8, v6}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer;->bindView(Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer$ViewHolder;Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectItem;)V

    .line 61
    iget-object v9, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer;->itemViews:Landroid/util/SparseArray;

    invoke-virtual {v6}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectItem;->getIndex()I

    move-result v10

    invoke-virtual {v9, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0700a8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f070099

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 65
    .local v9, "lp":Landroid/widget/LinearLayout$LayoutParams;
    rem-int/lit8 v10, v4, 0x5

    const/4 v11, 0x4

    if-eq v10, v11, :cond_2

    .line 66
    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 68
    :cond_2
    invoke-virtual {v5, v7, v9}, Lcom/xiaopeng/xui/widget/XLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .end local v7    # "view":Landroid/view/View;
    .end local v8    # "viewHolder":Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer$ViewHolder;
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 71
    .end local v4    # "i":I
    .end local v6    # "item":Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectItem;
    :cond_3
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer;->refreshSelected()V

    .line 72
    return-void
.end method

.method static synthetic lambda$bindView$1(ILandroid/view/View;)V
    .locals 1
    .param p0, "index"    # I
    .param p1, "v"    # Landroid/view/View;

    .line 85
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->setEffect(I)V

    return-void
.end method

.method public static synthetic lambda$e95C0zzb6y-Fqw2GWima1Bzm_R0(Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer;->refreshSelected()V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer;I)V
    .locals 1
    .param p1, "index"    # I

    .line 40
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/-$$Lambda$EffectContainer$e95C0zzb6y-Fqw2GWima1Bzm_R0;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/-$$Lambda$EffectContainer$e95C0zzb6y-Fqw2GWima1Bzm_R0;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private refreshSelected()V
    .locals 8

    .line 89
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->getEffect()I

    move-result v0

    .line 90
    .local v0, "selectedIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer;->itemViews:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 91
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer;->itemViews:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 92
    .local v3, "index":I
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer;->itemViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer$ViewHolder;

    .line 94
    .local v4, "viewHolder":Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer$ViewHolder;
    iget-object v5, v4, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer$ViewHolder;->mEffectName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 95
    if-ne v3, v0, :cond_0

    const v7, 0x7f060126

    goto :goto_1

    :cond_0
    const v7, 0x7f060123

    .line 94
    :goto_1
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    iget-object v5, v4, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer$ViewHolder;->mEffectName:Landroid/widget/TextView;

    if-ne v3, v0, :cond_1

    .line 98
    const v6, 0x7f080092

    goto :goto_2

    .line 99
    :cond_1
    const v6, 0x7f08008b

    .line 97
    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 90
    .end local v3    # "index":I
    .end local v4    # "viewHolder":Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer$ViewHolder;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_2
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 105
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 106
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/-$$Lambda$EffectContainer$e95C0zzb6y-Fqw2GWima1Bzm_R0;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/-$$Lambda$EffectContainer$e95C0zzb6y-Fqw2GWima1Bzm_R0;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer;->post(Ljava/lang/Runnable;)Z

    .line 107
    return-void
.end method
