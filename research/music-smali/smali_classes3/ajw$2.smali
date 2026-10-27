.class Lajw$2;
.super Lajy;
.source "TextAppearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lajw;->a(Landroid/content/Context;Landroid/text/TextPaint;Lajy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/text/TextPaint;

.field final synthetic b:Lajy;

.field final synthetic c:Lajw;


# direct methods
.method constructor <init>(Lajw;Landroid/text/TextPaint;Lajy;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lajw$2;->c:Lajw;

    iput-object p2, p0, Lajw$2;->a:Landroid/text/TextPaint;

    iput-object p3, p0, Lajw$2;->b:Lajy;

    invoke-direct {p0}, Lajy;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 248
    iget-object v0, p0, Lajw$2;->b:Lajy;

    invoke-virtual {v0, p1}, Lajy;->a(I)V

    return-void
.end method

.method public a(Landroid/graphics/Typeface;Z)V
    .locals 2

    .line 242
    iget-object v0, p0, Lajw$2;->c:Lajw;

    iget-object v1, p0, Lajw$2;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p1}, Lajw;->a(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 243
    iget-object v0, p0, Lajw$2;->b:Lajy;

    invoke-virtual {v0, p1, p2}, Lajy;->a(Landroid/graphics/Typeface;Z)V

    return-void
.end method
