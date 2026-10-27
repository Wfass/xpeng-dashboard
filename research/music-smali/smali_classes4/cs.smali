.class public Lcs;
.super Lct;
.source "KeyPosition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcs$a;
    }
.end annotation


# instance fields
.field g:Ljava/lang/String;

.field h:I

.field i:I

.field j:F

.field k:F

.field l:F

.field m:F

.field n:F

.field o:F

.field p:I

.field private r:F

.field private s:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Lct;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcs;->g:Ljava/lang/String;

    .line 47
    sget v0, Lcs;->a:I

    iput v0, p0, Lcs;->h:I

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcs;->i:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 49
    iput v1, p0, Lcs;->j:F

    .line 50
    iput v1, p0, Lcs;->k:F

    .line 51
    iput v1, p0, Lcs;->l:F

    .line 52
    iput v1, p0, Lcs;->m:F

    .line 53
    iput v1, p0, Lcs;->n:F

    .line 54
    iput v1, p0, Lcs;->o:F

    .line 58
    iput v0, p0, Lcs;->p:I

    .line 66
    iput v1, p0, Lcs;->r:F

    .line 67
    iput v1, p0, Lcs;->s:F

    const/4 v0, 0x2

    .line 71
    iput v0, p0, Lcs;->e:I

    return-void
.end method


# virtual methods
.method public a()Lco;
    .locals 1

    .line 399
    new-instance v0, Lcs;

    invoke-direct {v0}, Lcs;-><init>()V

    invoke-virtual {v0, p0}, Lcs;->a(Lco;)Lco;

    move-result-object v0

    return-object v0
.end method

.method public a(Lco;)Lco;
    .locals 1

    .line 382
    invoke-super {p0, p1}, Lct;->a(Lco;)Lco;

    .line 383
    check-cast p1, Lcs;

    .line 384
    iget-object v0, p1, Lcs;->g:Ljava/lang/String;

    iput-object v0, p0, Lcs;->g:Ljava/lang/String;

    .line 385
    iget v0, p1, Lcs;->h:I

    iput v0, p0, Lcs;->h:I

    .line 386
    iget v0, p1, Lcs;->i:I

    iput v0, p0, Lcs;->i:I

    .line 387
    iget v0, p1, Lcs;->j:F

    iput v0, p0, Lcs;->j:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 388
    iput v0, p0, Lcs;->k:F

    .line 389
    iget v0, p1, Lcs;->l:F

    iput v0, p0, Lcs;->l:F

    .line 390
    iget v0, p1, Lcs;->m:F

    iput v0, p0, Lcs;->m:F

    .line 391
    iget v0, p1, Lcs;->n:F

    iput v0, p0, Lcs;->n:F

    .line 392
    iget v0, p1, Lcs;->o:F

    iput v0, p0, Lcs;->o:F

    .line 393
    iget v0, p1, Lcs;->r:F

    iput v0, p0, Lcs;->r:F

    .line 394
    iget p1, p1, Lcs;->s:F

    iput p1, p0, Lcs;->s:F

    return-object p0
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 76
    sget-object v0, Landroidx/constraintlayout/widget/h$b;->KeyPosition:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 77
    invoke-static {p0, p1}, Lcs$a;->a(Lcs;Landroid/content/res/TypedArray;)V

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lci;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcs;->a()Lco;

    move-result-object v0

    return-object v0
.end method
