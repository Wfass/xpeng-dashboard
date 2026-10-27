.class Lzipkin2/storage/InMemoryStorage$4;
.super Lzipkin2/storage/InMemoryStorage$SortedMultimap;
.source "InMemoryStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/storage/InMemoryStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzipkin2/storage/InMemoryStorage$SortedMultimap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzipkin2/storage/InMemoryStorage;


# direct methods
.method constructor <init>(Lzipkin2/storage/InMemoryStorage;Ljava/util/Comparator;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lzipkin2/storage/InMemoryStorage$4;->this$0:Lzipkin2/storage/InMemoryStorage;

    invoke-direct {p0, p2}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;-><init>(Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method valueContainer()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method
