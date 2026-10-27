.class public final Landroidx/navigation/g$a;
.super Ljava/lang/Object;
.source "NavDeepLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroidx/navigation/g$a;
    .locals 0

    .line 438
    iput-object p1, p0, Landroidx/navigation/g$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Landroidx/navigation/g;
    .locals 4

    .line 481
    new-instance v0, Landroidx/navigation/g;

    iget-object v1, p0, Landroidx/navigation/g$a;->a:Ljava/lang/String;

    iget-object v2, p0, Landroidx/navigation/g$a;->b:Ljava/lang/String;

    iget-object v3, p0, Landroidx/navigation/g$a;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroidx/navigation/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Landroidx/navigation/g$a;
    .locals 1

    .line 454
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    iput-object p1, p0, Landroidx/navigation/g$a;->b:Ljava/lang/String;

    return-object p0

    .line 455
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The NavDeepLink cannot have an empty action."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/lang/String;)Landroidx/navigation/g$a;
    .locals 0

    .line 470
    iput-object p1, p0, Landroidx/navigation/g$a;->c:Ljava/lang/String;

    return-object p0
.end method
