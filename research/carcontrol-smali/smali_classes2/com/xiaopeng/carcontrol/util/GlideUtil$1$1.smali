.class Lcom/xiaopeng/carcontrol/util/GlideUtil$1$1;
.super Ljava/lang/Object;
.source "GlideUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/util/GlideUtil$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/util/GlideUtil$1;

.field final synthetic val$drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/util/GlideUtil$1;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$drawable"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/util/GlideUtil$1$1;->this$0:Lcom/xiaopeng/carcontrol/util/GlideUtil$1;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/util/GlideUtil$1$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/util/GlideUtil$1$1;->this$0:Lcom/xiaopeng/carcontrol/util/GlideUtil$1;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/util/GlideUtil$1;->val$viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 138
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/util/GlideUtil$1$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
