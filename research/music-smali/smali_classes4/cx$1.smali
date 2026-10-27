.class Lcx$1;
.super Ljava/lang/Object;
.source "MotionController.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcx;->a(Landroid/content/Context;ILjava/lang/String;I)Landroid/view/animation/Interpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lan;


# direct methods
.method constructor <init>(Lan;)V
    .locals 0

    .line 1118
    iput-object p1, p0, Lcx$1;->a:Lan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    .line 1121
    iget-object v0, p0, Lcx$1;->a:Lan;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lan;->a(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method
