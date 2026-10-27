.class public Lcom/xiaopeng/commonfunc/utils/UIUtil;
.super Ljava/lang/Object;
.source "UIUtil.java"


# static fields
.field public static final BLACK:Ljava/lang/String; = "#000000"

.field public static final BLUE:Ljava/lang/String; = "#0000ff"

.field public static final GREEN:Ljava/lang/String; = "#00ff00"

.field public static final RED:Ljava/lang/String; = "#ff0000"

.field private static final TAG:Ljava/lang/String; = "UIUtil"

.field public static final WHITE:Ljava/lang/String; = "#ffffff"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkUdiskWrittable(Ljava/lang/String;)Z
    .locals 2
    .param p0, "toast"    # Ljava/lang/String;

    .line 211
    const/4 v0, 0x1

    .line 212
    .local v0, "res":Z
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/AfterSalesHelper;->getAfterSalesManager()Lcom/xiaopeng/aftersales/AfterSalesManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/aftersales/AfterSalesManager;->getRepairMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/SystemPropertyUtil;->isUdiskReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    invoke-static {p0}, Lcom/xiaopeng/commonfunc/utils/UIUtil;->showToast(Ljava/lang/String;)V

    .line 214
    const/4 v0, 0x0

    .line 216
    :cond_0
    return v0
.end method

