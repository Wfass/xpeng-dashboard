.class public Landroidx/constraintlayout/widget/d$a;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/d$a$a;
    }
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field public final c:Landroidx/constraintlayout/widget/d$d;

.field public final d:Landroidx/constraintlayout/widget/d$c;

.field public final e:Landroidx/constraintlayout/widget/d$b;

.field public final f:Landroidx/constraintlayout/widget/d$e;

.field public g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/a;",
            ">;"
        }
    .end annotation
.end field

.field h:Landroidx/constraintlayout/widget/d$a$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1830
    new-instance v0, Landroidx/constraintlayout/widget/d$d;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/d$d;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    .line 1831
    new-instance v0, Landroidx/constraintlayout/widget/d$c;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/d$c;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    .line 1832
    new-instance v0, Landroidx/constraintlayout/widget/d$b;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/d$b;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    .line 1833
    new-instance v0, Landroidx/constraintlayout/widget/d$e;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/d$e;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    .line 1834
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/d$a;->g:Ljava/util/HashMap;

    return-void
.end method

.method private a(ILandroidx/constraintlayout/widget/ConstraintLayout$a;)V
    .locals 1

    .line 2018
    iput p1, p0, Landroidx/constraintlayout/widget/d$a;->a:I

    .line 2019
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->e:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->j:I

    .line 2020
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->f:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->k:I

    .line 2021
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->g:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->l:I

    .line 2022
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->h:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->m:I

    .line 2023
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->i:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->n:I

    .line 2024
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->j:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->o:I

    .line 2025
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->k:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->p:I

    .line 2026
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->q:I

    .line 2027
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->m:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->r:I

    .line 2028
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->n:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->s:I

    .line 2029
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->o:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->t:I

    .line 2030
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->s:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->u:I

    .line 2031
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->t:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->v:I

    .line 2032
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->u:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->w:I

    .line 2033
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->v:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->x:I

    .line 2035
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->G:F

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->y:F

    .line 2036
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->H:F

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->z:F

    .line 2037
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->I:Ljava/lang/String;

    iput-object v0, p1, Landroidx/constraintlayout/widget/d$b;->A:Ljava/lang/String;

    .line 2039
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->p:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->B:I

    .line 2040
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->q:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->C:I

    .line 2041
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->r:F

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->D:F

    .line 2043
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->X:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->E:I

    .line 2044
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Y:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->F:I

    .line 2045
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Z:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->G:I

    .line 2046
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->c:F

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->h:F

    .line 2047
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->f:I

    .line 2048
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->b:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->g:I

    .line 2049
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->width:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->d:I

    .line 2050
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->height:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->e:I

    .line 2051
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->leftMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->H:I

    .line 2052
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->rightMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->I:I

    .line 2053
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->topMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->J:I

    .line 2054
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->bottomMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->K:I

    .line 2055
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->D:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->N:I

    .line 2056
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->M:F

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->V:F

    .line 2057
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->L:F

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->W:F

    .line 2058
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->O:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->Y:I

    .line 2059
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->N:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->X:I

    .line 2060
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-boolean v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->aa:Z

    iput-boolean v0, p1, Landroidx/constraintlayout/widget/d$b;->an:Z

    .line 2061
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-boolean v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->ab:Z

    iput-boolean v0, p1, Landroidx/constraintlayout/widget/d$b;->ao:Z

    .line 2062
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->P:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->Z:I

    .line 2063
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Q:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->aa:I

    .line 2064
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->T:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->ab:I

    .line 2065
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->U:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->ac:I

    .line 2066
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->R:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->ad:I

    .line 2067
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->S:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->ae:I

    .line 2068
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->V:F

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->af:F

    .line 2069
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->W:F

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->ag:F

    .line 2070
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->ac:Ljava/lang/String;

    iput-object v0, p1, Landroidx/constraintlayout/widget/d$b;->am:Ljava/lang/String;

    .line 2071
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->x:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->P:I

    .line 2072
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->z:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->R:I

    .line 2073
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->w:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->O:I

    .line 2074
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->y:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->Q:I

    .line 2075
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->A:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->T:I

    .line 2076
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->B:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->S:I

    .line 2077
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->C:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->U:I

    .line 2078
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->ad:I

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->aq:I

    .line 2080
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_0

    .line 2082
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->getMarginEnd()I

    move-result v0

    iput v0, p1, Landroidx/constraintlayout/widget/d$b;->L:I

    .line 2083
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->getMarginStart()I

    move-result p2

    iput p2, p1, Landroidx/constraintlayout/widget/d$b;->M:I

    :cond_0
    return-void
.end method

