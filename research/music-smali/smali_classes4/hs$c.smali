.class Lhs$c;
.super Landroidx/lifecycle/z;
.source "LoaderManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field private static final a:Landroidx/lifecycle/aa$b;


# instance fields
.field private b:Landroidx/collection/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/f<",
            "Lhs$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 281
    new-instance v0, Lhs$c$1;

    invoke-direct {v0}, Lhs$c$1;-><init>()V

    sput-object v0, Lhs$c;->a:Landroidx/lifecycle/aa$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 280
    invoke-direct {p0}, Landroidx/lifecycle/z;-><init>()V

    .line 295
    new-instance v0, Landroidx/collection/f;

    invoke-direct {v0}, Landroidx/collection/f;-><init>()V

    iput-object v0, p0, Lhs$c;->b:Landroidx/collection/f;

    const/4 v0, 0x0

    .line 296
    iput-boolean v0, p0, Lhs$c;->c:Z

    return-void
.end method

.method static a(Landroidx/lifecycle/ac;)Lhs$c;
    .locals 2

    .line 292
    new-instance v0, Landroidx/lifecycle/aa;

    sget-object v1, Lhs$c;->a:Landroidx/lifecycle/aa$b;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/aa;-><init>(Landroidx/lifecycle/ac;Landroidx/lifecycle/aa$b;)V

    const-class p0, Lhs$c;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/aa;->a(Ljava/lang/Class;)Landroidx/lifecycle/z;

    move-result-object p0

    check-cast p0, Lhs$c;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 354
    iget-object v0, p0, Lhs$c;->b:Landroidx/collection/f;

    invoke-virtual {v0}, Landroidx/collection/f;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 355
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 357
    :goto_0
    iget-object v2, p0, Lhs$c;->b:Landroidx/collection/f;

    invoke-virtual {v2}, Landroidx/collection/f;->b()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 358
    iget-object v2, p0, Lhs$c;->b:Landroidx/collection/f;

    invoke-virtual {v2, v1}, Landroidx/collection/f;->e(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhs$a;

    .line 359
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lhs$c;->b:Landroidx/collection/f;

    invoke-virtual {v3, v1}, Landroidx/collection/f;->d(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 360
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lhs$a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v2, v0, p2, p3, p4}, Lhs$a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method b()V
    .locals 3

    .line 335
    iget-object v0, p0, Lhs$c;->b:Landroidx/collection/f;

    invoke-virtual {v0}, Landroidx/collection/f;->b()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 337
    iget-object v2, p0, Lhs$c;->b:Landroidx/collection/f;

    invoke-virtual {v2, v1}, Landroidx/collection/f;->e(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhs$a;

    .line 338
    invoke-virtual {v2}, Lhs$a;->g()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected l_()V
    .locals 4

    .line 344
    invoke-super {p0}, Landroidx/lifecycle/z;->l_()V

    .line 345
    iget-object v0, p0, Lhs$c;->b:Landroidx/collection/f;

    invoke-virtual {v0}, Landroidx/collection/f;->b()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 347
    iget-object v2, p0, Lhs$c;->b:Landroidx/collection/f;

    invoke-virtual {v2, v1}, Landroidx/collection/f;->e(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhs$a;

    const/4 v3, 0x1

    .line 348
    invoke-virtual {v2, v3}, Lhs$a;->a(Z)Lht;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    :cond_0
    iget-object v0, p0, Lhs$c;->b:Landroidx/collection/f;

    invoke-virtual {v0}, Landroidx/collection/f;->c()V

    return-void
.end method
