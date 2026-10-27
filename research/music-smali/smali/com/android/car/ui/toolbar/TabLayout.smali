.class public Lcom/android/car/ui/toolbar/TabLayout;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# instance fields
.field private final a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/android/car/ui/toolbar/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lcom/android/car/ui/toolbar/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/ui/toolbar/TabLayout;->b:Ljava/util/List;

    const/4 p2, -0x1

    .line 67
    iput p2, p0, Lcom/android/car/ui/toolbar/TabLayout;->c:I

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 81
    sget p2, Lcom/android/car/ui/e$b;->car_ui_toolbar_tab_flexible_layout:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    sget p1, Lcom/android/car/ui/e$g;->car_ui_toolbar_tab_item_layout_flexible:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/car/ui/e$g;->car_ui_toolbar_tab_item_layout:I

    :goto_0
    iput p1, p0, Lcom/android/car/ui/toolbar/TabLayout;->a:I

    return-void
.end method


# virtual methods
.method public getSelectedTab()I
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/car/ui/toolbar/TabLayout;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/car/ui/toolbar/TabLayout;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mSelectedTab should\'ve been -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/car/ui/toolbar/TabLayout;->c:I

    return v0
.end method

.method public getTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/android/car/ui/toolbar/TabLayout;->b:Ljava/util/List;

    return-object v0
.end method
