.class Landroid/support/rastermill/FrameSequenceController$1;
.super Ljava/lang/Object;
.source "FrameSequenceController.java"

# interfaces
.implements Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/rastermill/FrameSequenceController;->applyInternal(Landroid/support/rastermill/loader/ILoader;Landroid/support/rastermill/FrameSequenceDrawable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/rastermill/FrameSequenceController;


# direct methods
.method constructor <init>(Landroid/support/rastermill/FrameSequenceController;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/rastermill/FrameSequenceController;

    .line 326
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceController$1;->this$0:Landroid/support/rastermill/FrameSequenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Landroid/support/rastermill/FrameSequenceDrawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/support/rastermill/FrameSequenceDrawable;

    .line 329
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceController$1;->this$0:Landroid/support/rastermill/FrameSequenceController;

    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceController;->access$000(Landroid/support/rastermill/FrameSequenceController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceUtil;->destroy(Landroid/widget/ImageView;)V

    .line 330
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceController$1;->this$0:Landroid/support/rastermill/FrameSequenceController;

    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceController;->access$100(Landroid/support/rastermill/FrameSequenceController;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 331
    .local v0, "finishDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController$1;->this$0:Landroid/support/rastermill/FrameSequenceController;

    invoke-static {v1}, Landroid/support/rastermill/FrameSequenceController;->access$000(Landroid/support/rastermill/FrameSequenceController;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/support/rastermill/FrameSequenceController;->setImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController$1;->this$0:Landroid/support/rastermill/FrameSequenceController;

    invoke-static {v1}, Landroid/support/rastermill/FrameSequenceController;->access$200(Landroid/support/rastermill/FrameSequenceController;)Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 333
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController$1;->this$0:Landroid/support/rastermill/FrameSequenceController;

    invoke-static {v1}, Landroid/support/rastermill/FrameSequenceController;->access$200(Landroid/support/rastermill/FrameSequenceController;)Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;->onFinished(Landroid/support/rastermill/FrameSequenceDrawable;)V

    .line 335
    :cond_0
    return-void
.end method
