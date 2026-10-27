.class public final synthetic Landroid/view/-$$Lambda$JUlU7_LUmlvqtRGSI6qDg5NUq28;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$JUlU7_LUmlvqtRGSI6qDg5NUq28;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/view/-$$Lambda$JUlU7_LUmlvqtRGSI6qDg5NUq28;->f$0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->updateSystemGestureExclusionRects()V

    return-void
.end method
