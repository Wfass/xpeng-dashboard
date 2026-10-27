.class Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$MyStateChangeListener;
.super Ljava/lang/Object;
.source "XTouchTargetUtils.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyStateChangeListener"
.end annotation


# static fields
.field private static msCount:I


# instance fields
.field private touchDelegate:Lcom/xiaopeng/xui/view/touch/XTouchDelegate;

.field private touchDelegateGroup:Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/view/touch/XTouchDelegate;Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;)V
    .locals 0

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p1, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$MyStateChangeListener;->touchDelegate:Lcom/xiaopeng/xui/view/touch/XTouchDelegate;

    .line 272
    iput-object p2, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$MyStateChangeListener;->touchDelegateGroup:Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;

    .line 273
    sget p1, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$MyStateChangeListener;->msCount:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$MyStateChangeListener;->msCount:I

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 277
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 278
    sget v0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$MyStateChangeListener;->msCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$MyStateChangeListener;->msCount:I

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " MyStateChangeListener finalize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$MyStateChangeListener;->msCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "xpui-touch"

    invoke-static {v1, v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 289
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$MyStateChangeListener;->touchDelegateGroup:Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;

    iget-object v1, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$MyStateChangeListener;->touchDelegate:Lcom/xiaopeng/xui/view/touch/XTouchDelegate;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;->removeTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  MyStateChangeListener onViewDetachedFromWindow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils;->access$000(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 292
    iput-object p1, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$MyStateChangeListener;->touchDelegateGroup:Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;

    .line 293
    iput-object p1, p0, Lcom/xiaopeng/xui/view/touch/XTouchTargetUtils$MyStateChangeListener;->touchDelegate:Lcom/xiaopeng/xui/view/touch/XTouchDelegate;

    return-void
.end method
