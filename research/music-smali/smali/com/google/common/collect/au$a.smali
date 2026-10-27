.class Lcom/google/common/collect/au$a;
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
    name = "a"
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
.field static final a:Lcom/google/common/collect/au$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 123
    new-instance v0, Lcom/google/common/collect/au$a;

    invoke-direct {v0}, Lcom/google/common/collect/au$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/au$a;->a:Lcom/google/common/collect/au$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/au;)Lcom/google/common/collect/q;
    .locals 0

    .line 127
    iget-object p1, p1, Lcom/google/common/collect/au;->a:Lcom/google/common/collect/q;

    return-object p1
.end method

.method public synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 122
    check-cast p1, Lcom/google/common/collect/au;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/au$a;->a(Lcom/google/common/collect/au;)Lcom/google/common/collect/q;

    move-result-object p1

    return-object p1
.end method