.method private a(ILandroidx/constraintlayout/widget/e$a;)V
    .locals 1

    .line 2001
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/d$a;->a(ILandroidx/constraintlayout/widget/ConstraintLayout$a;)V

    .line 2002
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    iget v0, p2, Landroidx/constraintlayout/widget/e$a;->ax:F

    iput v0, p1, Landroidx/constraintlayout/widget/d$d;->d:F

    .line 2003
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v0, p2, Landroidx/constraintlayout/widget/e$a;->aA:F

    iput v0, p1, Landroidx/constraintlayout/widget/d$e;->b:F

    .line 2004
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v0, p2, Landroidx/constraintlayout/widget/e$a;->aB:F

    iput v0, p1, Landroidx/constraintlayout/widget/d$e;->c:F

    .line 2005
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v0, p2, Landroidx/constraintlayout/widget/e$a;->aC:F

    iput v0, p1, Landroidx/constraintlayout/widget/d$e;->d:F

    .line 2006
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v0, p2, Landroidx/constraintlayout/widget/e$a;->aD:F

    iput v0, p1, Landroidx/constraintlayout/widget/d$e;->e:F

    .line 2007
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v0, p2, Landroidx/constraintlayout/widget/e$a;->aE:F

    iput v0, p1, Landroidx/constraintlayout/widget/d$e;->f:F

    .line 2008
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v0, p2, Landroidx/constraintlayout/widget/e$a;->aF:F

    iput v0, p1, Landroidx/constraintlayout/widget/d$e;->g:F

    .line 2009
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v0, p2, Landroidx/constraintlayout/widget/e$a;->aG:F

    iput v0, p1, Landroidx/constraintlayout/widget/d$e;->h:F

    .line 2010
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v0, p2, Landroidx/constraintlayout/widget/e$a;->aH:F

    iput v0, p1, Landroidx/constraintlayout/widget/d$e;->j:F

    .line 2011
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v0, p2, Landroidx/constraintlayout/widget/e$a;->aI:F

    iput v0, p1, Landroidx/constraintlayout/widget/d$e;->k:F

    .line 2012
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v0, p2, Landroidx/constraintlayout/widget/e$a;->aJ:F

    iput v0, p1, Landroidx/constraintlayout/widget/d$e;->l:F

    .line 2013
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v0, p2, Landroidx/constraintlayout/widget/e$a;->az:F

    iput v0, p1, Landroidx/constraintlayout/widget/d$e;->n:F

    .line 2014
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget-boolean p2, p2, Landroidx/constraintlayout/widget/e$a;->ay:Z

    iput-boolean p2, p1, Landroidx/constraintlayout/widget/d$e;->m:Z

    return-void
.end method

