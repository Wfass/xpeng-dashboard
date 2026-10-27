.class public Landroidx/preference/e;
.super Ljava/lang/Object;
.source "PreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/e$d;,
        Landroidx/preference/e$b;,
        Landroidx/preference/e$a;,
        Landroidx/preference/e$c;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:J

.field private c:Landroid/content/SharedPreferences;

.field private d:Landroidx/preference/b;

.field private e:Landroid/content/SharedPreferences$Editor;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Landroidx/preference/PreferenceScreen;

.field private k:Landroidx/preference/e$d;

.field private l:Landroidx/preference/e$c;

.field private m:Landroidx/preference/e$a;

.field private n:Landroidx/preference/e$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 53
    iput-wide v0, p0, Landroidx/preference/e;->b:J

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Landroidx/preference/e;->i:I

    .line 105
    iput-object p1, p0, Landroidx/preference/e;->a:Landroid/content/Context;

    .line 107
    invoke-static {p1}, Landroidx/preference/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_preferences"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 497
    iget-object v0, p0, Landroidx/preference/e;->e:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 498
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 500
    :cond_0
    iput-boolean p1, p0, Landroidx/preference/e;->f:Z

    return-void
.end method


# virtual methods
.method a()J
    .locals 4

    .line 237
    monitor-enter p0

    .line 238
    :try_start_0
    iget-wide v0, p0, Landroidx/preference/e;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroidx/preference/e;->b:J

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 239
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/preference/Preference;",
            ">(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 451
    iget-object v0, p0, Landroidx/preference/e;->j:Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 455
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceScreen;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;
    .locals 1

    const/4 v0, 0x1

    .line 213
    invoke-direct {p0, v0}, Landroidx/preference/e;->a(Z)V

    .line 215
    new-instance v0, Landroidx/preference/d;

    invoke-direct {v0, p1, p0}, Landroidx/preference/d;-><init>(Landroid/content/Context;Landroidx/preference/e;)V

    .line 216
    invoke-virtual {v0, p2, p3}, Landroidx/preference/d;->a(ILandroidx/preference/PreferenceGroup;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    .line 217
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceScreen;->a(Landroidx/preference/e;)V

    const/4 p2, 0x0

    .line 220
    invoke-direct {p0, p2}, Landroidx/preference/e;->a(Z)V

    return-object p1
.end method

.method public a(Landroidx/preference/Preference;)V
    .locals 1

    .line 536
    iget-object v0, p0, Landroidx/preference/e;->m:Landroidx/preference/e$a;

    if-eqz v0, :cond_0

    .line 537
    invoke-interface {v0, p1}, Landroidx/preference/e$a;->onDisplayPreferenceDialog(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public a(Landroidx/preference/e$a;)V
    .locals 0

    .line 527
    iput-object p1, p0, Landroidx/preference/e;->m:Landroidx/preference/e$a;

    return-void
.end method

.method public a(Landroidx/preference/e$b;)V
    .locals 0

    .line 562
    iput-object p1, p0, Landroidx/preference/e;->n:Landroidx/preference/e$b;

    return-void
.end method

.method public a(Landroidx/preference/e$c;)V
    .locals 0

    .line 548
    iput-object p1, p0, Landroidx/preference/e;->l:Landroidx/preference/e$c;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 264
    iput-object p1, p0, Landroidx/preference/e;->g:Ljava/lang/String;

    const/4 p1, 0x0

    .line 265
    iput-object p1, p0, Landroidx/preference/e;->c:Landroid/content/SharedPreferences;

    return-void
.end method

.method public a(Landroidx/preference/PreferenceScreen;)Z
    .locals 1

    .line 429
    iget-object v0, p0, Landroidx/preference/e;->j:Landroidx/preference/PreferenceScreen;

    if-eq p1, v0, :cond_1

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->V()V

    .line 433
    :cond_0
    iput-object p1, p0, Landroidx/preference/e;->j:Landroidx/preference/PreferenceScreen;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public b()Landroidx/preference/b;
    .locals 1

    .line 380
    iget-object v0, p0, Landroidx/preference/e;->d:Landroidx/preference/b;

    return-object v0
.end method

.method public c()Landroid/content/SharedPreferences;
    .locals 3

    .line 391
    invoke-virtual {p0}, Landroidx/preference/e;->b()Landroidx/preference/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 395
    :cond_0
    iget-object v0, p0, Landroidx/preference/e;->c:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    .line 397
    iget v0, p0, Landroidx/preference/e;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 402
    iget-object v0, p0, Landroidx/preference/e;->a:Landroid/content/Context;

    goto :goto_0

    .line 399
    :cond_1
    iget-object v0, p0, Landroidx/preference/e;->a:Landroid/content/Context;

    invoke-static {v0}, Ldj;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 406
    :goto_0
    iget-object v1, p0, Landroidx/preference/e;->g:Ljava/lang/String;

    iget v2, p0, Landroidx/preference/e;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/e;->c:Landroid/content/SharedPreferences;

    .line 410
    :cond_2
    iget-object v0, p0, Landroidx/preference/e;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public d()Landroidx/preference/PreferenceScreen;
    .locals 1

    .line 419
    iget-object v0, p0, Landroidx/preference/e;->j:Landroidx/preference/PreferenceScreen;

    return-object v0
.end method

.method e()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 468
    iget-object v0, p0, Landroidx/preference/e;->d:Landroidx/preference/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 472
    :cond_0
    iget-boolean v0, p0, Landroidx/preference/e;->f:Z

    if-eqz v0, :cond_2

    .line 473
    iget-object v0, p0, Landroidx/preference/e;->e:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    .line 474
    invoke-virtual {p0}, Landroidx/preference/e;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/e;->e:Landroid/content/SharedPreferences$Editor;

    .line 477
    :cond_1
    iget-object v0, p0, Landroidx/preference/e;->e:Landroid/content/SharedPreferences$Editor;

    return-object v0

    .line 479
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/e;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method f()Z
    .locals 1

    .line 493
    iget-boolean v0, p0, Landroidx/preference/e;->f:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public g()Landroidx/preference/e$d;
    .locals 1

    .line 513
    iget-object v0, p0, Landroidx/preference/e;->k:Landroidx/preference/e$d;

    return-object v0
.end method

.method public h()Landroidx/preference/e$c;
    .locals 1

    .line 552
    iget-object v0, p0, Landroidx/preference/e;->l:Landroidx/preference/e$c;

    return-object v0
.end method

.method public i()Landroidx/preference/e$b;
    .locals 1

    .line 569
    iget-object v0, p0, Landroidx/preference/e;->n:Landroidx/preference/e$b;

    return-object v0
.end method
