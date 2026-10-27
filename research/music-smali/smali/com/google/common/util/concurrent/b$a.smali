.class final Lcom/google/common/util/concurrent/b$a;
.super Lcom/google/common/util/concurrent/b;
.source "AbstractTransformFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/b<",
        "TI;TO;",
        "Lcom/google/common/base/h<",
        "-TI;+TO;>;TO;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/i;Lcom/google/common/base/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/i<",
            "+TI;>;",
            "Lcom/google/common/base/h<",
            "-TI;+TO;>;)V"
        }
    .end annotation

    .line 237
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/b;-><init>(Lcom/google/common/util/concurrent/i;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/base/h;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/h<",
            "-TI;+TO;>;TI;)TO;"
        }
    .end annotation

    .line 243
    invoke-interface {p1, p2}, Lcom/google/common/base/h;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 233
    check-cast p1, Lcom/google/common/base/h;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/b$a;->a(Lcom/google/common/base/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 248
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/b$a;->a(Ljava/lang/Object;)Z

    return-void
.end method
