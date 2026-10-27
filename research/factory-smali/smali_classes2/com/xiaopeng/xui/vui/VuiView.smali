.class public interface abstract Lcom/xiaopeng/xui/vui/VuiView;
.super Ljava/lang/Object;
.source "VuiView.java"

# interfaces
.implements Lcom/xiaopeng/vui/commons/IVuiElement;


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

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/xiaopeng/xui/vui/VuiView;->msMap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    .locals 4

    .line 79
    sget-object v0, Lcom/xiaopeng/xui/vui/VuiView;->msMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    .line 80
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    if-nez v0, :cond_1

    .line 81
    const-string v1, "xAttr is null"

    invoke-interface {p0, v1}, Lcom/xiaopeng/xui/vui/VuiView;->logD(Ljava/lang/String;)V

    .line 82
    new-instance v1, Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    invoke-direct {v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;-><init>()V

    .line 83
    .end local v0    # "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    .local v1, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$100(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v0

    sget-object v2, Lcom/xiaopeng/vui/commons/VuiElementType;->UNKNOWN:Lcom/xiaopeng/vui/commons/VuiElementType;

    if-ne v0, v2, :cond_0

    .line 84
    invoke-static {p0}, Lcom/xiaopeng/xui/vui/utils/VuiViewUtils;->getElementType(Ljava/lang/Object;)Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$102(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lcom/xiaopeng/vui/commons/VuiElementType;)Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 86
    :cond_0
    sget-object v2, Lcom/xiaopeng/xui/vui/VuiView;->msMap:Landroid/util/SparseArray;

    monitor-enter v2

    .line 87
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xui/vui/VuiView;->msMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    monitor-exit v2

    .line 90
    move-object v0, v1

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 90
    .end local v1    # "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    .restart local v0    # "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public enableViewVuiMode(Z)V
    .locals 1
    .param p1, "b"    # Z

    .line 288
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 289
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1302(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z

    .line 290
    return-void
.end method

.method public getVuiAction()Ljava/lang/String;
    .locals 2

    .line 119
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 120
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$000(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVuiBizId()Ljava/lang/String;
    .locals 2

    .line 266
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 267
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$900(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVuiDisableHitEffect()Z
    .locals 3

    .line 277
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 278
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1200(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 279
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

    .line 280
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 283
    :cond_1
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1200(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Z

    move-result v1

    return v1
.end method

.method public getVuiElementChangedListener()Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;
    .locals 3

    .line 329
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 330
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1900(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 331
    sget-object v1, Lcom/xiaopeng/xui/vui/VuiView;->msMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 332
    :try_start_0
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1900(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 333
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1900(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    monitor-exit v1

    return-object v2

    .line 335
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 337
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getVuiElementId()Ljava/lang/String;
    .locals 2

    .line 182
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 183
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$600(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVuiElementType()Lcom/xiaopeng/vui/commons/VuiElementType;
    .locals 2

    .line 131
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 132
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$100(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v1

    return-object v1
.end method

.method public getVuiFatherElementId()Ljava/lang/String;
    .locals 2

    .line 143
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 144
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$300(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVuiFatherLabel()Ljava/lang/String;
    .locals 2

    .line 155
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 156
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$500(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVuiFeedbackType()Lcom/xiaopeng/vui/commons/VuiFeedbackType;
    .locals 2

    .line 212
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 213
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1100(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    move-result-object v1

    return-object v1
.end method

.method public getVuiLabel()Ljava/lang/String;
    .locals 2

    .line 167
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 168
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$400(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVuiMode()Lcom/xiaopeng/vui/commons/VuiMode;
    .locals 2

    .line 248
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 249
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$800(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Lcom/xiaopeng/vui/commons/VuiMode;

    move-result-object v1

    return-object v1
.end method

.method public getVuiPosition()I
    .locals 2

    .line 200
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 201
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$200(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getVuiPriority()Lcom/xiaopeng/vui/commons/VuiPriority;
    .locals 2

    .line 107
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 108
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1000(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Lcom/xiaopeng/vui/commons/VuiPriority;

    move-result-object v1

    return-object v1
.end method

.method public getVuiProps()Lorg/json/JSONObject;
    .locals 2

    .line 242
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 243
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1700(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method public getVuiValue()Ljava/lang/Object;
    .locals 2

    .line 316
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 317
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1800(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public initVui(Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 39
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isVuiEnable()Z

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
    new-instance v0, Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    invoke-direct {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;-><init>()V

    .line 47
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xpui/R$styleable;->vui:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 48
    .local v1, "ta":Landroid/content/res/TypedArray;
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiAction:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$002(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiElementType:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-static {v2}, Lcom/xiaopeng/xui/vui/utils/VuiCommonUtils;->getElementType(I)Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$102(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lcom/xiaopeng/vui/commons/VuiElementType;)Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 51
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$100(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v2

    sget-object v4, Lcom/xiaopeng/vui/commons/VuiElementType;->UNKNOWN:Lcom/xiaopeng/vui/commons/VuiElementType;

    if-ne v2, v4, :cond_2

    .line 52
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/utils/VuiViewUtils;->getElementType(Ljava/lang/Object;)Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$102(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lcom/xiaopeng/vui/commons/VuiElementType;)Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 54
    :cond_2
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiPosition:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$202(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 55
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiFatherElementId:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$302(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiLabel:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$402(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiFatherLabel:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$502(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiElementId:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$602(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiLayoutLoadable:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$702(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z

    .line 60
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiMode:I

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-static {v2}, Lcom/xiaopeng/xui/vui/utils/VuiCommonUtils;->getVuiMode(I)Lcom/xiaopeng/vui/commons/VuiMode;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$802(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lcom/xiaopeng/vui/commons/VuiMode;)Lcom/xiaopeng/vui/commons/VuiMode;

    .line 61
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiBizId:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$902(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiPriority:I

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 63
    .local v2, "priority":I
    invoke-static {v2}, Lcom/xiaopeng/xui/vui/utils/VuiCommonUtils;->getViewLeveByPriority(I)Lcom/xiaopeng/vui/commons/VuiPriority;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1002(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lcom/xiaopeng/vui/commons/VuiPriority;)Lcom/xiaopeng/vui/commons/VuiPriority;

    .line 64
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiFeedbackType:I

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    invoke-static {v4}, Lcom/xiaopeng/xui/vui/utils/VuiCommonUtils;->getFeedbackType(I)Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1102(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lcom/xiaopeng/vui/commons/VuiFeedbackType;)Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    .line 65
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiDisableHitEffect:I

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-static {v0, v4}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1202(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z

    .line 66
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->vui_vuiEnableViewVuiMode:I

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1302(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z

    .line 67
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-static {v0, v3}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1402(Lcom/xiaopeng/xui/vui/VuiView$XAttr;I)I

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1502(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z

    .line 72
    sget-object v3, Lcom/xiaopeng/xui/vui/VuiView;->msMap:Landroid/util/SparseArray;

    monitor-enter v3

    .line 73
    :try_start_0
    sget-object v4, Lcom/xiaopeng/xui/vui/VuiView;->msMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    monitor-exit v3

    .line 76
    return-void

    .line 74
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 43
    .end local v0    # "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    .end local v2    # "priority":I
    :cond_3
    :goto_0
    return-void
.end method

.method public isPerformVuiAction()Z
    .locals 2

    .line 224
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 225
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1600(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Z

    move-result v1

    return v1
.end method

.method public isVuiLayoutLoadable()Z
    .locals 2

    .line 95
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 96
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$700(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Z

    move-result v1

    return v1
.end method

.method public isVuiModeEnabled()Z
    .locals 2

    .line 294
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 295
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1300(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Z

    move-result v1

    return v1
.end method

.method public logD(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

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

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    return-void
.end method

.method public logI(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 398
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

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    return-void
.end method

.method public releaseVui()V
    .locals 3

    .line 205
    sget-object v0, Lcom/xiaopeng/xui/vui/VuiView;->msMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 206
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xui/vui/VuiView;->msMap:Landroid/util/SparseArray;

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

.method public setPerformVuiAction(Z)V
    .locals 1
    .param p1, "performVuiAction"    # Z

    .line 230
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 231
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1602(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z

    .line 232
    return-void
.end method

.method public setVuiAction(Ljava/lang/String;)V
    .locals 1
    .param p1, "vuiAction"    # Ljava/lang/String;

    .line 125
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 126
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$002(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setVuiBizId(Ljava/lang/String;)V
    .locals 1
    .param p1, "vuiBizId"    # Ljava/lang/String;

    .line 260
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 261
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$902(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setVuiDisableHitEffect(Z)V
    .locals 1
    .param p1, "vuiDisableHitEffect"    # Z

    .line 272
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 273
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1202(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z

    .line 274
    return-void
.end method

.method public setVuiElementChangedListener(Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    .line 322
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 324
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1902(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 325
    return-void
.end method

.method public setVuiElementId(Ljava/lang/String;)V
    .locals 1
    .param p1, "vuiElementId"    # Ljava/lang/String;

    .line 188
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 189
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$602(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setVuiElementType(Lcom/xiaopeng/vui/commons/VuiElementType;)V
    .locals 1
    .param p1, "vuiElementType"    # Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 137
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 138
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$102(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lcom/xiaopeng/vui/commons/VuiElementType;)Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 139
    return-void
.end method

.method public setVuiFatherElementId(Ljava/lang/String;)V
    .locals 1
    .param p1, "vuiFatherElementId"    # Ljava/lang/String;

    .line 149
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 150
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$302(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setVuiFatherLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "vuiFatherLabel"    # Ljava/lang/String;

    .line 161
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 162
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$502(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setVuiFeedbackType(Lcom/xiaopeng/vui/commons/VuiFeedbackType;)V
    .locals 1
    .param p1, "vuiFeedbackType"    # Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    .line 218
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 219
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1102(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lcom/xiaopeng/vui/commons/VuiFeedbackType;)Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    .line 220
    return-void
.end method

.method public setVuiLabel(Ljava/lang/String;)V
    .locals 2
    .param p1, "vuiLabel"    # Ljava/lang/String;

    .line 173
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 174
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$402(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->isVuiLayoutLoadable()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 176
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-interface {p0, v1}, Lcom/xiaopeng/xui/vui/VuiView;->updateVui(Landroid/view/View;)V

    .line 178
    :cond_0
    return-void
.end method

.method public setVuiLayoutLoadable(Z)V
    .locals 1
    .param p1, "vuiLayoutLoadable"    # Z

    .line 101
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 102
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$702(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z

    .line 103
    return-void
.end method

.method public setVuiMode(Lcom/xiaopeng/vui/commons/VuiMode;)V
    .locals 1
    .param p1, "vuiMode"    # Lcom/xiaopeng/vui/commons/VuiMode;

    .line 254
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 255
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$802(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lcom/xiaopeng/vui/commons/VuiMode;)Lcom/xiaopeng/vui/commons/VuiMode;

    .line 256
    return-void
.end method

.method public setVuiPosition(I)V
    .locals 2
    .param p1, "vuiPosition"    # I

    .line 194
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 195
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$202(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 196
    return-void
.end method

.method public setVuiPriority(Lcom/xiaopeng/vui/commons/VuiPriority;)V
    .locals 1
    .param p1, "vuiPriority"    # Lcom/xiaopeng/vui/commons/VuiPriority;

    .line 113
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 114
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1002(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lcom/xiaopeng/vui/commons/VuiPriority;)Lcom/xiaopeng/vui/commons/VuiPriority;

    .line 115
    return-void
.end method

.method public setVuiProps(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "vuiProps"    # Lorg/json/JSONObject;

    .line 236
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 237
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1702(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 238
    return-void
.end method

.method public setVuiSelected(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "selected"    # Z
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 366
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 367
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1500(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)Z

    move-result v1

    if-eq v1, p2, :cond_1

    .line 368
    invoke-static {v0, p2}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1502(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Z)Z

    .line 369
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiElementType()Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, "type":Ljava/lang/String;
    sget-object v2, Lcom/xiaopeng/vui/commons/VuiElementType;->CHECKBOX:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v2}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/xiaopeng/vui/commons/VuiElementType;->SWITCH:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 371
    invoke-virtual {v2}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/xiaopeng/vui/commons/VuiElementType;->RADIOBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 372
    invoke-virtual {v2}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 373
    :cond_0
    invoke-interface {p0, p1}, Lcom/xiaopeng/xui/vui/VuiView;->updateVui(Landroid/view/View;)V

    .line 376
    .end local v1    # "type":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setVuiValue(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 300
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 301
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1802(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    return-void
.end method

.method public setVuiValue(Ljava/lang/Object;Landroid/view/View;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "view"    # Landroid/view/View;

    .line 306
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 307
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1802(Lcom/xiaopeng/xui/vui/VuiView$XAttr;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
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

    .line 310
    invoke-interface {p0, p2}, Lcom/xiaopeng/xui/vui/VuiView;->updateVui(Landroid/view/View;)V

    .line 312
    :cond_0
    return-void
.end method

.method public setVuiVisibility(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 342
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->checkVuiExit()Lcom/xiaopeng/xui/vui/VuiView$XAttr;

    move-result-object v0

    .line 343
    .local v0, "xAttr":Lcom/xiaopeng/xui/vui/VuiView$XAttr;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1400(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)I

    move-result v1

    if-eq v1, p2, :cond_2

    .line 344
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVuiVisibility; xAttr.mVuiVisibility : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1400(Lcom/xiaopeng/xui/vui/VuiView$XAttr;)I

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

    .line 345
    invoke-interface {p0, v1}, Lcom/xiaopeng/xui/vui/VuiView;->logD(Ljava/lang/String;)V

    .line 348
    :cond_0
    invoke-static {v0, p2}, Lcom/xiaopeng/xui/vui/VuiView$XAttr;->access$1402(Lcom/xiaopeng/xui/vui/VuiView$XAttr;I)I

    .line 350
    :try_start_0
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v1

    .line 351
    .local v1, "props":Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    const-string v2, "canVoiceControl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 352
    const-string v2, "canVoiceControl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    .local v2, "canVoiceControl":Z
    if-eqz v2, :cond_1

    .line 354
    return-void

    .line 359
    .end local v1    # "props":Lorg/json/JSONObject;
    .end local v2    # "canVoiceControl":Z
    :cond_1
    goto :goto_0

    .line 357
    :catch_0
    move-exception v1

    .line 358
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 360
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-interface {p0, p1}, Lcom/xiaopeng/xui/vui/VuiView;->updateVui(Landroid/view/View;)V

    .line 362
    :cond_2
    return-void
.end method

.method public updateVui(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 379
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiUpdateType;->UPDATE_VIEW_ATTRIBUTE:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-interface {p0, p1, v0}, Lcom/xiaopeng/xui/vui/VuiView;->updateVui(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    .line 380
    return-void
.end method

.method public updateVui(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "updateType"    # Lcom/xiaopeng/vui/commons/VuiUpdateType;

    .line 383
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiElementChangedListener()Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    move-result-object v0

    .line 384
    .local v0, "listener":Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;
    if-eqz v0, :cond_0

    .line 385
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xui/vui/utils/VuiViewUtils;->updateVui(Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    goto :goto_0

    .line 387
    :cond_0
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    const-string v1, "listener is null"

    invoke-interface {p0, v1}, Lcom/xiaopeng/xui/vui/VuiView;->logD(Ljava/lang/String;)V

    .line 391
    :cond_1
    :goto_0
    return-void
.end method
