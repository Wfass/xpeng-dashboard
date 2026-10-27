.class public Landroidx/room/util/TableInfo$ForeignKey;
.super Ljava/lang/Object;
.source "TableInfo.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/util/TableInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForeignKey"
.end annotation


# instance fields
.field public final columnNames:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final onDelete:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final onUpdate:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final referenceColumnNames:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final referenceTable:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "referenceTable"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "onDelete"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "onUpdate"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 456
    .local p4, "columnNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "referenceColumnNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput-object p1, p0, Landroidx/room/util/TableInfo$ForeignKey;->referenceTable:Ljava/lang/String;

    .line 458
    iput-object p2, p0, Landroidx/room/util/TableInfo$ForeignKey;->onDelete:Ljava/lang/String;

    .line 459
    iput-object p3, p0, Landroidx/room/util/TableInfo$ForeignKey;->onUpdate:Ljava/lang/String;

    .line 460
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/util/TableInfo$ForeignKey;->columnNames:Ljava/util/List;

    .line 461
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/util/TableInfo$ForeignKey;->referenceColumnNames:Ljava/util/List;

    .line 462
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 466
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 467
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 469
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/room/util/TableInfo$ForeignKey;

    .line 471
    .local v1, "that":Landroidx/room/util/TableInfo$ForeignKey;
    iget-object v2, p0, Landroidx/room/util/TableInfo$ForeignKey;->referenceTable:Ljava/lang/String;

    iget-object v3, v1, Landroidx/room/util/TableInfo$ForeignKey;->referenceTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 472
    :cond_2
    iget-object v2, p0, Landroidx/room/util/TableInfo$ForeignKey;->onDelete:Ljava/lang/String;

    iget-object v3, v1, Landroidx/room/util/TableInfo$ForeignKey;->onDelete:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    .line 473
    :cond_3
    iget-object v2, p0, Landroidx/room/util/TableInfo$ForeignKey;->onUpdate:Ljava/lang/String;

    iget-object v3, v1, Landroidx/room/util/TableInfo$ForeignKey;->onUpdate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    .line 475
    :cond_4
    iget-object v2, p0, Landroidx/room/util/TableInfo$ForeignKey;->columnNames:Ljava/util/List;

    iget-object v3, v1, Landroidx/room/util/TableInfo$ForeignKey;->columnNames:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v0

    .line 476
    :cond_5
    iget-object v0, p0, Landroidx/room/util/TableInfo$ForeignKey;->referenceColumnNames:Ljava/util/List;

    iget-object v2, v1, Landroidx/room/util/TableInfo$ForeignKey;->referenceColumnNames:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 467
    .end local v1    # "that":Landroidx/room/util/TableInfo$ForeignKey;
    :cond_6
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 481
    iget-object v0, p0, Landroidx/room/util/TableInfo$ForeignKey;->referenceTable:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 482
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-object v3, p0, Landroidx/room/util/TableInfo$ForeignKey;->onDelete:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 483
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int v0, v1, v2

    iget-object v3, p0, Landroidx/room/util/TableInfo$ForeignKey;->onUpdate:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 484
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget-object v3, p0, Landroidx/room/util/TableInfo$ForeignKey;->columnNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 485
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/2addr v1, v2

    iget-object v0, p0, Landroidx/room/util/TableInfo$ForeignKey;->referenceColumnNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 486
    .end local v2    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ForeignKey{referenceTable=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/room/util/TableInfo$ForeignKey;->referenceTable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", onDelete=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/room/util/TableInfo$ForeignKey;->onDelete:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", onUpdate=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/room/util/TableInfo$ForeignKey;->onUpdate:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", columnNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/room/util/TableInfo$ForeignKey;->columnNames:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", referenceColumnNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/room/util/TableInfo$ForeignKey;->referenceColumnNames:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
