.class public Lcom/android/car/ui/recyclerview/a;
.super Lcom/android/car/ui/recyclerview/f;
.source "CarUiContentListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/ui/recyclerview/a$a;,
        Lcom/android/car/ui/recyclerview/a$b;,
        Lcom/android/car/ui/recyclerview/a$d;,
        Lcom/android/car/ui/recyclerview/a$c;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Lcom/android/car/ui/b;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/ui/b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/android/car/ui/recyclerview/a$a;

.field private f:Lcom/android/car/ui/recyclerview/a$b;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lcom/android/car/ui/recyclerview/a$d;

.field private l:Lcom/android/car/ui/recyclerview/a$c;

.field private m:Lcom/android/car/ui/recyclerview/a$d;

.field private n:Z


# direct methods
.method public constructor <init>(Lcom/android/car/ui/recyclerview/a$a;)V
    .locals 1

    .line 132
    invoke-direct {p0}, Lcom/android/car/ui/recyclerview/f;-><init>()V

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/android/car/ui/recyclerview/a;->i:Z

    .line 133
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/a;->e:Lcom/android/car/ui/recyclerview/a$a;

    .line 134
    sget-object p1, Lcom/android/car/ui/recyclerview/a$b;->STANDARD:Lcom/android/car/ui/recyclerview/a$b;

    iput-object p1, p0, Lcom/android/car/ui/recyclerview/a;->f:Lcom/android/car/ui/recyclerview/a$b;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/car/ui/b;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/a;->c:Lcom/android/car/ui/b;

    return-object v0
.end method

.method public a(Lcom/android/car/ui/recyclerview/a$c;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/a;->l:Lcom/android/car/ui/recyclerview/a$c;

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 151
    new-instance v0, Lcom/android/car/ui/b$a;

    invoke-direct {v0, p1}, Lcom/android/car/ui/b$a;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/android/car/ui/b$a;->a()Lcom/android/car/ui/b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/recyclerview/a;->c:Lcom/android/car/ui/b;

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 289
    iget-boolean v0, p0, Lcom/android/car/ui/recyclerview/a;->h:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/a;->e:Lcom/android/car/ui/recyclerview/a$a;

    sget-object v1, Lcom/android/car/ui/recyclerview/a$a;->CHECK_BOX:Lcom/android/car/ui/recyclerview/a$a;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/a;->e:Lcom/android/car/ui/recyclerview/a$a;

    sget-object v1, Lcom/android/car/ui/recyclerview/a$a;->SWITCH:Lcom/android/car/ui/recyclerview/a$a;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/a;->e:Lcom/android/car/ui/recyclerview/a$a;

    sget-object v1, Lcom/android/car/ui/recyclerview/a$a;->RADIO_BUTTON:Lcom/android/car/ui/recyclerview/a$a;

    if-ne v0, v1, :cond_2

    .line 296
    :cond_1
    iput-boolean p1, p0, Lcom/android/car/ui/recyclerview/a;->h:Z

    .line 298
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/a;->l:Lcom/android/car/ui/recyclerview/a$c;

    if-eqz p1, :cond_2

    .line 299
    iget-boolean v0, p0, Lcom/android/car/ui/recyclerview/a;->h:Z

    invoke-interface {p1, p0, v0}, Lcom/android/car/ui/recyclerview/a$c;->onCheckedChanged(Lcom/android/car/ui/recyclerview/a;Z)V

    :cond_2
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/car/ui/b;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/a;->d:Ljava/util/List;

    return-object v0
.end method

.method public c()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/a;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public d()Lcom/android/car/ui/recyclerview/a$b;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/a;->f:Lcom/android/car/ui/recyclerview/a$b;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/android/car/ui/recyclerview/a;->j:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .line 263
    iget-boolean v0, p0, Lcom/android/car/ui/recyclerview/a;->i:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .line 280
    iget-boolean v0, p0, Lcom/android/car/ui/recyclerview/a;->h:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .line 317
    iget-boolean v0, p0, Lcom/android/car/ui/recyclerview/a;->g:Z

    return v0
.end method

.method public i()Lcom/android/car/ui/recyclerview/a$a;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/a;->e:Lcom/android/car/ui/recyclerview/a$a;

    return-object v0
.end method

.method public j()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/a;->e:Lcom/android/car/ui/recyclerview/a$a;

    sget-object v1, Lcom/android/car/ui/recyclerview/a$a;->ICON:Lcom/android/car/ui/recyclerview/a$a;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/a;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public k()Lcom/android/car/ui/recyclerview/a$d;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/a;->m:Lcom/android/car/ui/recyclerview/a$d;

    return-object v0
.end method

.method public l()Lcom/android/car/ui/recyclerview/a$d;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/a;->k:Lcom/android/car/ui/recyclerview/a$d;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 424
    iget-boolean v0, p0, Lcom/android/car/ui/recyclerview/a;->n:Z

    return v0
.end method
