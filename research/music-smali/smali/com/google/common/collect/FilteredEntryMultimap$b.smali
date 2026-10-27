.class final Lcom/google/common/collect/FilteredEntryMultimap$b;
.super Ljava/lang/Object;
.source "FilteredEntryMultimap.java"

# interfaces
.implements Lcom/google/common/base/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/FilteredEntryMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/p<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/FilteredEntryMultimap;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/FilteredEntryMultimap;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/google/common/collect/FilteredEntryMultimap$b;->a:Lcom/google/common/collect/FilteredEntryMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p2, p0, Lcom/google/common/collect/FilteredEntryMultimap$b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$b;->a:Lcom/google/common/collect/FilteredEntryMultimap;

    iget-object v1, p0, Lcom/google/common/collect/FilteredEntryMultimap$b;->b:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/FilteredEntryMultimap;->a(Lcom/google/common/collect/FilteredEntryMultimap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
