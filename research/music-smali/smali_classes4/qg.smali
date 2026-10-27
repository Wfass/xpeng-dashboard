.class public Lqg;
.super Ljava/lang/Object;
.source "FieldInfo.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:J

.field public f:Z

.field public g:[Ljava/lang/String;

.field public h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public j:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public k:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public l:Z

.field public m:Z

.field public n:Ljava/lang/String;

.field public o:Ljava/util/Locale;

.field public p:Ljava/lang/String;

.field public q:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lwk;
    .locals 4

    .line 37
    iget-object v0, p0, Lqg;->k:Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-class v2, Lwk;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    :try_start_0
    iget-object v0, p0, Lqg;->k:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v3, 0x1

    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 41
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwk;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    return-object v1
.end method

.method public b()V
    .locals 4

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lqg;->a:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lqg;->b:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lqg;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 54
    iput v1, p0, Lqg;->d:I

    const-wide/16 v2, 0x0

    .line 55
    iput-wide v2, p0, Lqg;->e:J

    .line 56
    iput-boolean v1, p0, Lqg;->f:Z

    .line 57
    iput-boolean v1, p0, Lqg;->q:Z

    .line 58
    iput-object v0, p0, Lqg;->g:[Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lqg;->h:Ljava/lang/Class;

    .line 60
    iput-object v0, p0, Lqg;->i:Ljava/lang/Class;

    .line 61
    iput-object v0, p0, Lqg;->j:Ljava/lang/Class;

    .line 62
    iput-object v0, p0, Lqg;->k:Ljava/lang/Class;

    .line 63
    iput-boolean v1, p0, Lqg;->l:Z

    .line 64
    iput-boolean v1, p0, Lqg;->m:Z

    .line 65
    iput-object v0, p0, Lqg;->n:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lqg;->o:Ljava/util/Locale;

    .line 67
    iput-object v0, p0, Lqg;->p:Ljava/lang/String;

    return-void
.end method
