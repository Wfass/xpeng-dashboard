.class public interface abstract Lcom/xiaopeng/xui/vui/VuiView;
.super Ljava/lang/Object;
.source "VuiView.java"

# interfaces
.implements Lcom/xiaopeng/vui/commons/IVuiElement;
.implements Lcom/xiaopeng/vui/commons/IVuiSceneListener;


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

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/xiaopeng/xui/vui/VuiView;->msMap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    .locals 4

    .line 144
    sget-object v0, Lcom/xiaopeng/xui/vui/VuiView;->msMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 145
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xui/vui/VuiView;->msMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    .line 146
    .local v1, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 147
    if-nez v1, :cond_1

    .line 148
    const-string/jumbo v0, "xAttr is null"

    invoke-interface {p0, v0}, Lcom/xiaopeng/xui/vui/VuiView;->logD(Ljava/lang/String;)V

    .line 149
    new-instance v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    invoke-direct {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;-><init>()V

    .line 150
    .end local v1    # "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$100(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/vui/commons/VuiElementType;->UNKNOWN:Lcom/xiaopeng/vui/commons/VuiElementType;

    if-ne v1, v2, :cond_0

    .line 151
    invoke-static {p0}, Lcom/xiaopeng/xui/vui/utils/VuiViewUtils;->getElementType(Ljava/lang/Object;)Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$102(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lcom/xiaopeng/vui/commons/VuiElementType;)Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 153
    :cond_0
    sget-object v2, Lcom/xiaopeng/xui/vui/VuiView;->msMap:Landroid/util/SparseArray;

    monitor-enter v2

    .line 154
    :try_start_1
    sget-object v1, Lcom/xiaopeng/xui/vui/VuiView;->msMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 155
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 157
    .end local v0    # "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    .restart local v1    # "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    :cond_1
    move-object v0, v1

    .line 157
    .end local v1    # "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    .restart local v0    # "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    :goto_0
    return-object v0

    .line 146
    .end local v0    # "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public enableViewVuiMode(Z)V
    .locals 1
    .param p1, "b"    # Z

    .line 358
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 359
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1302(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z

    .line 360
    return-void
.end method

.method public getVuiAction()Ljava/lang/String;
    .locals 2

    .line 186
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 187
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$000(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVuiBizId()Ljava/lang/String;
    .locals 2

    .line 336
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 337
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$900(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVuiDisableHitEffect()Z
    .locals 3

    .line 347
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 348
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1200(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 349
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLBYY:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$000(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLBYX:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$000(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 353
    :cond_1
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1200(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Z

    move-result v1

    return v1
.end method

.method public getVuiElementChangedListener()Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;
    .locals 3

    .line 399
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 400
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2500(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 401
    sget-object v1, Lcom/xiaopeng/xui/vui/VuiView;->msMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 402
    :try_start_0
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2500(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 403
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2500(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    monitor-exit v1

    return-object v2

    .line 405
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 407
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getVuiElementId()Ljava/lang/String;
    .locals 2

    .line 252
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 253
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$600(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVuiElementType()Lcom/xiaopeng/vui/commons/VuiElementType;
    .locals 2

    .line 198
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 199
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$100(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v1

    return-object v1
.end method

.method public getVuiFatherElementId()Ljava/lang/String;
    .locals 2

    .line 210
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 211
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$300(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVuiFatherLabel()Ljava/lang/String;
    .locals 2

    .line 222
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 223
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$500(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVuiFeedbackType()Lcom/xiaopeng/vui/commons/VuiFeedbackType;
    .locals 2

    .line 282
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 283
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1100(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    move-result-object v1

    return-object v1
.end method

.method public getVuiLabel()Ljava/lang/String;
    .locals 2

    .line 234
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 235
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$400(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVuiMode()Lcom/xiaopeng/vui/commons/VuiMode;
    .locals 2

    .line 318
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 319
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$800(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Lcom/xiaopeng/vui/commons/VuiMode;

    move-result-object v1

    return-object v1
.end method

.method public getVuiPosition()I
    .locals 2

    .line 270
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 271
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$200(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getVuiPriority()Lcom/xiaopeng/vui/commons/VuiPriority;
    .locals 2

    .line 174
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 175
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1000(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Lcom/xiaopeng/vui/commons/VuiPriority;

    move-result-object v1

    return-object v1
.end method

.method public getVuiProps()Lorg/json/JSONObject;
    .locals 2

    .line 312
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 313
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1700(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method public getVuiStateIndex()Ljava/lang/Integer;
    .locals 2

    .line 432
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 433
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1600(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public getVuiStateLabels()[Ljava/lang/String;
    .locals 2

    .line 422
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 423
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1400(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVuiStateValues()[I
    .locals 2

    .line 427
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 428
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1500(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)[I

    move-result-object v1

    return-object v1
.end method

.method public getVuiValue()Ljava/lang/Object;
    .locals 2

    .line 386
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 387
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2400(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getVuiVisibility()I
    .locals 2

    .line 467
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 468
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2000(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)I

    move-result v1

    return v1
.end method

.method public initVui(Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 46
    move-object/from16 v3, p2

    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isVuiEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    return-void

    .line 49
    :cond_0
    if-eqz v2, :cond_d

    if-nez v3, :cond_1

    goto/16 :goto_5

    .line 52
    :cond_1
    new-instance v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    invoke-direct {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;-><init>()V

    move-object v4, v0

    .line 54
    .local v4, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v5, Lcom/xiaopeng/xpui/R$styleable;->vui:[I

    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 55
    .local v5, "ta":Landroid/content/res/TypedArray;
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiAction:I

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$002(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiElementType:I

    const/4 v6, -0x1

    invoke-virtual {v5, v0, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/utils/VuiCommonUtils;->getElementType(I)Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$102(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lcom/xiaopeng/vui/commons/VuiElementType;)Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 57
    invoke-static {v4}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$100(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v0

    sget-object v7, Lcom/xiaopeng/vui/commons/VuiElementType;->UNKNOWN:Lcom/xiaopeng/vui/commons/VuiElementType;

    if-ne v0, v7, :cond_2

    .line 58
    invoke-static/range {p1 .. p1}, Lcom/xiaopeng/xui/vui/utils/VuiViewUtils;->getElementType(Ljava/lang/Object;)Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$102(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lcom/xiaopeng/vui/commons/VuiElementType;)Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 60
    :cond_2
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiPosition:I

    invoke-virtual {v5, v0, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$202(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 61
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiFatherElementId:I

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$302(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiLabel:I

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$402(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiFatherLabel:I

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$502(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiElementId:I

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$602(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiLayoutLoadable:I

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v4, v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$702(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z

    .line 66
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiMode:I

    const/4 v8, 0x4

    invoke-virtual {v5, v0, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/utils/VuiCommonUtils;->getVuiMode(I)Lcom/xiaopeng/vui/commons/VuiMode;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$802(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lcom/xiaopeng/vui/commons/VuiMode;)Lcom/xiaopeng/vui/commons/VuiMode;

    .line 67
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiBizId:I

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$902(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiPriority:I

    const/4 v8, 0x2

    invoke-virtual {v5, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 69
    .local v9, "priority":I
    invoke-static {v9}, Lcom/xiaopeng/xui/vui/utils/VuiCommonUtils;->getViewLeveByPriority(I)Lcom/xiaopeng/vui/commons/VuiPriority;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1002(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lcom/xiaopeng/vui/commons/VuiPriority;)Lcom/xiaopeng/vui/commons/VuiPriority;

    .line 70
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiFeedbackType:I

    const/4 v10, 0x1

    invoke-virtual {v5, v0, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/utils/VuiCommonUtils;->getFeedbackType(I)Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1102(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lcom/xiaopeng/vui/commons/VuiFeedbackType;)Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    .line 71
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiDisableHitEffect:I

    invoke-virtual {v5, v0, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v4, v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1202(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z

    .line 72
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiEnableViewVuiMode:I

    invoke-virtual {v5, v0, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v4, v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1302(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z

    .line 73
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiStateLabels:I

    invoke-virtual {v5, v0, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 74
    .local v11, "vuiStateLabelsResource":I
    if-eqz v11, :cond_3

    .line 75
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1402(Lcom/xiaopeng/xui/vui/VuiView$XAttr;[Ljava/lang/String;)[Ljava/lang/String;

    .line 77
    :cond_3
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiStateValues:I

    invoke-virtual {v5, v0, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 78
    .local v12, "vuiStateValuesResource":I
    if-eqz v12, :cond_5

    .line 79
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    .local v0, "array":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v13

    if-lez v13, :cond_5

    .line 81
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v13

    new-array v13, v13, [I

    invoke-static {v4, v13}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1502(Lcom/xiaopeng/xui/vui/VuiView$XAttr;[I)[I

    .line 82
    move v13, v7

    .line 82
    .local v13, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_5

    .line 83
    invoke-virtual {v0, v13, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    if-nez v14, :cond_4

    .line 84
    invoke-static {v4}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1500(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)[I

    move-result-object v14

    invoke-virtual {v0, v13, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v15

    aput v15, v14, v13

    goto :goto_1

    .line 86
    :cond_4
    invoke-static {v4}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1500(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)[I

    move-result-object v14

    invoke-virtual {v0, v13, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v14, v13

    .line 82
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "array":Landroid/content/res/TypedArray;
    .end local v13    # "i":I
    :cond_5
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiStateIndex:I

    invoke-virtual {v5, v0, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1602(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 94
    :try_start_0
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiProps:I

    .line 95
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 96
    .local v0, "vuiProps":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_9

    .line 97
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v4, v6}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1702(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 98
    move v6, v7

    .line 98
    .local v6, "i":I
    :goto_2
    array-length v13, v0

    if-ge v6, v13, :cond_9

    .line 99
    aget-object v13, v0, v6

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 100
    aget-object v13, v0, v6

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 101
    .local v13, "props":[Ljava/lang/String;
    array-length v14, v13

    if-ne v14, v8, :cond_8

    .line 102
    const-string v14, "true"

    aget-object v15, v13, v10

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 103
    invoke-static {v4}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1700(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Lorg/json/JSONObject;

    move-result-object v14

    aget-object v15, v13, v7

    invoke-virtual {v14, v15, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_3

    .line 104
    :cond_6
    const-string v14, "false"

    aget-object v15, v13, v10

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 105
    invoke-static {v4}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1700(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Lorg/json/JSONObject;

    move-result-object v14

    aget-object v15, v13, v7

    invoke-virtual {v14, v15, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_3

    .line 107
    :cond_7
    invoke-static {v4}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1700(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Lorg/json/JSONObject;

    move-result-object v14

    aget-object v15, v13, v7

    aget-object v8, v13, v10

    invoke-virtual {v14, v15, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v13    # "props":[Ljava/lang/String;
    :cond_8
    :goto_3
    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x2

    goto :goto_2

    .line 115
    .end local v0    # "vuiProps":[Ljava/lang/CharSequence;
    .end local v6    # "i":I
    :cond_9
    goto :goto_4

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/xiaopeng/xui/vui/VuiView;->logD(Ljava/lang/String;)V

    .line 116
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiEnableSceneFeature:I

    invoke-virtual {v5, v0, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v4, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->enableSceneFeature:Z

    .line 117
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiIsMainScene:I

    invoke-virtual {v5, v0, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v4, v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1802(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z

    .line 118
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiSceneId:I

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->sceneId:Ljava/lang/String;

    .line 119
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiSubSceneIds:I

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, "subSceneIdStr":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 121
    const-string v0, ","

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "subSceneIds":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1902(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/util/List;)Ljava/util/List;

    .line 124
    .end local v0    # "subSceneIds":[Ljava/lang/String;
    :cond_a
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiIsMainScene:I

    invoke-virtual {v5, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v4, v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1802(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z

    .line 125
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-static {v4, v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2002(Lcom/xiaopeng/xui/vui/VuiView$XAttr;I)I

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    invoke-static {v4, v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2102(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z

    .line 129
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v4, v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2202(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 130
    sget-object v7, Lcom/xiaopeng/xui/vui/VuiView;->msMap:Landroid/util/SparseArray;

    monitor-enter v7

    .line 131
    :try_start_1
    sget-object v0, Lcom/xiaopeng/xui/vui/VuiView;->msMap:Landroid/util/SparseArray;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v0, v8, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    invoke-interface/range {p0 .. p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiElementType()Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v0

    sget-object v7, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    if-ne v0, v7, :cond_c

    .line 134
    invoke-interface/range {p0 .. p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/xiaopeng/vui/commons/VuiAction;->SETVALUE:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v7}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "|"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/xiaopeng/vui/commons/VuiAction;->CLICK:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v7}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiAction(Ljava/lang/String;)V

    .line 137
    :cond_b
    invoke-static {}, Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;->getInstance()Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;

    move-result-object v0

    invoke-interface/range {p0 .. p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiStateIndex()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface/range {p0 .. p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiStateLabels()[Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {p0 .. p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v1, v7, v8, v10}, Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;->setStatefulButtonAttr(Lcom/xiaopeng/xui/vui/VuiView;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_c
    return-void

    .line 132
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 50
    .end local v4    # "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    .end local v5    # "ta":Landroid/content/res/TypedArray;
    .end local v6    # "subSceneIdStr":Ljava/lang/String;
    .end local v9    # "priority":I
    .end local v11    # "vuiStateLabelsResource":I
    .end local v12    # "vuiStateValuesResource":I
    :cond_d
    :goto_5
    return-void
.end method

.method public isListNeedSetVuiLabelView(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 516
    instance-of v0, p1, Lcom/xiaopeng/xui/vui/VuiView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/xui/vui/VuiView;

    invoke-interface {v0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPerformVuiAction()Z
    .locals 2

    .line 294
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 295
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2300(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Z

    move-result v1

    return v1
.end method

.method public isVuiLayoutLoadable()Z
    .locals 2

    .line 162
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 163
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$700(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Z

    move-result v1

    return v1
.end method

.method public isVuiModeEnabled()Z
    .locals 2

    .line 364
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 365
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1300(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Z

    move-result v1

    return v1
.end method

.method public logD(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 520
    const-string/jumbo v0, "xpui"

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

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    return-void
.end method

.method public logI(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 524
    const-string/jumbo v0, "xpui"

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

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 525
    return-void
.end method

.method public onBuildScene()V
    .locals 6

    .line 586
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 587
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    iget-boolean v1, v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->enableSceneFeature:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lcom/xiaopeng/vui/commons/IVuiEngine;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->sceneId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 588
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lcom/xiaopeng/vui/commons/IVuiEngine;

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

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/xiaopeng/vui/commons/IVuiEngine;->buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 590
    :cond_0
    return-void
.end method

.method public onInterceptVuiEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Lcom/xiaopeng/vui/commons/model/VuiEvent;

    .line 619
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 620
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2600(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 621
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2600(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/vui/listenner/IVuiEventInterceptListener;

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xui/vui/listenner/IVuiEventInterceptListener;->onInterceptVuiEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z

    move-result v1

    return v1

    .line 623
    :cond_0
    if-eqz p1, :cond_1

    .line 624
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 626
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public onVuiEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Lcom/xiaopeng/vui/commons/model/VuiEvent;

    .line 607
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 608
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2600(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 609
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2600(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/vui/listenner/IVuiEventInterceptListener;

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xui/vui/listenner/IVuiEventInterceptListener;->onVuiEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)V

    goto :goto_0

    .line 611
    :cond_0
    if-eqz p1, :cond_1

    .line 612
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 615
    :cond_1
    :goto_0
    return-void
.end method

.method public onVuiVisibilityChanged(I)V
    .locals 3
    .param p1, "visibility"    # I

    .line 593
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 594
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    iget-boolean v1, v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->enableSceneFeature:Z

    if-eqz v1, :cond_1

    .line 595
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lcom/xiaopeng/vui/commons/IVuiEngine;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->sceneId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 596
    if-nez p1, :cond_0

    .line 597
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lcom/xiaopeng/vui/commons/IVuiEngine;

    move-result-object v1

    iget-object v2, v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->sceneId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/xiaopeng/vui/commons/IVuiEngine;->enterScene(Ljava/lang/String;)V

    goto :goto_0

    .line 599
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lcom/xiaopeng/vui/commons/IVuiEngine;

    move-result-object v1

    iget-object v2, v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->sceneId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/xiaopeng/vui/commons/IVuiEngine;->exitScene(Ljava/lang/String;)V

    .line 603
    :cond_1
    :goto_0
    return-void
.end method

.method public releaseVui()V
    .locals 3

    .line 275
    sget-object v0, Lcom/xiaopeng/xui/vui/VuiView;->msMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 276
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xui/vui/VuiView;->msMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 277
    monitor-exit v0

    .line 278
    return-void

    .line 277
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPerformVuiAction(Z)V
    .locals 1
    .param p1, "performVuiAction"    # Z

    .line 300
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 301
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2302(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z

    .line 302
    return-void
.end method

.method public setVuiAction(Ljava/lang/String;)V
    .locals 1
    .param p1, "vuiAction"    # Ljava/lang/String;

    .line 192
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 193
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$002(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setVuiBizId(Ljava/lang/String;)V
    .locals 1
    .param p1, "vuiBizId"    # Ljava/lang/String;

    .line 330
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 331
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$902(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    .line 332
    return-void
.end method

.method public setVuiDisableHitEffect(Z)V
    .locals 1
    .param p1, "vuiDisableHitEffect"    # Z

    .line 342
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 343
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1202(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z

    .line 344
    return-void
.end method

.method public setVuiElementChangedListener(Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    .line 392
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 394
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2502(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 395
    return-void
.end method

.method public setVuiElementId(Ljava/lang/String;)V
    .locals 1
    .param p1, "vuiElementId"    # Ljava/lang/String;

    .line 258
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 259
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$602(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setVuiElementType(Lcom/xiaopeng/vui/commons/VuiElementType;)V
    .locals 1
    .param p1, "vuiElementType"    # Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 204
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 205
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$102(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lcom/xiaopeng/vui/commons/VuiElementType;)Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 206
    return-void
.end method

.method public setVuiEventInterceptListener(Lcom/xiaopeng/xui/vui/listenner/IVuiEventInterceptListener;)V
    .locals 2
    .param p1, "vuiEventInterceptListener"    # Lcom/xiaopeng/xui/vui/listenner/IVuiEventInterceptListener;

    .line 631
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 632
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2602(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 633
    return-void
.end method

.method public setVuiFatherElementId(Ljava/lang/String;)V
    .locals 1
    .param p1, "vuiFatherElementId"    # Ljava/lang/String;

    .line 216
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 217
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$302(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setVuiFatherLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "vuiFatherLabel"    # Ljava/lang/String;

    .line 228
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 229
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$502(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setVuiFeedbackType(Lcom/xiaopeng/vui/commons/VuiFeedbackType;)V
    .locals 1
    .param p1, "vuiFeedbackType"    # Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    .line 288
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 289
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1102(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lcom/xiaopeng/vui/commons/VuiFeedbackType;)Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    .line 290
    return-void
.end method

.method public setVuiImageResource(I)V
    .locals 2
    .param p1, "resId"    # I
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 437
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiElementType()Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    if-ne v0, v1, :cond_0

    .line 438
    invoke-interface {p0, p1}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiStateIndex(I)V

    .line 439
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-interface {p0, v0}, Lcom/xiaopeng/xui/vui/VuiView;->updateVui(Landroid/view/View;)V

    .line 441
    :cond_0
    return-void
.end method

.method public setVuiLabel(Ljava/lang/String;)V
    .locals 2
    .param p1, "vuiLabel"    # Ljava/lang/String;

    .line 240
    if-nez p1, :cond_0

    .line 241
    const-string p1, ""

    .line 243
    :cond_0
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 244
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$400(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 245
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-interface {p0, v1}, Lcom/xiaopeng/xui/vui/VuiView;->updateVui(Landroid/view/View;)V

    .line 247
    :cond_1
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$402(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setVuiLayoutLoadable(Z)V
    .locals 1
    .param p1, "vuiLayoutLoadable"    # Z

    .line 168
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 169
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$702(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z

    .line 170
    return-void
.end method

.method public setVuiMode(Lcom/xiaopeng/vui/commons/VuiMode;)V
    .locals 1
    .param p1, "vuiMode"    # Lcom/xiaopeng/vui/commons/VuiMode;

    .line 324
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 325
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$802(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lcom/xiaopeng/vui/commons/VuiMode;)Lcom/xiaopeng/vui/commons/VuiMode;

    .line 326
    return-void
.end method

.method public setVuiPosition(I)V
    .locals 2
    .param p1, "vuiPosition"    # I

    .line 264
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 265
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$202(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 266
    return-void
.end method

.method public setVuiPriority(Lcom/xiaopeng/vui/commons/VuiPriority;)V
    .locals 1
    .param p1, "vuiPriority"    # Lcom/xiaopeng/vui/commons/VuiPriority;

    .line 180
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 181
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1002(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lcom/xiaopeng/vui/commons/VuiPriority;)Lcom/xiaopeng/vui/commons/VuiPriority;

    .line 182
    return-void
.end method

.method public setVuiProps(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "vuiProps"    # Lorg/json/JSONObject;

    .line 306
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 307
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1702(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 308
    return-void
.end method

.method public setVuiSelected(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "selected"    # Z
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 473
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 474
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2100(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Z

    move-result v1

    if-eq v1, p2, :cond_1

    .line 475
    invoke-static {v0, p2}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2102(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z

    .line 476
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiElementType()Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, "type":Ljava/lang/String;
    sget-object v2, Lcom/xiaopeng/vui/commons/VuiElementType;->CHECKBOX:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v2}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/xiaopeng/vui/commons/VuiElementType;->SWITCH:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 478
    invoke-virtual {v2}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/xiaopeng/vui/commons/VuiElementType;->RADIOBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 479
    invoke-virtual {v2}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 480
    :cond_0
    invoke-interface {p0, p1}, Lcom/xiaopeng/xui/vui/VuiView;->updateVui(Landroid/view/View;)V

    .line 483
    .end local v1    # "type":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setVuiStateData([Ljava/lang/String;[I)V
    .locals 1
    .param p1, "stateLabels"    # [Ljava/lang/String;
    .param p2, "stateValues"    # [I

    .line 410
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 411
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1402(Lcom/xiaopeng/xui/vui/VuiView$XAttr;[Ljava/lang/String;)[Ljava/lang/String;

    .line 412
    invoke-static {v0, p2}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1502(Lcom/xiaopeng/xui/vui/VuiView$XAttr;[I)[I

    .line 413
    return-void
.end method

.method public setVuiStateIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .line 416
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 417
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1602(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 418
    return-void
.end method

.method public setVuiValue(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 370
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 371
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2402(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    return-void
.end method

.method public setVuiValue(Ljava/lang/Object;Landroid/view/View;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "view"    # Landroid/view/View;

    .line 376
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 377
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2402(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiElementType()Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 380
    invoke-interface {p0, p2}, Lcom/xiaopeng/xui/vui/VuiView;->updateVui(Landroid/view/View;)V

    .line 382
    :cond_0
    return-void
.end method

.method public setVuiVisibility(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 444
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 445
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2000(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)I

    move-result v1

    if-eq v1, p2, :cond_2

    .line 446
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVuiVisibility; xAttr.mVuiVisibility : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2000(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)I

    move-result v2

    invoke-static {v2}, Lcom/xiaopeng/xui/utils/XuiUtils;->formatVisibility(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",visibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/xiaopeng/xui/utils/XuiUtils;->formatVisibility(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 447
    invoke-interface {p0, v1}, Lcom/xiaopeng/xui/vui/VuiView;->logD(Ljava/lang/String;)V

    .line 450
    :cond_0
    invoke-static {v0, p2}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2002(Lcom/xiaopeng/xui/vui/VuiView$XAttr;I)I

    .line 452
    :try_start_0
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v1

    .line 453
    .local v1, "props":Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    const-string v2, "canVoiceControl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 454
    const-string v2, "canVoiceControl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    .local v2, "canVoiceControl":Z
    if-eqz v2, :cond_1

    .line 456
    return-void

    .line 461
    .end local v1    # "props":Lorg/json/JSONObject;
    .end local v2    # "canVoiceControl":Z
    :cond_1
    goto :goto_0

    .line 459
    :catch_0
    move-exception v1

    .line 460
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 462
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-interface {p0, p1}, Lcom/xiaopeng/xui/vui/VuiView;->updateVui(Landroid/view/View;)V

    .line 464
    :cond_2
    return-void
.end method

.method public updateVui(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 486
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiUpdateType;->UPDATE_VIEW_ATTRIBUTE:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-interface {p0, p1, v0}, Lcom/xiaopeng/xui/vui/VuiView;->updateVui(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    .line 487
    return-void
.end method

.method public updateVui(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "updateType"    # Lcom/xiaopeng/vui/commons/VuiUpdateType;

    .line 490
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isVuiEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    return-void

    .line 493
    :cond_0
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiElementChangedListener()Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    move-result-object v0

    .line 494
    .local v0, "listener":Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;
    if-eqz v0, :cond_3

    .line 495
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiElementType()Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    if-ne v1, v2, :cond_1

    .line 496
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

    .line 497
    :cond_1
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiElementType()Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/vui/commons/VuiElementType;->STATE:Lcom/xiaopeng/vui/commons/VuiElementType;

    if-ne v1, v2, :cond_2

    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 498
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/xiaopeng/xui/vui/VuiView;

    if-eqz v1, :cond_2

    .line 499
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/vui/VuiView;

    .line 500
    .local v1, "parent":Lcom/xiaopeng/xui/vui/VuiView;
    invoke-interface {v1}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiElementType()Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    if-ne v2, v3, :cond_2

    .line 501
    invoke-static {}, Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;->getInstance()Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;

    move-result-object v2

    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiStateIndex()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiStateLabels()[Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiStateValues()[I

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/xiaopeng/xui/vui/StateFulButtonPlugin;->setStatefulButtonValue(I[Ljava/lang/String;[ILcom/xiaopeng/xui/vui/VuiView;)V

    .line 502
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-static {v0, v2, p2}, Lcom/xiaopeng/xui/vui/utils/VuiViewUtils;->updateVui(Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    .line 503
    return-void

    .line 507
    .end local v1    # "parent":Lcom/xiaopeng/xui/vui/VuiView;
    :cond_2
    :goto_0
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xui/vui/utils/VuiViewUtils;->updateVui(Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    goto :goto_1

    .line 509
    :cond_3
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 510
    const-string v1, "listener is null"

    invoke-interface {p0, v1}, Lcom/xiaopeng/xui/vui/VuiView;->logD(Ljava/lang/String;)V

    .line 513
    :cond_4
    :goto_1
    return-void
.end method

.method public vuiViewAttachedToWindow()V
    .locals 6

    .line 570
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 571
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    iget-boolean v1, v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->enableSceneFeature:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lcom/xiaopeng/vui/commons/IVuiEngine;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->sceneId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 572
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2200(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 573
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lcom/xiaopeng/vui/commons/IVuiEngine;

    move-result-object v1

    iget-object v2, v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->sceneId:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$2200(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    new-instance v4, Lcom/xiaopeng/xui/vui/listenner/VuiElementChangedListener;

    iget-object v5, v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->sceneId:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/xiaopeng/xui/vui/listenner/VuiElementChangedListener;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3, p0, v4}, Lcom/xiaopeng/vui/commons/IVuiEngine;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;)V

    .line 575
    :cond_0
    return-void
.end method

.method public vuiViewDetachedFromWindow()V
    .locals 3

    .line 578
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 579
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    iget-boolean v1, v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->enableSceneFeature:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lcom/xiaopeng/vui/commons/IVuiEngine;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->sceneId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 580
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lcom/xiaopeng/vui/commons/IVuiEngine;

    move-result-object v1

    iget-object v2, v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->sceneId:Ljava/lang/String;

    invoke-interface {v1, v2, p0}, Lcom/xiaopeng/vui/commons/IVuiEngine;->removeVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 582
    :cond_0
    return-void
.end method
