.class public Lcam;
.super Lcai;
.source "JDK7PlatformImplementations.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcam$a;
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcai;-><init>()V

    return-void
.end method

.method private final a(I)Z
    .locals 1

    .line 22
    sget-object v0, Lcam$a;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    sget-object v0, Lcam$a;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "cause"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p2, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x13

    .line 27
    invoke-direct {p0, v0}, Lcam;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-super {p0, p1, p2}, Lcai;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
