.class Lgr$l;
.super Lgr$k;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "l"
.end annotation


# static fields
.field static final e:Lgr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1347
    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    invoke-static {v0}, Lgr;->a(Landroid/view/WindowInsets;)Lgr;

    move-result-object v0

    sput-object v0, Lgr$l;->e:Lgr;

    return-void
.end method

.method constructor <init>(Lgr;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1350
    invoke-direct {p0, p1, p2}, Lgr$k;-><init>(Lgr;Landroid/view/WindowInsets;)V

    return-void
.end method

.method constructor <init>(Lgr;Lgr$l;)V
    .locals 0

    .line 1354
    invoke-direct {p0, p1, p2}, Lgr$k;-><init>(Lgr;Lgr$k;)V

    return-void
.end method


# virtual methods
.method public a(I)Ldv;
    .locals 1

    .line 1360
    iget-object v0, p0, Lgr$l;->c:Landroid/view/WindowInsets;

    .line 1361
    invoke-static {p1}, Lgr$n;->a(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 1360
    invoke-static {p1}, Ldv;->a(Landroid/graphics/Insets;)Ldv;

    move-result-object p1

    return-object p1
.end method

.method final a(Landroid/view/View;)V
    .locals 0

    return-void
.end method
