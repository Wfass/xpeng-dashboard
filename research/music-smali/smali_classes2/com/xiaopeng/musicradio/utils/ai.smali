.class public Lcom/xiaopeng/musicradio/utils/ai;
.super Ljava/lang/Object;
.source "ItemClickUtil.java"


# direct methods
.method public static a(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    new-instance v1, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;

    invoke-direct {v1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;-><init>()V

    const/4 v2, 0x2

    .line 143
    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->setType(I)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;

    move-result-object v1

    const/4 v2, 0x1

    .line 144
    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->setAnimationType(I)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 145
    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->setStartValue(F)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;

    move-result-object v1

    const v2, 0x3f666666    # 0.9f

    .line 146
    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->setEndValue(F)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;

    move-result-object v1

    const/16 v2, 0x64

    .line 147
    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->setDuration(I)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xui/utils/XTouchUtils;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 148
    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;

    move-result-object v1

    .line 149
    invoke-virtual {v1, p0}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->setTarget(Landroid/view/View;)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;

    move-result-object p0

    .line 150
    invoke-virtual {p0}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->build()Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;

    move-result-object p0

    .line 152
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-static {p1, v0}, Lcom/xiaopeng/xui/utils/XTouchUtils;->wrapTouchAnim(Landroid/view/View;Ljava/util/List;)V

    return-void
.end method
