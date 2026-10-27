.class Laic$a;
.super Ljava/lang/Object;
.source "MediaItemsRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Laic$b;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/media/common/MediaItemMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Laic$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laic$b;-><init>(Laic$1;)V

    iput-object v0, p0, Laic$a;->b:Laic$b;

    .line 105
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Laic$a;->c:Ljava/util/List;

    .line 108
    iput-object p1, p0, Laic$a;->a:Ljava/lang/String;

    return-void
.end method
