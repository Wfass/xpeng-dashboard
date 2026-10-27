.class public final Lcom/google/common/base/s;
.super Ljava/lang/Object;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/s$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/base/s$a;


# direct methods
.method static synthetic a(Lcom/google/common/base/s;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/google/common/base/s;->a(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/google/common/base/s;->a:Lcom/google/common/base/s$a;

    invoke-interface {v0, p0, p1}, Lcom/google/common/base/s$a;->a(Lcom/google/common/base/s;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method
