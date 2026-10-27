.class public interface abstract Lcom/xiaopeng/xui/vui/a;
.super Ljava/lang/Object;
.source "VuiView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/vui/a$a;
    }
.end annotation


# static fields
.field public static final abd:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xiaopeng/xui/vui/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/xiaopeng/xui/vui/a;->abd:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V
    .locals 1

    .line 383
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/a;->qY()Lcom/xiaopeng/vui/commons/a;

    move-result-object v0

    .line 384
    if-eqz v0, :cond_0

    .line 385
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xui/vui/a/b;->a(Lcom/xiaopeng/vui/commons/a;Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    goto :goto_0

    .line 387
    :cond_0
    const/4 p1, 0x2

    invoke-static {p1}, Lcom/xiaopeng/xui/d/f;->dQ(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 388
    const-string p1, "listener is null"

    invoke-interface {p0, p1}, Lcom/xiaopeng/xui/vui/a;->fn(Ljava/lang/String;)V

    .line 391
    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/xiaopeng/vui/commons/VuiElementType;)V
    .locals 1

    .line 137
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/a;->qS()Lcom/xiaopeng/xui/vui/a$a;

    move-result-object v0

    .line 138
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/a$a;->a(Lcom/xiaopeng/xui/vui/a$a;Lcom/xiaopeng/vui/commons/VuiElementType;)Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 139
    return-void
.end method

.method public bf(Z)V
    .locals 1

    .line 101
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/a;->qS()Lcom/xiaopeng/xui/vui/a$a;

    move-result-object v0

    .line 102
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/a$a;->a(Lcom/xiaopeng/xui/vui/a$a;Z)Z

    .line 103
    return-void
.end method

.method public c(Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 4

    .line 39
    invoke-static {}, Lcom/xiaopeng/xui/a;->ql()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    return-void

    .line 42
    :cond_0
    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto/16 :goto_0

    .line 45
    :cond_1
    new-instance v0, Lcom/xiaopeng/xui/vui/a$a;

    invoke-direct {v0}, Lcom/xiaopeng/xui/vui/a$a;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xpui/R$styleable;->vui:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 48
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiAction:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/a$a;->a(Lcom/xiaopeng/xui/vui/a$a;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiElementType:I

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-static {v1}, Lcom/xiaopeng/xui/vui/a/a;->eB(I)Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/a$a;->a(Lcom/xiaopeng/xui/vui/a$a;Lcom/xiaopeng/vui/commons/VuiElementType;)Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 51
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/a$a;->a(Lcom/xiaopeng/xui/vui/a$a;)Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v1

    sget-object v3, Lcom/xiaopeng/vui/commons/VuiElementType;->Zi:Lcom/xiaopeng/vui/commons/VuiElementType;

    if-ne v1, v3, :cond_2

    .line 52
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/a/b;->p(Ljava/lang/Object;)Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/a$a;->a(Lcom/xiaopeng/xui/vui/a$a;Lcom/xiaopeng/vui/commons/VuiElementType;)Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 54
    :cond_2
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiPosition:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/a$a;->a(Lcom/xiaopeng/xui/vui/a$a;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 55
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiFatherElementId:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/a$a;->b(Lcom/xiaopeng/xui/vui/a$a;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiLabel:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/a$a;->c(Lcom/xiaopeng/xui/vui/a$a;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiFatherLabel:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/a$a;->d(Lcom/xiaopeng/xui/vui/a$a;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiElementId:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/a$a;->e(Lcom/xiaopeng/xui/vui/a$a;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiLayoutLoadable:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/a$a;->a(Lcom/xiaopeng/xui/vui/a$a;Z)Z

    .line 60
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiMode:I

    const/4 v3, 0x4

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-static {v1}, Lcom/xiaopeng/xui/vui/a/a;->ez(I)Lcom/xiaopeng/vui/commons/VuiMode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/a$a;->a(Lcom/xiaopeng/xui/vui/a$a;Lcom/xiaopeng/vui/commons/VuiMode;)Lcom/xiaopeng/vui/commons/VuiMode;

    .line 61
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiBizId:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/a$a;->f(Lcom/xiaopeng/xui/vui/a$a;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiPriority:I

    const/4 v3, 0x2

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 63
    invoke-static {v1}, Lcom/xiaopeng/xui/vui/a/a;->ey(I)Lcom/xiaopeng/vui/commons/VuiPriority;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/a$a;->a(Lcom/xiaopeng/xui/vui/a$a;Lcom/xiaopeng/vui/commons/VuiPriority;)Lcom/xiaopeng/vui/commons/VuiPriority;

    .line 64
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiFeedbackType:I

    const/4 v3, 0x1

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-static {v1}, Lcom/xiaopeng/xui/vui/a/a;->eA(I)Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/a$a;->a(Lcom/xiaopeng/xui/vui/a$a;Lcom/xiaopeng/vui/commons/VuiFeedbackType;)Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    .line 65
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiDisableHitEffect:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/a$a;->b(Lcom/xiaopeng/xui/vui/a$a;Z)Z

    .line 66
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiEnableViewVuiMode:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/a$a;->c(Lcom/xiaopeng/xui/vui/a$a;Z)Z

    .line 67
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    invoke-static {v0, p2}, Lcom/xiaopeng/xui/vui/a$a;->a(Lcom/xiaopeng/xui/vui/a$a;I)I

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/a$a;->d(Lcom/xiaopeng/xui/vui/a$a;Z)Z

    .line 72
    sget-object p1, Lcom/xiaopeng/xui/vui/a;->abd:Landroid/util/SparseArray;

    monitor-enter p1

    .line 73
    :try_start_0
    sget-object p2, Lcom/xiaopeng/xui/vui/a;->abd:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    monitor-exit p1

    .line 76
    return-void

    .line 74
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 43
    :cond_3
    :goto_0
    return-void
.end method

.method public e(Landroid/view/View;I)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 342
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/a;->qS()Lcom/xiaopeng/xui/vui/a$a;

    move-result-object v0

    .line 343
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/a$a;->f(Lcom/xiaopeng/xui/vui/a$a;)I

    move-result v1

    if-eq v1, p2, :cond_2

    .line 344
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/xiaopeng/xui/d/f;->dQ(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVuiVisibility; xAttr.mVuiVisibility : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/a$a;->f(Lcom/xiaopeng/xui/vui/a$a;)I

    move-result v2

    invoke-static {v2}, Lcom/xiaopeng/xui/d/h;->ew(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",visibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/xiaopeng/xui/d/h;->ew(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 345
    invoke-interface {p0, v1}, Lcom/xiaopeng/xui/vui/a;->fn(Ljava/lang/String;)V

    .line 348
    :cond_0
    invoke-static {v0, p2}, Lcom/xiaopeng/xui/vui/a$a;->a(Lcom/xiaopeng/xui/vui/a$a;I)I

    .line 350
    :try_start_0
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/a;->qW()Lorg/json/JSONObject;

    move-result-object p2

    .line 351
    if-eqz p2, :cond_1

    const-string v0, "canVoiceControl"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    const-string v0, "canVoiceControl"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    if-eqz p2, :cond_1

    .line 354
    return-void

    .line 359
    :cond_1
    goto :goto_0

    .line 357
    :catch_0
    move-exception p2

    .line 358
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 360
    :goto_0
    invoke-interface {p0, p1}, Lcom/xiaopeng/xui/vui/a;->l(Landroid/view/View;)V

    .line 362
    :cond_2
    return-void
.end method

.method public e(Landroid/view/View;Z)V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 366
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/a;->qS()Lcom/xiaopeng/xui/vui/a$a;

    move-result-object v0

    .line 367
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/a$a;->g(Lcom/xiaopeng/xui/vui/a$a;)Z

    move-result v1

    if-eq v1, p2, :cond_1

    .line 368
    invoke-static {v0, p2}, Lcom/xiaopeng/xui/vui/a$a;->d(Lcom/xiaopeng/xui/vui/a$a;Z)Z

    .line 369
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/a;->qU()Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object p2

    .line 370
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->YI:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->YS:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 371
    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->YJ:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 372
    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 373
    :cond_0
    invoke-interface {p0, p1}, Lcom/xiaopeng/xui/vui/a;->l(Landroid/view/View;)V

    .line 376
    :cond_1
    return-void
.end method

.method public fm(Ljava/lang/String;)V
    .locals 1

    .line 173
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/a;->qS()Lcom/xiaopeng/xui/vui/a$a;

    move-result-object v0

    .line 174
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/a$a;->c(Lcom/xiaopeng/xui/vui/a$a;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/a;->qT()Z

    move-result p1

    if-eqz p1, :cond_0

    instance-of p1, p0, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 176
    move-object p1, p0

    check-cast p1, Landroid/view/View;

    invoke-interface {p0, p1}, Lcom/xiaopeng/xui/vui/a;->l(Landroid/view/View;)V

    .line 178
    :cond_0
    return-void
.end method

.method public fn(Ljava/lang/String;)V
    .locals 5

    .line 394
    const-string v0, "xpui"

    const-string v1, "%s %s hashCode:%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xui/d/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    return-void
.end method

.method public i(Lorg/json/JSONObject;)V
    .locals 1

    .line 236
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/a;->qS()Lcom/xiaopeng/xui/vui/a$a;

    move-result-object v0

    .line 237
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/a$a;->a(Lcom/xiaopeng/xui/vui/a$a;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 238
    return-void
.end method

.method public l(Landroid/view/View;)V
    .locals 1

    .line 379
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiUpdateType;->Zy:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-interface {p0, p1, v0}, Lcom/xiaopeng/xui/vui/a;->a(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    .line 380
    return-void
.end method

.method public qS()Lcom/xiaopeng/xui/vui/a$a;
    .locals 4

    .line 79
    sget-object v0, Lcom/xiaopeng/xui/vui/a;->abd:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/vui/a$a;

    .line 80
    if-nez v0, :cond_1

    .line 81
    const-string v0, "xAttr is null"

    invoke-interface {p0, v0}, Lcom/xiaopeng/xui/vui/a;->fn(Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/xiaopeng/xui/vui/a$a;

    invoke-direct {v0}, Lcom/xiaopeng/xui/vui/a$a;-><init>()V

    .line 83
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/a$a;->a(Lcom/xiaopeng/xui/vui/a$a;)Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/vui/commons/VuiElementType;->Zi:Lcom/xiaopeng/vui/commons/VuiElementType;

    if-ne v1, v2, :cond_0

    .line 84
    invoke-static {p0}, Lcom/xiaopeng/xui/vui/a/b;->p(Ljava/lang/Object;)Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/a$a;->a(Lcom/xiaopeng/xui/vui/a$a;Lcom/xiaopeng/vui/commons/VuiElementType;)Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 86
    :cond_0
    sget-object v1, Lcom/xiaopeng/xui/vui/a;->abd:Landroid/util/SparseArray;

    monitor-enter v1

    .line 87
    :try_start_0
    sget-object v2, Lcom/xiaopeng/xui/vui/a;->abd:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 90
    :cond_1
    :goto_0
    return-object v0
.end method

.method public qT()Z
    .locals 1

    .line 95
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/a;->qS()Lcom/xiaopeng/xui/vui/a$a;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/a$a;->b(Lcom/xiaopeng/xui/vui/a$a;)Z

    move-result v0

    return v0
.end method

.method public qU()Lcom/xiaopeng/vui/commons/VuiElementType;
    .locals 1

    .line 131
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/a;->qS()Lcom/xiaopeng/xui/vui/a$a;

    move-result-object v0

    .line 132
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/a$a;->a(Lcom/xiaopeng/xui/vui/a$a;)Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v0

    return-object v0
.end method

.method public qV()V
    .locals 3

    .line 205
    sget-object v0, Lcom/xiaopeng/xui/vui/a;->abd:Landroid/util/SparseArray;

    monitor-enter v0

    .line 206
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xui/vui/a;->abd:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 207
    monitor-exit v0

    .line 208
    return-void

    .line 207
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public qW()Lorg/json/JSONObject;
    .locals 1

    .line 242
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/a;->qS()Lcom/xiaopeng/xui/vui/a$a;

    move-result-object v0

    .line 243
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/a$a;->c(Lcom/xiaopeng/xui/vui/a$a;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public qX()Ljava/lang/Object;
    .locals 1

    .line 316
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/a;->qS()Lcom/xiaopeng/xui/vui/a$a;

    move-result-object v0

    .line 317
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/a$a;->d(Lcom/xiaopeng/xui/vui/a$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public qY()Lcom/xiaopeng/vui/commons/a;
    .locals 3

    .line 329
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/a;->qS()Lcom/xiaopeng/xui/vui/a$a;

    move-result-object v0

    .line 330
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/a$a;->e(Lcom/xiaopeng/xui/vui/a$a;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 331
    sget-object v1, Lcom/xiaopeng/xui/vui/a;->abd:Landroid/util/SparseArray;

    monitor-enter v1

    .line 332
    :try_start_0
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/a$a;->e(Lcom/xiaopeng/xui/vui/a$a;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 333
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/a$a;->e(Lcom/xiaopeng/xui/vui/a$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/vui/commons/a;

    monitor-exit v1

    return-object v0

    .line 335
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 337
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
