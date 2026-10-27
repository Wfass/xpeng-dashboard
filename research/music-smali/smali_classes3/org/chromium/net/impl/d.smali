.class public abstract Lorg/chromium/net/impl/d;
.super Lorg/chromium/net/j;
.source "CronetEngineBuilderImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/impl/d$a;,
        Lorg/chromium/net/impl/d$b;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field protected a:J

.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/net/impl/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/net/impl/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private n:J

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^[0-9\\.]*$"

    .line 70
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/chromium/net/impl/d;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 97
    invoke-direct {p0}, Lorg/chromium/net/j;-><init>()V

    .line 77
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/impl/d;->d:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/impl/d;->e:Ljava/util/List;

    const/16 v0, 0x14

    .line 91
    iput v0, p0, Lorg/chromium/net/impl/d;->q:I

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/impl/d;->c:Landroid/content/Context;

    const/4 p1, 0x0

    .line 99
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/d;->c(Z)Lorg/chromium/net/impl/d;

    const/4 v0, 0x1

    .line 100
    invoke-virtual {p0, v0}, Lorg/chromium/net/impl/d;->d(Z)Lorg/chromium/net/impl/d;

    .line 101
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/d;->e(Z)Lorg/chromium/net/impl/d;

    const-wide/16 v1, 0x0

    .line 102
    invoke-virtual {p0, p1, v1, v2}, Lorg/chromium/net/impl/d;->a(IJ)Lorg/chromium/net/impl/d;

    .line 103
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/d;->g(Z)Lorg/chromium/net/impl/d;

    .line 104
    invoke-virtual {p0, v0}, Lorg/chromium/net/impl/d;->f(Z)Lorg/chromium/net/impl/d;

    return-void
.end method


# virtual methods
.method a(I)I
    .locals 2

    .line 393
    iget v0, p0, Lorg/chromium/net/impl/d;->q:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    return p1
.end method

.method public a(IJ)Lorg/chromium/net/impl/d;
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/net/impl/d;->d()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 211
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Storage path must not be set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 206
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/net/impl/d;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    if-ne p1, v1, :cond_3

    goto :goto_2

    :cond_3
    move v4, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v4, v3

    .line 214
    :goto_3
    iput-boolean v4, p0, Lorg/chromium/net/impl/d;->l:Z

    .line 216
    iput-wide p2, p0, Lorg/chromium/net/impl/d;->n:J

    if-eqz p1, :cond_8

    if-eq p1, v3, :cond_7

    if-eq p1, v1, :cond_6

    if-ne p1, v0, :cond_5

    goto :goto_4

    .line 230
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown cache mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 224
    :cond_6
    :goto_4
    iput v3, p0, Lorg/chromium/net/impl/d;->m:I

    goto :goto_5

    .line 227
    :cond_7
    iput v1, p0, Lorg/chromium/net/impl/d;->m:I

    goto :goto_5

    .line 220
    :cond_8
    iput v2, p0, Lorg/chromium/net/impl/d;->m:I

    :goto_5
    return-object p0

    .line 207
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Storage path must be set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic a(Ljava/lang/String;)Lorg/chromium/net/j;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/d;->b(Ljava/lang/String;)Lorg/chromium/net/impl/d;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Z)Lorg/chromium/net/j;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/d;->d(Z)Lorg/chromium/net/impl/d;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/chromium/net/impl/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/net/impl/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lorg/chromium/net/impl/d;
    .locals 0

    .line 114
    iput-object p1, p0, Lorg/chromium/net/impl/d;->g:Ljava/lang/String;

    return-object p0
.end method

.method public synthetic b(Z)Lorg/chromium/net/j;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/d;->c(Z)Lorg/chromium/net/impl/d;

    move-result-object p1

    return-object p1
.end method

.method c()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/chromium/net/impl/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c(Z)Lorg/chromium/net/impl/d;
    .locals 0

    .line 155
    iput-boolean p1, p0, Lorg/chromium/net/impl/d;->i:Z

    return-object p0
.end method

.method d()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/chromium/net/impl/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d(Z)Lorg/chromium/net/impl/d;
    .locals 0

    .line 175
    iput-boolean p1, p0, Lorg/chromium/net/impl/d;->j:Z

    return-object p0
.end method

.method e()Lorg/chromium/net/impl/VersionSafeCallbacks$b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e(Z)Lorg/chromium/net/impl/d;
    .locals 0

    .line 190
    iput-boolean p1, p0, Lorg/chromium/net/impl/d;->k:Z

    return-object p0
.end method

.method public f(Z)Lorg/chromium/net/impl/d;
    .locals 0

    .line 297
    iput-boolean p1, p0, Lorg/chromium/net/impl/d;->f:Z

    return-object p0
.end method

.method f()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lorg/chromium/net/impl/d;->i:Z

    return v0
.end method

.method g()Ljava/lang/String;
    .locals 1

    .line 170
    iget-boolean v0, p0, Lorg/chromium/net/impl/d;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/net/impl/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/net/impl/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public g(Z)Lorg/chromium/net/impl/d;
    .locals 0

    .line 376
    iput-boolean p1, p0, Lorg/chromium/net/impl/d;->p:Z

    return-object p0
.end method

.method h()Z
    .locals 1

    .line 180
    iget-boolean v0, p0, Lorg/chromium/net/impl/d;->j:Z

    return v0
.end method

.method i()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lorg/chromium/net/impl/d;->k:Z

    return v0
.end method

.method j()Z
    .locals 1

    .line 236
    iget-boolean v0, p0, Lorg/chromium/net/impl/d;->l:Z

    return v0
.end method

.method k()J
    .locals 2

    .line 240
    iget-wide v0, p0, Lorg/chromium/net/impl/d;->n:J

    return-wide v0
.end method

.method l()I
    .locals 1

    .line 244
    iget v0, p0, Lorg/chromium/net/impl/d;->m:I

    return v0
.end method

.method m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/chromium/net/impl/d$b;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lorg/chromium/net/impl/d;->d:Ljava/util/List;

    return-object v0
.end method

.method n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/chromium/net/impl/d$a;",
            ">;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lorg/chromium/net/impl/d;->e:Ljava/util/List;

    return-object v0
.end method

.method o()Z
    .locals 1

    .line 302
    iget-boolean v0, p0, Lorg/chromium/net/impl/d;->f:Z

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Lorg/chromium/net/impl/d;->o:Ljava/lang/String;

    return-object v0
.end method

.method q()J
    .locals 2

    .line 363
    iget-wide v0, p0, Lorg/chromium/net/impl/d;->a:J

    return-wide v0
.end method

.method r()Z
    .locals 1

    .line 371
    iget-boolean v0, p0, Lorg/chromium/net/impl/d;->p:Z

    return v0
.end method

.method s()Landroid/content/Context;
    .locals 1

    .line 402
    iget-object v0, p0, Lorg/chromium/net/impl/d;->c:Landroid/content/Context;

    return-object v0
.end method
