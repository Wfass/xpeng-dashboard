.class public Landroidx/preference/f;
.super Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;
.source "PreferenceRecyclerViewAccessibilityDelegate.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final a:Landroidx/recyclerview/widget/RecyclerView;

.field final b:Lfh;

.field final c:Lfh;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 48
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->getItemDelegate()Lfh;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/f;->b:Lfh;

    .line 60
    new-instance v0, Landroidx/preference/f$1;

    invoke-direct {v0, p0}, Landroidx/preference/f$1;-><init>(Landroidx/preference/f;)V

    iput-object v0, p0, Landroidx/preference/f;->c:Lfh;

    .line 52
    iput-object p1, p0, Landroidx/preference/f;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public getItemDelegate()Lfh;
    .locals 1

    .line 58
    iget-object v0, p0, Landroidx/preference/f;->c:Lfh;

    return-object v0
.end method
