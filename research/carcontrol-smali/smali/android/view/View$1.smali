.class Landroid/view/View$1;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Landroid/graphics/RenderNode$PositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 11668
    iput-object p1, p0, Landroid/view/View$1;->this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public positionChanged(JIIII)V
    .locals 0

    .line 11671
    iget-object p1, p0, Landroid/view/View$1;->this$0:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->postUpdateSystemGestureExclusionRects()V

    return-void
.end method

.method public positionLost(J)V
    .locals 0

    .line 11676
    iget-object p1, p0, Landroid/view/View$1;->this$0:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->postUpdateSystemGestureExclusionRects()V

    return-void
.end method
