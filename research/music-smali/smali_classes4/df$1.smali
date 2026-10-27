.class Ldf$1;
.super Ljava/lang/Object;
.source "ViewTransition.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldf;->a(Landroid/content/Context;)Landroid/view/animation/Interpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lan;


# direct methods
.method constructor <init>(Ldf;Lan;)V
    .locals 0

    .line 185
    iput-object p2, p0, Ldf$1;->a:Lan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    .line 188
    iget-object v0, p0, Ldf$1;->a:Lan;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lan;->a(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method
