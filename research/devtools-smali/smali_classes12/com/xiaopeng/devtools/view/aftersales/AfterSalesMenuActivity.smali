.class public Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;
.super Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;
.source "AfterSalesMenuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/util/HashMap;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 63
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 66
    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 69
    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 71
    nop

    .line 72
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v6, v0

    move v0, v4

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 73
    add-int/lit8 v0, v0, 0x1

    .line 74
    new-instance v8, Landroid/widget/Button;

    invoke-direct {v8, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v10, 0x64

    invoke-direct {v9, v4, v10, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 77
    invoke-virtual {v9, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 78
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setId(I)V

    .line 80
    const/high16 v9, -0x1000000

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 81
    const/high16 v9, 0x41f00000    # 30.0f

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setTextSize(F)V

    .line 82
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const v9, 0x7f080076

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 84
    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const-string v9, "AfterSalesMenuActivity"

    const-string v10, "createUI"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Create Button. id="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", name="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v11, v4

    invoke-static {v9, v10, v11}, Lcom/xiaopeng/lib/utils/c;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    rem-int/lit8 v7, v0, 0x4

    if-nez v7, :cond_0

    .line 89
    iget-object v7, p0, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 91
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 92
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 94
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 96
    :cond_0
    goto/16 :goto_0

    .line 98
    :cond_1
    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 99
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 101
    :cond_2
    return-void
.end method

.method protected b(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/devtools/bean/ButtonData;",
            ">;)V"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 107
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 108
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 110
    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 113
    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 115
    nop

    .line 116
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v6, v0

    move v0, v4

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/devtools/bean/ButtonData;

    .line 117
    add-int/lit8 v0, v0, 0x1

    .line 118
    new-instance v8, Landroid/widget/Button;

    invoke-direct {v8, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 120
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v10, 0x64

    invoke-direct {v9, v4, v10, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 121
    invoke-virtual {v9, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 122
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    invoke-virtual {v8, v0}, Landroid/widget/Button;->setId(I)V

    .line 124
    const/high16 v9, -0x1000000

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 125
    const/high16 v9, 0x41f00000    # 30.0f

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setTextSize(F)V

    .line 126
    invoke-virtual {v7}, Lcom/xiaopeng/devtools/bean/ButtonData;->getTextString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 127
    const v9, 0x7f080076

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 128
    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const-string v9, "AfterSalesMenuActivity"

    const-string v10, "createUI"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Create Button. id="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", name="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/xiaopeng/devtools/bean/ButtonData;->getTextString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v11, v4

    invoke-static {v9, v10, v11}, Lcom/xiaopeng/lib/utils/c;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    rem-int/lit8 v7, v0, 0x4

    if-nez v7, :cond_0

    .line 133
    iget-object v7, p0, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 135
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 136
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 138
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 140
    :cond_0
    goto/16 :goto_0

    .line 142
    :cond_1
    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 143
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 145
    :cond_2
    return-void
.end method

.method public fd()V
    .locals 1

    .line 24
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->fd()V

    .line 25
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->setContentView(I)V

    .line 26
    return-void
.end method

.method public fe()V
    .locals 1

    .line 30
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->fe()V

    .line 31
    const v0, 0x7f090181

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->mContainer:Landroid/view/ViewGroup;

    .line 32
    return-void
.end method

.method public ff()V
    .locals 0

    .line 41
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->ff()V

    .line 42
    return-void
.end method

.method public lJ()V
    .locals 0

    .line 36
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->lJ()V

    .line 37
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->onClick(Landroid/view/View;)V

    .line 57
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 51
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->onDestroy()V

    .line 52
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 46
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->onResume()V

    .line 47
    return-void
.end method
