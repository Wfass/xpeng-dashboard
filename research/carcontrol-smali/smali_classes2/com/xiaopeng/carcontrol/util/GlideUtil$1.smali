.class final Lcom/xiaopeng/carcontrol/util/GlideUtil$1;
.super Ljava/lang/Object;
.source "GlideUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/util/GlideUtil;->asyncLoadSrc(ILandroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$resId:I

.field final synthetic val$viewRef:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(ILjava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$viewRef",
            "val$resId"
        }
    .end annotation

    .line 129
    iput p1, p0, Lcom/xiaopeng/carcontrol/util/GlideUtil$1;->val$resId:I

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/util/GlideUtil$1;->val$viewRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 132
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/util/GlideUtil$1;->val$resId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 133
    new-instance v1, Lcom/xiaopeng/carcontrol/util/GlideUtil$1$1;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/carcontrol/util/GlideUtil$1$1;-><init>(Lcom/xiaopeng/carcontrol/util/GlideUtil$1;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
