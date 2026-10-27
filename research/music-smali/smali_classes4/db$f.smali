.class Ldb$f;
.super Ljava/lang/Object;
.source "MotionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:I

.field d:I

.field final e:Ljava/lang/String;

.field final f:Ljava/lang/String;

.field final g:Ljava/lang/String;

.field final h:Ljava/lang/String;

.field final synthetic i:Ldb;


# direct methods
.method constructor <init>(Ldb;)V
    .locals 0

    .line 1601
    iput-object p1, p0, Ldb$f;->i:Ldb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 1602
    iput p1, p0, Ldb$f;->a:F

    .line 1603
    iput p1, p0, Ldb$f;->b:F

    const/4 p1, -0x1

    .line 1604
    iput p1, p0, Ldb$f;->c:I

    .line 1605
    iput p1, p0, Ldb$f;->d:I

    const-string p1, "motion.progress"

    .line 1606
    iput-object p1, p0, Ldb$f;->e:Ljava/lang/String;

    const-string p1, "motion.velocity"

    .line 1607
    iput-object p1, p0, Ldb$f;->f:Ljava/lang/String;

    const-string p1, "motion.StartState"

    .line 1608
    iput-object p1, p0, Ldb$f;->g:Ljava/lang/String;

    const-string p1, "motion.EndState"

    .line 1609
    iput-object p1, p0, Ldb$f;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .line 1612
    iget v0, p0, Ldb$f;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Ldb$f;->d:I

    if-eq v0, v1, :cond_3

    .line 1613
    :cond_0
    iget v0, p0, Ldb$f;->c:I

    if-ne v0, v1, :cond_1

    .line 1614
    iget-object v0, p0, Ldb$f;->i:Ldb;

    iget v2, p0, Ldb$f;->d:I

    invoke-virtual {v0, v2}, Ldb;->b(I)V

    goto :goto_0

    .line 1615
    :cond_1
    iget v2, p0, Ldb$f;->d:I

    if-ne v2, v1, :cond_2

    .line 1616
    iget-object v2, p0, Ldb$f;->i:Ldb;

    invoke-virtual {v2, v0, v1, v1}, Ldb;->setState(III)V

    goto :goto_0

    .line 1618
    :cond_2
    iget-object v3, p0, Ldb$f;->i:Ldb;

    invoke-virtual {v3, v0, v2}, Ldb;->a(II)V

    .line 1620
    :goto_0
    iget-object v0, p0, Ldb$f;->i:Ldb;

    sget-object v2, Ldb$h;->SETUP:Ldb$h;

    invoke-virtual {v0, v2}, Ldb;->setState(Ldb$h;)V

    .line 1622
    :cond_3
    iget v0, p0, Ldb$f;->b:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1623
    iget v0, p0, Ldb$f;->a:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 1626
    :cond_4
    iget-object v0, p0, Ldb$f;->i:Ldb;

    iget v1, p0, Ldb$f;->a:F

    invoke-virtual {v0, v1}, Ldb;->setProgress(F)V

    return-void

    .line 1629
    :cond_5
    iget-object v0, p0, Ldb$f;->i:Ldb;

    iget v2, p0, Ldb$f;->a:F

    iget v3, p0, Ldb$f;->b:F

    invoke-virtual {v0, v2, v3}, Ldb;->a(FF)V

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 1630
    iput v0, p0, Ldb$f;->a:F

    .line 1631
    iput v0, p0, Ldb$f;->b:F

    .line 1632
    iput v1, p0, Ldb$f;->c:I

    .line 1633
    iput v1, p0, Ldb$f;->d:I

    return-void
.end method

.method public a(F)V
    .locals 0

    .line 1653
    iput p1, p0, Ldb$f;->a:F

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 1657
    iput p1, p0, Ldb$f;->d:I

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "motion.progress"

    .line 1646
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Ldb$f;->a:F

    const-string v0, "motion.velocity"

    .line 1647
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Ldb$f;->b:F

    const-string v0, "motion.StartState"

    .line 1648
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ldb$f;->c:I

    const-string v0, "motion.EndState"

    .line 1649
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ldb$f;->d:I

    return-void
.end method

.method public b()Landroid/os/Bundle;
    .locals 3

    .line 1637
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1638
    iget v1, p0, Ldb$f;->a:F

    const-string v2, "motion.progress"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1639
    iget v1, p0, Ldb$f;->b:F

    const-string v2, "motion.velocity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1640
    iget v1, p0, Ldb$f;->c:I

    const-string v2, "motion.StartState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1641
    iget v1, p0, Ldb$f;->d:I

    const-string v2, "motion.EndState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public b(F)V
    .locals 0

    .line 1661
    iput p1, p0, Ldb$f;->b:F

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1665
    iput p1, p0, Ldb$f;->c:I

    return-void
.end method

.method public c()V
    .locals 1

    .line 1669
    iget-object v0, p0, Ldb$f;->i:Ldb;

    invoke-static {v0}, Ldb;->b(Ldb;)I

    move-result v0

    iput v0, p0, Ldb$f;->d:I

    .line 1670
    iget-object v0, p0, Ldb$f;->i:Ldb;

    invoke-static {v0}, Ldb;->c(Ldb;)I

    move-result v0

    iput v0, p0, Ldb$f;->c:I

    .line 1671
    iget-object v0, p0, Ldb$f;->i:Ldb;

    invoke-virtual {v0}, Ldb;->getVelocity()F

    move-result v0

    iput v0, p0, Ldb$f;->b:F

    .line 1672
    iget-object v0, p0, Ldb$f;->i:Ldb;

    invoke-virtual {v0}, Ldb;->getProgress()F

    move-result v0

    iput v0, p0, Ldb$f;->a:F

    return-void
.end method
