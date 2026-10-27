.class public Lci$b;
.super Lci;
.source "ViewSpline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field d:Ljava/lang/String;

.field e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/a;",
            ">;"
        }
    .end annotation
.end field

.field f:[F


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/a;",
            ">;)V"
        }
    .end annotation

    .line 185
    invoke-direct {p0}, Lci;-><init>()V

    const-string v0, ","

    .line 186
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    iput-object p1, p0, Lci$b;->d:Ljava/lang/String;

    .line 187
    iput-object p2, p0, Lci$b;->e:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 11

    .line 191
    iget-object v0, p0, Lci$b;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 192
    iget-object v1, p0, Lci$b;->e:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/a;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/a;->d()I

    move-result v1

    .line 193
    new-array v3, v0, [D

    .line 194
    new-array v4, v1, [F

    iput-object v4, p0, Lci$b;->f:[F

    .line 195
    filled-new-array {v0, v1}, [I

    move-result-object v1

    const-class v4, D

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_1

    .line 198
    iget-object v5, p0, Lci$b;->e:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 199
    iget-object v6, p0, Lci$b;->e:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/a;

    int-to-double v7, v5

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v7, v9

    .line 201
    aput-wide v7, v3, v4

    .line 202
    iget-object v5, p0, Lci$b;->f:[F

    invoke-virtual {v6, v5}, Landroidx/constraintlayout/widget/a;->a([F)V

    move v5, v2

    .line 203
    :goto_1
    iget-object v6, p0, Lci$b;->f:[F

    array-length v7, v6

    if-ge v5, v7, :cond_0

    .line 204
    aget-object v7, v1, v4

    aget v6, v6, v5

    float-to-double v8, v6

    aput-wide v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 208
    :cond_1
    invoke-static {p1, v3, v1}, Lam;->a(I[D[[D)Lam;

    move-result-object p1

    iput-object p1, p0, Lci$b;->a:Lam;

    return-void
.end method

.method public a(IF)V
    .locals 0

    .line 212
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "don\'t call for custom attribute call setPoint(pos, ConstraintAttribute)"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(ILandroidx/constraintlayout/widget/a;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lci$b;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/view/View;F)V
    .locals 3

    .line 221
    iget-object v0, p0, Lci$b;->a:Lam;

    float-to-double v1, p2

    iget-object p2, p0, Lci$b;->f:[F

    invoke-virtual {v0, v1, v2, p2}, Lam;->a(D[F)V

    .line 222
    iget-object p2, p0, Lci$b;->e:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/a;

    iget-object v0, p0, Lci$b;->f:[F

    invoke-static {p2, p1, v0}, Lcf;->a(Landroidx/constraintlayout/widget/a;Landroid/view/View;[F)V

    return-void
.end method