.method private a(Landroidx/constraintlayout/widget/b;ILandroidx/constraintlayout/widget/e$a;)V
    .locals 0

    .line 1990
    invoke-direct {p0, p2, p3}, Landroidx/constraintlayout/widget/d$a;->a(ILandroidx/constraintlayout/widget/e$a;)V

    .line 1991
    instance-of p2, p1, Landroidx/constraintlayout/widget/Barrier;

    if-eqz p2, :cond_0

    .line 1992
    iget-object p2, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    const/4 p3, 0x1

    iput p3, p2, Landroidx/constraintlayout/widget/d$b;->aj:I

    .line 1993
    check-cast p1, Landroidx/constraintlayout/widget/Barrier;

    .line 1994
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/Barrier;->getType()I

    move-result p3

    iput p3, p2, Landroidx/constraintlayout/widget/d$b;->ah:I

    .line 1995
    iget-object p2, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/Barrier;->getReferencedIds()[I

    move-result-object p3

    iput-object p3, p2, Landroidx/constraintlayout/widget/d$b;->ak:[I

    .line 1996
    iget-object p2, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/Barrier;->getMargin()I

    move-result p1

    iput p1, p2, Landroidx/constraintlayout/widget/d$b;->ai:I

    :cond_0
    return-void
.end method

.method static synthetic a(Landroidx/constraintlayout/widget/d$a;ILandroidx/constraintlayout/widget/ConstraintLayout$a;)V
    .locals 0

    .line 1827
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/d$a;->a(ILandroidx/constraintlayout/widget/ConstraintLayout$a;)V

    return-void
.end method

.method static synthetic a(Landroidx/constraintlayout/widget/d$a;ILandroidx/constraintlayout/widget/e$a;)V
    .locals 0

    .line 1827
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/d$a;->a(ILandroidx/constraintlayout/widget/e$a;)V

    return-void
.end method

.method static synthetic a(Landroidx/constraintlayout/widget/d$a;Landroidx/constraintlayout/widget/b;ILandroidx/constraintlayout/widget/e$a;)V
    .locals 0

    .line 1827
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/d$a;->a(Landroidx/constraintlayout/widget/b;ILandroidx/constraintlayout/widget/e$a;)V

    return-void
.end method


# virtual methods
.method public a()Landroidx/constraintlayout/widget/d$a;
    .locals 3

    .line 1979
    new-instance v0, Landroidx/constraintlayout/widget/d$a;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/d$a;-><init>()V

    .line 1980
    iget-object v1, v0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v2, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/d$b;->a(Landroidx/constraintlayout/widget/d$b;)V

    .line 1981
    iget-object v1, v0, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget-object v2, p0, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/d$c;->a(Landroidx/constraintlayout/widget/d$c;)V

    .line 1982
    iget-object v1, v0, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    iget-object v2, p0, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/d$d;->a(Landroidx/constraintlayout/widget/d$d;)V

    .line 1983
    iget-object v1, v0, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget-object v2, p0, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/d$e;->a(Landroidx/constraintlayout/widget/d$e;)V

    .line 1984
    iget v1, p0, Landroidx/constraintlayout/widget/d$a;->a:I

    iput v1, v0, Landroidx/constraintlayout/widget/d$a;->a:I

    .line 1985
    iget-object v1, p0, Landroidx/constraintlayout/widget/d$a;->h:Landroidx/constraintlayout/widget/d$a$a;

    iput-object v1, v0, Landroidx/constraintlayout/widget/d$a;->h:Landroidx/constraintlayout/widget/d$a$a;

    return-object v0
.end method

.method public a(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V
    .locals 2

    .line 2088
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->j:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->e:I

    .line 2089
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->k:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->f:I

    .line 2090
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->l:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->g:I

    .line 2091
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->m:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->h:I

    .line 2093
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->n:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->i:I

    .line 2094
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->o:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->j:I

    .line 2095
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->p:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->k:I

    .line 2096
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->q:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l:I

    .line 2098
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->r:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->m:I

    .line 2099
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->s:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->n:I

    .line 2100
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->t:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->o:I

    .line 2102
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->u:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->s:I

    .line 2103
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->v:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->t:I

    .line 2104
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->w:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->u:I

    .line 2105
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->x:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->v:I

    .line 2107
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->H:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->leftMargin:I

    .line 2108
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->I:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->rightMargin:I

    .line 2109
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->J:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->topMargin:I

    .line 2110
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->K:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->bottomMargin:I

    .line 2111
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->T:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->A:I

    .line 2112
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->S:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->B:I

    .line 2113
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->P:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->x:I

    .line 2114
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->R:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->z:I

    .line 2116
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->y:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->G:F

    .line 2117
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->z:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->H:F

    .line 2119
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->B:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->p:I

    .line 2120
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->C:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->q:I

    .line 2121
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->D:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->r:F

    .line 2123
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v0, v0, Landroidx/constraintlayout/widget/d$b;->A:Ljava/lang/String;

    iput-object v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->I:Ljava/lang/String;

    .line 2124
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->E:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->X:I

    .line 2125
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->F:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Y:I

    .line 2126
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->V:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->M:F

    .line 2127
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->W:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->L:F

    .line 2128
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->Y:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->O:I

    .line 2129
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->X:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->N:I

    .line 2130
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/d$b;->an:Z

    iput-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->aa:Z

    .line 2131
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/d$b;->ao:Z

    iput-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->ab:Z

    .line 2132
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->Z:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->P:I

    .line 2133
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->aa:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Q:I

    .line 2134
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->ab:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->T:I

    .line 2135
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->ac:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->U:I

    .line 2136
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->ad:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->R:I

    .line 2137
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->ae:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->S:I

    .line 2138
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->af:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->V:F

    .line 2139
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->ag:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->W:F

    .line 2140
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->G:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Z:I

    .line 2141
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->h:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->c:F

    .line 2142
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->f:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:I

    .line 2143
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->g:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->b:I

    .line 2144
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->d:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->width:I

    .line 2145
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->e:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->height:I

    .line 2146
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v0, v0, Landroidx/constraintlayout/widget/d$b;->am:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2147
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v0, v0, Landroidx/constraintlayout/widget/d$b;->am:Ljava/lang/String;

    iput-object v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->ac:Ljava/lang/String;

    .line 2149
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->aq:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->ad:I

    .line 2151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 2152
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->M:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->setMarginStart(I)V

    .line 2153
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v0, v0, Landroidx/constraintlayout/widget/d$b;->L:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->setMarginEnd(I)V

    .line 2156
    :cond_1
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a()V

    return-void
.end method

.method public a(Landroidx/constraintlayout/widget/d$a;)V
    .locals 1

    .line 1934
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->h:Landroidx/constraintlayout/widget/d$a$a;

    if-eqz v0, :cond_0

    .line 1935
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/d$a$a;->a(Landroidx/constraintlayout/widget/d$a;)V

    :cond_0
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1827
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/d$a;->a()Landroidx/constraintlayout/widget/d$a;

    move-result-object v0

    return-object v0
.end method
