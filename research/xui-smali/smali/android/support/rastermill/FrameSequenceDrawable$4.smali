.class Landroid/support/rastermill/FrameSequenceDrawable$4;
.super Ljava/lang/Object;
.source "FrameSequenceDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/rastermill/FrameSequenceDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/rastermill/FrameSequenceDrawable;


# direct methods
.method constructor <init>(Landroid/support/rastermill/FrameSequenceDrawable;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/rastermill/FrameSequenceDrawable;

    .line 249
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceDrawable$4;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 252
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable$4;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable$4;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    iget-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable$4;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-static {v2}, Landroid/support/rastermill/FrameSequenceDrawable;->access$600(Landroid/support/rastermill/FrameSequenceDrawable;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/rastermill/FrameSequenceDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 253
    return-void
.end method
