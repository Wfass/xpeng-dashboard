.class public Lcom/xiaopeng/musicradio/commonui/widget/a;
.super Ljava/lang/Object;
.source "AdapterPreLoader.java"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Landroid/view/LayoutInflater;

.field private final c:Landroid/widget/FrameLayout;

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/a;->d:Landroid/util/SparseArray;

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/a;->e:Ljava/util/LinkedList;

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/a;->a:Landroid/app/Activity;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/a;->b:Landroid/view/LayoutInflater;

    .line 31
    new-instance p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/a;->a:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/a;->c:Landroid/widget/FrameLayout;

    return-void
.end method
