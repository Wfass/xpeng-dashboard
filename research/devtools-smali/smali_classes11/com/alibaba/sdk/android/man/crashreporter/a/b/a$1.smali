.class final Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/man/crashreporter/a/b/a;->a(Ljava/lang/String;Z)Lcom/alibaba/sdk/android/man/crashreporter/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Thread;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$1;->a:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Thread;Ljava/lang/Thread;)I
    .locals 1

    .line 65
    if-ne p1, p2, :cond_0

    .line 66
    const/4 p1, 0x0

    return p1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$1;->a:Ljava/lang/Thread;

    if-ne p1, v0, :cond_1

    .line 68
    const/4 p1, 0x1

    return p1

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$1;->a:Ljava/lang/Thread;

    if-ne p2, v0, :cond_2

    .line 70
    const/4 p1, -0x1

    return p1

    .line 71
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 63
    check-cast p1, Ljava/lang/Thread;

    check-cast p2, Ljava/lang/Thread;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$1;->a(Ljava/lang/Thread;Ljava/lang/Thread;)I

    move-result p1

    return p1
.end method
