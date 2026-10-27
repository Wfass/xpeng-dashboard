.class public final Lbyn;
.super Lbyr;
.source "DashDrawer.kt"


# annotations
.annotation runtime Lkotlin/j;
.end annotation


# direct methods
.method public constructor <init>(Lbyu;)V
    .locals 1

    const-string v0, "indicatorOptions"

    invoke-static {p1, v0}, Lccf;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1}, Lbyr;-><init>(Lbyu;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;FF)V
    .locals 0

    const-string p2, "canvas"

    invoke-static {p1, p2}, Lccf;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lbyn;->h()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p0}, Lbyn;->c()Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method