.method public static createTextViewList(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 16
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "sumPerRow"    # I
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

    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 95
    move/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 97
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 98
    .local v3, "layout":Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v6, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 100
    .local v4, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual {v4, v8, v9, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 101
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 103
    int-to-float v10, v2

    mul-float/2addr v10, v7

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 105
    const/4 v10, 0x0

    .line 106
    .local v10, "i":I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 107
    .local v12, "data":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    .line 108
    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 110
    .local v13, "textView":Landroid/widget/TextView;
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v8, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 111
    .local v14, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v14, v9, v9, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 112
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    const/high16 v15, 0x42000000    # 32.0f

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 116
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 119
    rem-int v15, v10, v2

    if-nez v15, :cond_0

    .line 120
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 122
    new-instance v15, Landroid/widget/LinearLayout;

    invoke-direct {v15, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v3, v15

    .line 123
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 125
    int-to-float v15, v2

    mul-float/2addr v15, v7

    invoke-virtual {v3, v15}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 127
    .end local v12    # "data":Ljava/lang/String;
    .end local v13    # "textView":Landroid/widget/TextView;
    .end local v14    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    goto :goto_0

    .line 129
    :cond_1
    rem-int v5, v10, v2

    if-eqz v5, :cond_2

    .line 130
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 132
    :cond_2
    return-void
.end method

.method public static createTextViewList(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/util/Map;II)V
    .locals 17
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "row"    # I
    .param p4, "col"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    move-object/from16 v0, p1

    .line 136
    move/from16 v1, p4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 139
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 141
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v2, v6, v7, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 143
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 144
    .local v9, "id":Ljava/lang/Integer;
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 145
    .local v10, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 147
    int-to-float v11, v1

    mul-float/2addr v11, v5

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 148
    move v11, v6

    .local v11, "i":I
    :goto_1
    if-ge v11, v1, :cond_2

    .line 149
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 150
    .local v12, "textView":Landroid/widget/TextView;
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v6, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 151
    .local v13, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v13, v7, v7, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 152
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    const/high16 v14, 0x41e00000    # 28.0f

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 154
    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    if-nez v11, :cond_0

    .line 156
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setId(I)V

    .line 157
    move-object/from16 v14, p2

    invoke-interface {v14, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 159
    :cond_0
    move-object/from16 v14, p2

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v15

    mul-int v16, v11, p3

    add-int v15, v15, v16

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setId(I)V

    .line 160
    add-int/lit8 v15, v1, -0x1

    if-ne v11, v15, :cond_1

    .line 161
    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_2

    .line 163
    :cond_1
    const/16 v15, 0x11

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 166
    :goto_2
    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 148
    .end local v12    # "textView":Landroid/widget/TextView;
    .end local v13    # "params":Landroid/widget/LinearLayout$LayoutParams;
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 168
    .end local v11    # "i":I
    :cond_2
    move-object/from16 v14, p2

    move-object/from16 v11, p0

    invoke-virtual {v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 169
    .end local v9    # "id":Ljava/lang/Integer;
    goto :goto_0

    .line 171
    .end local v10    # "layout":Landroid/widget/LinearLayout;
    :cond_3
    move-object/from16 v11, p0

    move-object/from16 v14, p2

    return-void
.end method

.method public static createUI(Landroid/view/ViewGroup;Landroid/content/Context;Landroid/view/View$OnClickListener;Ljava/util/HashMap;II)Landroid/util/SparseArray;
    .locals 19
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Landroid/view/View$OnClickListener;
    .param p4, "sumPerRow"    # I
    .param p5, "backgroundres"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/content/Context;",
            "Landroid/view/View$OnClickListener;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;II)",
            "Landroid/util/SparseArray<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation

    .local p3, "functions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    .line 43
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 44
    .local v3, "buttonArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/widget/Button;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 46
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    .local v4, "layout":Landroid/widget/LinearLayout;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v5, v7, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 49
    .local v5, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v7, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 50
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52
    int-to-float v9, v2

    mul-float/2addr v9, v6

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 53
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 55
    const/4 v9, 0x0

    .line 56
    .local v9, "i":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 57
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    add-int/lit8 v9, v9, 0x1

    .line 58
    new-instance v12, Landroid/widget/Button;

    invoke-direct {v12, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 60
    .local v12, "button":Landroid/widget/Button;
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v14, 0x64

    invoke-direct {v13, v8, v14, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 61
    .local v13, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v13, v7, v7, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 62
    invoke-virtual {v12, v13}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/widget/Button;->setId(I)V

    .line 64
    const/high16 v14, -0x1000000

    invoke-virtual {v12, v14}, Landroid/widget/Button;->setTextColor(I)V

    .line 65
    const/high16 v14, 0x41f00000    # 30.0f

    invoke-virtual {v12, v14}, Landroid/widget/Button;->setTextSize(F)V

    .line 66
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v12, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 67
    move/from16 v14, p5

    invoke-virtual {v12, v14}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 68
    move-object/from16 v15, p2

    invoke-virtual {v12, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const-string v7, "UIUtil"

    const-string v6, "createUI"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object/from16 v16, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v13

    const-string v13, "Create Button. id="

    .end local v13    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .local v17, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", name="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    aput-object v10, v8, v13

    invoke-static {v7, v6, v8}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 72
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v6, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    rem-int v6, v9, v2

    if-nez v6, :cond_0

    .line 75
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v4, v6

    .line 78
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 80
    int-to-float v7, v2

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v7, v8

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 81
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v12    # "button":Landroid/widget/Button;
    .end local v17    # "params":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_1

    .line 83
    :cond_0
    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 56
    :goto_1
    move-object/from16 v10, v16

    const/4 v7, 0x5

    move/from16 v18, v8

    move v8, v6

    move/from16 v6, v18

    goto/16 :goto_0

    .line 85
    :cond_1
    move-object/from16 v15, p2

    move/from16 v14, p5

    rem-int v6, v9, v2

    if-eqz v6, :cond_2

    .line 86
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    :cond_2
    return-object v3
.end method

.method static synthetic lambda$showInfoConfirmation$2(Landroid/content/Context;III)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleResid"    # I
    .param p2, "messageResid"    # I
    .param p3, "confirmResid"    # I

    .line 201
    new-instance v0, Lcom/xiaopeng/xui/app/XDialog;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;)V

    .line 202
    .local v0, "dialog":Lcom/xiaopeng/xui/app/XDialog;
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    .line 203
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    .line 204
    invoke-static {p0, p3}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    .line 205
    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    .line 207
    return-void
.end method

.method static synthetic lambda$showToast$0(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .line 188
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XToast;->show(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$showToast$1(Ljava/lang/String;)V
    .locals 1
    .param p0, "toast"    # Ljava/lang/String;

    .line 193
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    invoke-static {p0}, Lcom/xiaopeng/xui/app/XToast;->show(Ljava/lang/CharSequence;)V

    .line 196
    :cond_0
    return-void
.end method

.method public static makeStringToSpanned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Landroid/text/Spanned;
    .locals 2
    .param p0, "other"    # Ljava/lang/String;
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "color"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/Boolean;

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<font color=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "str":Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 178
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    return-object v1

    .line 179
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    return-object v1

    .line 184
    :cond_2
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    return-object v1
.end method

.method public static showInfoConfirmation(Landroid/content/Context;III)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleResid"    # I
    .param p2, "messageResid"    # I
    .param p3, "confirmResid"    # I

    .line 200
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$UIUtil$HmmYtckd7YsEqRm7uUh3BpPkJEM;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$UIUtil$HmmYtckd7YsEqRm7uUh3BpPkJEM;-><init>(Landroid/content/Context;III)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method

.method public static showToast(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .line 188
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$UIUtil$0YGdAeAdUKGGUDoGG1qeqrJ_Qig;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$UIUtil$0YGdAeAdUKGGUDoGG1qeqrJ_Qig;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method

.method public static showToast(Ljava/lang/String;)V
    .locals 1
    .param p0, "toast"    # Ljava/lang/String;

    .line 192
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$UIUtil$TyI1LM_P9Ttpc13hBNiGJC1U3rI;

    invoke-direct {v0, p0}, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$UIUtil$TyI1LM_P9Ttpc13hBNiGJC1U3rI;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method
