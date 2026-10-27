.class Lg$c;
.super Lg$f;
.source "AnimatedStateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Lii;


# direct methods
.method constructor <init>(Lii;)V
    .locals 1

    const/4 v0, 0x0

    .line 433
    invoke-direct {p0, v0}, Lg$f;-><init>(Lg$1;)V

    .line 434
    iput-object p1, p0, Lg$c;->a:Lii;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 439
    iget-object v0, p0, Lg$c;->a:Lii;

    invoke-virtual {v0}, Lii;->start()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 444
    iget-object v0, p0, Lg$c;->a:Lii;

    invoke-virtual {v0}, Lii;->stop()V

    return-void
.end method
