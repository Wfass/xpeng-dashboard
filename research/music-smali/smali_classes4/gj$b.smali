.class abstract Lgj$b;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(ILjava/lang/Class;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4359
    invoke-direct {p0, p1, p2, v0, p3}, Lgj$b;-><init>(ILjava/lang/Class;II)V

    return-void
.end method

.method constructor <init>(ILjava/lang/Class;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;II)V"
        }
    .end annotation

    .line 4364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4365
    iput p1, p0, Lgj$b;->a:I

    .line 4366
    iput-object p2, p0, Lgj$b;->b:Ljava/lang/Class;

    .line 4367
    iput p3, p0, Lgj$b;->d:I

    .line 4368
    iput p4, p0, Lgj$b;->c:I

    return-void
.end method

.method private a()Z
    .locals 2

    .line 4398
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Lgj$b;->c:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private b()Z
    .locals 2

    .line 4402
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method abstract a(Landroid/view/View;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation
.end method

.method a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 4406
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method abstract b(Landroid/view/View;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation
.end method

.method b(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation

    .line 4373
    invoke-direct {p0}, Lgj$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4374
    invoke-virtual {p0, p1, p2}, Lgj$b;->a(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_0

    .line 4375
    :cond_0
    invoke-direct {p0}, Lgj$b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lgj$b;->c(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lgj$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4376
    invoke-static {p1}, Lgj;->c(Landroid/view/View;)Lfh;

    .line 4377
    iget v0, p0, Lgj$b;->a:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 4381
    iget p2, p0, Lgj$b;->d:I

    invoke-static {p1, p2}, Lgj;->i(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method b(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    .line 4413
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    if-nez p2, :cond_1

    move p2, v0

    goto :goto_1

    .line 4414
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :goto_1
    if-ne p1, p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method c(Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 4387
    invoke-direct {p0}, Lgj$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4388
    invoke-virtual {p0, p1}, Lgj$b;->b(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4389
    :cond_0
    invoke-direct {p0}, Lgj$b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4390
    iget v0, p0, Lgj$b;->a:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    .line 4391
    iget-object v0, p0, Lgj$b;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
