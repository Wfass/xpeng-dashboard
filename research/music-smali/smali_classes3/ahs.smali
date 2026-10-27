.class public Lahs;
.super Ljava/lang/Object;
.source "ImageBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lahs$a;,
        Lahs$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lahs$a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lahs$b;

.field private final b:Landroid/util/Size;

.field private final c:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lahs$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private e:Laht;

.field private f:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Laht;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lahs$b;Landroid/util/Size;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lahs$b;",
            "Landroid/util/Size;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Need a type"

    .line 86
    invoke-static {p1, v0}, Lfg;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lahs$b;

    iput-object p1, p0, Lahs;->a:Lahs$b;

    const-string p1, "Need a size"

    .line 87
    invoke-static {p2, p1}, Lfg;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    iput-object p1, p0, Lahs;->b:Landroid/util/Size;

    const-string p1, "Cannot bind a null consumer"

    .line 88
    invoke-static {p3, p1}, Lfg;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Consumer;

    iput-object p1, p0, Lahs;->c:Ljava/util/function/Consumer;

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lahs;->e:Laht;

    .line 167
    iput-object v0, p0, Lahs;->f:Ljava/util/function/BiConsumer;

    return-void
.end method

.method private synthetic a(Landroid/content/Context;Laht;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lahs;->e:Laht;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    .line 124
    iget-object p2, p0, Lahs;->a:Lahs$b;

    sget-object v0, Lahs$b;->NONE:Lahs$b;

    if-eq p2, v0, :cond_0

    iget-object p2, p0, Lahs;->d:Lahs$a;

    iget-object p3, p0, Lahs;->a:Lahs$b;

    .line 126
    invoke-interface {p2, p1, p3}, Lahs$a;->a(Landroid/content/Context;Lahs$b;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 128
    :cond_0
    invoke-virtual {p0, p3}, Lahs;->a(Landroid/graphics/drawable/Drawable;)V

    .line 129
    invoke-direct {p0}, Lahs;->a()V

    :cond_1
    return-void
.end method

.method private b(Landroid/content/Context;)Lahu;
    .locals 0

    .line 154
    invoke-static {p1}, Lahu;->a(Landroid/content/Context;)Lahu;

    move-result-object p1

    return-object p1
.end method

.method private b(Landroid/content/Context;Lahs$a;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)Z"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lahs;->d:Lahs$a;

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 146
    :cond_0
    iget-object v0, p0, Lahs;->d:Lahs$a;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 147
    invoke-interface {v0, p1, p2}, Lahs$a;->a(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 171
    iget-object v0, p0, Lahs;->g:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 172
    sget v0, Lcom/android/car/apps/common/h$d;->loading_image_placeholder_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 173
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lahs;->g:Landroid/graphics/drawable/Drawable;

    .line 175
    :cond_0
    iget-object p1, p0, Lahs;->g:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public static synthetic lambda$o4cnKVR8qFShuozwj5ABzz5_tfk(Lahs;Landroid/content/Context;Laht;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lahs;->a(Landroid/content/Context;Laht;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 3

    .line 158
    iget-object v0, p0, Lahs;->e:Laht;

    if-eqz v0, :cond_0

    .line 159
    invoke-direct {p0, p1}, Lahs;->b(Landroid/content/Context;)Lahu;

    move-result-object v0

    iget-object v1, p0, Lahs;->e:Laht;

    iget-object v2, p0, Lahs;->f:Ljava/util/function/BiConsumer;

    invoke-virtual {v0, v1, v2}, Lahu;->a(Laht;Ljava/util/function/BiConsumer;)V

    .line 160
    invoke-direct {p0}, Lahs;->a()V

    .line 162
    :cond_0
    iget-object v0, p0, Lahs;->a:Lahs$b;

    sget-object v1, Lahs$b;->NONE:Lahs$b;

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p1}, Lahs;->c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lahs;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lahs$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1, p2}, Lahs;->b(Landroid/content/Context;Lahs$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-virtual {p0, p1}, Lahs;->a(Landroid/content/Context;)V

    .line 111
    iput-object p2, p0, Lahs;->d:Lahs$a;

    .line 113
    iget-object p2, p0, Lahs;->d:Lahs$a;

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 114
    invoke-virtual {p0, v0}, Lahs;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 116
    :cond_1
    invoke-interface {p2, p1}, Lahs$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 118
    invoke-virtual {p0, p2}, Lahs;->a(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 122
    :cond_2
    new-instance p2, L-$$Lambda$ahs$o4cnKVR8qFShuozwj5ABzz5_tfk;

    invoke-direct {p2, p0, p1}, L-$$Lambda$ahs$o4cnKVR8qFShuozwj5ABzz5_tfk;-><init>(Lahs;Landroid/content/Context;)V

    iput-object p2, p0, Lahs;->f:Ljava/util/function/BiConsumer;

    .line 133
    iget-object p2, p0, Lahs;->d:Lahs$a;

    invoke-interface {p2}, Lahs$a;->a()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Lcom/android/car/apps/common/i;->a(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 134
    iput-object v0, p0, Lahs;->e:Laht;

    .line 135
    iget-object p1, p0, Lahs;->f:Ljava/util/function/BiConsumer;

    invoke-interface {p1, v0, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 137
    :cond_3
    new-instance p2, Laht;

    iget-object v0, p0, Lahs;->d:Lahs$a;

    invoke-interface {v0}, Lahs$a;->a()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lahs;->b:Landroid/util/Size;

    invoke-direct {p2, v0, v1}, Laht;-><init>(Landroid/net/Uri;Landroid/util/Size;)V

    iput-object p2, p0, Lahs;->e:Laht;

    .line 138
    invoke-direct {p0, p1}, Lahs;->b(Landroid/content/Context;)Lahu;

    move-result-object p2

    iget-object v0, p0, Lahs;->e:Laht;

    iget-object v1, p0, Lahs;->f:Ljava/util/function/BiConsumer;

    invoke-virtual {p2, p1, v0, v1}, Lahu;->a(Landroid/content/Context;Laht;Ljava/util/function/BiConsumer;)V

    :goto_0
    return-void
.end method

.method protected a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lahs;->c:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
