.class public final Lbys;
.super Lbyr;
.source "RoundRectDrawer.kt"


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
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lccf;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lbys;->h()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lbys;->c()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method
