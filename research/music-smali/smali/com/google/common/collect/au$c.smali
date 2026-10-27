.class Lcom/google/common/collect/au$c;
.super Ljava/lang/Object;
.source "Range.java"

# interfaces
.implements Lcom/google/common/base/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/h<",
        "Lcom/google/common/collect/au;",
        "Lcom/google/common/collect/q;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/common/collect/au$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 132
    new-instance v0, Lcom/google/common/collect/au$c;

    invoke-direct {v0}, Lcom/google/common/collect/au$c;-><init>()V

    sput-object v0, Lcom/google/common/collect/au$c;->a:Lcom/google/common/collect/au$c;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/au;)Lcom/google/common/collect/q;
    .locals 0

    .line 136
    iget-object p1, p1, Lcom/google/common/collect/au;->b:Lcom/google/common/collect/q;

    return-object p1
.end method

.method public synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 131
    check-cast p1, Lcom/google/common/collect/au;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/au$c;->a(Lcom/google/common/collect/au;)Lcom/google/common/collect/q;

    move-result-object p1

    return-object p1
.end method
