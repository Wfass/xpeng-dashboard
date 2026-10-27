.class public Lcom/xiaopeng/devtools/utils/u;
.super Ljava/lang/Object;
.source "UIUtil.java"


# direct methods
.method public static a(Landroid/view/ViewGroup;Landroid/content/Context;Landroid/view/View$OnClickListener;Ljava/util/HashMap;I)Landroid/util/SparseArray;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/content/Context;",
            "Landroid/view/View$OnClickListener;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/util/SparseArray<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 35
    move/from16 v2, p4

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 38
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v5, v7, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 41
    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v7, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 42
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44
    int-to-float v9, v2

    mul-float/2addr v9, v6

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 45
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 47
    nop

    .line 48
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v11, v4

    move v4, v8

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 49
    add-int/lit8 v4, v4, 0x1

    .line 50
    new-instance v13, Landroid/widget/Button;

    invoke-direct {v13, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v15, 0x64

    invoke-direct {v14, v8, v15, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 53
    invoke-virtual {v14, v7, v7, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 54
    invoke-virtual {v13, v14}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setId(I)V

    .line 56
    const/high16 v14, -0x1000000

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setTextColor(I)V

    .line 57
    const/high16 v14, 0x41f00000    # 30.0f

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setTextSize(F)V

    .line 58
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const v14, 0x7f080076

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 60
    move-object/from16 v14, p2

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const-string v15, "UIUtil"

    const-string v6, "createUI"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v10

    const-string v10, "Create Button. id="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", name="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v7, v10

    invoke-static {v15, v6, v7}, Lcom/xiaopeng/lib/utils/c;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 64
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v6, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    rem-int v6, v4, v2

    if-nez v6, :cond_0

    .line 67
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 72
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 73
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 75
    move-object v11, v6

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    .line 48
    :goto_1
    move v8, v7

    move-object/from16 v10, v16

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x5

    goto/16 :goto_0

    .line 77
    :cond_1
    rem-int/2addr v4, v2

    if-eqz v4, :cond_2

    .line 78
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 81
    :cond_2
    return-object v3
.end method

.method public static a(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 89
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 90
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 92
    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 95
    int-to-float v7, p3

    mul-float/2addr v7, v4

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 97
    nop

    .line 98
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v8, v0

    move v0, v6

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 99
    add-int/lit8 v0, v0, 0x1

    .line 100
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 102
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v6, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 103
    invoke-virtual {v11, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 104
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    const/high16 v11, 0x42000000    # 32.0f

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 108
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    rem-int v9, v0, p3

    if-nez v9, :cond_0

    .line 112
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 114
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 117
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 119
    :cond_0
    goto :goto_0

    .line 121
    :cond_1
    rem-int/2addr v0, p3

    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 124
    :cond_2
    return-void
.end method

.method public static bd(Ljava/lang/String;)V
    .locals 1

    .line 136
    new-instance v0, Lcom/xiaopeng/devtools/utils/u$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/utils/u$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 144
    return-void
.end method

.method public static cr(I)V
    .locals 1

    .line 127
    new-instance v0, Lcom/xiaopeng/devtools/utils/u$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/utils/u$1;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method public static lD()Z
    .locals 2

    .line 147
    nop

    .line 148
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "xiaopeng_aftersales"

    .line 149
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/aftersales/AfterSalesManager;

    .line 150
    invoke-virtual {v0}, Lcom/xiaopeng/aftersales/AfterSalesManager;->getRepairMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->hK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    const v0, 0x7f1003e8

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/u;->cr(I)V

    .line 152
    const/4 v0, 0x0

    goto :goto_0

    .line 154
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
