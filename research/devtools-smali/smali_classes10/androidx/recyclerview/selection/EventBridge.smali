.class public Landroidx/recyclerview/selection/EventBridge;
.super Ljava/lang/Object;
.source "EventBridge.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation build Landroidx/annotation/VisibleForTesting;
    otherwise = 0x3
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/selection/EventBridge$TrackerToAdapterBridge;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EventsRelays"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method public static install(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/selection/SelectionTracker;Landroidx/recyclerview/selection/ItemKeyProvider;)V
    .locals 1
    .param p0    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/recyclerview/selection/SelectionTracker;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/selection/ItemKeyProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;",
            "Landroidx/recyclerview/selection/SelectionTracker<",
            "TK;>;",
            "Landroidx/recyclerview/selection/ItemKeyProvider<",
            "TK;>;)V"
        }
    .end annotation

    .line 62
    new-instance v0, Landroidx/recyclerview/selection/EventBridge$TrackerToAdapterBridge;

    invoke-direct {v0, p1, p2, p0}, Landroidx/recyclerview/selection/EventBridge$TrackerToAdapterBridge;-><init>(Landroidx/recyclerview/selection/SelectionTracker;Landroidx/recyclerview/selection/ItemKeyProvider;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 63
    invoke-virtual {p1}, Landroidx/recyclerview/selection/SelectionTracker;->getAdapterDataObserver()Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 64
    return-void
.end method
