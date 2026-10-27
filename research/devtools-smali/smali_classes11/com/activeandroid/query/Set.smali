.class public final Lcom/activeandroid/query/Set;
.super Ljava/lang/Object;
.source "Set.java"

# interfaces
.implements Lcom/activeandroid/query/Sqlable;


# instance fields
.field private mSet:Ljava/lang/String;

.field private mSetArguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdate:Lcom/activeandroid/query/Update;

.field private mWhere:Ljava/lang/String;

.field private mWhereArguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/activeandroid/query/Update;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/activeandroid/query/Set;->mUpdate:Lcom/activeandroid/query/Update;

    .line 36
    iput-object p2, p0, Lcom/activeandroid/query/Set;->mSet:Ljava/lang/String;

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/activeandroid/query/Set;->mSetArguments:Ljava/util/List;

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/activeandroid/query/Set;->mWhereArguments:Ljava/util/List;

    .line 40
    return-void
.end method

.method public varargs constructor <init>(Lcom/activeandroid/query/Update;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/activeandroid/query/Set;->mUpdate:Lcom/activeandroid/query/Update;

    .line 44
    iput-object p2, p0, Lcom/activeandroid/query/Set;->mSet:Ljava/lang/String;

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/activeandroid/query/Set;->mSetArguments:Ljava/util/List;

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/activeandroid/query/Set;->mWhereArguments:Ljava/util/List;

    .line 49
    iget-object p1, p0, Lcom/activeandroid/query/Set;->mSetArguments:Ljava/util/List;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcom/activeandroid/query/Set;->toSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/activeandroid/query/Set;->getArguments()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/activeandroid/util/SQLiteUtils;->execSql(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public getArguments()[Ljava/lang/String;
    .locals 6

    .line 89
    iget-object v0, p0, Lcom/activeandroid/query/Set;->mSetArguments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 90
    iget-object v1, p0, Lcom/activeandroid/query/Set;->mWhereArguments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 91
    add-int v2, v0, v1

    new-array v2, v2, [Ljava/lang/String;

    .line 93
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    .line 94
    iget-object v5, p0, Lcom/activeandroid/query/Set;->mSetArguments:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 93
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 97
    :cond_0
    :goto_1
    if-ge v3, v1, :cond_1

    .line 98
    add-int v4, v3, v0

    iget-object v5, p0, Lcom/activeandroid/query/Set;->mWhereArguments:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 97
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 101
    :cond_1
    return-object v2
.end method

.method public toSql()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    iget-object v1, p0, Lcom/activeandroid/query/Set;->mUpdate:Lcom/activeandroid/query/Update;

    invoke-virtual {v1}, Lcom/activeandroid/query/Update;->toSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, "SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Lcom/activeandroid/query/Set;->mSet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v1, p0, Lcom/activeandroid/query/Set;->mWhere:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 76
    const-string v1, "WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p0, Lcom/activeandroid/query/Set;->mWhere:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public where(Ljava/lang/String;)Lcom/activeandroid/query/Set;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/activeandroid/query/Set;->mWhere:Ljava/lang/String;

    .line 54
    iget-object p1, p0, Lcom/activeandroid/query/Set;->mWhereArguments:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 56
    return-object p0
.end method

.method public varargs where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/Set;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/activeandroid/query/Set;->mWhere:Ljava/lang/String;

    .line 61
    iget-object p1, p0, Lcom/activeandroid/query/Set;->mWhereArguments:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 62
    iget-object p1, p0, Lcom/activeandroid/query/Set;->mWhereArguments:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 64
    return-object p0
.end method
