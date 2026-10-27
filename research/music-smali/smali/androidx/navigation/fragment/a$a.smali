.class public Landroidx/navigation/fragment/a$a;
.super Landroidx/navigation/i;
.source "DialogFragmentNavigator.java"

# interfaces
.implements Landroidx/navigation/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/fragment/a;
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
            "Landroidx/navigation/fragment/a$a;",
            ">;)V"
        }
    .end annotation

    .line 194
    invoke-direct {p0, p1}, Landroidx/navigation/i;-><init>(Landroidx/navigation/p;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroidx/navigation/fragment/a$a;
    .locals 0

    .line 218
    iput-object p1, p0, Landroidx/navigation/fragment/a$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 2

    .line 229
    iget-object v0, p0, Landroidx/navigation/fragment/a$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 230
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DialogFragment class was not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 200
    invoke-super {p0, p1, p2}, Landroidx/navigation/i;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget-object v0, Landroidx/navigation/fragment/c$b;->DialogFragmentNavigator:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 203
    sget p2, Landroidx/navigation/fragment/c$b;->DialogFragmentNavigator_android_name:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 205
    invoke-virtual {p0, p2}, Landroidx/navigation/fragment/a$a;->a(Ljava/lang/String;)Landroidx/navigation/fragment/a$a;

    .line 207
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
