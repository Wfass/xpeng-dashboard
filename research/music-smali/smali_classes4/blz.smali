.class public Lblz;
.super Lcom/xiaopeng/musicradio/widget/recyclerview/f;
.source "RdTracksSelectPageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lblz$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/widget/recyclerview/f<",
        "Lblz$a;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/xiaopeng/musicradio/widget/recyclerview/f$a;

.field private final b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private h:Landroid/content/Context;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/f;-><init>()V

    const-string v0, "RdTracksSelectPageAdapter"

    .line 32
    iput-object v0, p0, Lblz;->b:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lblz;->c:Ljava/util/List;

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lblz;->d:I

    .line 46
    iput-object p1, p0, Lblz;->h:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lblz$a;
    .locals 2

    .line 95
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 96
    iput-object p2, p0, Lblz;->h:Landroid/content/Context;

    .line 97
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/xiaopeng/musicradio/program/b$f;->item_rd_track_select_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 98
    iget p2, p0, Lblz;->i:I

    if-eqz p2, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 100
    iget v0, p0, Lblz;->i:I

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    :cond_0
    new-instance p2, Lblz$a;

    invoke-direct {p2, p1}, Lblz$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public a(I)V
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurPages nPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mList size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lblz;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RdTracksSelectPageAdapter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lblz;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 62
    iput p1, p0, Lblz;->d:I

    .line 65
    :cond_0
    invoke-virtual {p0}, Lblz;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Lblz$a;I)V
    .locals 6

    .line 116
    iget-object v0, p0, Lblz;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-static {p1}, Lblz$a;->a(Lblz$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v0

    iget-object v1, p0, Lblz;->c:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget v0, p0, Lblz;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p2, :cond_1

    .line 122
    invoke-static {p1}, Lblz$a;->a(Lblz$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setSelected(Z)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-static {p1}, Lblz$a;->a(Lblz$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setSelected(Z)V

    .line 131
    :goto_0
    iget-object v0, p0, Lblz;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "~"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {p1}, Lblz$a;->a(Lblz$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiPosition(I)V

    .line 134
    invoke-static {p1}, Lblz$a;->a(Lblz$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lblz$a;->a(Lblz$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/xui/widget/XTextView;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiElementId(Ljava/lang/String;)V

    .line 135
    invoke-static {p1}, Lblz$a;->a(Lblz$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v3

    sget-object v4, Lbxy;->BUTTON:Lbxy;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiElementType(Lbxy;)V

    .line 136
    invoke-static {p1}, Lblz$a;->a(Lblz$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v3

    iget-object v4, p0, Lblz;->c:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiLabel(Ljava/lang/String;)V

    .line 137
    invoke-static {p1}, Lblz$a;->a(Lblz$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xui/widget/XTextView;->enableViewVuiMode(Z)V

    .line 138
    invoke-static {p1}, Lblz$a;->a(Lblz$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v3

    sget-object v4, Lbya;->NORMAL:Lbya;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiMode(Lbya;)V

    .line 139
    iget-object v3, p0, Lblz;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v3

    new-array v4, v2, [Landroid/view/View;

    invoke-static {p1}, Lblz$a;->a(Lblz$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiLabelUnSupportText([Landroid/view/View;)V

    .line 141
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "valueType"

    const-string v5, "numRange"

    .line 142
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "minValue"

    .line 143
    aget-object v1, v0, v1

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "maxValue"

    .line 144
    aget-object v0, v0, v2

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    invoke-static {p1}, Lblz$a;->a(Lblz$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :catch_0
    invoke-static {p1}, Lblz$a;->a(Lblz$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object p1

    new-instance v0, Lblz$1;

    invoke-direct {v0, p0, p2}, Lblz$1;-><init>(Lblz;I)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/widget/recyclerview/f$a;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lblz;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/f$a;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lblz;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 55
    iget-object v0, p0, Lblz;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 56
    invoke-virtual {p0}, Lblz;->notifyDataSetChanged()V

    return-void
.end method

.method public b(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_1

    .line 74
    iget-object v0, p0, Lblz;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lblz;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 75
    :cond_1
    :goto_0
    iget-object p1, p0, Lblz;->c:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 90
    iget-object v0, p0, Lblz;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 30
    check-cast p1, Lblz$a;

    invoke-virtual {p0, p1, p2}, Lblz;->a(Lblz$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lblz;->a(Landroid/view/ViewGroup;I)Lblz$a;

    move-result-object p1

    return-object p1
.end method
