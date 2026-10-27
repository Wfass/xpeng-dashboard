.class final enum Lzipkin2/storage/InMemoryStorage$LinkDependencies;
.super Ljava/lang/Enum;
.source "InMemoryStorage.java"

# interfaces
.implements Lzipkin2/Call$Mapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/storage/InMemoryStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LinkDependencies"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzipkin2/storage/InMemoryStorage$LinkDependencies;",
        ">;",
        "Lzipkin2/Call$Mapper<",
        "Ljava/util/List<",
        "Ljava/util/List<",
        "Lzipkin2/Span;",
        ">;>;",
        "Ljava/util/List<",
        "Lzipkin2/DependencyLink;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzipkin2/storage/InMemoryStorage$LinkDependencies;

.field public static final enum INSTANCE:Lzipkin2/storage/InMemoryStorage$LinkDependencies;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 373
    new-instance v0, Lzipkin2/storage/InMemoryStorage$LinkDependencies;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzipkin2/storage/InMemoryStorage$LinkDependencies;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzipkin2/storage/InMemoryStorage$LinkDependencies;->INSTANCE:Lzipkin2/storage/InMemoryStorage$LinkDependencies;

    .line 372
    const/4 v0, 0x1

    new-array v0, v0, [Lzipkin2/storage/InMemoryStorage$LinkDependencies;

    sget-object v1, Lzipkin2/storage/InMemoryStorage$LinkDependencies;->INSTANCE:Lzipkin2/storage/InMemoryStorage$LinkDependencies;

    aput-object v1, v0, v2

    sput-object v0, Lzipkin2/storage/InMemoryStorage$LinkDependencies;->$VALUES:[Lzipkin2/storage/InMemoryStorage$LinkDependencies;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 372
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzipkin2/storage/InMemoryStorage$LinkDependencies;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 372
    const-class v0, Lzipkin2/storage/InMemoryStorage$LinkDependencies;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lzipkin2/storage/InMemoryStorage$LinkDependencies;

    return-object v0
.end method

.method public static values()[Lzipkin2/storage/InMemoryStorage$LinkDependencies;
    .locals 1

    .line 372
    sget-object v0, Lzipkin2/storage/InMemoryStorage$LinkDependencies;->$VALUES:[Lzipkin2/storage/InMemoryStorage$LinkDependencies;

    invoke-virtual {v0}, [Lzipkin2/storage/InMemoryStorage$LinkDependencies;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzipkin2/storage/InMemoryStorage$LinkDependencies;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 372
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lzipkin2/storage/InMemoryStorage$LinkDependencies;->map(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public map(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;>;)",
            "Ljava/util/List<",
            "Lzipkin2/DependencyLink;",
            ">;"
        }
    .end annotation

    .line 377
    .local p1, "traces":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lzipkin2/Span;>;>;"
    new-instance v0, Lzipkin2/internal/DependencyLinker;

    invoke-direct {v0}, Lzipkin2/internal/DependencyLinker;-><init>()V

    .line 378
    .local v0, "linksBuilder":Lzipkin2/internal/DependencyLinker;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .local v2, "trace":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    invoke-virtual {v0, v2}, Lzipkin2/internal/DependencyLinker;->putTrace(Ljava/util/List;)Lzipkin2/internal/DependencyLinker;

    .end local v2    # "trace":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    goto :goto_0

    .line 379
    :cond_0
    invoke-virtual {v0}, Lzipkin2/internal/DependencyLinker;->link()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 384
    const-string v0, "LinkDependencies"

    return-object v0
.end method
