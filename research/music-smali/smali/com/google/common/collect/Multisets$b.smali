.class Lcom/google/common/collect/Multisets$b;
.super Lcom/google/common/collect/Multisets$a;
.source "Multisets.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Multisets$a<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final count:I

.field private final element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .line 220
    invoke-direct {p0}, Lcom/google/common/collect/Multisets$a;-><init>()V

    .line 221
    iput-object p1, p0, Lcom/google/common/collect/Multisets$b;->element:Ljava/lang/Object;

    .line 222
    iput p2, p0, Lcom/google/common/collect/Multisets$b;->count:I

    const-string p1, "count"

    .line 223
    invoke-static {p2, p1}, Lcom/google/common/collect/m;->a(ILjava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 234
    iget v0, p0, Lcom/google/common/collect/Multisets$b;->count:I

    return v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/google/common/collect/Multisets$b;->element:Ljava/lang/Object;

    return-object v0
.end method
