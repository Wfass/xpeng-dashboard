.class Landroidx/navigation/g$b;
.super Ljava/lang/Object;
.source "NavDeepLink.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/navigation/g$b;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/"

    const/4 v1, -0x1

    .line 351
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 352
    aget-object v0, p1, v0

    iput-object v0, p0, Landroidx/navigation/g$b;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 353
    aget-object p1, p1, v0

    iput-object p1, p0, Landroidx/navigation/g$b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroidx/navigation/g$b;)I
    .locals 2

    .line 363
    iget-object v0, p0, Landroidx/navigation/g$b;->a:Ljava/lang/String;

    iget-object v1, p1, Landroidx/navigation/g$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 367
    :goto_0
    iget-object v1, p0, Landroidx/navigation/g$b;->b:Ljava/lang/String;

    iget-object p1, p1, Landroidx/navigation/g$b;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 344
    check-cast p1, Landroidx/navigation/g$b;

    invoke-virtual {p0, p1}, Landroidx/navigation/g$b;->a(Landroidx/navigation/g$b;)I

    move-result p1

    return p1
.end method
