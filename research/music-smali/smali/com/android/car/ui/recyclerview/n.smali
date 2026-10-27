.class public final Lcom/android/car/ui/recyclerview/n;
.super Ljava/lang/Object;
.source "RecyclerViewAdapterAdapterV1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/ui/recyclerview/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private final b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterDataObserverOEMV1;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/n;->c:Ljava/util/List;

    .line 51
    new-instance v0, Lcom/android/car/ui/recyclerview/n$1;

    invoke-direct {v0, p0}, Lcom/android/car/ui/recyclerview/n$1;-><init>(Lcom/android/car/ui/recyclerview/n;)V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/n;->d:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 107
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/n;->b:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/android/car/ui/recyclerview/n;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method static synthetic a(Lcom/android/car/ui/recyclerview/n;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/n;->c:Ljava/util/List;

    return-object p0
.end method
