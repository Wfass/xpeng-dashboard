.class public Lme/yokeyword/fragmentation/debug/a;
.super Ljava/lang/Object;
.source "DebugFragmentRecord.java"


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lme/yokeyword/fragmentation/debug/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Lme/yokeyword/fragmentation/debug/a;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lme/yokeyword/fragmentation/debug/a;->a:Ljava/lang/CharSequence;

    .line 15
    iput-object p2, p0, Lme/yokeyword/fragmentation/debug/a;->b:Ljava/util/List;

    return-void
.end method
