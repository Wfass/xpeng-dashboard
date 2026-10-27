.class Lcim$b;
.super Lcil$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcim$b$a;
    }
.end annotation


# static fields
.field static final b:Z


# instance fields
.field a:[Lcim$b$a;

.field private final c:Lcim;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcim;->u:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "cim"

    invoke-static {v0}, Lcim;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcim;->u:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v0, Lcim;->u:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcim$b;->b:Z

    return-void
.end method

.method constructor <init>(Lcim;II)V
    .locals 1

    iput-object p1, p0, Lcim$b;->c:Lcim;

    invoke-direct {p0, p1, p2, p3}, Lcil$b;-><init>(Lcil;II)V

    add-int/2addr p2, p3

    const/4 p1, 0x1

    shl-int/2addr p1, p2

    new-array p1, p1, [Lcim$b$a;

    iput-object p1, p0, Lcim$b;->a:[Lcim$b$a;

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcim$b;->a:[Lcim$b$a;

    array-length p3, p2

    if-ge p1, p3, :cond_0

    new-instance p3, Lcim$b$a;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcim$b$a;-><init>(Lcim$b;Lcim$1;)V

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static a(Lcim$b;)Lcim;
    .locals 0

    iget-object p0, p0, Lcim$b;->c:Lcim;

    return-object p0
.end method


# virtual methods
.method a(IIIILciq;)I
    .locals 2

    iget-object v0, p0, Lcim$b;->c:Lcim;

    iget-object v0, v0, Lcim;->d:[[S

    invoke-virtual {p5}, Lciq;->b()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcim$b;->c:Lcim;

    iget v1, v1, Lcim;->a:I

    and-int/2addr v1, p4

    aget-short v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcis;->a(II)I

    move-result v0

    invoke-virtual {p0, p3, p4}, Lcim$b;->a(II)I

    move-result p3

    invoke-virtual {p5}, Lciq;->g()Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p2, p0, Lcim$b;->a:[Lcim$b$a;

    aget-object p2, p2, p3

    invoke-virtual {p2, p1}, Lcim$b$a;->a(I)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcim$b;->a:[Lcim$b$a;

    aget-object p3, p4, p3

    invoke-virtual {p3, p1, p2}, Lcim$b$a;->a(II)I

    move-result p1

    :goto_0
    add-int/2addr v0, p1

    return v0
.end method

.method a()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcim$b;->a:[Lcim$b$a;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcim$b$a;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method b()V
    .locals 2

    sget-boolean v0, Lcim$b;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcim$b;->c:Lcim;

    iget v0, v0, Lcim;->s:I

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcim$b;->a:[Lcim$b$a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcim$b$a;->b()V

    return-void
.end method

.method c()V
    .locals 3

    sget-boolean v0, Lcim$b;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcim$b;->c:Lcim;

    iget v0, v0, Lcim;->s:I

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcim$b;->c:Lcim;

    iget-object v0, v0, Lcim;->m:Lcij;

    iget-object v1, p0, Lcim$b;->c:Lcim;

    iget v1, v1, Lcim;->s:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcij;->c(I)I

    move-result v0

    iget-object v1, p0, Lcim$b;->c:Lcim;

    iget-object v1, v1, Lcim;->m:Lcij;

    invoke-virtual {v1}, Lcij;->f()I

    move-result v1

    iget-object v2, p0, Lcim$b;->c:Lcim;

    iget v2, v2, Lcim;->s:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcim$b;->a(II)I

    move-result v0

    iget-object v1, p0, Lcim$b;->a:[Lcim$b$a;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcim$b$a;->b()V

    return-void
.end method
