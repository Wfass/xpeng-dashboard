.class public Ldx$a;
.super Let$c;
.source "TypefaceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lds$c;


# direct methods
.method public constructor <init>(Lds$c;)V
    .locals 0

    .line 261
    invoke-direct {p0}, Let$c;-><init>()V

    .line 262
    iput-object p1, p0, Ldx$a;->a:Lds$c;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 274
    iget-object v0, p0, Ldx$a;->a:Lds$c;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0, p1}, Lds$c;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Typeface;)V
    .locals 1

    .line 267
    iget-object v0, p0, Ldx$a;->a:Lds$c;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0, p1}, Lds$c;->a(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method
