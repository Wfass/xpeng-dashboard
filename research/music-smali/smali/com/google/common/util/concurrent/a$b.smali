.class final Lcom/google/common/util/concurrent/a$b;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field static final a:Lcom/google/common/util/concurrent/a$b;

.field static final b:Lcom/google/common/util/concurrent/a$b;


# instance fields
.field final c:Z

.field final d:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 293
    invoke-static {}, Lcom/google/common/util/concurrent/a;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 294
    sput-object v1, Lcom/google/common/util/concurrent/a$b;->b:Lcom/google/common/util/concurrent/a$b;

    .line 295
    sput-object v1, Lcom/google/common/util/concurrent/a$b;->a:Lcom/google/common/util/concurrent/a$b;

    goto :goto_0

    .line 297
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/a$b;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/common/util/concurrent/a$b;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/common/util/concurrent/a$b;->b:Lcom/google/common/util/concurrent/a$b;

    .line 298
    new-instance v0, Lcom/google/common/util/concurrent/a$b;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/common/util/concurrent/a$b;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/common/util/concurrent/a$b;->a:Lcom/google/common/util/concurrent/a$b;

    :goto_0
    return-void
.end method

.method constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-boolean p1, p0, Lcom/google/common/util/concurrent/a$b;->c:Z

    .line 307
    iput-object p2, p0, Lcom/google/common/util/concurrent/a$b;->d:Ljava/lang/Throwable;

    return-void
.end method
