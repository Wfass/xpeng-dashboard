.class public Lcom/google/i18n/phonenumbers/i$c;
.super Ljava/lang/Object;
.source "Phonemetadata.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private metadata_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/i18n/phonenumbers/i$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$c;->metadata_:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/i18n/phonenumbers/i$b;",
            ">;"
        }
    .end annotation

    .line 1174
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$c;->metadata_:Ljava/util/List;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1176
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$c;->metadata_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4

    .line 1195
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1197
    new-instance v2, Lcom/google/i18n/phonenumbers/i$b;

    invoke-direct {v2}, Lcom/google/i18n/phonenumbers/i$b;-><init>()V

    .line 1198
    invoke-virtual {v2, p1}, Lcom/google/i18n/phonenumbers/i$b;->readExternal(Ljava/io/ObjectInput;)V

    .line 1199
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/i$c;->metadata_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3

    .line 1187
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/i$c;->b()I

    move-result v0

    .line 1188
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1190
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/i$c;->metadata_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/i18n/phonenumbers/i$b;

    invoke-virtual {v2, p1}, Lcom/google/i18n/phonenumbers/i$b;->writeExternal(Ljava/io/ObjectOutput;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
