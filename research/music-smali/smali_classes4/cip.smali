.class final Lcip;
.super Ljava/lang/Object;


# instance fields
.field final a:Lciq;

.field final b:[I

.field c:I

.field d:I

.field e:I

.field f:Z

.field g:Z

.field h:I

.field i:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lciq;

    invoke-direct {v0}, Lciq;-><init>()V

    iput-object v0, p0, Lcip;->a:Lciq;

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcip;->b:[I

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcip;->c:I

    return-void
.end method

.method a(III)V
    .locals 0

    iput p1, p0, Lcip;->c:I

    iput p2, p0, Lcip;->d:I

    iput p3, p0, Lcip;->e:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcip;->f:Z

    return-void
.end method

.method a(IIIII)V
    .locals 0

    iput p1, p0, Lcip;->c:I

    add-int/2addr p4, p2

    const/4 p1, 0x1

    add-int/2addr p4, p1

    iput p4, p0, Lcip;->d:I

    iput p5, p0, Lcip;->e:I

    iput-boolean p1, p0, Lcip;->f:Z

    iput-boolean p1, p0, Lcip;->g:Z

    iput p2, p0, Lcip;->h:I

    iput p3, p0, Lcip;->i:I

    return-void
.end method

.method b(III)V
    .locals 0

    iput p1, p0, Lcip;->c:I

    const/4 p1, 0x1

    add-int/2addr p2, p1

    iput p2, p0, Lcip;->d:I

    iput p3, p0, Lcip;->e:I

    iput-boolean p1, p0, Lcip;->f:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcip;->g:Z

    return-void
.end method
