.class Lch$b;
.super Lch;
.source "ViewOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field c:[F

.field protected d:Landroidx/constraintlayout/widget/a;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 163
    invoke-direct {p0}, Lch;-><init>()V

    const/4 v0, 0x1

    .line 164
    new-array v0, v0, [F

    iput-object v0, p0, Lch$b;->c:[F

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;F)V
    .locals 2

    .line 173
    iget-object v0, p0, Lch$b;->c:[F

    invoke-virtual {p0, p2}, Lch$b;->a(F)F

    move-result p2

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 174
    iget-object p2, p0, Lch$b;->d:Landroidx/constraintlayout/widget/a;

    iget-object v0, p0, Lch$b;->c:[F

    invoke-static {p2, p1, v0}, Lcf;->a(Landroidx/constraintlayout/widget/a;Landroid/view/View;[F)V

    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0

    .line 168
    check-cast p1, Landroidx/constraintlayout/widget/a;

    iput-object p1, p0, Lch$b;->d:Landroidx/constraintlayout/widget/a;

    return-void
.end method
