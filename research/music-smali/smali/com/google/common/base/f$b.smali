.class final Lcom/google/common/base/f$b;
.super Lcom/google/common/base/f;
.source "Equivalence.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/f<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/common/base/f$b;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 351
    new-instance v0, Lcom/google/common/base/f$b;

    invoke-direct {v0}, Lcom/google/common/base/f$b;-><init>()V

    sput-object v0, Lcom/google/common/base/f$b;->a:Lcom/google/common/base/f$b;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 349
    invoke-direct {p0}, Lcom/google/common/base/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/Object;)I
    .locals 0

    .line 360
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
