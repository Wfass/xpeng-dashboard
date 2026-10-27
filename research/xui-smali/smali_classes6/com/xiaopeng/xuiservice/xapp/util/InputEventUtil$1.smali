.class Lcom/xiaopeng/xuiservice/xapp/util/InputEventUtil$1;
.super Ljava/lang/Object;
.source "InputEventUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/util/InputEventUtil;->dispatchTouchEvent(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/util/InputEventUtil$1;->val$x:I

    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/util/InputEventUtil$1;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 87
    const-string v0, "InputEventUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTouchEvent x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/util/InputEventUtil$1;->val$x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/util/InputEventUtil$1;->val$y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/util/InputEventUtil;->access$000()Landroid/app/Instrumentation;

    move-result-object v0

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget v5, p0, Lcom/xiaopeng/xuiservice/xapp/util/InputEventUtil$1;->val$x:I

    int-to-float v6, v5

    iget v5, p0, Lcom/xiaopeng/xuiservice/xapp/util/InputEventUtil$1;->val$y:I

    int-to-float v7, v5

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 91
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/util/InputEventUtil;->access$000()Landroid/app/Instrumentation;

    move-result-object v0

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget v5, p0, Lcom/xiaopeng/xuiservice/xapp/util/InputEventUtil$1;->val$x:I

    int-to-float v6, v5

    iget v5, p0, Lcom/xiaopeng/xuiservice/xapp/util/InputEventUtil$1;->val$y:I

    int-to-float v7, v5

    const/4 v5, 0x1

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 95
    return-void
.end method
