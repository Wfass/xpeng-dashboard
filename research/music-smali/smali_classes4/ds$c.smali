.class public abstract Lds$c;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 1

    if-nez p0, :cond_0

    .line 464
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public abstract a(I)V
.end method

.method public final a(ILandroid/os/Handler;)V
    .locals 1

    .line 452
    invoke-static {p2}, Lds$c;->a(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lds$c$2;

    invoke-direct {v0, p0, p1}, Lds$c$2;-><init>(Lds$c;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract a(Landroid/graphics/Typeface;)V
.end method

.method public final a(Landroid/graphics/Typeface;Landroid/os/Handler;)V
    .locals 1

    .line 436
    invoke-static {p2}, Lds$c;->a(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lds$c$1;

    invoke-direct {v0, p0, p1}, Lds$c$1;-><init>(Lds$c;Landroid/graphics/Typeface;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
