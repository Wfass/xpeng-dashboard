.class public Lcom/xiaopeng/musicradio/widget/j$d;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "RecyclerTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/widget/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 637
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(II)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v0, 0x2

    .line 641
    new-array v1, v0, [[I

    .line 642
    new-array v0, v0, [I

    .line 643
    sget-object v2, Lcom/xiaopeng/musicradio/widget/j$d;->SELECTED_STATE_SET:[I

    const/4 v3, 0x0

    aput-object v2, v1, v3

    aput p2, v0, v3

    .line 646
    sget-object p2, Lcom/xiaopeng/musicradio/widget/j$d;->EMPTY_STATE_SET:[I

    const/4 v2, 0x1

    aput-object p2, v1, v2

    aput p1, v0, v2

    .line 648
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method
