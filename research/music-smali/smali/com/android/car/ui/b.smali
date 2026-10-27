.class public Lcom/android/car/ui/b;
.super Ljava/lang/Object;
.source "CarUiText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/ui/b$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/car/ui/b$a;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lcom/android/car/ui/b$a;->a(Lcom/android/car/ui/b$a;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/b;->c:Ljava/util/List;

    .line 50
    invoke-static {p1}, Lcom/android/car/ui/b$a;->b(Lcom/android/car/ui/b$a;)I

    move-result v0

    iput v0, p0, Lcom/android/car/ui/b;->b:I

    .line 51
    invoke-static {p1}, Lcom/android/car/ui/b$a;->c(Lcom/android/car/ui/b$a;)I

    move-result p1

    iput p1, p0, Lcom/android/car/ui/b;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/ui/b$a;Lcom/android/car/ui/b$1;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/android/car/ui/b;-><init>(Lcom/android/car/ui/b$a;)V

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/lang/CharSequence;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/car/ui/b;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 38
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 40
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v1, ""

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/ui/b;

    .line 41
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 42
    invoke-virtual {v2}, Lcom/android/car/ui/b;->d()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v2, " "

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/android/car/ui/b;->d()Ljava/lang/CharSequence;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v1, "\n"

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/android/car/ui/b;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/android/car/ui/b;->b:I

    return v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/android/car/ui/b;->c:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/lang/CharSequence;
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/car/ui/b;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method
