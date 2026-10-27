.class public Lawl;
.super Ljava/lang/Object;
.source "DataDirtyModelFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lawl$a;
    }
.end annotation


# instance fields
.field private a:Lawj;

.field private b:Lawp;

.field private c:Lawt;

.field private d:Lawr;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lawj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lawj;-><init>(Z)V

    iput-object v0, p0, Lawl;->a:Lawj;

    .line 14
    new-instance v0, Lawp;

    invoke-direct {v0, v1}, Lawp;-><init>(Z)V

    iput-object v0, p0, Lawl;->b:Lawp;

    .line 16
    new-instance v0, Lawt;

    invoke-direct {v0, v1}, Lawt;-><init>(Z)V

    iput-object v0, p0, Lawl;->c:Lawt;

    .line 18
    new-instance v0, Lawr;

    invoke-direct {v0, v1}, Lawr;-><init>(Z)V

    iput-object v0, p0, Lawl;->d:Lawr;

    return-void
.end method

.method synthetic constructor <init>(Lawl$1;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lawl;-><init>()V

    return-void
.end method

.method public static a()Lawl;
    .locals 1

    .line 25
    sget-object v0, Lawl$a;->a:Lawl;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/b;
    .locals 1

    const-string v0, "FROM_MAIN"

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 33
    iget-object p1, p0, Lawl;->a:Lawj;

    return-object p1

    .line 35
    :cond_0
    new-instance p1, Lawj;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lawj;-><init>(Z)V

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/b;
    .locals 1

    const-string v0, "FROM_MAIN"

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lawl;->b:Lawp;

    return-object p1

    .line 42
    :cond_0
    new-instance p1, Lawp;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lawp;-><init>(Z)V

    return-object p1
.end method

.method public b()V
    .locals 4

    .line 60
    iget-object v0, p0, Lawl;->b:Lawp;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lawp;->a(ZZ[Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lawl;->a:Lawj;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1, v2}, Lawj;->a(ZZ[Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lawl;->c:Lawt;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1, v2}, Lawt;->a(ZZ[Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lawl;->d:Lawr;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1, v2}, Lawr;->a(ZZ[Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/String;)Lawt;
    .locals 1

    const-string v0, "FROM_MAIN"

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 47
    iget-object p1, p0, Lawl;->c:Lawt;

    return-object p1

    .line 49
    :cond_0
    new-instance p1, Lawt;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lawt;-><init>(Z)V

    return-object p1
.end method

.method public c()V
    .locals 4

    .line 67
    iget-object v0, p0, Lawl;->b:Lawp;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lawp;->a(ZZ[Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lawl;->a:Lawj;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1, v2}, Lawj;->a(ZZ[Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/String;)Lawr;
    .locals 1

    const-string v0, "FROM_MAIN"

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lawl;->d:Lawr;

    return-object p1

    .line 56
    :cond_0
    new-instance p1, Lawr;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lawr;-><init>(Z)V

    return-object p1
.end method

.method public d()V
    .locals 4

    .line 72
    iget-object v0, p0, Lawl;->c:Lawt;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lawt;->a(ZZ[Ljava/lang/Object;)V

    return-void
.end method

.method public e()V
    .locals 4

    .line 76
    iget-object v0, p0, Lawl;->d:Lawr;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lawr;->a(ZZ[Ljava/lang/Object;)V

    return-void
.end method
