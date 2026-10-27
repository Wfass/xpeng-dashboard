.class public Landroidx/constraintlayout/core/parser/e;
.super Landroidx/constraintlayout/core/parser/c;
.source "CLNumber.java"


# instance fields
.field a:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/parser/c;-><init>([C)V

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 20
    iput v0, p0, Landroidx/constraintlayout/core/parser/e;->a:F

    .line 27
    iput p1, p0, Landroidx/constraintlayout/core/parser/e;->a:F

    return-void
.end method


# virtual methods
.method public getFloat()F
    .locals 1

    .line 72
    iget v0, p0, Landroidx/constraintlayout/core/parser/e;->a:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/e;->content()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/parser/e;->a:F

    .line 75
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/parser/e;->a:F

    return v0
.end method

.method public getInt()I
    .locals 1

    .line 64
    iget v0, p0, Landroidx/constraintlayout/core/parser/e;->a:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/e;->content()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroidx/constraintlayout/core/parser/e;->a:F

    .line 67
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/parser/e;->a:F

    float-to-int v0, v0

    return v0
.end method

.method protected toFormattedJSON(II)Ljava/lang/String;
    .locals 2

    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/core/parser/e;->addIndent(Ljava/lang/StringBuilder;I)V

    .line 46
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/e;->getFloat()F

    move-result p1

    float-to-int v0, p1

    int-to-float v1, v0

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    .line 49
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 53
    :goto_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected toJSON()Ljava/lang/String;
    .locals 4

    .line 35
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/e;->getFloat()F

    move-result v0

    float-to-int v1, v0

    int-to-float v2, v1

    cmpl-float v2, v2, v0

    const-string v3, ""

    if-nez v2, :cond_0

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 40
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
