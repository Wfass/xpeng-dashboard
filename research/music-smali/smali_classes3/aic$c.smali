.class Laic$c;
.super Ljava/lang/Object;
.source "MediaItemsRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Laic$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laic$c;->b:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Laic$1;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Laic$c;-><init>()V

    return-void
.end method
