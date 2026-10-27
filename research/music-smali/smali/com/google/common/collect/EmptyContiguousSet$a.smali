.class final Lcom/google/common/collect/EmptyContiguousSet$a;
.super Ljava/lang/Object;
.source "EmptyContiguousSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/EmptyContiguousSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final domain:Lcom/google/common/collect/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/r<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r<",
            "TC;>;)V"
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/google/common/collect/EmptyContiguousSet$a;->domain:Lcom/google/common/collect/r;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/r;Lcom/google/common/collect/EmptyContiguousSet$1;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lcom/google/common/collect/EmptyContiguousSet$a;-><init>(Lcom/google/common/collect/r;)V

    return-void
.end method
