.class Landroidx/navigation/i$a;
.super Ljava/lang/Object;
.source "NavDestination.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/navigation/i$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroidx/navigation/i;

.field private final b:Landroid/os/Bundle;

.field private final c:Z

.field private final d:Z

.field private final e:I


# direct methods
.method constructor <init>(Landroidx/navigation/i;Landroid/os/Bundle;ZZI)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Landroidx/navigation/i$a;->a:Landroidx/navigation/i;

    .line 88
    iput-object p2, p0, Landroidx/navigation/i$a;->b:Landroid/os/Bundle;

    .line 89
    iput-boolean p3, p0, Landroidx/navigation/i$a;->c:Z

    .line 90
    iput-boolean p4, p0, Landroidx/navigation/i$a;->d:Z

    .line 91
    iput p5, p0, Landroidx/navigation/i$a;->e:I

    return-void
.end method


# virtual methods
.method public a(Landroidx/navigation/i$a;)I
    .locals 4

    .line 107
    iget-boolean v0, p0, Landroidx/navigation/i$a;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroidx/navigation/i$a;->c:Z

    if-nez v0, :cond_0

    return v1

    .line 109
    :cond_0
    iget-boolean v0, p0, Landroidx/navigation/i$a;->c:Z

    const/4 v2, -0x1

    if-nez v0, :cond_1

    iget-boolean v0, p1, Landroidx/navigation/i$a;->c:Z

    if-eqz v0, :cond_1

    return v2

    .line 113
    :cond_1
    iget-object v0, p0, Landroidx/navigation/i$a;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroidx/navigation/i$a;->b:Landroid/os/Bundle;

    if-nez v0, :cond_2

    return v1

    .line 115
    :cond_2
    iget-object v0, p0, Landroidx/navigation/i$a;->b:Landroid/os/Bundle;

    if-nez v0, :cond_3

    iget-object v0, p1, Landroidx/navigation/i$a;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    return v2

    .line 119
    :cond_3
    iget-object v0, p0, Landroidx/navigation/i$a;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    .line 120
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    iget-object v3, p1, Landroidx/navigation/i$a;->b:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_4

    return v1

    :cond_4
    if-gez v0, :cond_5

    return v2

    .line 128
    :cond_5
    iget-boolean v0, p0, Landroidx/navigation/i$a;->d:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Landroidx/navigation/i$a;->d:Z

    if-nez v0, :cond_6

    return v1

    .line 130
    :cond_6
    iget-boolean v0, p0, Landroidx/navigation/i$a;->d:Z

    if-nez v0, :cond_7

    iget-boolean v0, p1, Landroidx/navigation/i$a;->d:Z

    if-eqz v0, :cond_7

    return v2

    .line 134
    :cond_7
    iget v0, p0, Landroidx/navigation/i$a;->e:I

    iget p1, p1, Landroidx/navigation/i$a;->e:I

    sub-int/2addr v0, p1

    return v0
.end method

.method a()Landroidx/navigation/i;
    .locals 1

    .line 96
    iget-object v0, p0, Landroidx/navigation/i$a;->a:Landroidx/navigation/i;

    return-object v0
.end method

.method b()Landroid/os/Bundle;
    .locals 1

    .line 101
    iget-object v0, p0, Landroidx/navigation/i$a;->b:Landroid/os/Bundle;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 75
    check-cast p1, Landroidx/navigation/i$a;

    invoke-virtual {p0, p1}, Landroidx/navigation/i$a;->a(Landroidx/navigation/i$a;)I

    move-result p1

    return p1
.end method
