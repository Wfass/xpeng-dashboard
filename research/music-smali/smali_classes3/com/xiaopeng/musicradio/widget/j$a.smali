.class public abstract Lcom/xiaopeng/musicradio/widget/j$a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecyclerTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/widget/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected a:Landroidx/viewpager/widget/ViewPager;

.field protected b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 474
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 470
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 471
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/j$a;->a:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method


# virtual methods
.method public a()Landroidx/viewpager/widget/ViewPager;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/j$a;->a:Landroidx/viewpager/widget/ViewPager;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 482
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/j$a;->b:I

    return-void
.end method

.method public b()I
    .locals 1

    .line 486
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/j$a;->b:I

    return v0
.end method
