.class public Lata;
.super Ljava/lang/Object;
.source "DataDirtyModelFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lata$a;
    }
.end annotation


# instance fields
.field private a:Lasx;

.field private b:Latd;

.field private c:Lath;

.field private d:Latf;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lasx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lasx;-><init>(Z)V

    iput-object v0, p0, Lata;->a:Lasx;

    .line 17
    new-instance v0, Latd;

    invoke-direct {v0, v1}, Latd;-><init>(Z)V

    iput-object v0, p0, Lata;->b:Latd;

    .line 19
    new-instance v0, Lath;

    invoke-direct {v0, v1}, Lath;-><init>(Z)V

    iput-object v0, p0, Lata;->c:Lath;

    .line 21
    new-instance v0, Latf;

    invoke-direct {v0, v1}, Latf;-><init>(Z)V

    iput-object v0, p0, Lata;->d:Latf;

    return-void
.end method

.method synthetic constructor <init>(Lata$1;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lata;-><init>()V

    return-void
.end method

.method public static a()Lata;
    .locals 1

    .line 28
    sget-object v0, Lata$a;->a:Lata;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/b;
    .locals 1

    const-string v0, "FROM_MAIN"

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 36
    iget-object p1, p0, Lata;->a:Lasx;

    return-object p1

    .line 38
    :cond_0
    new-instance p1, Lasx;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lasx;-><init>(Z)V

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/b;
    .locals 1

    const-string v0, "FROM_MAIN"

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 43
    iget-object p1, p0, Lata;->b:Latd;

    return-object p1

    .line 45
    :cond_0
    new-instance p1, Latd;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Latd;-><init>(Z)V

    return-object p1
.end method

.method public b()V
    .locals 4

    .line 63
    iget-object v0, p0, Lata;->b:Latd;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Latd;->a(ZZ[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lata;->a:Lasx;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1, v2}, Lasx;->a(ZZ[Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lata;->c:Lath;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1, v2}, Lath;->a(ZZ[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lata;->d:Latf;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1, v2}, Latf;->a(ZZ[Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/String;)Lath;
    .locals 1

    const-string v0, "FROM_MAIN"

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p0, Lata;->c:Lath;

    return-object p1

    .line 52
    :cond_0
    new-instance p1, Lath;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lath;-><init>(Z)V

    return-object p1
.end method

.method public c()V
    .locals 4

    .line 70
    iget-object v0, p0, Lata;->b:Latd;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Latd;->a(ZZ[Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lata;->a:Lasx;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1, v2}, Lasx;->a(ZZ[Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/String;)Latf;
    .locals 1

    const-string v0, "FROM_MAIN"

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lata;->d:Latf;

    return-object p1

    .line 59
    :cond_0
    new-instance p1, Latf;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Latf;-><init>(Z)V

    return-object p1
.end method

.method public d()V
    .locals 4

    .line 75
    iget-object v0, p0, Lata;->c:Lath;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lath;->a(ZZ[Ljava/lang/Object;)V

    return-void
.end method
