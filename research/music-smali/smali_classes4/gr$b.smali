.class public final Lgr$b;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lgr$c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1397
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 1398
    new-instance v0, Lgr$f;

    invoke-direct {v0}, Lgr$f;-><init>()V

    iput-object v0, p0, Lgr$b;->a:Lgr$c;

    goto :goto_0

    .line 1399
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 1400
    new-instance v0, Lgr$e;

    invoke-direct {v0}, Lgr$e;-><init>()V

    iput-object v0, p0, Lgr$b;->a:Lgr$c;

    goto :goto_0

    .line 1401
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_2

    .line 1402
    new-instance v0, Lgr$d;

    invoke-direct {v0}, Lgr$d;-><init>()V

    iput-object v0, p0, Lgr$b;->a:Lgr$c;

    goto :goto_0

    .line 1404
    :cond_2
    new-instance v0, Lgr$c;

    invoke-direct {v0}, Lgr$c;-><init>()V

    iput-object v0, p0, Lgr$b;->a:Lgr$c;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lgr;)V
    .locals 2

    .line 1413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1414
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 1415
    new-instance v0, Lgr$f;

    invoke-direct {v0, p1}, Lgr$f;-><init>(Lgr;)V

    iput-object v0, p0, Lgr$b;->a:Lgr$c;

    goto :goto_0

    .line 1416
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 1417
    new-instance v0, Lgr$e;

    invoke-direct {v0, p1}, Lgr$e;-><init>(Lgr;)V

    iput-object v0, p0, Lgr$b;->a:Lgr$c;

    goto :goto_0

    .line 1418
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_2

    .line 1419
    new-instance v0, Lgr$d;

    invoke-direct {v0, p1}, Lgr$d;-><init>(Lgr;)V

    iput-object v0, p0, Lgr$b;->a:Lgr$c;

    goto :goto_0

    .line 1421
    :cond_2
    new-instance v0, Lgr$c;

    invoke-direct {v0, p1}, Lgr$c;-><init>(Lgr;)V

    iput-object v0, p0, Lgr$b;->a:Lgr$c;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ldv;)Lgr$b;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1439
    iget-object v0, p0, Lgr$b;->a:Lgr$c;

    invoke-virtual {v0, p1}, Lgr$c;->a(Ldv;)V

    return-object p0
.end method

.method public a()Lgr;
    .locals 1

    .line 1610
    iget-object v0, p0, Lgr$b;->a:Lgr$c;

    invoke-virtual {v0}, Lgr$c;->b()Lgr;

    move-result-object v0

    return-object v0
.end method

.method public b(Ldv;)Lgr$b;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1584
    iget-object v0, p0, Lgr$b;->a:Lgr$c;

    invoke-virtual {v0, p1}, Lgr$c;->e(Ldv;)V

    return-object p0
.end method
