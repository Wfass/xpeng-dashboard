.class Lgj$4;
.super Lgj$b;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgj;->e()Lgj$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj$b<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/Class;II)V
    .locals 0

    .line 4273
    invoke-direct {p0, p1, p2, p3, p4}, Lgj$b;-><init>(ILjava/lang/Class;II)V

    return-void
.end method


# virtual methods
.method a(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 0

    .line 4278
    invoke-virtual {p1}, Landroid/view/View;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method a(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0

    .line 4284
    invoke-virtual {p1, p2}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method bridge synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 4273
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lgj$4;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 0

    .line 4289
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 4273
    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lgj$4;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method synthetic b(Landroid/view/View;)Ljava/lang/Object;
    .locals 0

    .line 4273
    invoke-virtual {p0, p1}, Lgj$4;->a(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
