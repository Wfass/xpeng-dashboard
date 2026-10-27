.class public Lakg;
.super Ljava/lang/Object;
.source "CornerTreatment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFLakr;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public a(Lakr;FFF)V
    .locals 0

    .line 70
    invoke-virtual {p0, p2, p3, p1}, Lakg;->a(FFLakr;)V

    return-void
.end method

.method public a(Lakr;FFLandroid/graphics/RectF;Lakf;)V
    .locals 0

    .line 98
    invoke-interface {p5, p4}, Lakf;->a(Landroid/graphics/RectF;)F

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lakg;->a(Lakr;FFF)V

    return-void
.end method
