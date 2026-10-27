.class Lgr$k;
.super Lgr$j;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "k"
.end annotation


# instance fields
.field private e:Ldv;

.field private f:Ldv;

.field private g:Ldv;


# direct methods
.method constructor <init>(Lgr;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1286
    invoke-direct {p0, p1, p2}, Lgr$j;-><init>(Lgr;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 1281
    iput-object p1, p0, Lgr$k;->e:Ldv;

    .line 1282
    iput-object p1, p0, Lgr$k;->f:Ldv;

    .line 1283
    iput-object p1, p0, Lgr$k;->g:Ldv;

    return-void
.end method

.method constructor <init>(Lgr;Lgr$k;)V
    .locals 0

    .line 1290
    invoke-direct {p0, p1, p2}, Lgr$j;-><init>(Lgr;Lgr$j;)V

    const/4 p1, 0x0

    .line 1281
    iput-object p1, p0, Lgr$k;->e:Ldv;

    .line 1282
    iput-object p1, p0, Lgr$k;->f:Ldv;

    .line 1283
    iput-object p1, p0, Lgr$k;->g:Ldv;

    return-void
.end method


# virtual methods
.method a(IIII)Lgr;
    .locals 1

    .line 1324
    iget-object v0, p0, Lgr$k;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, Lgr;->a(Landroid/view/WindowInsets;)Lgr;

    move-result-object p1

    return-object p1
.end method

.method public b(Ldv;)V
    .locals 0

    return-void
.end method

.method i()Ldv;
    .locals 1

    .line 1296
    iget-object v0, p0, Lgr$k;->e:Ldv;

    if-nez v0, :cond_0

    .line 1297
    iget-object v0, p0, Lgr$k;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Ldv;->a(Landroid/graphics/Insets;)Ldv;

    move-result-object v0

    iput-object v0, p0, Lgr$k;->e:Ldv;

    .line 1299
    :cond_0
    iget-object v0, p0, Lgr$k;->e:Ldv;

    return-object v0
.end method

.method j()Ldv;
    .locals 1

    .line 1305
    iget-object v0, p0, Lgr$k;->f:Ldv;

    if-nez v0, :cond_0

    .line 1306
    iget-object v0, p0, Lgr$k;->c:Landroid/view/WindowInsets;

    .line 1307
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Ldv;->a(Landroid/graphics/Insets;)Ldv;

    move-result-object v0

    iput-object v0, p0, Lgr$k;->f:Ldv;

    .line 1309
    :cond_0
    iget-object v0, p0, Lgr$k;->f:Ldv;

    return-object v0
.end method

.method k()Ldv;
    .locals 1

    .line 1315
    iget-object v0, p0, Lgr$k;->g:Ldv;

    if-nez v0, :cond_0

    .line 1316
    iget-object v0, p0, Lgr$k;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getTappableElementInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Ldv;->a(Landroid/graphics/Insets;)Ldv;

    move-result-object v0

    iput-object v0, p0, Lgr$k;->g:Ldv;

    .line 1318
    :cond_0
    iget-object v0, p0, Lgr$k;->g:Ldv;

    return-object v0
.end method
