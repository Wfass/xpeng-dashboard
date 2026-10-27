.class final Lokio/internal/ResourceFileSystem$Companion;
.super Ljava/lang/Object;
.source "ResourceFileSystem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/internal/ResourceFileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lccc;)V
    .locals 0

    invoke-direct {p0}, Lokio/internal/ResourceFileSystem$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$keepPath(Lokio/internal/ResourceFileSystem$Companion;Lokio/Path;)Z
    .locals 0

    .line 160
    invoke-direct {p0, p1}, Lokio/internal/ResourceFileSystem$Companion;->keepPath(Lokio/Path;)Z

    move-result p0

    return p0
.end method

.method private final keepPath(Lokio/Path;)Z
    .locals 2

    .line 209
    invoke-virtual {p1}, Lokio/Path;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, ".class"

    invoke-static {p1, v1, v0}, Lkotlin/text/j;->c(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public final getROOT()Lokio/Path;
    .locals 1

    .line 161
    invoke-static {}, Lokio/internal/ResourceFileSystem;->access$getROOT$cp()Lokio/Path;

    move-result-object v0

    return-object v0
.end method

.method public final removeBase(Lokio/Path;Lokio/Path;)Lokio/Path;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "base"

    invoke-static {p2, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Lokio/Path;->toString()Ljava/lang/String;

    move-result-object p2

    .line 165
    invoke-virtual {p0}, Lokio/internal/ResourceFileSystem$Companion;->getROOT()Lokio/Path;

    move-result-object v0

    invoke-virtual {p1}, Lokio/Path;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p1, p2}, Lkotlin/text/j;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5c

    const/16 v3, 0x2f

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/j;->a(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    move-result-object p1

    return-object p1
.end method

.method public final toClasspathRoots(Ljava/lang/ClassLoader;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/k<",
            "Lokio/FileSystem;",
            "Lokio/Path;",
            ">;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    .line 183
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    const-string v1, "getResources(\"\")"

    invoke-static {v0, v1}, Lccf;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "java.util.Collections.list(this)"

    invoke-static {v0, v1}, Lccf;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 213
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 222
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "it"

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 221
    check-cast v3, Ljava/net/URL;

    .line 183
    invoke-static {}, Lokio/internal/ResourceFileSystem;->access$getCompanion$p()Lokio/internal/ResourceFileSystem$Companion;

    move-result-object v5

    invoke-static {v3, v4}, Lccf;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lokio/internal/ResourceFileSystem$Companion;->toFileRoot(Ljava/net/URL;)Lkotlin/k;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 221
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 213
    check-cast v2, Ljava/util/Collection;

    const-string v0, "META-INF/MANIFEST.MF"

    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    const-string v0, "getResources(\"META-INF/MANIFEST.MF\")"

    invoke-static {p1, v0}, Lccf;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1, v1}, Lccf;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 235
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 234
    check-cast v1, Ljava/net/URL;

    .line 184
    invoke-static {}, Lokio/internal/ResourceFileSystem;->access$getCompanion$p()Lokio/internal/ResourceFileSystem$Companion;

    move-result-object v3

    invoke-static {v1, v4}, Lccf;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lokio/internal/ResourceFileSystem$Companion;->toJarRoot(Ljava/net/URL;)Lkotlin/k;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 234
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 238
    :cond_3
    check-cast v0, Ljava/util/List;

    .line 226
    check-cast v0, Ljava/lang/Iterable;

    .line 183
    invoke-static {v2, v0}, Lkotlin/collections/l;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final toFileRoot(Ljava/net/URL;)Lkotlin/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lkotlin/k<",
            "Lokio/FileSystem;",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-static {v0, v1}, Lccf;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 189
    :cond_0
    sget-object v0, Lokio/FileSystem;->SYSTEM:Lokio/FileSystem;

    sget-object v2, Lokio/Path;->Companion:Lokio/Path$Companion;

    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    const/4 p1, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, p1, v4, v1}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/io/File;ZILjava/lang/Object;)Lokio/Path;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/k;

    move-result-object p1

    return-object p1
.end method

.method public final toJarRoot(Ljava/net/URL;)Lkotlin/k;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lkotlin/k<",
            "Lokio/FileSystem;",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString()"

    invoke-static {p1, v0}, Lccf;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "jar:file:"

    const/4 v3, 0x2

    .line 194
    invoke-static {p1, v2, v0, v3, v1}, Lkotlin/text/j;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 198
    :cond_0
    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    const-string v4, "!"

    invoke-static/range {v3 .. v8}, Lkotlin/text/j;->b(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    return-object v1

    .line 200
    :cond_1
    sget-object v3, Lokio/Path;->Companion:Lokio/Path$Companion;

    new-instance v4, Ljava/io/File;

    const/4 v5, 0x4

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v2}, Lccf;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    const/4 p1, 0x1

    invoke-static {v3, v4, v0, p1, v1}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/io/File;ZILjava/lang/Object;)Lokio/Path;

    move-result-object p1

    .line 203
    sget-object v0, Lokio/FileSystem;->SYSTEM:Lokio/FileSystem;

    .line 201
    sget-object v1, Lokio/internal/ResourceFileSystem$Companion$toJarRoot$zip$1;->INSTANCE:Lokio/internal/ResourceFileSystem$Companion$toJarRoot$zip$1;

    check-cast v1, Lcas;

    invoke-static {p1, v0, v1}, Lokio/internal/ZipKt;->openZip(Lokio/Path;Lokio/FileSystem;Lcas;)Lokio/ZipFileSystem;

    move-result-object p1

    .line 206
    invoke-virtual {p0}, Lokio/internal/ResourceFileSystem$Companion;->getROOT()Lokio/Path;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/k;

    move-result-object p1

    return-object p1
.end method
