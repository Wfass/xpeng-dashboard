.class Lcom/google/common/collect/ConcurrentHashMultiset$a;
.super Ljava/lang/Object;
.source "ConcurrentHashMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ConcurrentHashMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lcom/google/common/collect/ba$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ba$a<",
            "Lcom/google/common/collect/ConcurrentHashMultiset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    const-class v0, Lcom/google/common/collect/ConcurrentHashMultiset;

    const-string v1, "countMap"

    .line 78
    invoke-static {v0, v1}, Lcom/google/common/collect/ba;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/ba$a;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ConcurrentHashMultiset$a;->a:Lcom/google/common/collect/ba$a;

    return-void
.end method
