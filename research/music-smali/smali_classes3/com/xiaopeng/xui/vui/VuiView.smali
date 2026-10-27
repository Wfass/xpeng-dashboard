.class public interface abstract Lcom/xiaopeng/xui/vui/VuiView;
.super Ljava/lang/Object;
.source "VuiView.java"

# interfaces
.implements Lbxq;
.implements Lbxv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    }
.end annotation


# static fields
.field public static final msMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xiaopeng/xui/vui/VuiView$XAttr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/xiaopeng/xui/vui/VuiView;->msMap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    .locals 4

    .line 145
    sget-object v0, Lcom/xiaopeng/xui/vui/VuiView;->msMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 146
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xui/vui/VuiView;->msMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    .line 147
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    const-string v0, "xAttr is null"

    .line 149
    invoke-interface {p0, v0}, Lcom/xiaopeng/xui/vui/VuiView;->logD(Ljava/lang/String;)V

    .line 150
    new-instance v1, Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    invoke-direct {v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;-><init>()V

    .line 151
    invoke-static {v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$100(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Lbxy;

    move-result-object v0

    sget-object v2, Lbxy;->UNKNOWN:Lbxy;

    if-ne v0, v2, :cond_0

    .line 152
    invoke-static {p0}, Lcom/xiaopeng/xui/vui/utils/VuiViewUtils;->getElementType(Ljava/lang/Object;)Lbxy;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$102(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lbxy;)Lbxy;

    .line 154
    :cond_0
    sget-object v0, Lcom/xiaopeng/xui/vui/VuiView;->msMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 155
    :try_start_1
    sget-object v2, Lcom/xiaopeng/xui/vui/VuiView;->msMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 156
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v1

    :catchall_1
    move-exception v1

    .line 147
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public enableViewVuiMode(Z)V
    .locals 1

    .line 376
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 377
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1302(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z

    return-void
.end method

.method public getVuiAction()Ljava/lang/String;
    .locals 1

    .line 187
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 188
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$000(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVuiBizId()Ljava/lang/String;
    .locals 1

    .line 354
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 355
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$900(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVuiDisableHitEffect()Z
    .locals 3

    .line 365
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 366
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1200(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 367
    sget-object v1, Lbxx;->SCROLLBYY:Lbxx;

    invoke-virtual {v1}, Lbxx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$000(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lbxx;->SCROLLBYX:Lbxx;

    invoke-virtual {v1}, Lbxx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$000(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 371
    :cond_1
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1200(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Z

    move-result v0

    return v0
.end method

.method public getVuiElementChangedListener()Lbxs;
    .locals 3

    .line 417
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 418
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2500(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 419
    sget-object v1, Lcom/xiaopeng/xui/vui/VuiView;->msMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 420
    :try_start_0
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2500(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 421
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2500(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbxs;

    monitor-exit v1

    return-object v0

    .line 423
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVuiElementId()Ljava/lang/String;
    .locals 1

    .line 253
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 254
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$600(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVuiElementType()Lbxy;
    .locals 1

    .line 199
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 200
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$100(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Lbxy;

    move-result-object v0

    return-object v0
.end method

.method public getVuiFatherElementId()Ljava/lang/String;
    .locals 1

    .line 211
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 212
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$300(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVuiFatherLabel()Ljava/lang/String;
    .locals 1

    .line 223
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 224
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$500(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVuiFeedbackType()Lbxz;
    .locals 1

    .line 300
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 301
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1100(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Lbxz;

    move-result-object v0

    return-object v0
.end method

.method public getVuiLabel()Ljava/lang/String;
    .locals 1

    .line 235
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 236
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$400(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVuiMode()Lbya;
    .locals 1

    .line 336
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 337
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$800(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Lbya;

    move-result-object v0

    return-object v0
.end method

.method public getVuiPosition()I
    .locals 1

    .line 271
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 272
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$200(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getVuiPriority()Lbyb;
    .locals 1

    .line 175
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 176
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1000(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Lbyb;

    move-result-object v0

    return-object v0
.end method

.method public getVuiProps()Lorg/json/JSONObject;
    .locals 1

    .line 330
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 331
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1700(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getVuiStateIndex()Ljava/lang/Integer;
    .locals 1

    .line 450
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 451
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1600(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getVuiStateLabels()[Ljava/lang/String;
    .locals 1

    .line 440
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 441
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1400(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVuiStateValues()[I
    .locals 1

    .line 445
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 446
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1500(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)[I

    move-result-object v0

    return-object v0
.end method

.method public getVuiValue()Ljava/lang/Object;
    .locals 1

    .line 404
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 405
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2400(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getVuiVisibility()I
    .locals 1

    .line 485
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 486
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2000(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)I

    move-result v0

    return v0
.end method

.method public initVui(Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 9

    .line 47
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isVuiEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_d

    if-nez p2, :cond_1

    goto/16 :goto_4

    .line 53
    :cond_1
    new-instance v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    invoke-direct {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lbyg$n;->vui:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 56
    sget v1, Lbyg$n;->vui_vuiAction:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$002(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    sget v1, Lbyg$n;->vui_vuiElementType:I

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-static {v1}, Lcom/xiaopeng/xui/vui/utils/VuiCommonUtils;->getElementType(I)Lbxy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$102(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lbxy;)Lbxy;

    .line 58
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$100(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Lbxy;

    move-result-object v1

    sget-object v3, Lbxy;->UNKNOWN:Lbxy;

    if-ne v1, v3, :cond_2

    .line 59
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/utils/VuiViewUtils;->getElementType(Ljava/lang/Object;)Lbxy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$102(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lbxy;)Lbxy;

    .line 61
    :cond_2
    sget v1, Lbyg$n;->vui_vuiPosition:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$202(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 62
    sget v1, Lbyg$n;->vui_vuiFatherElementId:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$302(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    sget v1, Lbyg$n;->vui_vuiLabel:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$402(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    sget v1, Lbyg$n;->vui_vuiFatherLabel:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$502(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    sget v1, Lbyg$n;->vui_vuiElementId:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$602(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    sget v1, Lbyg$n;->vui_vuiLayoutLoadable:I

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$702(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z

    .line 67
    sget v1, Lbyg$n;->vui_vuiMode:I

    const/4 v4, 0x4

    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-static {v1}, Lcom/xiaopeng/xui/vui/utils/VuiCommonUtils;->getVuiMode(I)Lbya;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$802(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lbya;)Lbya;

    .line 68
    sget v1, Lbyg$n;->vui_vuiBizId:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$902(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    sget v1, Lbyg$n;->vui_vuiPriority:I

    const/4 v4, 0x2

    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 70
    invoke-static {v1}, Lcom/xiaopeng/xui/vui/utils/VuiCommonUtils;->getViewLeveByPriority(I)Lbyb;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1002(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lbyb;)Lbyb;

    .line 71
    sget v1, Lbyg$n;->vui_vuiFeedbackType:I

    const/4 v5, 0x1

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-static {v1}, Lcom/xiaopeng/xui/vui/utils/VuiCommonUtils;->getFeedbackType(I)Lbxz;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1102(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lbxz;)Lbxz;

    .line 72
    sget v1, Lbyg$n;->vui_vuiDisableHitEffect:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1202(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z

    .line 73
    sget v1, Lbyg$n;->vui_vuiEnableViewVuiMode:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1302(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z

    .line 74
    sget v1, Lbyg$n;->vui_vuiStateLabels:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_3

    .line 76
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1402(Lcom/xiaopeng/xui/vui/VuiView$XAttr;[Ljava/lang/String;)[Ljava/lang/String;

    .line 78
    :cond_3
    sget v1, Lbyg$n;->vui_vuiStateValues:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_5

    .line 80
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 81
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 82
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    new-array v6, v6, [I

    invoke-static {v0, v6}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1502(Lcom/xiaopeng/xui/vui/VuiView$XAttr;[I)[I

    move v6, v3

    .line 83
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 84
    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    if-nez v7, :cond_4

    .line 85
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1500(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)[I

    move-result-object v7

    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    aput v8, v7, v6

    goto :goto_1

    .line 87
    :cond_4
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1500(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)[I

    move-result-object v7

    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    aput v8, v7, v6

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 93
    :cond_5
    sget v1, Lbyg$n;->vui_vuiStateIndex:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1602(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 95
    :try_start_0
    sget v1, Lbyg$n;->vui_vuiProps:I

    .line 96
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 98
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0, v2}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1702(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move v2, v3

    .line 99
    :goto_2
    array-length v6, v1

    if-ge v2, v6, :cond_9

    .line 100
    aget-object v6, v1, v2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 101
    aget-object v6, v1, v2

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 102
    array-length v7, v6

    if-ne v7, v4, :cond_8

    const-string v7, "true"

    .line 103
    aget-object v8, v6, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 104
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1700(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Lorg/json/JSONObject;

    move-result-object v7

    aget-object v6, v6, v3

    invoke-virtual {v7, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_3

    :cond_6
    const-string v7, "false"

    .line 105
    aget-object v8, v6, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 106
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1700(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Lorg/json/JSONObject;

    move-result-object v7

    aget-object v6, v6, v3

    invoke-virtual {v7, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_3

    .line 108
    :cond_7
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1700(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Lorg/json/JSONObject;

    move-result-object v7

    aget-object v8, v6, v3

    aget-object v6, v6, v5

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 115
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/xiaopeng/xui/vui/VuiView;->logD(Ljava/lang/String;)V

    .line 117
    :cond_9
    sget v1, Lbyg$n;->vui_vuiEnableSceneFeature:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->enableSceneFeature:Z

    .line 118
    sget v1, Lbyg$n;->vui_vuiIsMainScene:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1802(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z

    .line 119
    sget v1, Lbyg$n;->vui_vuiSceneId:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->sceneId:Ljava/lang/String;

    .line 120
    sget v1, Lbyg$n;->vui_vuiSubSceneIds:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, ","

    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1902(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/util/List;)Ljava/util/List;

    .line 125
    :cond_a
    sget v1, Lbyg$n;->vui_vuiIsMainScene:I

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1802(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z

    .line 126
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    invoke-static {v0, p2}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2002(Lcom/xiaopeng/xui/vui/VuiView$XAttr;I)I

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p2

    invoke-static {v0, p2}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2102(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z

    .line 130
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, p2}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2202(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 131
    sget-object p1, Lcom/xiaopeng/xui/vui/VuiView;->msMap:Landroid/util/SparseArray;

    monitor-enter p1

    .line 132
    :try_start_1
    sget-object p2, Lcom/xiaopeng/xui/vui/VuiView;->msMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiElementType()Lbxy;

    move-result-object p1

    sget-object p2, Lbxy;->STATEFULBUTTON:Lbxy;

    if-ne p1, p2, :cond_c

    .line 135
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lbxx;->SETVALUE:Lbxx;

    invoke-virtual {p2}, Lbxx;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "|"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lbxx;->CLICK:Lbxx;

    invoke-virtual {p2}, Lbxx;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiAction(Ljava/lang/String;)V

    .line 138
    :cond_b
    invoke-static {}, Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;->getInstance()Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;

    move-result-object p1

    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiStateIndex()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiStateLabels()[Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, p2, v0, v1}, Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;->setStatefulButtonAttr(Lcom/xiaopeng/xui/vui/VuiView;I[Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void

    :catchall_0
    move-exception p2

    .line 133
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2

    :cond_d
    :goto_4
    return-void
.end method

.method public isListNeedSetVuiLabelView(Landroid/view/View;)Z
    .locals 1

    .line 534
    instance-of v0, p1, Lcom/xiaopeng/xui/vui/VuiView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xiaopeng/xui/vui/VuiView;

    invoke-interface {p1}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiLabel()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPerformVuiAction()Z
    .locals 1

    .line 312
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 313
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2300(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Z

    move-result v0

    return v0
.end method

.method public isVuiLayoutLoadable()Z
    .locals 1

    .line 163
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 164
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$700(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Z

    move-result v0

    return v0
.end method

.method public isVuiModeEnabled()Z
    .locals 1

    .line 382
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 383
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1300(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Z

    move-result v0

    return v0
.end method

.method public logD(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    .line 538
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string/jumbo p1, "xpui"

    const-string v1, "%s %s hashCode:%s"

    invoke-static {p1, v1, v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public logI(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    .line 542
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string/jumbo p1, "xpui"

    const-string v1, "%s %s hashCode:%s"

    invoke-static {p1, v1, v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onBuildScene()V
    .locals 6

    .line 610
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 611
    iget-boolean v1, v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->enableSceneFeature:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lbxu;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->sceneId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 612
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lbxu;

    move-result-object v1

    iget-object v2, v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->sceneId:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2200(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1900(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/util/List;

    move-result-object v4

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1800(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Z

    move-result v0

    invoke-interface {v1, v2, v3, v4, v0}, Lbxu;->buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public onInterceptVuiEvent(Landroid/view/View;Lbyf;)Z
    .locals 2

    .line 643
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 644
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2600(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 645
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2600(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/vui/listenner/IVuiEventInterceptListener;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xui/vui/listenner/IVuiEventInterceptListener;->onInterceptVuiEvent(Landroid/view/View;Lbyf;)Z

    move-result p1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 648
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onVuiEvent(Landroid/view/View;Lbyf;)V
    .locals 2

    .line 631
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 632
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2600(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 633
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2600(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/vui/listenner/IVuiEventInterceptListener;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xui/vui/listenner/IVuiEventInterceptListener;->onVuiEvent(Landroid/view/View;Lbyf;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 636
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onVuiVisibilityChanged(I)V
    .locals 2

    .line 617
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 618
    iget-boolean v1, v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->enableSceneFeature:Z

    if-eqz v1, :cond_1

    .line 619
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lbxu;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->sceneId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    .line 621
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lbxu;

    move-result-object p1

    iget-object v0, v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->sceneId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lbxu;->enterScene(Ljava/lang/String;)V

    goto :goto_0

    .line 623
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lbxu;

    move-result-object p1

    iget-object v0, v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->sceneId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lbxu;->exitScene(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public releaseVui()V
    .locals 3

    .line 276
    sget-object v0, Lcom/xiaopeng/xui/vui/VuiView;->msMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 277
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xui/vui/VuiView;->msMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 278
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public releaseVui(Landroid/view/View;)V
    .locals 4

    .line 282
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 283
    check-cast p1, Landroid/view/ViewGroup;

    .line 284
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 286
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 287
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 288
    invoke-interface {p0, v2}, Lcom/xiaopeng/xui/vui/VuiView;->releaseVui(Landroid/view/View;)V

    .line 290
    :cond_0
    instance-of v3, v2, Lcom/xiaopeng/xui/vui/VuiView;

    if-eqz v3, :cond_1

    .line 291
    check-cast v2, Lcom/xiaopeng/xui/vui/VuiView;

    invoke-interface {v2}, Lcom/xiaopeng/xui/vui/VuiView;->releaseVui()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    :cond_2
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->releaseVui()V

    return-void
.end method

.method public setPerformVuiAction(Z)V
    .locals 1

    .line 318
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 319
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2302(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z

    return-void
.end method

.method public setVuiAction(Ljava/lang/String;)V
    .locals 1

    .line 193
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 194
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$002(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public setVuiBizId(Ljava/lang/String;)V
    .locals 1

    .line 348
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 349
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$902(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public setVuiDisableHitEffect(Z)V
    .locals 1

    .line 360
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 361
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1202(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z

    return-void
.end method

.method public setVuiElementChangedListener(Lbxs;)V
    .locals 2

    .line 410
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 412
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2502(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setVuiElementId(Ljava/lang/String;)V
    .locals 1

    .line 259
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 260
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$602(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public setVuiElementType(Lbxy;)V
    .locals 1

    .line 205
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 206
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$102(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lbxy;)Lbxy;

    return-void
.end method

.method public setVuiEventInterceptListener(Lcom/xiaopeng/xui/vui/listenner/IVuiEventInterceptListener;)V
    .locals 2

    .line 655
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 656
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2602(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setVuiFatherElementId(Ljava/lang/String;)V
    .locals 1

    .line 217
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 218
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$302(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public setVuiFatherLabel(Ljava/lang/String;)V
    .locals 1

    .line 229
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 230
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$502(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public setVuiFeedbackType(Lbxz;)V
    .locals 1

    .line 306
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 307
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1102(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lbxz;)Lbxz;

    return-void
.end method

.method public setVuiImageResource(I)V
    .locals 2

    .line 455
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiElementType()Lbxy;

    move-result-object v0

    sget-object v1, Lbxy;->STATEFULBUTTON:Lbxy;

    if-ne v0, v1, :cond_0

    .line 456
    invoke-interface {p0, p1}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiStateIndex(I)V

    .line 457
    move-object p1, p0

    check-cast p1, Landroid/view/View;

    invoke-interface {p0, p1}, Lcom/xiaopeng/xui/vui/VuiView;->updateVui(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setVuiLabel(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    .line 244
    :cond_0
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 245
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$400(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 246
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-interface {p0, v1}, Lcom/xiaopeng/xui/vui/VuiView;->updateVui(Landroid/view/View;)V

    .line 248
    :cond_1
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$402(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public setVuiLayoutLoadable(Z)V
    .locals 1

    .line 169
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 170
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$702(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z

    return-void
.end method

.method public setVuiMode(Lbya;)V
    .locals 1

    .line 342
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 343
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$802(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lbya;)Lbya;

    return-void
.end method

.method public setVuiPosition(I)V
    .locals 1

    .line 265
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 266
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$202(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/Integer;)Ljava/lang/Integer;

    return-void
.end method

.method public setVuiPriority(Lbyb;)V
    .locals 1

    .line 181
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 182
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1002(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lbyb;)Lbyb;

    return-void
.end method

.method public setVuiProps(Lorg/json/JSONObject;)V
    .locals 1

    .line 324
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 325
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1702(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    return-void
.end method

.method public setVuiSelected(Landroid/view/View;Z)V
    .locals 2

    .line 491
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 492
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2100(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Z

    move-result v1

    if-eq v1, p2, :cond_1

    .line 493
    invoke-static {v0, p2}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2102(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z

    .line 494
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiElementType()Lbxy;

    move-result-object p2

    invoke-virtual {p2}, Lbxy;->a()Ljava/lang/String;

    move-result-object p2

    .line 495
    sget-object v0, Lbxy;->CHECKBOX:Lbxy;

    invoke-virtual {v0}, Lbxy;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lbxy;->SWITCH:Lbxy;

    .line 496
    invoke-virtual {v0}, Lbxy;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lbxy;->RADIOBUTTON:Lbxy;

    .line 497
    invoke-virtual {v0}, Lbxy;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 498
    :cond_0
    invoke-interface {p0, p1}, Lcom/xiaopeng/xui/vui/VuiView;->updateVui(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setVuiStateData([Ljava/lang/String;[I)V
    .locals 1

    .line 428
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 429
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1402(Lcom/xiaopeng/xui/vui/VuiView$XAttr;[Ljava/lang/String;)[Ljava/lang/String;

    .line 430
    invoke-static {v0, p2}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1502(Lcom/xiaopeng/xui/vui/VuiView$XAttr;[I)[I

    return-void
.end method

.method public setVuiStateIndex(I)V
    .locals 1

    .line 434
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 435
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1602(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/Integer;)Ljava/lang/Integer;

    return-void
.end method

.method public setVuiValue(Ljava/lang/Object;)V
    .locals 1

    .line 388
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 389
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2402(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setVuiValue(Ljava/lang/Object;Landroid/view/View;)V
    .locals 1

    .line 394
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 395
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2402(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object p1, Lbxy;->STATEFULBUTTON:Lbxy;

    invoke-virtual {p1}, Lbxy;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiElementType()Lbxy;

    move-result-object v0

    invoke-virtual {v0}, Lbxy;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 398
    invoke-interface {p0, p2}, Lcom/xiaopeng/xui/vui/VuiView;->updateVui(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setVuiVisibility(Landroid/view/View;I)V
    .locals 4

    const-string v0, "canVoiceControl"

    .line 462
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v1

    .line 463
    invoke-static {v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2000(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)I

    move-result v2

    if-eq v2, p2, :cond_2

    const/4 v2, 0x2

    .line 464
    invoke-static {v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 465
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVuiVisibility; xAttr.mVuiVisibility : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-static {v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2000(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)I

    move-result v3

    invoke-static {v3}, Lcom/xiaopeng/xui/utils/XuiUtils;->formatVisibility(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",visibility "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/xiaopeng/xui/utils/XuiUtils;->formatVisibility(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 465
    invoke-interface {p0, v2}, Lcom/xiaopeng/xui/vui/VuiView;->logD(Ljava/lang/String;)V

    .line 468
    :cond_0
    invoke-static {v1, p2}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2002(Lcom/xiaopeng/xui/vui/VuiView$XAttr;I)I

    .line 470
    :try_start_0
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiProps()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 471
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 472
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_1

    return-void

    :catch_0
    move-exception p2

    .line 478
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 480
    :cond_1
    invoke-interface {p0, p1}, Lcom/xiaopeng/xui/vui/VuiView;->updateVui(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public updateVui(Landroid/view/View;)V
    .locals 1

    .line 504
    sget-object v0, Lbyc;->UPDATE_VIEW_ATTRIBUTE:Lbyc;

    invoke-interface {p0, p1, v0}, Lcom/xiaopeng/xui/vui/VuiView;->updateVui(Landroid/view/View;Lbyc;)V

    return-void
.end method

.method public updateVui(Landroid/view/View;Lbyc;)V
    .locals 5

    .line 508
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isVuiEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 511
    :cond_0
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiElementChangedListener()Lbxs;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 513
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiElementType()Lbxy;

    move-result-object v1

    sget-object v2, Lbxy;->STATEFULBUTTON:Lbxy;

    if-ne v1, v2, :cond_1

    .line 514
    invoke-static {}, Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;->getInstance()Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;

    move-result-object v1

    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiStateIndex()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiStateLabels()[Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiStateValues()[I

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, p0}, Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;->setStatefulButtonValue(I[Ljava/lang/String;[ILcom/xiaopeng/xui/vui/VuiView;)V

    goto :goto_0

    .line 515
    :cond_1
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiElementType()Lbxy;

    move-result-object v1

    sget-object v2, Lbxy;->STATE:Lbxy;

    if-ne v1, v2, :cond_2

    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiVisibility()I

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 516
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/xiaopeng/xui/vui/VuiView;

    if-eqz v1, :cond_2

    .line 517
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/vui/VuiView;

    .line 518
    invoke-interface {v1}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiElementType()Lbxy;

    move-result-object v2

    sget-object v3, Lbxy;->STATEFULBUTTON:Lbxy;

    if-ne v2, v3, :cond_2

    .line 519
    invoke-static {}, Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;->getInstance()Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;

    move-result-object p1

    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiStateIndex()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiStateLabels()[Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiStateValues()[I

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;->setStatefulButtonValue(I[Ljava/lang/String;[ILcom/xiaopeng/xui/vui/VuiView;)V

    .line 520
    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1, p2}, Lcom/xiaopeng/xui/vui/utils/VuiViewUtils;->updateVui(Lbxs;Landroid/view/View;Lbyc;)V

    return-void

    .line 525
    :cond_2
    :goto_0
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xui/vui/utils/VuiViewUtils;->updateVui(Lbxs;Landroid/view/View;Lbyc;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x2

    .line 527
    invoke-static {p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "listener is null"

    .line 528
    invoke-interface {p0, p1}, Lcom/xiaopeng/xui/vui/VuiView;->logD(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public vuiViewAttachedToWindow()V
    .locals 5

    .line 588
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 589
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 590
    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object v2, p0

    check-cast v2, Landroid/view/View;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2202(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 592
    :cond_0
    iget-boolean v1, v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->enableSceneFeature:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lbxu;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->sceneId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 593
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2200(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 594
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lbxu;

    move-result-object v1

    iget-object v2, v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->sceneId:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2200(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    new-instance v4, Lcom/xiaopeng/xui/vui/listenner/VuiElementChangedListener;

    iget-object v0, v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->sceneId:Ljava/lang/String;

    invoke-direct {v4, v0}, Lcom/xiaopeng/xui/vui/listenner/VuiElementChangedListener;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3, p0, v4}, Lbxu;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lbxv;Lbxs;)V

    :cond_1
    return-void
.end method

.method public vuiViewDetachedFromWindow()V
    .locals 2

    .line 599
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 600
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 601
    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2202(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 603
    :cond_0
    iget-boolean v1, v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->enableSceneFeature:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lbxu;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->sceneId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 604
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lbxu;

    move-result-object v1

    iget-object v0, v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->sceneId:Ljava/lang/String;

    invoke-interface {v1, v0, p0}, Lbxu;->removeVuiSceneListener(Ljava/lang/String;Lbxv;)V

    :cond_1
    return-void
.end method
