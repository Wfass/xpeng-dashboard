.class public Laoz$a;
.super Ljava/lang/Object;
.source "Caton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:Landroid/content/Context;

.field private d:Laoz$c;

.field private e:Z

.field private f:Laoz$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xbb8

    .line 65
    iput-wide v0, p0, Laoz$a;->a:J

    const-wide/16 v0, 0x3e8

    .line 66
    iput-wide v0, p0, Laoz$a;->b:J

    .line 68
    sget-object v0, Laoz;->a:Laoz$c;

    iput-object v0, p0, Laoz$a;->d:Laoz$c;

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Laoz$a;->e:Z

    .line 73
    iput-object p1, p0, Laoz$a;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(J)Laoz$a;
    .locals 0

    .line 77
    iput-wide p1, p0, Laoz$a;->a:J

    return-object p0
.end method

.method public a(Laoz$b;)Laoz$a;
    .locals 0

    .line 97
    iput-object p1, p0, Laoz$a;->f:Laoz$b;

    return-object p0
.end method

.method public a(Laoz$c;)Laoz$a;
    .locals 0

    .line 87
    iput-object p1, p0, Laoz$a;->d:Laoz$c;

    return-object p0
.end method

.method public a(Z)Laoz$a;
    .locals 0

    .line 92
    iput-boolean p1, p0, Laoz$a;->e:Z

    return-object p0
.end method

.method a()Laoz;
    .locals 11

    .line 102
    new-instance v10, Laoz;

    iget-object v1, p0, Laoz$a;->c:Landroid/content/Context;

    iget-wide v2, p0, Laoz$a;->a:J

    iget-wide v4, p0, Laoz$a;->b:J

    iget-object v6, p0, Laoz$a;->d:Laoz$c;

    iget-boolean v7, p0, Laoz$a;->e:Z

    iget-object v8, p0, Laoz$a;->f:Laoz$b;

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Laoz;-><init>(Landroid/content/Context;JJLaoz$c;ZLaoz$b;Laoz$1;)V

    return-object v10
.end method

.method public b(J)Laoz$a;
    .locals 0

    .line 82
    iput-wide p1, p0, Laoz$a;->b:J

    return-object p0
.end method
