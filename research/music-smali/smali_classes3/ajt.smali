.class public final Lajt;
.super Lajy;
.source "CancelableFontCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lajt$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Typeface;

.field private final b:Lajt$a;

.field private c:Z


# direct methods
.method public constructor <init>(Lajt$a;Landroid/graphics/Typeface;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lajy;-><init>()V

    .line 43
    iput-object p2, p0, Lajt;->a:Landroid/graphics/Typeface;

    .line 44
    iput-object p1, p0, Lajt;->b:Lajt$a;

    return-void
.end method

.method private a(Landroid/graphics/Typeface;)V
    .locals 1

    .line 68
    iget-boolean v0, p0, Lajt;->c:Z

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lajt;->b:Lajt$a;

    invoke-interface {v0, p1}, Lajt$a;->a(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lajt;->c:Z

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 54
    iget-object p1, p0, Lajt;->a:Landroid/graphics/Typeface;

    invoke-direct {p0, p1}, Lajt;->a(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public a(Landroid/graphics/Typeface;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lajt;->a(Landroid/graphics/Typeface;)V

    return-void
.end method
