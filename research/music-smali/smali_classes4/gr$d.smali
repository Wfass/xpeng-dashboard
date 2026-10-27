.class Lgr$d;
.super Lgr$c;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# static fields
.field private static b:Ljava/lang/reflect/Field; = null

.field private static c:Z = false

.field private static d:Ljava/lang/reflect/Constructor; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/view/WindowInsets;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Z = false


# instance fields
.field private f:Landroid/view/WindowInsets;

.field private g:Ldv;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1717
    invoke-direct {p0}, Lgr$c;-><init>()V

    .line 1718
    invoke-static {}, Lgr$d;->c()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Lgr$d;->f:Landroid/view/WindowInsets;

    return-void
.end method

.method constructor <init>(Lgr;)V
    .locals 0

    .line 1722
    invoke-direct {p0, p1}, Lgr$c;-><init>(Lgr;)V

    .line 1723
    invoke-virtual {p1}, Lgr;->n()Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Lgr$d;->f:Landroid/view/WindowInsets;

    return-void
.end method

.method private static c()Landroid/view/WindowInsets;
    .locals 7

    .line 1758
    sget-boolean v0, Lgr$d;->c:Z

    const/4 v1, 0x1

    const-string v2, "WindowInsetsCompat"

    if-nez v0, :cond_0

    .line 1760
    :try_start_0
    const-class v0, Landroid/view/WindowInsets;

    const-string v3, "CONSUMED"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lgr$d;->b:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Could not retrieve WindowInsets.CONSUMED field"

    .line 1762
    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1764
    :goto_0
    sput-boolean v1, Lgr$d;->c:Z

    .line 1766
    :cond_0
    sget-object v0, Lgr$d;->b:Ljava/lang/reflect/Field;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1768
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    if-eqz v0, :cond_1

    .line 1770
    new-instance v4, Landroid/view/WindowInsets;

    invoke-direct {v4, v0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    :catch_1
    move-exception v0

    const-string v4, "Could not get value from WindowInsets.CONSUMED field"

    .line 1773
    invoke-static {v2, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1779
    :cond_1
    sget-boolean v0, Lgr$d;->e:Z

    const/4 v4, 0x0

    if-nez v0, :cond_2

    .line 1781
    :try_start_2
    const-class v0, Landroid/view/WindowInsets;

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Landroid/graphics/Rect;

    aput-object v6, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lgr$d;->d:Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v5, "Could not retrieve WindowInsets(Rect) constructor"

    .line 1783
    invoke-static {v2, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1785
    :goto_1
    sput-boolean v1, Lgr$d;->e:Z

    .line 1787
    :cond_2
    sget-object v0, Lgr$d;->d:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_3

    .line 1789
    :try_start_3
    new-array v1, v1, [Ljava/lang/Object;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    aput-object v5, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;
    :try_end_3
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    :catch_3
    move-exception v0

    const-string v1, "Could not invoke WindowInsets(Rect) constructor"

    .line 1791
    invoke-static {v2, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-object v3
.end method


# virtual methods
.method a(Ldv;)V
    .locals 4

    .line 1728
    iget-object v0, p0, Lgr$d;->f:Landroid/view/WindowInsets;

    if-eqz v0, :cond_0

    .line 1729
    iget v1, p1, Ldv;->b:I

    iget v2, p1, Ldv;->c:I

    iget v3, p1, Ldv;->d:I

    iget p1, p1, Ldv;->e:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Lgr$d;->f:Landroid/view/WindowInsets;

    :cond_0
    return-void
.end method

.method b()Lgr;
    .locals 2

    .line 1742
    invoke-virtual {p0}, Lgr$d;->a()V

    .line 1743
    iget-object v0, p0, Lgr$d;->f:Landroid/view/WindowInsets;

    invoke-static {v0}, Lgr;->a(Landroid/view/WindowInsets;)Lgr;

    move-result-object v0

    .line 1745
    iget-object v1, p0, Lgr$d;->a:[Ldv;

    invoke-virtual {v0, v1}, Lgr;->a([Ldv;)V

    .line 1746
    iget-object v1, p0, Lgr$d;->g:Ldv;

    invoke-virtual {v0, v1}, Lgr;->a(Ldv;)V

    return-object v0
.end method

.method e(Ldv;)V
    .locals 0

    .line 1736
    iput-object p1, p0, Lgr$d;->g:Ldv;

    return-void
.end method
