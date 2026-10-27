.class final Lcom/google/common/collect/RegularContiguousSet$a;
.super Ljava/lang/Object;
.source "RegularContiguousSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularContiguousSet;
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


# instance fields
.field final a:Lcom/google/common/collect/au;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/au<",
            "TC;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/common/collect/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/r<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/au;Lcom/google/common/collect/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/au<",
            "TC;>;",
            "Lcom/google/common/collect/r<",
            "TC;>;)V"
        }
    .end annotation

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/google/common/collect/RegularContiguousSet$a;->a:Lcom/google/common/collect/au;

    .line 223
    iput-object p2, p0, Lcom/google/common/collect/RegularContiguousSet$a;->b:Lcom/google/common/collect/r;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/au;Lcom/google/common/collect/r;Lcom/google/common/collect/RegularContiguousSet$1;)V
    .locals 0

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/RegularContiguousSet$a;-><init>(Lcom/google/common/collect/au;Lcom/google/common/collect/r;)V

    return-void
.end method
