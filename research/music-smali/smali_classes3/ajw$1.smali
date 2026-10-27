.class Lajw$1;
.super Lds$c;
.source "TextAppearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lajw;->a(Landroid/content/Context;Lajy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lajy;

.field final synthetic b:Lajw;


# direct methods
.method constructor <init>(Lajw;Lajy;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lajw$1;->b:Lajw;

    iput-object p2, p0, Lajw$1;->a:Lajy;

    invoke-direct {p0}, Lds$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 203
    iget-object v0, p0, Lajw$1;->b:Lajw;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lajw;->a(Lajw;Z)Z

    .line 204
    iget-object v0, p0, Lajw$1;->a:Lajy;

    invoke-virtual {v0, p1}, Lajy;->a(I)V

    return-void
.end method

.method public a(Landroid/graphics/Typeface;)V
    .locals 2

    .line 196
    iget-object v0, p0, Lajw$1;->b:Lajw;

    iget v1, v0, Lajw;->f:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-static {v0, p1}, Lajw;->a(Lajw;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 197
    iget-object p1, p0, Lajw$1;->b:Lajw;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lajw;->a(Lajw;Z)Z

    .line 198
    iget-object p1, p0, Lajw$1;->a:Lajy;

    iget-object v0, p0, Lajw$1;->b:Lajw;

    invoke-static {v0}, Lajw;->a(Lajw;)Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lajy;->a(Landroid/graphics/Typeface;Z)V

    return-void
.end method
