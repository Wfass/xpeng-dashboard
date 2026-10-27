.class public final Lzipkin2/DependencyLink$Builder;
.super Ljava/lang/Object;
.source "DependencyLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/DependencyLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field callCount:J

.field child:Ljava/lang/String;

.field errorCount:J

.field parent:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lzipkin2/DependencyLink;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iget-object v0, p1, Lzipkin2/DependencyLink;->parent:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/DependencyLink$Builder;->parent:Ljava/lang/String;

    .line 67
    iget-object v0, p1, Lzipkin2/DependencyLink;->child:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/DependencyLink$Builder;->child:Ljava/lang/String;

    .line 68
    iget-wide v0, p1, Lzipkin2/DependencyLink;->callCount:J

    iput-wide v0, p0, Lzipkin2/DependencyLink$Builder;->callCount:J

    .line 69
    iget-wide v0, p1, Lzipkin2/DependencyLink;->errorCount:J

    iput-wide v0, p0, Lzipkin2/DependencyLink$Builder;->errorCount:J

    return-void
.end method


# virtual methods
.method public build()Lzipkin2/DependencyLink;
    .locals 4

    .line 96
    iget-object v0, p0, Lzipkin2/DependencyLink$Builder;->parent:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " parent"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 97
    :goto_0
    iget-object v2, p0, Lzipkin2/DependencyLink$Builder;->child:Ljava/lang/String;

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " child"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    new-instance v0, Lzipkin2/DependencyLink;

    invoke-direct {v0, p0}, Lzipkin2/DependencyLink;-><init>(Lzipkin2/DependencyLink$Builder;)V

    return-object v0

    .line 98
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public callCount(J)Lzipkin2/DependencyLink$Builder;
    .locals 0

    .line 85
    iput-wide p1, p0, Lzipkin2/DependencyLink$Builder;->callCount:J

    return-object p0
.end method

.method public child(Ljava/lang/String;)Lzipkin2/DependencyLink$Builder;
    .locals 1

    const-string v0, "child == null"

    .line 79
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzipkin2/DependencyLink$Builder;->child:Ljava/lang/String;

    return-object p0
.end method

.method public errorCount(J)Lzipkin2/DependencyLink$Builder;
    .locals 0

    .line 90
    iput-wide p1, p0, Lzipkin2/DependencyLink$Builder;->errorCount:J

    return-object p0
.end method

.method public parent(Ljava/lang/String;)Lzipkin2/DependencyLink$Builder;
    .locals 1

    const-string v0, "parent == null"

    .line 73
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzipkin2/DependencyLink$Builder;->parent:Ljava/lang/String;

    return-object p0
.end method
