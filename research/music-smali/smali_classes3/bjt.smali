.class public Lbjt;
.super Ljava/lang/Object;
.source "NetRadioProgramServiceInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 49
    iput-object v0, p0, Lbjt;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lbjt;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    .line 60
    iput-wide p1, p0, Lbjt;->f:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lbjt;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lbjt;->d:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lbjt;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lbjt;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lbjt;->e:Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lbjt;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lbjt;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lbjt;->d:Z

    return v0
.end method

.method public e()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lbjt;->f:J

    return-wide v0
.end method
