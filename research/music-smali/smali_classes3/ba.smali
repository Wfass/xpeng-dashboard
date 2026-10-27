.class public Lba;
.super Ljava/lang/Object;
.source "WidgetFrame.java"


# static fields
.field public static n:F = NaNf


# instance fields
.field public a:Lbf;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public o:F

.field public p:F

.field public q:F

.field public r:F

.field public s:I

.field public final t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lba;->a:Lbf;

    const/4 v1, 0x0

    .line 35
    iput v1, p0, Lba;->b:I

    .line 36
    iput v1, p0, Lba;->c:I

    .line 37
    iput v1, p0, Lba;->d:I

    .line 38
    iput v1, p0, Lba;->e:I

    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 42
    iput v2, p0, Lba;->f:F

    .line 43
    iput v2, p0, Lba;->g:F

    .line 45
    iput v2, p0, Lba;->h:F

    .line 46
    iput v2, p0, Lba;->i:F

    .line 47
    iput v2, p0, Lba;->j:F

    .line 49
    iput v2, p0, Lba;->k:F

    .line 50
    iput v2, p0, Lba;->l:F

    .line 51
    iput v2, p0, Lba;->m:F

    .line 54
    iput v2, p0, Lba;->o:F

    .line 55
    iput v2, p0, Lba;->p:F

    .line 57
    iput v2, p0, Lba;->q:F

    .line 58
    iput v2, p0, Lba;->r:F

    .line 60
    iput v1, p0, Lba;->s:I

    .line 62
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lba;->t:Ljava/util/HashMap;

    .line 64
    iput-object v0, p0, Lba;->u:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lbf;)V
    .locals 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lba;->a:Lbf;

    const/4 v1, 0x0

    .line 35
    iput v1, p0, Lba;->b:I

    .line 36
    iput v1, p0, Lba;->c:I

    .line 37
    iput v1, p0, Lba;->d:I

    .line 38
    iput v1, p0, Lba;->e:I

    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 42
    iput v2, p0, Lba;->f:F

    .line 43
    iput v2, p0, Lba;->g:F

    .line 45
    iput v2, p0, Lba;->h:F

    .line 46
    iput v2, p0, Lba;->i:F

    .line 47
    iput v2, p0, Lba;->j:F

    .line 49
    iput v2, p0, Lba;->k:F

    .line 50
    iput v2, p0, Lba;->l:F

    .line 51
    iput v2, p0, Lba;->m:F

    .line 54
    iput v2, p0, Lba;->o:F

    .line 55
    iput v2, p0, Lba;->p:F

    .line 57
    iput v2, p0, Lba;->q:F

    .line 58
    iput v2, p0, Lba;->r:F

    .line 60
    iput v1, p0, Lba;->s:I

    .line 62
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lba;->t:Ljava/util/HashMap;

    .line 64
    iput-object v0, p0, Lba;->u:Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lba;->a:Lbf;

    return-void
.end method
