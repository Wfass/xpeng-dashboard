.class Lgr$i;
.super Lgr$h;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation


# instance fields
.field private e:Ldv;


# direct methods
.method constructor <init>(Lgr;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1195
    invoke-direct {p0, p1, p2}, Lgr$h;-><init>(Lgr;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 1192
    iput-object p1, p0, Lgr$i;->e:Ldv;

    return-void
.end method

.method constructor <init>(Lgr;Lgr$i;)V
    .locals 0

    .line 1199
    invoke-direct {p0, p1, p2}, Lgr$h;-><init>(Lgr;Lgr$h;)V

    const/4 p1, 0x0

    .line 1192
    iput-object p1, p0, Lgr$i;->e:Ldv;

    .line 1200
    iget-object p1, p2, Lgr$i;->e:Ldv;

    iput-object p1, p0, Lgr$i;->e:Ldv;

    return-void
.end method


# virtual methods
.method public b(Ldv;)V
    .locals 0

    .line 1235
    iput-object p1, p0, Lgr$i;->e:Ldv;

    return-void
.end method

.method b()Z
    .locals 1

    .line 1205
    iget-object v0, p0, Lgr$i;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0
.end method

.method c()Lgr;
    .locals 1

    .line 1217
    iget-object v0, p0, Lgr$i;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lgr;->a(Landroid/view/WindowInsets;)Lgr;

    move-result-object v0

    return-object v0
.end method

.method d()Lgr;
    .locals 1

    .line 1211
    iget-object v0, p0, Lgr$i;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lgr;->a(Landroid/view/WindowInsets;)Lgr;

    move-result-object v0

    return-object v0
.end method

.method final h()Ldv;
    .locals 4

    .line 1223
    iget-object v0, p0, Lgr$i;->e:Ldv;

    if-nez v0, :cond_0

    .line 1224
    iget-object v0, p0, Lgr$i;->c:Landroid/view/WindowInsets;

    .line 1225
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    iget-object v1, p0, Lgr$i;->c:Landroid/view/WindowInsets;

    .line 1226
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    iget-object v2, p0, Lgr$i;->c:Landroid/view/WindowInsets;

    .line 1227
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    iget-object v3, p0, Lgr$i;->c:Landroid/view/WindowInsets;

    .line 1228
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v3

    .line 1224
    invoke-static {v0, v1, v2, v3}, Ldv;->a(IIII)Ldv;

    move-result-object v0

    iput-object v0, p0, Lgr$i;->e:Ldv;

    .line 1230
    :cond_0
    iget-object v0, p0, Lgr$i;->e:Ldv;

    return-object v0
.end method
