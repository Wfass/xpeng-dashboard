.class Lgr$j;
.super Lgr$i;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation


# direct methods
.method constructor <init>(Lgr;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1243
    invoke-direct {p0, p1, p2}, Lgr$i;-><init>(Lgr;Landroid/view/WindowInsets;)V

    return-void
.end method

.method constructor <init>(Lgr;Lgr$j;)V
    .locals 0

    .line 1247
    invoke-direct {p0, p1, p2}, Lgr$i;-><init>(Lgr;Lgr$i;)V

    return-void
.end method


# virtual methods
.method e()Lfk;
    .locals 1

    .line 1253
    iget-object v0, p0, Lgr$j;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-static {v0}, Lfk;->a(Ljava/lang/Object;)Lfk;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1265
    :cond_0
    instance-of v1, p1, Lgr$j;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1266
    :cond_1
    check-cast p1, Lgr$j;

    .line 1268
    iget-object v1, p0, Lgr$j;->c:Landroid/view/WindowInsets;

    iget-object v3, p1, Lgr$j;->c:Landroid/view/WindowInsets;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lgr$j;->d:Ldv;

    iget-object p1, p1, Lgr$j;->d:Ldv;

    .line 1269
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method f()Lgr;
    .locals 1

    .line 1259
    iget-object v0, p0, Lgr$j;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeDisplayCutout()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lgr;->a(Landroid/view/WindowInsets;)Lgr;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1274
    iget-object v0, p0, Lgr$j;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->hashCode()I

    move-result v0

    return v0
.end method
