.class public Landroidx/navigation/fragment/b$a;
.super Landroidx/navigation/i;
.source "FragmentNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/fragment/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/navigation/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/p<",
            "+",
            "Landroidx/navigation/fragment/b$a;",
            ">;)V"
        }
    .end annotation

    .line 286
    invoke-direct {p0, p1}, Landroidx/navigation/i;-><init>(Landroidx/navigation/p;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroidx/navigation/fragment/b$a;
    .locals 0

    .line 310
    iput-object p1, p0, Landroidx/navigation/fragment/b$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 2

    .line 321
    iget-object v0, p0, Landroidx/navigation/fragment/b$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 322
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment class was not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 292
    invoke-super {p0, p1, p2}, Landroidx/navigation/i;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 293
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget-object v0, Landroidx/navigation/fragment/c$b;->FragmentNavigator:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 295
    sget p2, Landroidx/navigation/fragment/c$b;->FragmentNavigator_android_name:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 297
    invoke-virtual {p0, p2}, Landroidx/navigation/fragment/b$a;->a(Ljava/lang/String;)Landroidx/navigation/fragment/b$a;

    .line 299
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    invoke-super {p0}, Landroidx/navigation/i;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " class="

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    iget-object v1, p0, Landroidx/navigation/fragment/b$a;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
