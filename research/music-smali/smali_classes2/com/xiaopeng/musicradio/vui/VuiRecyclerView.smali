.class public Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;
.super Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;
.source "VuiRecyclerView.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;->setVuiLayoutLoadable(Z)V

    .line 30
    sget-object v0, Lbya;->NORMAL:Lbya;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;->setVuiMode(Lbya;)V

    return-void
.end method


# virtual methods
.method public setNeedUpdate(Z)V
    .locals 0

    return-void
.end method
