.class public abstract Lcom/a/a/a;
.super Ljava/lang/Object;
.source "Animator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/a$a;
    }
.end annotation


# instance fields
.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/a/a/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a;->mListeners:Ljava/util/ArrayList;

    .line 247
    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/a$a;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/a/a/a;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/a;->mListeners:Ljava/util/ArrayList;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/a/a/a;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method public cancel()V
    .locals 0

    .line 61
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lcom/a/a/a;->dn()Lcom/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public dn()Lcom/a/a/a;
    .locals 6

    .line 192
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a;

    .line 193
    iget-object v1, p0, Lcom/a/a/a;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/a/a/a;->mListeners:Ljava/util/ArrayList;

    .line 195
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/a/a/a;->mListeners:Ljava/util/ArrayList;

    .line 196
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 197
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 198
    iget-object v4, v0, Lcom/a/a/a;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 201
    :cond_0
    return-object v0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public start()V
    .locals 0

    .line 49
    return-void
.end method
