.class public abstract Lcom/xiaopeng/musicradio/widget/recyclerview/d;
.super Lme/drakeet/multitype/c;
.source "BaseItemViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/widget/recyclerview/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Lcom/xiaopeng/musicradio/widget/recyclerview/g;",
        ">",
        "Lme/drakeet/multitype/c<",
        "TT;TVH;>;"
    }
.end annotation


# instance fields
.field a:Landroidx/recyclerview/widget/RecyclerView;

.field protected b:Lcom/xiaopeng/musicradio/widget/recyclerview/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/musicradio/widget/recyclerview/d$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lme/drakeet/multitype/c;-><init>()V

    .line 58
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/d$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/d$1;-><init>(Lcom/xiaopeng/musicradio/widget/recyclerview/d;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/d;->c:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/widget/recyclerview/d;)Lme/drakeet/multitype/e;
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/d;->h()Lme/drakeet/multitype/e;

    move-result-object p0

    return-object p0
.end method
